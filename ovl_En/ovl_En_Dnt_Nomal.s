#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B4F150:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lh      t6, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    sh      t6, 0x025A(s0)             ## 0000025A
    lh      v0, 0x025A(s0)             ## 0000025A
    addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
    addiu   a1, s0, 0x0304             ## a1 = 00000304
    bgezl   v0, lbl_80B4F194           
    lw      t7, 0x0004(s0)             ## 00000004
    sh      $zero, 0x025A(s0)          ## 0000025A
    lh      v0, 0x025A(s0)             ## 0000025A
    lw      t7, 0x0004(s0)             ## 00000004
lbl_80B4F194:
    sb      t9, 0x00AE(s0)             ## 000000AE
    sh      t0, 0x0256(s0)             ## 00000256
    and     t8, t7, $at                
    bne     v0, $zero, lbl_80B4F1E8    
    sw      t8, 0x0004(s0)             ## 00000004
    addiu   a1, s0, 0x0284             ## a1 = 00000284
    sw      a1, 0x0020($sp)            
    jal     func_8004B858              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_80B51B7C)      ## a3 = 80B50000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80B51B7C)  ## a3 = 80B51B7C
    lw      a0, 0x0034($sp)            
    jal     func_8004B960              
    or      a2, s0, $zero              ## a2 = 00000000
    lh      v1, 0x008A(s0)             ## 0000008A
    addiu   t1, $zero, 0x0164          ## t1 = 00000164
    sh      t1, 0x0256(s0)             ## 00000256
    sh      v1, 0x00B6(s0)             ## 000000B6
    beq     $zero, $zero, lbl_80B4F214 
    sh      v1, 0x0032(s0)             ## 00000032
lbl_80B4F1E8:
    lw      a0, 0x0034($sp)            
    jal     func_8004AB7C              
    sw      a1, 0x0020($sp)            
    lui     a3, %hi(var_80B51B50)      ## a3 = 80B50000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80B51B50)  ## a3 = 80B51B50
    lw      a0, 0x0034($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   t2, $zero, 0x0172          ## t2 = 00000172
    sh      t2, 0x0256(s0)             ## 00000256
lbl_80B4F214:
    lh      a1, 0x0256(s0)             ## 00000256
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    bltz    a1, lbl_80B4F250           
    lw      a0, 0x0034($sp)            
    jal     func_80081628              ## ObjectIndex
    addu    a0, a0, $at                
    sb      v0, 0x0269(s0)             ## 00000269
    lb      t3, 0x0269(s0)             ## 00000269
    bgez    t3, lbl_80B4F258           
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4F268 
    lw      $ra, 0x001C($sp)           
lbl_80B4F250:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B4F258:
    lui     t4, %hi(func_80B4F2C4)     ## t4 = 80B50000
    addiu   t4, t4, %lo(func_80B4F2C4) ## t4 = 80B4F2C4
    sw      t4, 0x0204(s0)             ## 00000204
    lw      $ra, 0x001C($sp)           
lbl_80B4F268:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4F278:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lh      t6, 0x025A(a2)             ## 0000025A
    addiu   a1, a2, 0x0284             ## a1 = 00000284
    or      a0, a3, $zero              ## a0 = 00000000
    bne     t6, $zero, lbl_80B4F2AC    
    nop
    jal     func_8004B8A8              
    or      a0, a3, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4F2B8 
    lw      $ra, 0x0014($sp)           
lbl_80B4F2AC:
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0304             ## a1 = 00000304
    lw      $ra, 0x0014($sp)           
lbl_80B4F2B8:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4F2C4:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x17A4           ## $at = 000117A4
    lb      a1, 0x0269(s0)             ## 00000269
    jal     func_80081688              
    addu    a0, a0, $at                
    beq     v0, $zero, lbl_80B4F400    
    lw      t6, 0x0034($sp)            
    lb      t7, 0x0269(s0)             ## 00000269
    lui     t0, 0x0001                 ## t0 = 00010000
    lui     $at, 0x8000                ## $at = 80000000
    sll     t8, t7,  4                 
    addu    t8, t8, t7                 
    sll     t8, t8,  2                 
    addu    t9, t6, t8                 
    addu    t0, t0, t9                 
    lw      t0, 0x17B4(t0)             ## 000117B4
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a2, 0x8002                 ## a2 = 80020000
    addu    t1, t0, $at                
    lui     $at, 0x8012                ## $at = 80120000
    sw      t1, 0x0C50($at)            ## 80120C50
    lb      t2, 0x0269(s0)             ## 00000269
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    jal     func_8001EC20              
    sb      t2, 0x001E(s0)             ## 0000001E
    lui     $at, 0xC000                ## $at = C0000000
    mtc1    $at, $f4                   ## $f4 = -2.00
    lui     a1, 0x3C23                 ## a1 = 3C230000
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020F88              
    swc1    $f4, 0x006C(s0)            ## 0000006C
    lh      t3, 0x025A(s0)             ## 0000025A
    lw      a0, 0x0034($sp)            
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    bne     t3, $zero, lbl_80B4F3C0    
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t4, s0, 0x0180             ## t4 = 00000180
    addiu   t5, s0, 0x01C2             ## t5 = 000001C2
    addiu   t7, $zero, 0x000A          ## t7 = 0000000A
    sw      t7, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    addiu   a3, a3, 0x24CC             ## a3 = 060024CC
    addiu   a2, a2, 0x23B8             ## a2 = 060023B8
    lw      a0, 0x0034($sp)            
    jal     func_8008C684              
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    lui     t6, %hi(func_80B51A4C)     ## t6 = 80B50000
    addiu   t6, t6, %lo(func_80B51A4C) ## t6 = 80B51A4C
    beq     $zero, $zero, lbl_80B4F3F4 
    sw      t6, 0x0134(s0)             ## 00000134
lbl_80B4F3C0:
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t8, s0, 0x0180             ## t8 = 00000180
    addiu   t9, s0, 0x01C2             ## t9 = 000001C2
    addiu   t0, $zero, 0x000B          ## t0 = 0000000B
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    addiu   a3, a3, 0x0430             ## a3 = 06000430
    jal     func_8008C684              
    addiu   a2, a2, 0x2AF0             ## a2 = 00002AF0
    lui     t1, %hi(func_80B5185C)     ## t1 = 80B50000
    addiu   t1, t1, %lo(func_80B5185C) ## t1 = 80B5185C
    sw      t1, 0x0134(s0)             ## 00000134
lbl_80B4F3F4:
    lui     t2, %hi(func_80B4F414)     ## t2 = 80B50000
    addiu   t2, t2, %lo(func_80B4F414) ## t2 = 80B4F414
    sw      t2, 0x0204(s0)             ## 00000204
lbl_80B4F400:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4F414:
    sw      a1, 0x0004($sp)            
    lhu     t6, 0x0088(a0)             ## 00000088
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beq     t7, $zero, lbl_80B4F464    
    nop
    lw      t9, 0x0024(a0)             ## 00000024
    lh      t0, 0x025A(a0)             ## 0000025A
    lw      t8, 0x0028(a0)             ## 00000028
    sw      t9, 0x020C(a0)             ## 0000020C
    lw      t9, 0x002C(a0)             ## 0000002C
    sw      t8, 0x0210(a0)             ## 00000210
    bne     t0, $zero, lbl_80B4F458    
    sw      t9, 0x0214(a0)             ## 00000214
    lui     t1, %hi(func_80B4F46C)     ## t1 = 80B50000
    addiu   t1, t1, %lo(func_80B4F46C) ## t1 = 80B4F46C
    jr      $ra                        
    sw      t1, 0x0204(a0)             ## 00000204
lbl_80B4F458:
    lui     t2, %hi(func_80B50140)     ## t2 = 80B50000
    addiu   t2, t2, %lo(func_80B50140) ## t2 = 80B50140
    sw      t2, 0x0204(a0)             ## 00000204
lbl_80B4F464:
    jr      $ra                        
    nop


func_80B4F46C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x24CC             ## a0 = 060024CC
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f18                  ## $f18 = -10.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t9, $zero, 0x0002          ## t9 = 00000002
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    trunc.w.s $f8, $f6                   
    addiu   a1, a1, 0x24CC             ## a1 = 060024CC
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    mfc1    t7, $f8                    
    nop
    sh      t7, 0x025E(s0)             ## 0000025E
    lh      t8, 0x025E(s0)             ## 0000025E
    sw      t9, 0x0014($sp)            
    swc1    $f18, 0x0018($sp)          
    mtc1    t8, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lui     $at, 0x4100                ## $at = 41000000
    mtc1    $at, $f4                   ## $f4 = 8.00
    lui     t0, %hi(func_80B4F514)     ## t0 = 80B50000
    addiu   t0, t0, %lo(func_80B4F514) ## t0 = 80B4F514
    sw      t0, 0x0204(s0)             ## 00000204
    swc1    $f4, 0x0154(s0)            ## 00000154
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4F514:
    lui     $at, %hi(var_80B51C30)     ## $at = 80B50000
    lwc1    $f16, %lo(var_80B51C30)($at) 
    addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
    lui     $at, 0x41C0                ## $at = 41C00000
    sw      s0, 0x0020($sp)            
    mtc1    $at, $f18                  ## $f18 = 24.00
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x007C($sp)            
    lui     t7, %hi(var_80B51BF0)      ## t7 = 80B50000
    addiu   t7, t7, %lo(var_80B51BF0)  ## t7 = 80B51BF0
    lw      t9, 0x0000(t7)             ## 80B51BF0
    addiu   t6, $sp, 0x0048            ## t6 = FFFFFFD0
    lw      t8, 0x0004(t7)             ## 80B51BF4
    sw      t9, 0x0000(t6)             ## FFFFFFD0
    lw      t9, 0x0008(t7)             ## 80B51BF8
    lui     t1, %hi(var_80B51BFC)      ## t1 = 80B50000
    addiu   t1, t1, %lo(var_80B51BFC)  ## t1 = 80B51BFC
    sw      t8, 0x0004(t6)             ## FFFFFFD4
    sw      t9, 0x0008(t6)             ## FFFFFFD8
    lw      t3, 0x0000(t1)             ## 80B51BFC
    addiu   t0, $sp, 0x003C            ## t0 = FFFFFFC4
    lw      t2, 0x0004(t1)             ## 80B51C00
    sw      t3, 0x0000(t0)             ## FFFFFFC4
    lw      t3, 0x0008(t1)             ## 80B51C04
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f4                   ## $f4 = 50.00
    lui     $at, 0xC1F0                ## $at = C1F00000
    sw      t2, 0x0004(t0)             ## FFFFFFC8
    sw      t3, 0x0008(t0)             ## FFFFFFCC
    mtc1    $at, $f6                   ## $f6 = -30.00
    mtc1    $at, $f8                   ## $f8 = -30.00
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f10                  ## $f10 = 50.00
    sub.s   $f0, $f4, $f18             
    swc1    $f16, 0x0218(s0)           ## 00000218
    swc1    $f16, 0x0224(s0)           ## 00000224
    add.s   $f2, $f6, $f18             
    swc1    $f0, 0x021C(s0)            ## 0000021C
    swc1    $f0, 0x0228(s0)            ## 00000228
    sub.s   $f12, $f8, $f18            
    swc1    $f2, 0x0220(s0)            ## 00000220
    swc1    $f16, 0x0230(s0)           ## 00000230
    add.s   $f14, $f10, $f18           
    swc1    $f12, 0x022C(s0)           ## 0000022C
    swc1    $f2, 0x0238(s0)            ## 00000238
    swc1    $f16, 0x023C(s0)           ## 0000023C
    swc1    $f14, 0x0234(s0)           ## 00000234
    swc1    $f14, 0x0240(s0)           ## 00000240
    swc1    $f12, 0x0244(s0)           ## 00000244
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lbu     v0, 0x0295(s0)             ## 00000295
    lui     $at, %hi(var_80B51C34)     ## $at = 80B50000
    lwc1    $f16, %lo(var_80B51C34)($at) 
    lui     $at, 0x41C0                ## $at = 41C00000
    mtc1    $at, $f18                  ## $f18 = 24.00
    andi    t4, v0, 0x0002             ## t4 = 00000000
    addiu   a2, $sp, 0x003C            ## a2 = FFFFFFC4
    beq     t4, $zero, lbl_80B4F7D0    
    addiu   a3, $sp, 0x0048            ## a3 = FFFFFFD0
    lh      t6, 0x02AA(s0)             ## 000002AA
    lh      t7, 0x02AC(s0)             ## 000002AC
    lh      t8, 0x02AE(s0)             ## 000002AE
    mtc1    t6, $f4                    ## $f4 = 0.00
    mtc1    t7, $f10                   ## $f10 = 0.00
    lui     $at, 0x4248                ## $at = 42480000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   ## $f8 = 50.00
    lui     $at, 0xC1F0                ## $at = C1F00000
    andi    t5, v0, 0xFFFD             ## t5 = 00000000
    sb      t5, 0x0295(s0)             ## 00000295
    cvt.s.w $f4, $f10                  
    mtc1    t8, $f10                   ## $f10 = 0.00
    sub.s   $f0, $f16, $f6             
    mtc1    $at, $f6                   ## $f6 = -30.00
    lui     $at, 0x40A0                ## $at = 40A00000
    abs.s   $f2, $f0                   
    sub.s   $f0, $f8, $f4              
    mtc1    $at, $f4                   ## $f4 = 5.00
    lui     $at, 0x4100                ## $at = 41000000
    cvt.s.w $f8, $f10                  
    mul.s   $f10, $f2, $f2             
    swc1    $f4, 0x0040($sp)           
    abs.s   $f12, $f0                  
    sub.s   $f0, $f6, $f8              
    mul.s   $f6, $f12, $f12            
    abs.s   $f14, $f0                  
    mul.s   $f4, $f14, $f14            
    add.s   $f8, $f10, $f6             
    mtc1    $at, $f10                  ## $f10 = 8.00
    lui     $at, 0x41A0                ## $at = 41A00000
    swc1    $f8, 0x0030($sp)           
    add.s   $f0, $f8, $f4              
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_80B4F770               
    nop
    mtc1    $at, $f0                   ## $f0 = 20.00
    lwc1    $f6, 0x0024(s0)            ## 00000024
    addiu   t9, $zero, 0x0004          ## t9 = 00000004
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    sub.s   $f8, $f6, $f0              
    lw      a0, 0x007C($sp)            
    addiu   a1, $sp, 0x006C            ## a1 = FFFFFFF4
    swc1    $f8, 0x006C($sp)           
    lwc1    $f4, 0x0028(s0)            ## 00000028
    add.s   $f10, $f4, $f0             
    swc1    $f10, 0x0070($sp)          
    lwc1    $f6, 0x002C(s0)            ## 0000002C
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    jal     func_8001E110              
    swc1    $f6, 0x0074($sp)           
    jal     func_800C9884              
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lw      t1, 0x0004(v0)             ## 8011A5D4
    beql    t1, $zero, lbl_80B4F7D4    
    lw      $ra, 0x0024($sp)           
    lhu     t2, 0x0EF2(v0)             ## 8011B4C2
    andi    t3, t2, 0x2000             ## t3 = 00000000
    bnel    t3, $zero, lbl_80B4F7D4    
    lw      $ra, 0x0024($sp)           
    lh      t4, 0x025C(s0)             ## 0000025C
    addiu   a1, $zero, 0x102C          ## a1 = 0000102C
    addiu   a2, $zero, 0xFF9D          ## a2 = FFFFFF9D
    addiu   t5, t4, 0x0001             ## t5 = 00000001
    sh      t5, 0x025C(s0)             ## 0000025C
    lh      t6, 0x025C(s0)             ## 0000025C
    lw      a0, 0x007C($sp)            
    or      a3, s0, $zero              ## a3 = 00000000
    slti    $at, t6, 0x0003            
    bnel    $at, $zero, lbl_80B4F7D4   
    lw      $ra, 0x0024($sp)           
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x007C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    lui     t8, %hi(func_80B4F7E4)     ## t8 = 80B50000
    addiu   t7, $zero, 0x0032          ## t7 = 00000032
    addiu   t8, t8, %lo(func_80B4F7E4) ## t8 = 80B4F7E4
    sh      t7, 0x024C(s0)             ## 0000024C
    beq     $zero, $zero, lbl_80B4F7D0 
    sw      t8, 0x0204(s0)             ## 00000204
lbl_80B4F770:
    mul.s   $f4, $f14, $f14            
    lwc1    $f8, 0x0030($sp)           
    add.s   $f0, $f8, $f4              
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80B4F7D4               
    lw      $ra, 0x0024($sp)           
    lwc1    $f10, 0x0024(s0)           ## 00000024
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f0                   ## $f0 = 20.00
    swc1    $f10, 0x006C($sp)          
    lwc1    $f6, 0x0028(s0)            ## 00000028
    addiu   t9, $zero, 0x0004          ## t9 = 00000004
    lw      a0, 0x007C($sp)            
    add.s   $f8, $f6, $f0              
    addiu   a1, $sp, 0x006C            ## a1 = FFFFFFF4
    swc1    $f8, 0x0070($sp)           
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    sw      $zero, 0x0014($sp)         
    sw      t9, 0x0010($sp)            
    jal     func_8001E110              
    swc1    $f4, 0x0074($sp)           
    sh      $zero, 0x025C(s0)          ## 0000025C
lbl_80B4F7D0:
    lw      $ra, 0x0024($sp)           
lbl_80B4F7D4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0078           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4F7E4:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x004C($sp)            
    lh      t6, 0x024C(s0)             ## 0000024C
    lui     a0, 0x0600                 ## a0 = 06000000
    bnel    t6, $zero, lbl_80B4F8F0    
    lw      $ra, 0x0034($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x26C4             ## a0 = 060026C4
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f18                  ## $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    addiu   a1, a1, 0x26C4             ## a1 = 060026C4
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    trunc.w.s $f8, $f6                   
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x025E(s0)             ## 0000025E
    lh      t9, 0x025E(s0)             ## 0000025E
    sw      t0, 0x0014($sp)            
    swc1    $f18, 0x0018($sp)          
    mtc1    t9, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lw      t2, 0x0024(s0)             ## 00000024
    addiu   a1, $sp, 0x003C            ## a1 = FFFFFFF4
    lui     $at, 0x4248                ## $at = 42480000
    sw      t2, 0x0000(a1)             ## FFFFFFF4
    lw      t1, 0x0028(s0)             ## 00000028
    mtc1    $at, $f6                   ## $f6 = 50.00
    addiu   t3, $zero, 0x000A          ## t3 = 0000000A
    sw      t1, 0x0004(a1)             ## FFFFFFF8
    lw      t2, 0x002C(s0)             ## 0000002C
    addiu   t4, $zero, 0x0003          ## t4 = 00000003
    addiu   t5, $zero, 0x000F          ## t5 = 0000000F
    sw      t2, 0x0008(a1)             ## FFFFFFFC
    lwc1    $f4, 0x0028(s0)            ## 00000028
    addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
    addiu   t7, $zero, 0x000A          ## t7 = 0000000A
    add.s   $f8, $f4, $f6              
    sw      t7, 0x0020($sp)            
    sw      t6, 0x001C($sp)            
    sw      $zero, 0x0024($sp)         
    swc1    $f8, 0x0040($sp)           
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    lw      a0, 0x004C($sp)            
    lui     a2, 0x4080                 ## a2 = 40800000
    jal     func_8001D29C              
    or      a3, $zero, $zero           ## a3 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387C          ## a1 = 0000387C
    lui     t8, %hi(func_80B4F900)     ## t8 = 80B50000
    addiu   t8, t8, %lo(func_80B4F900) ## t8 = 80B4F900
    sw      t8, 0x0204(s0)             ## 00000204
    lw      $ra, 0x0034($sp)           
lbl_80B4F8F0:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4F900:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      a1, 0x0024($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    lwc1    $f4, 0x0154(a1)            ## 00000154
    sw      a1, 0x0020($sp)            
    addiu   a0, a1, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    swc1    $f4, 0x001C($sp)           
    lw      a1, 0x0020($sp)            
    lwc1    $f6, 0x001C($sp)           
    lui     t7, %hi(func_80B4F96C)     ## t7 = 80B50000
    lh      t6, 0x025E(a1)             ## 0000025E
    addiu   t7, t7, %lo(func_80B4F96C) ## t7 = 80B4F96C
    mtc1    t6, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.le.s  $f10, $f6                  
    nop
    bc1fl   lbl_80B4F960               
    lw      $ra, 0x0014($sp)           
    sw      t7, 0x0204(a1)             ## 00000204
    lw      $ra, 0x0014($sp)           
lbl_80B4F960:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4F96C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x3128             ## a0 = 06003128
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f18                  ## $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x3128             ## a1 = 06003128
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    sh      t7, 0x025E(s0)             ## 0000025E
    lh      t8, 0x025E(s0)             ## 0000025E
    sw      $zero, 0x0014($sp)         
    swc1    $f18, 0x0018($sp)          
    mtc1    t8, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    lui     t9, %hi(func_80B4FA10)     ## t9 = 80B50000
    addiu   t9, t9, %lo(func_80B4FA10) ## t9 = 80B4FA10
    sb      $zero, 0x00AE(s0)          ## 000000AE
    sw      t9, 0x0204(s0)             ## 00000204
    swc1    $f4, 0x0068(s0)            ## 00000068
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4FA10:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0028($sp)            
    lui     $at, %hi(var_80B51C38)     ## $at = 80B50000
    lwc1    $f4, %lo(var_80B51C38)($at) 
    lwc1    $f6, 0x0024(s0)            ## 00000024
    mtc1    $zero, $f8                 ## $f8 = 0.00
    lwc1    $f10, 0x002C(s0)           ## 0000002C
    sub.s   $f12, $f4, $f6             
    jal     func_800CD76C              
    sub.s   $f14, $f8, $f10            
    lui     $at, %hi(var_80B51C3C)     ## $at = 80B50000
    lwc1    $f16, %lo(var_80B51C3C)($at) 
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0032          ## a2 = 00000032
    mul.s   $f18, $f0, $f16            
    addiu   a3, $zero, 0x0BB8          ## a3 = 00000BB8
    sw      $zero, 0x0010($sp)         
    trunc.w.s $f4, $f18                  
    mfc1    a1, $f4                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lh      t7, 0x00B6(s0)             ## 000000B6
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    sh      t7, 0x0032(s0)             ## 00000032
    jal     func_8008D6A8              
    lw      a0, 0x0028($sp)            
    bne     v0, $zero, lbl_80B4FAAC    
    lw      a0, 0x0028($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x40C0                 ## a1 = 40C00000
    beq     v0, $zero, lbl_80B4FAB8    
lbl_80B4FAAC:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387F          ## a1 = 0000387F
lbl_80B4FAB8:
    lui     $at, 0xC1F0                ## $at = C1F00000
    mtc1    $at, $f6                   ## $f6 = -30.00
    lwc1    $f8, 0x002C(s0)            ## 0000002C
    lui     t8, %hi(func_80B4FAFC)     ## t8 = 80B50000
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80B4FAEC               
    lw      $ra, 0x0024($sp)           
    mtc1    $zero, $f10                ## $f10 = 0.00
    addiu   t8, t8, %lo(func_80B4FAFC) ## t8 = 80B4FAFC
    sw      t8, 0x0204(s0)             ## 00000204
    swc1    $f10, 0x0068(s0)           ## 00000068
    lw      $ra, 0x0024($sp)           
lbl_80B4FAEC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4FAFC:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x002C($sp)            
    lh      a1, 0x008A(s0)             ## 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    jal     func_80064508              
    addiu   a3, $zero, 0x1388          ## a3 = 00001388
    lw      a0, 0x002C($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    bne     v0, $zero, lbl_80B4FB54    
    lw      a0, 0x002C($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x40C0                 ## a1 = 40C00000
    beq     v0, $zero, lbl_80B4FB60    
lbl_80B4FB54:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387F          ## a1 = 0000387F
lbl_80B4FB60:
    lh      t6, 0x00B6(s0)             ## 000000B6
    lh      t7, 0x008A(s0)             ## 0000008A
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f6                   ## $f6 = 30.00
    subu    t8, t6, t7                 
    mtc1    t8, $f4                    ## $f4 = 0.00
    lui     t9, %hi(func_80B4FBB0)     ## t9 = 80B50000
    addiu   t9, t9, %lo(func_80B4FBB0) ## t9 = 80B4FBB0
    cvt.s.w $f0, $f4                   
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80B4FBA0               
    lw      $ra, 0x0024($sp)           
    sw      t9, 0x0204(s0)             ## 00000204
    lw      $ra, 0x0024($sp)           
lbl_80B4FBA0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4FBB0:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2E84             ## a0 = 06002E84
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f18                  ## $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x2E84             ## a1 = 06002E84
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    sh      t7, 0x025E(s0)             ## 0000025E
    lh      t8, 0x025E(s0)             ## 0000025E
    sw      $zero, 0x0014($sp)         
    swc1    $f18, 0x0018($sp)          
    mtc1    t8, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    addiu   t9, $zero, 0x10AF          ## t9 = 000010AF
    sh      t9, 0x010E(s0)             ## 0000010E
    lw      a0, 0x0034($sp)            
    andi    a1, t9, 0xFFFF             ## a1 = 000010AF
    jal     func_800DCE14              
    or      a2, $zero, $zero           ## a2 = 00000000
    lui     t0, %hi(func_80B4FC5C)     ## t0 = 80B50000
    addiu   t0, t0, %lo(func_80B4FC5C) ## t0 = 80B4FC5C
    sw      t0, 0x0204(s0)             ## 00000204
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4FC5C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             ## a0 = 0000013C
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v0, $at, lbl_80B4FCF4      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    or      a0, s0, $zero              ## a0 = 00000000
    beql    v0, $zero, lbl_80B4FCF4    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t6, 0x07A0(s0)             ## 000007A0
    sll     t7, t6,  2                 
    addu    t8, s0, t7                 
    jal     func_80049DB4              
    lw      a0, 0x0790(t8)             ## 00000790
    lh      t9, 0x07A0(s0)             ## 000007A0
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, $zero, $zero           ## a1 = 00000000
    sll     t0, t9,  2                 
    addu    t1, s0, t0                 
    lw      t2, 0x0790(t1)             ## 00000790
    addiu   a2, $zero, 0x0008          ## a2 = 00000008
    jal     func_800218EC              
    sh      $zero, 0x0168(t2)          ## 00000168
    lw      t4, 0x0020($sp)            
    lui     t3, %hi(func_80B4FD04)     ## t3 = 80B50000
    addiu   t3, t3, %lo(func_80B4FD04) ## t3 = 80B4FD04
    sw      t3, 0x0204(t4)             ## 00000204
    lw      $ra, 0x001C($sp)           
lbl_80B4FCF4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4FD04:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0168             ## a0 = 06000168
    mtc1    v0, $f4                    ## $f4 = 0.00
    lw      v1, 0x0028($sp)            
    lui     $at, 0xC120                ## $at = C1200000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f18                  ## $f18 = -10.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t9, $zero, 0x0002          ## t9 = 00000002
    addiu   a1, a1, 0x0168             ## a1 = 06000168
    lui     a2, 0x3F80                 ## a2 = 3F800000
    trunc.w.s $f8, $f6                   
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    addiu   a0, v1, 0x013C             ## a0 = 0000013C
    mfc1    t7, $f8                    
    nop
    sh      t7, 0x025E(v1)             ## 0000025E
    lh      t8, 0x025E(v1)             ## 0000025E
    sw      t9, 0x0014($sp)            
    swc1    $f18, 0x0018($sp)          
    mtc1    t8, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lw      v1, 0x0028($sp)            
    lui     t0, %hi(func_80B4FD9C)     ## t0 = 80B50000
    addiu   t0, t0, %lo(func_80B4FD9C) ## t0 = 80B4FD9C
    sw      t0, 0x0204(v1)             ## 00000204
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4FD9C:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x005C($sp)            
    lwc1    $f4, 0x0154(s0)            ## 00000154
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    sw      a0, 0x0044($sp)            
    jal     func_8008C9C0              
    swc1    $f4, 0x0054($sp)           
    lui     $at, 0x4100                ## $at = 41000000
    mtc1    $at, $f8                   ## $f8 = 8.00
    lwc1    $f6, 0x0054($sp)           
    c.le.s  $f8, $f6                   
    nop
    bc1fl   lbl_80B4FE68               
    lh      t9, 0x025E(s0)             ## 0000025E
    lbu     t6, 0x0267(s0)             ## 00000267
    lw      a2, 0x005C($sp)            
    lui     $at, 0x4120                ## $at = 41200000
    bne     t6, $zero, lbl_80B4FE64    
    addiu   a0, a2, 0x1C24             ## a0 = 00001C24
    lwc1    $f10, 0x026C(s0)           ## 0000026C
    mtc1    $at, $f16                  ## $f16 = 10.00
    lwc1    $f2, 0x0270(s0)            ## 00000270
    lwc1    $f12, 0x0274(s0)           ## 00000274
    sub.s   $f0, $f10, $f16            
    addiu   t7, $zero, 0x0013          ## t7 = 00000013
    sw      t7, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    swc1    $f0, 0x0010($sp)           
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a3, $zero, 0x0168          ## a3 = 00000168
    swc1    $f2, 0x0014($sp)           
    jal     func_800253F0              
    swc1    $f12, 0x0018($sp)          
    bne     v0, $zero, lbl_80B4FE50    
    lw      a0, 0x005C($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          ## a2 = 00000007
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B4FE50:
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    sb      t8, 0x0267(s0)             ## 00000267
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387E          ## a1 = 0000387E
lbl_80B4FE64:
    lh      t9, 0x025E(s0)             ## 0000025E
lbl_80B4FE68:
    lwc1    $f18, 0x0054($sp)          
    lui     a0, 0x0600                 ## a0 = 06000000
    mtc1    t9, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.le.s  $f6, $f18                  
    nop
    bc1fl   lbl_80B4FEF4               
    lw      $ra, 0x003C($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x3128             ## a0 = 06003128
    mtc1    v0, $f8                    ## $f8 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f6                   ## $f6 = -10.00
    cvt.s.w $f10, $f8                  
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x3128             ## a1 = 06003128
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    trunc.w.s $f16, $f10                 
    mfc1    t1, $f16                   
    nop
    sh      t1, 0x025E(s0)             ## 0000025E
    lh      t2, 0x025E(s0)             ## 0000025E
    sw      $zero, 0x0014($sp)         
    lw      a0, 0x0044($sp)            
    mtc1    t2, $f4                    ## $f4 = 0.00
    swc1    $f6, 0x0018($sp)           
    cvt.s.w $f18, $f4                  
    jal     func_8008D17C              
    swc1    $f18, 0x0010($sp)          
    lui     t3, %hi(func_80B4FF04)     ## t3 = 80B50000
    addiu   t3, t3, %lo(func_80B4FF04) ## t3 = 80B4FF04
    sw      t3, 0x0204(s0)             ## 00000204
    lw      $ra, 0x003C($sp)           
lbl_80B4FEF4:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B4FF04:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0028($sp)            
    sw      a1, 0x003C($sp)            
    addiu   s1, s0, 0x013C             ## s1 = 0000013C
    jal     func_8008C9C0              
    or      a0, s1, $zero              ## a0 = 0000013C
    lui     $at, 0xC334                ## $at = C3340000
    lwc1    $f4, 0x020C(s0)            ## 0000020C
    lwc1    $f6, 0x0024(s0)            ## 00000024
    mtc1    $at, $f8                   ## $f8 = -180.00
    lwc1    $f10, 0x002C(s0)           ## 0000002C
    sub.s   $f12, $f4, $f6             
    sub.s   $f14, $f8, $f10            
    swc1    $f12, 0x0034($sp)          
    jal     func_800CD76C              
    swc1    $f14, 0x0030($sp)          
    lui     $at, %hi(var_80B51C40)     ## $at = 80B50000
    lwc1    $f16, %lo(var_80B51C40)($at) 
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    mul.s   $f18, $f0, $f16            
    addiu   a3, $zero, 0x1388          ## a3 = 00001388
    sw      $zero, 0x0010($sp)         
    trunc.w.s $f4, $f18                  
    mfc1    a1, $f4                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lwc1    $f12, 0x0034($sp)          
    jal     func_800CD76C              
    lwc1    $f14, 0x0030($sp)          
    lui     $at, %hi(var_80B51C44)     ## $at = 80B50000
    lwc1    $f6, %lo(var_80B51C44)($at) 
    lh      t7, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x41A0                ## $at = 41A00000
    mul.s   $f8, $f0, $f6              
    mtc1    $at, $f18                  ## $f18 = 20.00
    lui     $at, 0x3F80                ## $at = 3F800000
    or      a0, s1, $zero              ## a0 = 0000013C
    trunc.w.s $f10, $f8                  
    mfc1    t9, $f10                   
    nop
    sll     t0, t9, 16                 
    sra     t1, t0, 16                 
    subu    t2, t7, t1                 
    mtc1    t2, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f0, $f16                  
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f18                  
    nop
    bc1f    lbl_80B4FFF4               
    nop
    mtc1    $at, $f4                   ## $f4 = 1.00
    nop
    swc1    $f4, 0x0068(s0)            ## 00000068
lbl_80B4FFF4:
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    bne     v0, $zero, lbl_80B50010    
    or      a0, s1, $zero              ## a0 = 0000013C
    jal     func_8008D6A8              
    lui     a1, 0x40C0                 ## a1 = 40C00000
    beq     v0, $zero, lbl_80B5001C    
lbl_80B50010:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387F          ## a1 = 0000387F
lbl_80B5001C:
    lui     $at, 0xC32C                ## $at = C32C0000
    mtc1    $at, $f8                   ## $f8 = -172.00
    lwc1    $f6, 0x002C(s0)            ## 0000002C
    lh      t3, 0x00B6(s0)             ## 000000B6
    lui     a0, 0x0600                 ## a0 = 06000000
    c.lt.s  $f6, $f8                   
    sh      t3, 0x0032(s0)             ## 00000032
    bc1fl   lbl_80B500C4               
    lw      $ra, 0x002C($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x24CC             ## a0 = 060024CC
    mtc1    v0, $f10                   ## $f10 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f8                   ## $f8 = -10.00
    cvt.s.w $f16, $f10                 
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    addiu   a1, a1, 0x24CC             ## a1 = 060024CC
    or      a0, s1, $zero              ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    trunc.w.s $f18, $f16                 
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    mfc1    t5, $f18                   
    nop
    sh      t5, 0x025E(s0)             ## 0000025E
    lh      t6, 0x025E(s0)             ## 0000025E
    sw      t8, 0x0014($sp)            
    swc1    $f8, 0x0018($sp)           
    mtc1    t6, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    jal     func_8008D17C              
    swc1    $f6, 0x0010($sp)           
    lui     $at, 0xC32D                ## $at = C32D0000
    mtc1    $at, $f10                  ## $f10 = -173.00
    mtc1    $zero, $f16                ## $f16 = 0.00
    lui     t9, %hi(func_80B500D4)     ## t9 = 80B50000
    addiu   t9, t9, %lo(func_80B500D4) ## t9 = 80B500D4
    sw      t9, 0x0204(s0)             ## 00000204
    swc1    $f10, 0x002C(s0)           ## 0000002C
    swc1    $f16, 0x0068(s0)           ## 00000068
    lw      $ra, 0x002C($sp)           
lbl_80B500C4:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80B500D4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      a1, 0x0024($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    lwc1    $f4, 0x0154(a1)            ## 00000154
    sw      a1, 0x0020($sp)            
    addiu   a0, a1, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    swc1    $f4, 0x001C($sp)           
    lw      a1, 0x0020($sp)            
    lwc1    $f6, 0x001C($sp)           
    lui     t7, %hi(func_80B4F46C)     ## t7 = 80B50000
    lh      t6, 0x025E(a1)             ## 0000025E
    addiu   t7, t7, %lo(func_80B4F46C) ## t7 = 80B4F46C
    mtc1    t6, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.le.s  $f10, $f6                  
    nop
    bc1fl   lbl_80B50134               
    lw      $ra, 0x0014($sp)           
    sw      t7, 0x0204(a1)             ## 00000204
    lw      $ra, 0x0014($sp)           
lbl_80B50134:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B50140:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lh      t6, 0x0254(s0)             ## 00000254
    lui     a0, 0x0600                 ## a0 = 06000000
    bnel    t6, $zero, lbl_80B501E8    
    lw      $ra, 0x002C($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x0430             ## a0 = 06000430
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f18                  ## $f18 = -10.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    trunc.w.s $f8, $f6                   
    addiu   a1, a1, 0x0430             ## a1 = 06000430
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x025E(s0)             ## 0000025E
    lh      t9, 0x025E(s0)             ## 0000025E
    sw      t0, 0x0014($sp)            
    swc1    $f18, 0x0018($sp)          
    mtc1    t9, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lui     $at, 0x4100                ## $at = 41000000
    mtc1    $at, $f4                   ## $f4 = 8.00
    lui     t1, %hi(func_80B501F8)     ## t1 = 80B50000
    addiu   t1, t1, %lo(func_80B501F8) ## t1 = 80B501F8
    sb      $zero, 0x0208(s0)          ## 00000208
    sw      t1, 0x0204(s0)             ## 00000204
    swc1    $f4, 0x0154(s0)            ## 00000154
    lw      $ra, 0x002C($sp)           
lbl_80B501E8:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B501F8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a1, 0x013C             ## a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B50224:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x0254(s0)             ## 00000254
    lui     a0, 0x0600                 ## a0 = 06000000
    bnel    t6, $zero, lbl_80B50320    
    lw      $ra, 0x0034($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x0B70             ## a0 = 06000B70
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f18                  ## $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    addiu   a1, a1, 0x0B70             ## a1 = 06000B70
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    trunc.w.s $f8, $f6                   
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x025E(s0)             ## 0000025E
    lh      t9, 0x025E(s0)             ## 0000025E
    sw      t0, 0x0014($sp)            
    swc1    $f18, 0x0018($sp)          
    mtc1    t9, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lh      t1, 0x0264(s0)             ## 00000264
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    beq     t1, $at, lbl_80B502C4      
    lui     a2, 0x4080                 ## a2 = 40800000
    addiu   t2, $zero, 0xFFFF          ## t2 = FFFFFFFF
    sh      t2, 0x0262(s0)             ## 00000262
lbl_80B502C4:
    addiu   t3, $zero, 0x000A          ## t3 = 0000000A
    addiu   t4, $zero, 0x0003          ## t4 = 00000003
    addiu   t5, $zero, 0x000F          ## t5 = 0000000F
    addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
    addiu   t7, $zero, 0x000A          ## t7 = 0000000A
    sw      t7, 0x0020($sp)            
    sw      t6, 0x001C($sp)            
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    lw      a0, 0x003C($sp)            
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_8001D29C              
    sw      $zero, 0x0024($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387C          ## a1 = 0000387C
    lui     t9, %hi(func_80B50330)     ## t9 = 80B50000
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   t9, t9, %lo(func_80B50330) ## t9 = 80B50330
    sb      t8, 0x0208(s0)             ## 00000208
    sw      t9, 0x0204(s0)             ## 00000204
    lw      $ra, 0x0034($sp)           
lbl_80B50320:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B50330:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lwc1    $f4, 0x0154(s0)            ## 00000154
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    swc1    $f4, 0x0030($sp)           
    lh      t6, 0x025E(s0)             ## 0000025E
    lwc1    $f6, 0x0030($sp)           
    mtc1    t6, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.le.s  $f10, $f6                  
    nop
    bc1fl   lbl_80B50398               
    lh      t9, 0x024C(s0)             ## 0000024C
    lh      t7, 0x0264(s0)             ## 00000264
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    lui     t8, %hi(func_80B50F28)     ## t8 = 80B50000
    bne     t7, $at, lbl_80B50394      
    addiu   t8, t8, %lo(func_80B50F28) ## t8 = 80B50F28
    beq     $zero, $zero, lbl_80B50550 
    sw      t8, 0x0204(s0)             ## 00000204
lbl_80B50394:
    lh      t9, 0x024C(s0)             ## 0000024C
lbl_80B50398:
    bnel    t9, $zero, lbl_80B50490    
    lh      t8, 0x024A(s0)             ## 0000024A
    lbu     t0, 0x0268(s0)             ## 00000268
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    bne     t0, $zero, lbl_80B503D0    
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    lh      a1, 0x008A(s0)             ## 0000008A
    swc1    $f0, 0x002C($sp)           
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a3, $zero, 0x1388          ## a3 = 00001388
    beq     $zero, $zero, lbl_80B5042C 
    lwc1    $f0, 0x002C($sp)           
lbl_80B503D0:
    lwc1    $f16, 0x0278(s0)           ## 00000278
    lwc1    $f18, 0x0024(s0)           ## 00000024
    lwc1    $f4, 0x0280(s0)            ## 00000280
    lwc1    $f8, 0x002C(s0)            ## 0000002C
    sub.s   $f12, $f16, $f18           
    jal     func_800CD76C              
    sub.s   $f14, $f4, $f8             
    lui     $at, %hi(var_80B51C48)     ## $at = 80B50000
    lwc1    $f6, %lo(var_80B51C48)($at) 
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    mul.s   $f10, $f0, $f6             
    addiu   a3, $zero, 0x0BB8          ## a3 = 00000BB8
    sw      $zero, 0x0010($sp)         
    trunc.w.s $f16, $f10                 
    mfc1    a1, $f16                   
    nop
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lui     $at, 0x42B4                ## $at = 42B40000
    mtc1    $at, $f0                   ## $f0 = 90.00
    nop
lbl_80B5042C:
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f18                  ## $f18 = 10.00
    jal     func_80026D64              
    add.s   $f12, $f18, $f0            
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    nop
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80B5052C               
    lui     $at, 0x428C                ## $at = 428C0000
    lh      t2, 0x0264(s0)             ## 00000264
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     t2, $at, lbl_80B50528      
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f12                  ## $f12 = 30.00
    jal     func_80026D64              
    nop
    trunc.w.s $f8, $f0                   
    mfc1    t6, $f8                    
    nop
    addiu   t7, t6, 0x001E             ## t7 = 0000001E
    beq     $zero, $zero, lbl_80B50528 
    sh      t7, 0x024C(s0)             ## 0000024C
    lh      t8, 0x024A(s0)             ## 0000024A
lbl_80B50490:
    bnel    t8, $zero, lbl_80B504E4    
    lh      v0, 0x0262(s0)             ## 00000262
    lh      t9, 0x0262(s0)             ## 00000262
    addiu   t2, $zero, 0xFFFF          ## t2 = FFFFFFFF
    addiu   t0, t9, 0x0001             ## t0 = 00000001
    sh      t0, 0x0262(s0)             ## 00000262
    lh      t1, 0x0262(s0)             ## 00000262
    slti    $at, t1, 0x0002            
    bnel    $at, $zero, lbl_80B504C0   
    lui     $at, 0x4120                ## $at = 41200000
    sh      t2, 0x0262(s0)             ## 00000262
    lui     $at, 0x4120                ## $at = 41200000
lbl_80B504C0:
    mtc1    $at, $f12                  ## $f12 = 10.00
    jal     func_80026D64              
    nop
    trunc.w.s $f6, $f0                   
    mfc1    t6, $f6                    
    nop
    addiu   t7, t6, 0x000A             ## t7 = 0000000A
    sh      t7, 0x024A(s0)             ## 0000024A
    lh      v0, 0x0262(s0)             ## 00000262
lbl_80B504E4:
    lh      a1, 0x008A(s0)             ## 0000008A
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    beq     v0, $zero, lbl_80B5051C    
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    sll     t8, v0,  2                 
    addu    t8, t8, v0                 
    sll     t8, t8,  3                 
    subu    t8, t8, v0                 
    sll     t8, t8,  4                 
    addu    t8, t8, v0                 
    sll     t8, t8,  3                 
    addu    a1, a1, t8                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
lbl_80B5051C:
    addiu   a3, $zero, 0x1388          ## a3 = 00001388
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
lbl_80B50528:
    lui     $at, 0x428C                ## $at = 428C0000
lbl_80B5052C:
    mtc1    $at, $f16                  ## $f16 = 70.00
    lwc1    $f10, 0x0090(s0)           ## 00000090
    lui     t9, %hi(func_80B50C54)     ## t9 = 80B50000
    addiu   t9, t9, %lo(func_80B50C54) ## t9 = 80B50C54
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_80B50554               
    lw      $ra, 0x0024($sp)           
    sw      t9, 0x0204(s0)             ## 00000204
lbl_80B50550:
    lw      $ra, 0x0024($sp)           
lbl_80B50554:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B50564:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x0254(s0)             ## 00000254
    lui     a0, 0x0600                 ## a0 = 06000000
    bnel    t6, $zero, lbl_80B50648    
    lw      $ra, 0x0034($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x0894             ## a0 = 06000894
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f18                  ## $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    addiu   a1, a1, 0x0894             ## a1 = 06000894
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    trunc.w.s $f8, $f6                   
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x025E(s0)             ## 0000025E
    lh      t9, 0x025E(s0)             ## 0000025E
    sw      t0, 0x0014($sp)            
    swc1    $f18, 0x0018($sp)          
    mtc1    t9, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    sb      $zero, 0x0208(s0)          ## 00000208
    addiu   t1, $zero, 0x000A          ## t1 = 0000000A
    addiu   t2, $zero, 0x0003          ## t2 = 00000003
    addiu   t3, $zero, 0x000F          ## t3 = 0000000F
    addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
    addiu   t5, $zero, 0x000A          ## t5 = 0000000A
    sw      t5, 0x0020($sp)            
    sw      t4, 0x001C($sp)            
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    sw      $zero, 0x0024($sp)         
    lw      a0, 0x003C($sp)            
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    lui     a2, 0x4080                 ## a2 = 40800000
    jal     func_8001D29C              
    or      a3, $zero, $zero           ## a3 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387C          ## a1 = 0000387C
    lui     t6, %hi(func_80B50658)     ## t6 = 80B50000
    addiu   t6, t6, %lo(func_80B50658) ## t6 = 80B50658
    sw      t6, 0x0204(s0)             ## 00000204
    lw      $ra, 0x0034($sp)           
lbl_80B50648:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B50658:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      a1, 0x0024($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    lwc1    $f4, 0x0154(a1)            ## 00000154
    sw      a1, 0x0020($sp)            
    addiu   a0, a1, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    swc1    $f4, 0x001C($sp)           
    lw      a1, 0x0020($sp)            
    lwc1    $f6, 0x001C($sp)           
    lh      t6, 0x025E(a1)             ## 0000025E
    mtc1    t6, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.le.s  $f10, $f6                  
    nop
    bc1fl   lbl_80B50724               
    lw      $ra, 0x0014($sp)           
    lh      t7, 0x0264(a1)             ## 00000264
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   t9, $zero, 0x012C          ## t9 = 0000012C
    beq     t7, $at, lbl_80B50714      
    lui     t0, %hi(func_80B509E0)     ## t0 = 80B50000
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f12                  ## $f12 = 2.00
    jal     func_80026D64              
    sw      a1, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    lh      t8, 0x025A(a1)             ## 0000025A
    trunc.w.s $f10, $f0                  
    mtc1    t8, $f16                   ## $f16 = 0.00
    lui     t8, %hi(func_80B50730)     ## t8 = 80B50000
    mfc1    t6, $f10                   
    cvt.s.w $f18, $f16                 
    addiu   t8, t8, %lo(func_80B50730) ## t8 = 80B50730
    sw      t8, 0x0204(a1)             ## 00000204
    mul.s   $f8, $f18, $f4             
    trunc.w.s $f6, $f8                   
    mfc1    t2, $f6                    
    nop
    addu    t7, t6, t2                 
    beq     $zero, $zero, lbl_80B50720 
    sh      t7, 0x0254(a1)             ## 00000254
lbl_80B50714:
    addiu   t0, t0, %lo(func_80B509E0) ## t0 = 000009E0
    sh      t9, 0x024A(a1)             ## 0000024A
    sw      t0, 0x0204(a1)             ## 00000204
lbl_80B50720:
    lw      $ra, 0x0014($sp)           
lbl_80B50724:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B50730:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2E1C             ## a0 = 06002E1C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f18                  ## $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x2E1C             ## a1 = 06002E1C
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    sh      t7, 0x025E(s0)             ## 0000025E
    lh      t8, 0x025E(s0)             ## 0000025E
    sw      $zero, 0x0014($sp)         
    swc1    $f18, 0x0018($sp)          
    mtc1    t8, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f4                   ## $f4 = 3.00
    lui     t0, %hi(func_80B507D8)     ## t0 = 80B50000
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    addiu   t0, t0, %lo(func_80B507D8) ## t0 = 80B507D8
    sb      t9, 0x0208(s0)             ## 00000208
    sw      t0, 0x0204(s0)             ## 00000204
    swc1    $f4, 0x0068(s0)            ## 00000068
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B507D8:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lh      v1, 0x0248(s0)             ## 00000248
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     v1, $zero, lbl_80B508E4    
    nop
    lh      t6, 0x0254(s0)             ## 00000254
    bne     t6, $zero, lbl_80B508E4    
    nop
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f2                   ## $f2 = 10.00
    nop
    lwc1    $f4, 0x0278(s0)            ## 00000278
    lwc1    $f6, 0x0024(s0)            ## 00000024
    lwc1    $f8, 0x0280(s0)            ## 00000280
    lwc1    $f10, 0x002C(s0)           ## 0000002C
    sub.s   $f12, $f4, $f6             
    sub.s   $f14, $f8, $f10            
    abs.s   $f0, $f12                  
    c.lt.s  $f0, $f2                   
    nop
    bc1f    lbl_80B50898               
    nop
    abs.s   $f0, $f14                  
    lw      a0, 0x0034($sp)            
    c.lt.s  $f0, $f2                   
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    bc1f    lbl_80B50898               
    nop
    swc1    $f12, 0x002C($sp)          
    jal     func_800DD464              
    swc1    $f14, 0x0028($sp)          
    lwc1    $f12, 0x002C($sp)          
    beq     v0, $zero, lbl_80B50898    
    lwc1    $f14, 0x0028($sp)          
    mtc1    $zero, $f16                ## $f16 = 0.00
    lui     t8, %hi(func_80B509E0)     ## t8 = 80B50000
    addiu   t7, $zero, 0x0005          ## t7 = 00000005
    addiu   t8, t8, %lo(func_80B509E0) ## t8 = 80B509E0
    sh      t7, 0x0264(s0)             ## 00000264
    sw      t8, 0x0204(s0)             ## 00000204
    beq     $zero, $zero, lbl_80B509CC 
    swc1    $f16, 0x0068(s0)           ## 00000068
lbl_80B50898:
    jal     func_800CD76C              
    nop
    lui     $at, %hi(var_80B51C4C)     ## $at = 80B50000
    lwc1    $f18, %lo(var_80B51C4C)($at) 
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    mul.s   $f4, $f0, $f18             
    addiu   a3, $zero, 0x0BB8          ## a3 = 00000BB8
    sw      $zero, 0x0010($sp)         
    trunc.w.s $f6, $f4                   
    mfc1    a1, $f6                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lh      t0, 0x00B6(s0)             ## 000000B6
    sh      t0, 0x0032(s0)             ## 00000032
    beq     $zero, $zero, lbl_80B50968 
    lh      v0, 0x024E(s0)             ## 0000024E
lbl_80B508E4:
    bne     v1, $at, lbl_80B50934      
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f12                  ## $f12 = 20.00
    jal     func_80026D64              
    nop
    trunc.w.s $f8, $f0                   
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f18                  ## $f18 = 20.00
    mfc1    t2, $f8                    
    nop
    sll     t3, t2, 16                 
    sra     t4, t3, 16                 
    mtc1    t4, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t6, $f6                    
    nop
    sh      t6, 0x0254(s0)             ## 00000254
lbl_80B50934:
    lh      a1, 0x008A(s0)             ## 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    jal     func_80064508              
    addiu   a3, $zero, 0x1388          ## a3 = 00001388
    lh      a1, 0x008A(s0)             ## 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    jal     func_80064508              
    addiu   a3, $zero, 0x1388          ## a3 = 00001388
    lh      v0, 0x024E(s0)             ## 0000024E
lbl_80B50968:
    bne     v0, $zero, lbl_80B50998    
    andi    t0, v0, 0x0003             ## t0 = 00000000
    lh      t8, 0x025A(s0)             ## 0000025A
    addiu   t7, $zero, 0x0014          ## t7 = 00000014
    sh      t7, 0x024E(s0)             ## 0000024E
    andi    t9, t8, 0x0001             ## t9 = 00000000
    bne     t9, $zero, lbl_80B509A8    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3880          ## a1 = 00003880
    beq     $zero, $zero, lbl_80B509AC 
    lhu     v0, 0x0088(s0)             ## 00000088
lbl_80B50998:
    bne     t0, $zero, lbl_80B509A8    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387F          ## a1 = 0000387F
lbl_80B509A8:
    lhu     v0, 0x0088(s0)             ## 00000088
lbl_80B509AC:
    andi    t1, v0, 0x0008             ## t1 = 00000000
    beq     t1, $zero, lbl_80B509CC    
    andi    t2, v0, 0x0001             ## t2 = 00000000
    beq     t2, $zero, lbl_80B509CC    
    lui     $at, 0x40F0                ## $at = 40F00000
    mtc1    $at, $f8                   ## $f8 = 7.50
    nop
    swc1    $f8, 0x0060(s0)            ## 00000060
lbl_80B509CC:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B509E0:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x06CC             ## a0 = 060006CC
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f18                  ## $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x06CC             ## a1 = 060006CC
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    sh      t7, 0x025E(s0)             ## 0000025E
    lh      t8, 0x025E(s0)             ## 0000025E
    sw      $zero, 0x0014($sp)         
    swc1    $f18, 0x0018($sp)          
    mtc1    t8, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lui     $at, 0x41A0                ## $at = 41A00000
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    mtc1    $at, $f12                  ## $f12 = 20.00
    jal     func_80026D64              
    sb      t9, 0x0208(s0)             ## 00000208
    trunc.w.s $f4, $f0                   
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f10                  ## $f10 = 20.00
    addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
    mfc1    t1, $f4                    
    sh      t6, 0x0262(s0)             ## 00000262
    lui     $at, %hi(var_80B51C50)     ## $at = 80B50000
    sll     t2, t1, 16                 
    sra     t3, t2, 16                 
    mtc1    t3, $f6                    ## $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t5, $f18                   
    nop
    sh      t5, 0x0254(s0)             ## 00000254
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80B51C50)($at) 
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    lui     t8, %hi(func_80B50AF0)     ## t8 = 80B50000
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    c.lt.s  $f0, $f4                   
    addiu   t8, t8, %lo(func_80B50AF0) ## t8 = 80B50AF0
    bc1fl   lbl_80B50ADC               
    sw      t8, 0x0204(s0)             ## 00000204
    sh      t7, 0x0262(s0)             ## 00000262
    sw      t8, 0x0204(s0)             ## 00000204
lbl_80B50ADC:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B50AF0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lh      t6, 0x024A(s0)             ## 0000024A
    bnel    t6, $zero, lbl_80B50B54    
    lh      t1, 0x0254(s0)             ## 00000254
    lh      t7, 0x0264(s0)             ## 00000264
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    lui     t0, %hi(func_80B512B8)     ## t0 = 80B50000
    bne     t7, $at, lbl_80B50B44      
    addiu   t0, t0, %lo(func_80B512B8) ## t0 = 80B512B8
    lui     t9, %hi(func_80B50C54)     ## t9 = 80B50000
    addiu   t8, $zero, 0x0004          ## t8 = 00000004
    addiu   t9, t9, %lo(func_80B50C54) ## t9 = 80B50C54
    sh      t8, 0x0264(s0)             ## 00000264
    beq     $zero, $zero, lbl_80B50C40 
    sw      t9, 0x0204(s0)             ## 00000204
lbl_80B50B44:
    sh      $zero, 0x0264(s0)          ## 00000264
    beq     $zero, $zero, lbl_80B50C40 
    sw      t0, 0x0204(s0)             ## 00000204
    lh      t1, 0x0254(s0)             ## 00000254
lbl_80B50B54:
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    beq     t1, $zero, lbl_80B50BCC    
    addiu   a3, $zero, 0x1388          ## a3 = 00001388
    lh      a1, 0x008A(s0)             ## 0000008A
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lh      t2, 0x0254(s0)             ## 00000254
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     t2, $at, lbl_80B50C40      
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f12                  ## $f12 = 20.00
    jal     func_80026D64              
    nop
    trunc.w.s $f4, $f0                   
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f10                  ## $f10 = 20.00
    lh      t9, 0x0262(s0)             ## 00000262
    mfc1    t4, $f4                    
    subu    t0, $zero, t9              
    sll     t5, t4, 16                 
    sra     t6, t5, 16                 
    mtc1    t6, $f6                    ## $f6 = 0.00
    sh      t0, 0x0262(s0)             ## 00000262
    cvt.s.w $f8, $f6                   
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    beq     $zero, $zero, lbl_80B50C40 
    sh      t8, 0x024C(s0)             ## 0000024C
lbl_80B50BCC:
    lh      v0, 0x024C(s0)             ## 0000024C
    beql    v0, $zero, lbl_80B50C44    
    lw      $ra, 0x0024($sp)           
    lh      t2, 0x0262(s0)             ## 00000262
    lh      t1, 0x00B6(s0)             ## 000000B6
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    sll     t3, t2, 11                 
    addu    t4, t1, t3                 
    bne     v0, $at, lbl_80B50C40      
    sh      t4, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f12                  ## $f12 = 20.00
    jal     func_80026D64              
    nop
    trunc.w.s $f4, $f0                   
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f10                  ## $f10 = 20.00
    mfc1    t6, $f4                    
    nop
    sll     t7, t6, 16                 
    sra     t8, t7, 16                 
    mtc1    t8, $f6                    ## $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t0, $f18                   
    nop
    sh      t0, 0x0254(s0)             ## 00000254
lbl_80B50C40:
    lw      $ra, 0x0024($sp)           
lbl_80B50C44:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B50C54:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lh      v0, 0x0254(s0)             ## 00000254
    addiu   v1, $zero, 0x0001          ## v1 = 00000001
    lui     a0, 0x0600                 ## a0 = 06000000
    beq     v0, $zero, lbl_80B50CA0    
    nop
    bnel    v1, v0, lbl_80B50D20       
    lw      $ra, 0x002C($sp)           
    lbu     t6, 0x0266(s0)             ## 00000266
    bnel    v1, t6, lbl_80B50D20       
    lw      $ra, 0x002C($sp)           
    jal     func_800646F0              
    addiu   a0, $zero, 0x4806          ## a0 = 00004806
    beq     $zero, $zero, lbl_80B50D20 
    lw      $ra, 0x002C($sp)           
lbl_80B50CA0:
    jal     func_8008A194              
    addiu   a0, a0, 0x0430             ## a0 = 00000430
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f18                  ## $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    addiu   a1, a1, 0x0430             ## a1 = 06000430
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    trunc.w.s $f8, $f6                   
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x025E(s0)             ## 0000025E
    lh      t9, 0x025E(s0)             ## 0000025E
    sw      t0, 0x0014($sp)            
    swc1    $f18, 0x0018($sp)          
    mtc1    t9, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    sb      $zero, 0x0208(s0)          ## 00000208
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387D          ## a1 = 0000387D
    lui     t1, %hi(func_80B50D30)     ## t1 = 80B50000
    addiu   t1, t1, %lo(func_80B50D30) ## t1 = 80B50D30
    sw      t1, 0x0204(s0)             ## 00000204
    lw      $ra, 0x002C($sp)           
lbl_80B50D20:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B50D30:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x004C($sp)            
    lwc1    $f4, 0x0154(s0)            ## 00000154
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    swc1    $f4, 0x0040($sp)           
    lh      t6, 0x025E(s0)             ## 0000025E
    lwc1    $f6, 0x0040($sp)           
    lw      a0, 0x004C($sp)            
    mtc1    t6, $f8                    ## $f8 = 0.00
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    lui     a2, 0x4080                 ## a2 = 40800000
    cvt.s.w $f10, $f8                  
    or      a3, $zero, $zero           ## a3 = 00000000
    addiu   t7, $zero, 0x000A          ## t7 = 0000000A
    addiu   t8, $zero, 0x0003          ## t8 = 00000003
    addiu   t9, $zero, 0x000F          ## t9 = 0000000F
    addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
    c.le.s  $f10, $f6                  
    addiu   t1, $zero, 0x000A          ## t1 = 0000000A
    bc1fl   lbl_80B50EE4               
    lw      $ra, 0x0034($sp)           
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    sw      t9, 0x0018($sp)            
    sw      t0, 0x001C($sp)            
    sw      t1, 0x0020($sp)            
    jal     func_8001D29C              
    sw      $zero, 0x0024($sp)         
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387C          ## a1 = 0000387C
    lh      v0, 0x0264(s0)             ## 00000264
    lui     t2, %hi(func_80B50140)     ## t2 = 80B50000
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     v0, $zero, lbl_80B50DF4    
    addiu   t2, t2, %lo(func_80B50140) ## t2 = 80B50140
    beq     v0, $at, lbl_80B50DFC      
    lui     t3, %hi(func_80B50EF4)     ## t3 = 80B50000
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     v0, $at, lbl_80B50E08      
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beql    v0, $at, lbl_80B50E0C      
    lui     $at, 0x41A0                ## $at = 41A00000
    beq     $zero, $zero, lbl_80B50EE4 
    lw      $ra, 0x0034($sp)           
lbl_80B50DF4:
    beq     $zero, $zero, lbl_80B50EE0 
    sw      t2, 0x0204(s0)             ## 00000204
lbl_80B50DFC:
    addiu   t3, t3, %lo(func_80B50EF4) ## t3 = 80B50EF4
    beq     $zero, $zero, lbl_80B50EE0 
    sw      t3, 0x0204(s0)             ## 00000204
lbl_80B50E08:
    lui     $at, 0x41A0                ## $at = 41A00000
lbl_80B50E0C:
    mtc1    $at, $f18                  ## $f18 = 20.00
    lwc1    $f16, 0x0028(s0)           ## 00000028
    lw      a3, 0x0024(s0)             ## 00000024
    lw      a1, 0x004C($sp)            
    add.s   $f4, $f16, $f18            
    addiu   t5, $zero, 0x0003          ## t5 = 00000003
    addiu   a2, $zero, 0x0131          ## a2 = 00000131
    addiu   a0, a1, 0x1C24             ## a0 = 00001C24
    swc1    $f4, 0x0010($sp)           
    lwc1    $f8, 0x002C(s0)            ## 0000002C
    sw      t5, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80025110              ## ActorSpawn
    swc1    $f8, 0x0014($sp)           
    beq     v0, $zero, lbl_80B50ED0    
    or      v1, v0, $zero              ## v1 = 00000000
    lh      v0, 0x0264(s0)             ## 00000264
    lui     $at, %hi(var_80B51C54)     ## $at = 80B50000
    addiu   v0, v0, 0xFFFD             ## v0 = FFFFFFFD
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sh      v0, 0x0140(v1)             ## 00000140
    sw      v1, 0x0044($sp)            
    sh      v0, 0x003E($sp)            
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80B51C54)($at) 
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    lh      v0, 0x003E($sp)            
    lui     $at, 0x40A0                ## $at = 40A00000
    c.lt.s  $f0, $f6                   
    mtc1    $at, $f10                  ## $f10 = 5.00
    lw      v1, 0x0044($sp)            
    addiu   t6, v0, 0x0001             ## t6 = 00000001
    bc1fl   lbl_80B50EAC               
    lh      t7, 0x0140(v1)             ## 00000140
    sh      t6, 0x0140(v1)             ## 00000140
    lh      t7, 0x0140(v1)             ## 00000140
lbl_80B50EAC:
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    swc1    $f10, 0x0060(v1)           ## 00000060
    bne     t7, $at, lbl_80B50EC8      
    lui     $at, 0x40E0                ## $at = 40E00000
    mtc1    $at, $f16                  ## $f16 = 7.00
    nop
    swc1    $f16, 0x0060(v1)           ## 00000060
lbl_80B50EC8:
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
lbl_80B50ED0:
    lui     t8, %hi(func_80B50140)     ## t8 = 80B50000
    addiu   t8, t8, %lo(func_80B50140) ## t8 = 80B50140
    sh      $zero, 0x0264(s0)          ## 00000264
    sw      t8, 0x0204(s0)             ## 00000204
lbl_80B50EE0:
    lw      $ra, 0x0034($sp)           
lbl_80B50EE4:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B50EF4:
    sw      a1, 0x0004($sp)            
    lui     $at, 0x428C                ## $at = 428C0000
    mtc1    $at, $f4                   ## $f4 = 70.00
    lwc1    $f6, 0x0090(a0)            ## 00000090
    lui     t6, %hi(func_80B50224)     ## t6 = 80B50000
    addiu   t6, t6, %lo(func_80B50224) ## t6 = 80B50224
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80B50F20               
    nop
    sw      t6, 0x0204(a0)             ## 00000204
lbl_80B50F20:
    jr      $ra                        
    nop


func_80B50F28:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lh      t6, 0x0254(s0)             ## 00000254
    lui     a0, 0x0600                 ## a0 = 06000000
    bnel    t6, $zero, lbl_80B50FE4    
    lw      $ra, 0x002C($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x031C             ## a0 = 0600031C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f18                  ## $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    addiu   a1, a1, 0x031C             ## a1 = 0600031C
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    trunc.w.s $f8, $f6                   
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x025E(s0)             ## 0000025E
    lh      t9, 0x025E(s0)             ## 0000025E
    sw      t0, 0x0014($sp)            
    swc1    $f18, 0x0018($sp)          
    mtc1    t9, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lw      a0, 0x0034($sp)            
    addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    sb      t1, 0x00AE(s0)             ## 000000AE
    sb      t2, 0x0208(s0)             ## 00000208
    sh      $zero, 0x024A(s0)          ## 0000024A
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a3, $zero, 0x0005          ## a3 = 00000005
    jal     func_800265D4              
    addiu   a1, a0, 0x1C24             ## a1 = 00001C24
    lui     t3, %hi(func_80B50FF4)     ## t3 = 80B50000
    addiu   t3, t3, %lo(func_80B50FF4) ## t3 = 80B50FF4
    sw      t3, 0x0204(s0)             ## 00000204
    lw      $ra, 0x002C($sp)           
lbl_80B50FE4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B50FF4:
    addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0084($sp)            
    lw      t6, 0x0084($sp)            
    lwc1    $f4, 0x0154(s0)            ## 00000154
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lw      v1, 0x1C44(t6)             ## 00001C44
    swc1    $f4, 0x0074($sp)           
    jal     func_8008C9C0              
    sw      v1, 0x007C($sp)            
    lh      a1, 0x008A(s0)             ## 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    jal     func_80064508              
    addiu   a3, $zero, 0x1388          ## a3 = 00001388
    lw      v1, 0x007C($sp)            
    lui     $at, 0x41F0                ## $at = 41F00000
    lwc1    $f8, 0x026C(s0)            ## 0000026C
    mtc1    $at, $f18                  ## $f18 = 30.00
    lwc1    $f6, 0x0024(v1)            ## 00000024
    lwc1    $f10, 0x0028(v1)           ## 00000028
    sub.s   $f2, $f6, $f8              
    lwc1    $f8, 0x002C(v1)            ## 0000002C
    lwc1    $f6, 0x0270(s0)            ## 00000270
    add.s   $f4, $f10, $f18            
    lwc1    $f10, 0x0274(s0)           ## 00000274
    mul.s   $f18, $f2, $f2             
    sub.s   $f16, $f8, $f10            
    sub.s   $f12, $f4, $f6             
    mul.s   $f4, $f16, $f16            
    add.s   $f0, $f18, $f4             
    jal     func_800CD76C              
    sqrt.s  $f14, $f0                  
    lui     $at, %hi(var_80B51C58)     ## $at = 80B50000
    lwc1    $f6, %lo(var_80B51C58)($at) 
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a2, $zero, 0x0003          ## a2 = 00000003
    mul.s   $f8, $f0, $f6              
    addiu   a3, $zero, 0x1388          ## a3 = 00001388
    sw      $zero, 0x0010($sp)         
    trunc.w.s $f10, $f8                  
    mfc1    a1, $f10                   
    nop
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    subu    a1, $zero, a1              
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lh      t8, 0x025E(s0)             ## 0000025E
    lwc1    $f18, 0x0074($sp)          
    mtc1    t8, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.le.s  $f6, $f18                  
    nop
    bc1fl   lbl_80B5111C               
    lh      t5, 0x024A(s0)             ## 0000024A
    lh      t9, 0x024A(s0)             ## 0000024A
    lui     $at, 0x4120                ## $at = 41200000
    bnel    t9, $zero, lbl_80B5111C    
    lh      t5, 0x024A(s0)             ## 0000024A
    mtc1    $at, $f12                  ## $f12 = 10.00
    jal     func_80026D64              
    nop
    trunc.w.s $f8, $f0                   
    mfc1    t3, $f8                    
    nop
    addiu   t4, t3, 0x000A             ## t4 = 0000000A
    sh      t4, 0x024A(s0)             ## 0000024A
    lh      t5, 0x024A(s0)             ## 0000024A
lbl_80B5111C:
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    lui     t6, %hi(func_80B50F28)     ## t6 = 80B50000
    bne     t5, $at, lbl_80B51138      
    addiu   t6, t6, %lo(func_80B50F28) ## t6 = 80B50F28
    sb      $zero, 0x0267(s0)          ## 00000267
    beq     $zero, $zero, lbl_80B512A4 
    sw      t6, 0x0204(s0)             ## 00000204
lbl_80B51138:
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f4                   ## $f4 = 50.00
    lwc1    $f10, 0x0090(s0)           ## 00000090
    lui     t8, %hi(func_80B50C54)     ## t8 = 80B50000
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    c.lt.s  $f10, $f4                  
    addiu   t8, t8, %lo(func_80B50C54) ## t8 = 80B50C54
    lui     $at, 0x4100                ## $at = 41000000
    lwc1    $f18, 0x0074($sp)          
    bc1fl   lbl_80B51174               
    mtc1    $at, $f6                   ## $f6 = 8.00
    sh      t7, 0x0264(s0)             ## 00000264
    beq     $zero, $zero, lbl_80B512A4 
    sw      t8, 0x0204(s0)             ## 00000204
    mtc1    $at, $f6                   ## $f6 = 8.00
lbl_80B51174:
    nop
    c.le.s  $f6, $f18                  
    nop
    bc1fl   lbl_80B512A8               
    lw      $ra, 0x0034($sp)           
    lbu     t9, 0x0267(s0)             ## 00000267
    bnel    t9, $zero, lbl_80B512A8    
    lw      $ra, 0x0034($sp)           
    lh      t0, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f4                   ## $f4 = 32768.00
    mtc1    t0, $f8                    ## $f8 = 0.00
    lui     $at, %hi(var_80B51C5C)     ## $at = 80B50000
    lwc1    $f6, %lo(var_80B51C5C)($at) 
    cvt.s.w $f10, $f8                  
    or      a1, $zero, $zero           ## a1 = 00000000
    div.s   $f18, $f10, $f4            
    mul.s   $f12, $f18, $f6            
    jal     func_800AAB94              
    nop
    lh      t1, 0x00B4(s0)             ## 000000B4
    lui     $at, 0x4700                ## $at = 47000000
    mtc1    $at, $f4                   ## $f4 = 32768.00
    mtc1    t1, $f8                    ## $f8 = 0.00
    lui     $at, %hi(var_80B51C60)     ## $at = 80B50000
    lwc1    $f6, %lo(var_80B51C60)($at) 
    cvt.s.w $f10, $f8                  
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    div.s   $f18, $f10, $f4            
    mul.s   $f12, $f18, $f6            
    jal     func_800AA9E0              
    nop
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f8                   ## $f8 = 5.00
    addiu   a0, $sp, 0x005C            ## a0 = FFFFFFDC
    addiu   a1, $sp, 0x0050            ## a1 = FFFFFFD0
    swc1    $f0, 0x005C($sp)           
    swc1    $f0, 0x0060($sp)           
    jal     func_800AB958              
    swc1    $f8, 0x0064($sp)           
    lwc1    $f10, 0x026C(s0)           ## 0000026C
    lwc1    $f4, 0x0050($sp)           
    lwc1    $f18, 0x0270(s0)           ## 00000270
    lwc1    $f6, 0x0054($sp)           
    add.s   $f0, $f10, $f4             
    lwc1    $f10, 0x0058($sp)          
    lwc1    $f8, 0x0274(s0)            ## 00000274
    add.s   $f2, $f18, $f6             
    lw      a1, 0x0084($sp)            
    mfc1    a3, $f0                    
    add.s   $f12, $f8, $f10            
    swc1    $f2, 0x0010($sp)           
    addiu   t5, $zero, 0x0004          ## t5 = 00000004
    addiu   a2, $zero, 0x0193          ## a2 = 00000193
    swc1    $f12, 0x0014($sp)          
    lh      t2, 0x00B4(s0)             ## 000000B4
    addiu   a0, a1, 0x1C24             ## a0 = 00001C24
    sw      t2, 0x0018($sp)            
    lh      t3, 0x00B6(s0)             ## 000000B6
    sw      t3, 0x001C($sp)            
    lh      t4, 0x00B8(s0)             ## 000000B8
    sw      t5, 0x0024($sp)            
    jal     func_80025110              ## ActorSpawn
    sw      t4, 0x0020($sp)            
    beq     v0, $zero, lbl_80B51294    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f18                  ## $f18 = 0.50
    lwc1    $f4, 0x0054($sp)           
    mul.s   $f6, $f4, $f18             
    swc1    $f6, 0x0060(v0)            ## 00000060
lbl_80B51294:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387E          ## a1 = 0000387E
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    sb      t6, 0x0267(s0)             ## 00000267
lbl_80B512A4:
    lw      $ra, 0x0034($sp)           
lbl_80B512A8:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0080           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B512B8:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2E1C             ## a0 = 06002E1C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f18                  ## $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x2E1C             ## a1 = 06002E1C
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3FC0                 ## a2 = 3FC00000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    sh      t7, 0x025E(s0)             ## 0000025E
    lh      t8, 0x025E(s0)             ## 0000025E
    sw      $zero, 0x0014($sp)         
    swc1    $f18, 0x0018($sp)          
    mtc1    t8, $f10                   ## $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f4                   ## $f4 = 4.00
    lui     t9, %hi(func_80B5135C)     ## t9 = 80B50000
    addiu   t9, t9, %lo(func_80B5135C) ## t9 = 80B5135C
    sb      $zero, 0x0208(s0)          ## 00000208
    sw      t9, 0x0204(s0)             ## 00000204
    swc1    $f4, 0x0068(s0)            ## 00000068
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B5135C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lwc1    $f4, 0x020C(s0)            ## 0000020C
    lwc1    $f6, 0x0024(s0)            ## 00000024
    lwc1    $f8, 0x0214(s0)            ## 00000214
    lwc1    $f10, 0x002C(s0)           ## 0000002C
    sub.s   $f12, $f4, $f6             
    sub.s   $f14, $f8, $f10            
    swc1    $f12, 0x002C($sp)          
    jal     func_800CD76C              
    swc1    $f14, 0x0028($sp)          
    lui     $at, %hi(var_80B51C64)     ## $at = 80B50000
    lwc1    $f16, %lo(var_80B51C64)($at) 
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    mul.s   $f18, $f0, $f16            
    addiu   a3, $zero, 0x0BB8          ## a3 = 00000BB8
    sw      $zero, 0x0010($sp)         
    trunc.w.s $f4, $f18                  
    mfc1    a1, $f4                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lh      v0, 0x024E(s0)             ## 0000024E
    addiu   t7, $zero, 0x000A          ## t7 = 0000000A
    bne     v0, $zero, lbl_80B513E8    
    andi    t8, v0, 0x0001             ## t8 = 00000000
    beq     $zero, $zero, lbl_80B513F8 
    sh      t7, 0x024E(s0)             ## 0000024E
lbl_80B513E8:
    bne     t8, $zero, lbl_80B513F8    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387F          ## a1 = 0000387F
lbl_80B513F8:
    lwc1    $f0, 0x002C($sp)           
    lui     $at, 0x40E0                ## $at = 40E00000
    mtc1    $at, $f2                   ## $f2 = 7.00
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    lwc1    $f0, 0x0028($sp)           
    bc1fl   lbl_80B51450               
    lw      $ra, 0x0024($sp)           
    abs.s   $f0, $f0                   
    lui     t9, %hi(func_80B50C54)     ## t9 = 80B50000
    c.lt.s  $f0, $f2                   
    addiu   t9, t9, %lo(func_80B50C54) ## t9 = 80B50C54
    bc1fl   lbl_80B51450               
    lw      $ra, 0x0024($sp)           
    lwc1    $f6, 0x020C(s0)            ## 0000020C
    lwc1    $f8, 0x0214(s0)            ## 00000214
    mtc1    $zero, $f10                ## $f10 = 0.00
    sw      t9, 0x0204(s0)             ## 00000204
    swc1    $f6, 0x0024(s0)            ## 00000024
    swc1    $f8, 0x002C(s0)            ## 0000002C
    swc1    $f10, 0x0068(s0)           ## 00000068
    lw      $ra, 0x0024($sp)           
lbl_80B51450:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B51460:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lh      v0, 0x0248(s0)             ## 00000248
    lui     t3, %hi(func_80B507D8)     ## t3 = 80B50000
    beq     v0, $zero, lbl_80B51488    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x0248(s0)             ## 00000248
lbl_80B51488:
    lh      v0, 0x024A(s0)             ## 0000024A
    beq     v0, $zero, lbl_80B51498    
    addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
    sh      t7, 0x024A(s0)             ## 0000024A
lbl_80B51498:
    lh      v0, 0x0254(s0)             ## 00000254
    beq     v0, $zero, lbl_80B514A8    
    addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x0254(s0)             ## 00000254
lbl_80B514A8:
    lh      v0, 0x024C(s0)             ## 0000024C
    beq     v0, $zero, lbl_80B514B8    
    addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
    sh      t9, 0x024C(s0)             ## 0000024C
lbl_80B514B8:
    lh      v0, 0x024E(s0)             ## 0000024E
    beq     v0, $zero, lbl_80B514C8    
    addiu   t0, v0, 0xFFFF             ## t0 = FFFFFFFF
    sh      t0, 0x024E(s0)             ## 0000024E
lbl_80B514C8:
    lh      v0, 0x0250(s0)             ## 00000250
    beq     v0, $zero, lbl_80B514D8    
    addiu   t1, v0, 0xFFFF             ## t1 = FFFFFFFF
    sh      t1, 0x0250(s0)             ## 00000250
lbl_80B514D8:
    lw      t4, 0x0204(s0)             ## 00000204
    lh      t2, 0x00B4(s0)             ## 000000B4
    addiu   t3, t3, %lo(func_80B507D8) ## t3 = 80B507D8
    beq     t3, t4, lbl_80B514F4       
    sh      t2, 0x0030(s0)             ## 00000030
    lh      t5, 0x00B6(s0)             ## 000000B6
    sh      t5, 0x0032(s0)             ## 00000032
lbl_80B514F4:
    lh      t6, 0x0252(s0)             ## 00000252
    lh      t8, 0x025A(s0)             ## 0000025A
    addiu   t7, t6, 0x0001             ## t7 = 00000000
    beq     t8, $zero, lbl_80B515F0    
    sh      t7, 0x0252(s0)             ## 00000252
    lhu     t9, 0x0260(s0)             ## 00000260
    sltiu   $at, t9, 0x0007            
    beq     $at, $zero, lbl_80B515F0   
    sll     t9, t9,  2                 
    lui     $at, %hi(var_80B51C68)     ## $at = 80B50000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80B51C68)($at) 
    jr      t9                         
    nop
var_80B5152C:
    lbu     t0, 0x0268(s0)             ## 00000268
    lui     t2, %hi(func_80B50330)     ## t2 = 80B50000
    lui     t1, %hi(func_80B50224)     ## t1 = 80B50000
    bne     t0, $zero, lbl_80B5154C    
    addiu   t2, t2, %lo(func_80B50330) ## t2 = 80B50330
    addiu   t1, t1, %lo(func_80B50224) ## t1 = 80B50224
    beq     $zero, $zero, lbl_80B515F0 
    sw      t1, 0x0204(s0)             ## 00000204
lbl_80B5154C:
    beq     $zero, $zero, lbl_80B515F0 
    sw      t2, 0x0204(s0)             ## 00000204
var_80B51554:
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f12                  ## $f12 = 3.00
    sh      $zero, 0x0264(s0)          ## 00000264
    jal     func_80026D64              
    sb      $zero, 0x00AE(s0)          ## 000000AE
    lh      t3, 0x025A(s0)             ## 0000025A
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f8                   ## $f8 = 0.50
    mtc1    t3, $f4                    ## $f4 = 0.00
    trunc.w.s $f18, $f0                  
    lui     t3, %hi(func_80B50564)     ## t3 = 80B50000
    addiu   t3, t3, %lo(func_80B50564) ## t3 = 80B50564
    cvt.s.w $f6, $f4                   
    mfc1    t1, $f18                   
    sw      t3, 0x0204(s0)             ## 00000204
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t7, $f16                   
    nop
    addu    t2, t1, t7                 
    beq     $zero, $zero, lbl_80B515F0 
    sh      t2, 0x0254(s0)             ## 00000254
var_80B515AC:
    lui     t5, %hi(func_80B50564)     ## t5 = 80B50000
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    addiu   t5, t5, %lo(func_80B50564) ## t5 = 80B50564
    sh      t4, 0x0264(s0)             ## 00000264
    beq     $zero, $zero, lbl_80B515F0 
    sw      t5, 0x0204(s0)             ## 00000204
var_80B515C4:
    lui     t6, %hi(func_80B50C54)     ## t6 = 80B50000
    addiu   t6, t6, %lo(func_80B50C54) ## t6 = 80B50C54
    beq     $zero, $zero, lbl_80B515F0 
    sw      t6, 0x0204(s0)             ## 00000204
var_80B515D4:
    lui     t8, %hi(func_80B512B8)     ## t8 = 80B50000
    addiu   t8, t8, %lo(func_80B512B8) ## t8 = 80B512B8
    beq     $zero, $zero, lbl_80B515F0 
    sw      t8, 0x0204(s0)             ## 00000204
var_80B515E4:
    lui     t9, %hi(func_80B509E0)     ## t9 = 80B50000
    addiu   t9, t9, %lo(func_80B509E0) ## t9 = 80B509E0
    sw      t9, 0x0204(s0)             ## 00000204
lbl_80B515F0:
    lh      t0, 0x0260(s0)             ## 00000260
    beql    t0, $zero, lbl_80B51604    
    lh      t1, 0x0250(s0)             ## 00000250
    sh      $zero, 0x0260(s0)          ## 00000260
    lh      t1, 0x0250(s0)             ## 00000250
lbl_80B51604:
    bnel    t1, $zero, lbl_80B5164C    
    lw      t9, 0x0204(s0)             ## 00000204
    lh      t7, 0x0258(s0)             ## 00000258
    addiu   t2, t7, 0x0001             ## t2 = 00000001
    sh      t2, 0x0258(s0)             ## 00000258
    lh      t3, 0x0258(s0)             ## 00000258
    slti    $at, t3, 0x0003            
    bne     $at, $zero, lbl_80B51648   
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f12                  ## $f12 = 60.00
    jal     func_80026D64              
    sh      $zero, 0x0258(s0)          ## 00000258
    trunc.w.s $f4, $f0                   
    mfc1    t8, $f4                    
    nop
    addiu   t9, t8, 0x0014             ## t9 = 00000014
    sh      t9, 0x0250(s0)             ## 00000250
lbl_80B51648:
    lw      t9, 0x0204(s0)             ## 00000204
lbl_80B5164C:
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x003C($sp)            
    jalr    $ra, t9                    
    nop
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f0                   ## $f0 = 20.00
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f6                   ## $f6 = 60.00
    addiu   t0, $zero, 0x001D          ## t0 = 0000001D
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t0, 0x0014($sp)            
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f6, 0x0010($sp)           
    lh      t1, 0x025A(s0)             ## 0000025A
    addiu   a2, s0, 0x0304             ## a2 = 00000304
    or      a1, a2, $zero              ## a1 = 00000304
    bne     t1, $zero, lbl_80B516E8    
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a0, s0, 0x0284             ## a0 = 00000284
    addiu   t7, s0, 0x023C             ## t7 = 0000023C
    sw      t7, 0x0010($sp)            
    sw      a0, 0x002C($sp)            
    addiu   a1, s0, 0x0218             ## a1 = 00000218
    addiu   a2, s0, 0x0224             ## a2 = 00000224
    jal     func_80050B64              
    addiu   a3, s0, 0x0230             ## a3 = 00000230
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x002C($sp)            
    jal     func_8004BF40              ## CollisionCheck_setAC
    addu    a1, a0, $at                
    beq     $zero, $zero, lbl_80B51714 
    lw      $ra, 0x0024($sp)           
lbl_80B516E8:
    jal     func_80050B00              
    sw      a2, 0x002C($sp)            
    lbu     t3, 0x0208(s0)             ## 00000208
    lw      a2, 0x002C($sp)            
    lw      a0, 0x003C($sp)            
    beq     t3, $zero, lbl_80B51710    
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    jal     func_8004C130              ## CollisionCheck_setOT
    addu    a1, a0, $at                
lbl_80B51710:
    lw      $ra, 0x0024($sp)           
lbl_80B51714:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B51724:
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     a1, $at, lbl_80B51758      
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     a1, $at, lbl_80B51758      
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beq     a1, $at, lbl_80B51758      
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    beq     a1, $at, lbl_80B51758      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    a1, $at, lbl_80B517CC      
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B51758:
    lw      v0, 0x0000(a0)             ## 00000000
    lw      a1, 0x02C0(v0)             ## 000002C0
    lui     t7, 0xE700                 ## t7 = E7000000
    addiu   t6, a1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02C0(v0)             ## 000002C0
    sw      $zero, 0x0004(a1)          ## 00000004
    sw      t7, 0x0000(a1)             ## 00000000
    lw      a1, 0x02C0(v0)             ## 000002C0
    lui     t9, 0xFB00                 ## t9 = FB000000
    lui     t3, %hi(var_80B51BCC)      ## t3 = 80B50000
    addiu   t8, a1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(v0)             ## 000002C0
    sw      t9, 0x0000(a1)             ## 00000000
    lw      t0, 0x0014($sp)            
    addiu   t3, t3, %lo(var_80B51BCC)  ## t3 = 80B51BCC
    lh      t1, 0x025A(t0)             ## 0000025A
    sll     t2, t1,  2                 
    addu    a3, t2, t3                 
    lbu     t5, -0x0002(a3)            ## FFFFFFFE
    lbu     t8, -0x0004(a3)            ## FFFFFFFC
    lbu     t2, -0x0003(a3)            ## FFFFFFFD
    sll     t6, t5,  8                 
    sll     t9, t8, 24                 
    or      t0, t6, t9                 ## t0 = FB000008
    sll     t3, t2, 16                 
    or      t4, t0, t3                 ## t4 = FBB51BCC
    ori     t5, t4, 0x00FF             ## t5 = FBB51BFF
    sw      t5, 0x0004(a1)             ## 00000004
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B517CC:
    jr      $ra                        
    nop


func_80B517D4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      a0, 0x0028($sp)            
    sw      a2, 0x0030($sp)            
    lw      a2, 0x0038($sp)            
    addiu   a0, $sp, 0x0018            ## a0 = FFFFFFF0
    sw      $ra, 0x0014($sp)           
    sw      a3, 0x0034($sp)            
    lui     t6, %hi(var_80B51C08)      ## t6 = 80B50000
    addiu   t6, t6, %lo(var_80B51C08)  ## t6 = 80B51C08
    lw      t8, 0x0000(t6)             ## 80B51C08
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    sw      t8, 0x0000(a0)             ## FFFFFFF0
    lw      t7, 0x0004(t6)             ## 80B51C0C
    sw      t7, 0x0004(a0)             ## FFFFFFF4
    lw      t8, 0x0008(t6)             ## 80B51C10
    sw      t8, 0x0008(a0)             ## FFFFFFF8
    lh      t9, 0x025A(a2)             ## 0000025A
    bne     t9, $zero, lbl_80B5183C    
    nop
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    a1, $at, lbl_80B51850      
    lw      $ra, 0x0014($sp)           
    jal     func_800AB958              
    addiu   a1, a2, 0x026C             ## a1 = 0000026C
    beq     $zero, $zero, lbl_80B51850 
    lw      $ra, 0x0014($sp)           
lbl_80B5183C:
    bnel    a1, $at, lbl_80B51850      
    lw      $ra, 0x0014($sp)           
    jal     func_800AB958              
    addiu   a1, a2, 0x026C             ## a1 = 0000026C
    lw      $ra, 0x0014($sp)           
lbl_80B51850:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B5185C:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      s1, 0x0020($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s0, 0x001C($sp)            
    sw      a1, 0x0064($sp)            
    lui     t7, %hi(var_80B51C14)      ## t7 = 80B50000
    addiu   t7, t7, %lo(var_80B51C14)  ## t7 = 80B51C14
    lw      t9, 0x0000(t7)             ## 80B51C14
    addiu   t6, $sp, 0x0050            ## t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             ## 80B51C18
    sw      t9, 0x0000(t6)             ## FFFFFFF0
    lw      t9, 0x0008(t7)             ## 80B51C1C
    sw      t8, 0x0004(t6)             ## FFFFFFF4
    sw      t9, 0x0008(t6)             ## FFFFFFF8
    lw      t1, 0x0064($sp)            
    lw      a0, 0x0000(t1)             ## 00000000
    jal     func_8007E298              
    or      s0, a0, $zero              ## s0 = 00000000
    lw      v1, 0x02C0(s0)             ## 000002C0
    lui     t3, 0xDB06                 ## t3 = DB060000
    ori     t3, t3, 0x0020             ## t3 = DB060020
    addiu   t2, v1, 0x0008             ## t2 = 00000008
    sw      t2, 0x02C0(s0)             ## 000002C0
    sw      t3, 0x0000(v1)             ## 00000000
    lh      t4, 0x0258(s1)             ## 00000258
    lui     t0, %hi(var_80B51C20)      ## t0 = 80B50000
    lui     t1, 0x8012                 ## t1 = 80120000
    sll     t5, t4,  2                 
    addu    t0, t0, t5                 
    lw      t0, %lo(var_80B51C20)(t0)  
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t7, t0,  4                 
    srl     t8, t7, 28                 
    sll     t9, t8,  2                 
    addu    t1, t1, t9                 
    lw      t1, 0x0C38(t1)             ## 80120C38
    and     t6, t0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t2, t6, t1                 
    addu    t3, t2, $at                
    sw      t3, 0x0004(v1)             ## 00000004
    lui     t4, %hi(func_80B517D4)     ## t4 = 80B50000
    addiu   t4, t4, %lo(func_80B517D4) ## t4 = 80B517D4
    lw      a1, 0x0140(s1)             ## 00000140
    lw      a2, 0x015C(s1)             ## 0000015C
    lui     a3, %hi(func_80B51724)     ## a3 = 80B50000
    addiu   a3, a3, %lo(func_80B51724) ## a3 = 80B51724
    sw      s1, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    jal     func_8008993C              
    lw      a0, 0x0064($sp)            
    lwc1    $f12, 0x020C(s1)           ## 0000020C
    lwc1    $f14, 0x0210(s1)           ## 00000210
    lw      a2, 0x0214(s1)             ## 00000214
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    lui     $at, %hi(var_80B51C84)     ## $at = 80B50000
    lwc1    $f12, %lo(var_80B51C84)($at) 
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      v1, 0x02C0(s0)             ## 000002C0
    lui     t7, 0xE700                 ## t7 = E7000000
    addiu   t5, v1, 0x0008             ## t5 = 00000008
    sw      t5, 0x02C0(s0)             ## 000002C0
    sw      $zero, 0x0004(v1)          ## 00000004
    sw      t7, 0x0000(v1)             ## 00000000
    lw      v1, 0x02C0(s0)             ## 000002C0
    lui     t9, 0xFB00                 ## t9 = FB000000
    lui     t2, %hi(var_80B51BCC)      ## t2 = 80B50000
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(s0)             ## 000002C0
    sw      t9, 0x0000(v1)             ## 00000000
    lh      t6, 0x025A(s1)             ## 0000025A
    addiu   t2, t2, %lo(var_80B51BCC)  ## t2 = 80B51BCC
    sll     t1, t6,  2                 
    addu    v0, t1, t2                 
    lbu     t4, -0x0002(v0)            ## FFFFFFFE
    lbu     t8, -0x0004(v0)            ## FFFFFFFC
    lbu     t2, -0x0003(v0)            ## FFFFFFFD
    sll     t5, t4,  8                 
    sll     t9, t8, 24                 
    or      t6, t5, t9                 ## t6 = FB000008
    sll     t3, t2, 16                 
    or      t4, t6, t3                 ## t4 = FB000008
    ori     t7, t4, 0x00FF             ## t7 = FB0000FF
    sw      t7, 0x0004(v1)             ## 00000004
    lw      v1, 0x02C0(s0)             ## 000002C0
    lui     t5, 0xDA38                 ## t5 = DA380000
    ori     t5, t5, 0x0003             ## t5 = DA380003
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(s0)             ## 000002C0
    sw      t5, 0x0000(v1)             ## 00000000
    lw      t9, 0x0064($sp)            
    lw      a0, 0x0000(t9)             ## FB000000
    jal     func_800AB900              
    sw      v1, 0x0034($sp)            
    lw      a3, 0x0034($sp)            
    lui     t2, 0xDE00                 ## t2 = DE000000
    addiu   a0, s1, 0x0024             ## a0 = 00000024
    sw      v0, 0x0004(a3)             ## 00000004
    lw      v1, 0x02C0(s0)             ## 000002C0
    lui     t6, 0x0600                 ## t6 = 06000000
    addiu   t6, t6, 0x1B00             ## t6 = 06001B00
    addiu   t1, v1, 0x0008             ## t1 = 00000008
    sw      t1, 0x02C0(s0)             ## 000002C0
    sw      t6, 0x0004(v1)             ## 00000004
    sw      t2, 0x0000(v1)             ## 00000000
    lw      t4, 0x0204(s1)             ## 00000204
    lui     t3, %hi(func_80B507D8)     ## t3 = 80B50000
    addiu   t3, t3, %lo(func_80B507D8) ## t3 = 80B507D8
    bne     t3, t4, lbl_80B51A38       
    addiu   a1, $sp, 0x0050            ## a1 = FFFFFFF0
    addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
    jal     func_80026AD0              
    lw      a3, 0x0064($sp)            
lbl_80B51A38:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_80B51A4C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s1, 0x0020($sp)            
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E298              
    or      s1, a0, $zero              ## s1 = 00000000
    lui     t7, %hi(func_80B517D4)     ## t7 = 80B50000
    addiu   t7, t7, %lo(func_80B517D4) ## t7 = 80B517D4
    lw      a1, 0x0140(s0)             ## 00000140
    lw      a2, 0x015C(s0)             ## 0000015C
    sw      s0, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    lw      a0, 0x003C($sp)            
    jal     func_8008993C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lwc1    $f12, 0x020C(s0)           ## 0000020C
    lwc1    $f14, 0x0210(s0)           ## 00000210
    lw      a2, 0x0214(s0)             ## 00000214
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    lui     $at, %hi(var_80B51C88)     ## $at = 80B50000
    lwc1    $f12, %lo(var_80B51C88)($at) 
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s0, 0x02C0(s1)             ## 000002C0
    lui     t9, 0xDA38                 ## t9 = DA380000
    ori     t9, t9, 0x0003             ## t9 = DA380003
    addiu   t8, s0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(s1)             ## 000002C0
    sw      t9, 0x0000(s0)             ## 00000000
    lw      t0, 0x003C($sp)            
    lw      a0, 0x0000(t0)             ## 00000000
    jal     func_800AB900              
    sw      s0, 0x0028($sp)            
    lw      a1, 0x0028($sp)            
    lui     t2, 0xDE00                 ## t2 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      s0, 0x02C0(s1)             ## 000002C0
    lui     t3, 0x0600                 ## t3 = 06000000
    addiu   t3, t3, 0x14E0             ## t3 = 060014E0
    addiu   t1, s0, 0x0008             ## t1 = 00000008
    sw      t1, 0x02C0(s1)             ## 000002C0
    sw      t3, 0x0004(s0)             ## 00000004
    sw      t2, 0x0000(s0)             ## 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    nop
    nop

.section .data

var_80B51B30: .word 0x01A30600, 0x00000030, 0x00010000, 0x00000350
.word func_80B4F150
.word func_80B4F278
.word func_80B51460
.word 0x00000000
var_80B51B50: .word \
0x0A000039, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0010002E, 0x00000000, 0x00000000
var_80B51B7C: .word \
0x0A000900, 0x20030000, 0x00000000, 0x00000000, \
0x00000000, 0x0001F824, 0x00000000, 0x00010000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80B51BCC: .word \
0xFFFFFFFF, 0xFFC3AFFF, 0xD2FF00FF, 0xFFFFFFFF, \
0xD2FF00FF, 0xFFC3AFFF, 0xFFFFFFFF, 0xFFC3AFFF, \
0xD2FF00FF
var_80B51BF0: .word 0x00000000, 0x00000000, 0x00000000
var_80B51BFC: .word 0x00000000, 0x00000000, 0x00000000
var_80B51C08: .word 0x00000000, 0x00000000, 0x00000000
var_80B51C14: .word 0x3E800000, 0x3E800000, 0x3E800000
var_80B51C20: .word 0x060027D0, 0x060025D0, 0x06002750, 0x00000000

.section .rodata

var_80B51C30: .word 0x44A78000
var_80B51C34: .word 0x44A78000
var_80B51C38: .word 0x44A7E000
var_80B51C3C: .word 0x4622F983
var_80B51C40: .word 0x4622F983
var_80B51C44: .word 0x4622F983
var_80B51C48: .word 0x4622F983
var_80B51C4C: .word 0x4622F983
var_80B51C50: .word 0x3FFEB852
var_80B51C54: .word 0x407F5C29
var_80B51C58: .word 0x4622F983
var_80B51C5C: .word 0x40490FDB
var_80B51C60: .word 0x40490FDB
var_80B51C64: .word 0x4622F983
var_80B51C68: .word lbl_80B515F0
.word var_80B5152C
.word var_80B51554
.word var_80B515AC
.word var_80B515C4
.word var_80B515D4
.word var_80B515E4
var_80B51C84: .word 0x3C23D70A
var_80B51C88: .word 0x3C23D70A, 0x00000000

