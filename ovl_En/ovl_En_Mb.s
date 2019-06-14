#include <mips.h>
.set noreorder
.set noat

.section .text
func_808E5D40:
    sw      a1, 0x0314(a0)             ## 00000314
    jr      $ra                        
    nop


func_808E5D4C:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      t6, 0x1C44(s1)             ## 00001C44
    lui     a1, %hi(var_808E9974)      ## a1 = 808F0000
    addiu   a1, a1, %lo(var_808E9974)  ## a1 = 808E9974
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80063F7C              
    sw      t6, 0x0044($sp)            
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    sw      a0, 0x0034($sp)            
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4238                 ## a3 = 42380000
    lui     t8, %hi(var_808E9934)      ## t8 = 808F0000
    addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
    addiu   t8, t8, %lo(var_808E9934)  ## t8 = 808E9934
    sb      t7, 0x00AE(s0)             ## 000000AE
    sw      t8, 0x0098(s0)             ## 00000098
    addiu   a1, s0, 0x0358             ## a1 = 00000358
    sw      a1, 0x0038($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_808E9830)      ## a3 = 808F0000
    lw      a1, 0x0038($sp)            
    addiu   a3, a3, %lo(var_808E9830)  ## a3 = 808E9830
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a1, s0, 0x0424             ## a1 = 00000424
    sw      a1, 0x0038($sp)            
    jal     func_8004B064              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_808E98D4)      ## a3 = 808F0000
    addiu   t9, s0, 0x0444             ## t9 = 00000444
    lw      a1, 0x0038($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, %lo(var_808E98D4)  ## a3 = 808E98D4
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004B3EC              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a1, s0, 0x03A4             ## a1 = 000003A4
    sw      a1, 0x0038($sp)            
    jal     func_8004B858              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_808E98E4)      ## a3 = 808F0000
    lw      a1, 0x0038($sp)            
    addiu   a3, a3, %lo(var_808E98E4)  ## a3 = 808E98E4
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004B960              
    or      a2, s0, $zero              ## a2 = 00000000
    lh      v1, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
    or      a0, s1, $zero              ## a0 = 00000000
    beq     v1, $at, lbl_808E5E50      
    addiu   a1, s0, 0x017C             ## a1 = 0000017C
    beq     v1, $zero, lbl_808E5EB4    
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E5FFC 
    or      a0, s1, $zero              ## a0 = 00000000
lbl_808E5E50:
    lui     a2, 0x0601                 ## a2 = 06010000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t0, s0, 0x01C0             ## t0 = 000001C0
    addiu   t1, s0, 0x0268             ## t1 = 00000268
    addiu   t2, $zero, 0x001C          ## t2 = 0000001C
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    addiu   a3, a3, 0x28E0             ## a3 = 060028E0
    jal     func_8008C788              
    addiu   a2, a2, 0x8F38             ## a2 = 06008F38
    lui     $at, 0x447A                ## $at = 447A0000
    mtc1    $at, $f4                   ## $f4 = 1000.00
    addiu   t3, $zero, 0x0002          ## t3 = 00000002
    addiu   t4, $zero, 0x00FE          ## t4 = 000000FE
    sb      t3, 0x00AF(s0)             ## 000000AF
    sb      t4, 0x00AE(s0)             ## 000000AE
    lui     $at, %hi(var_808E9AA0)     ## $at = 808F0000
    swc1    $f4, 0x0350(s0)            ## 00000350
    lwc1    $f6, %lo(var_808E9AA0)($at) 
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808E6528              
    swc1    $f6, 0x0354(s0)            ## 00000354
    beq     $zero, $zero, lbl_808E60A0 
    lw      $ra, 0x002C($sp)           
lbl_808E5EB4:
    lui     a2, 0x0601                 ## a2 = 06010000
    lui     a3, 0x0601                 ## a3 = 06010000
    addiu   t5, s0, 0x01C0             ## t5 = 000001C0
    addiu   t6, s0, 0x0268             ## t6 = 00000268
    addiu   t7, $zero, 0x001C          ## t7 = 0000001C
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    addiu   a3, a3, 0xEBE4             ## a3 = 0600EBE4
    addiu   a2, a2, 0x4190             ## a2 = 06014190
    jal     func_8008C788              
    addiu   a1, s0, 0x017C             ## a1 = 0000017C
    lui     t0, %hi(var_808E9954)      ## t0 = 808F0000
    addiu   t8, $zero, 0x0006          ## t8 = 00000006
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    addiu   t0, t0, %lo(var_808E9954)  ## t0 = 808E9954
    lui     a1, 0x3CA3                 ## a1 = 3CA30000
    sb      t8, 0x00AF(s0)             ## 000000AF
    sb      t9, 0x00AE(s0)             ## 000000AE
    sw      t0, 0x0098(s0)             ## 00000098
    ori     a1, a1, 0xD70A             ## a1 = 3CA3D70A
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x457A                ## $at = 457A0000
    mtc1    $at, $f8                   ## $f8 = 4000.00
    lui     $at, 0x4448                ## $at = 44480000
    mtc1    $at, $f10                  ## $f10 = 800.00
    lui     $at, 0x44E1                ## $at = 44E10000
    mtc1    $at, $f16                  ## $f16 = 1800.00
    addiu   t1, $zero, 0x00AA          ## t1 = 000000AA
    addiu   t2, $zero, 0x002D          ## t2 = 0000002D
    sh      t1, 0x039A(s0)             ## 0000039A
    sh      t2, 0x0398(s0)             ## 00000398
    lui     $at, %hi(var_808E9AA4)     ## $at = 808F0000
    swc1    $f8, 0x00F4(s0)            ## 000000F4
    swc1    $f10, 0x00F8(s0)           ## 000000F8
    swc1    $f16, 0x00FC(s0)           ## 000000FC
    lwc1    $f18, %lo(var_808E9AA4)($at) 
    lui     t3, 0x2000                 ## t3 = 20000000
    sw      t3, 0x03BC(s0)             ## 000003BC
    swc1    $f18, 0x0354(s0)           ## 00000354
    lw      a1, 0x0044($sp)            
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    jal     func_80063F00              
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    lh      a1, 0x0032(s0)             ## 00000032
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xF280             ## a2 = 8001F280
    subu    a0, a1, v0                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    bltz    a0, lbl_808E5F90           
    lui     a3, 0x42B4                 ## a3 = 42B40000
    beq     $zero, $zero, lbl_808E5F94 
    or      v1, a0, $zero              ## v1 = 00000000
lbl_808E5F90:
    subu    v1, $zero, a0              
lbl_808E5F94:
    slti    $at, v1, 0x4001            
    bne     $at, $zero, lbl_808E5FC4   
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addu    t4, a1, $at                
    lui     $at, 0x4416                ## $at = 44160000
    mtc1    $at, $f6                   ## $f6 = 600.00
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    sh      t4, 0x0032(s0)             ## 00000032
    lh      t5, 0x0032(s0)             ## 00000032
    add.s   $f8, $f4, $f6              
    sh      t5, 0x00B6(s0)             ## 000000B6
    swc1    $f8, 0x002C(s0)            ## 0000002C
lbl_808E5FC4:
    lw      a0, 0x0034($sp)            
    jal     func_8001EC20              
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    lw      t6, 0x0004(s0)             ## 00000004
    lbu     t8, 0x0117(s0)             ## 00000117
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    and     t7, t6, $at                
    addiu   t9, t8, 0x0001             ## t9 = 00000001
    sw      t7, 0x0004(s0)             ## 00000004
    sb      t9, 0x0117(s0)             ## 00000117
    jal     func_808E6590              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E60A0 
    lw      $ra, 0x002C($sp)           
lbl_808E5FFC:
    lui     a2, 0x0601                 ## a2 = 06010000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t0, s0, 0x01C0             ## t0 = 000001C0
    addiu   t1, s0, 0x0268             ## t1 = 00000268
    addiu   t2, $zero, 0x001C          ## t2 = 0000001C
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    addiu   a3, a3, 0x28E0             ## a3 = 060028E0
    addiu   a2, a2, 0x8F38             ## a2 = 06008F38
    jal     func_8008C788              
    addiu   a1, s0, 0x017C             ## a1 = 0000017C
    lui     a1, 0x3C65                 ## a1 = 3C650000
    ori     a1, a1, 0x6042             ## a1 = 3C656042
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t3, 0x001C(s0)             ## 0000001C
    lui     $at, 0x43AF                ## $at = 43AF0000
    mtc1    $at, $f10                  ## $f10 = 350.00
    andi    t4, t3, 0xFF00             ## t4 = 00000000
    sra     t5, t4,  8                 
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    addiu   t8, $zero, 0x00FE          ## t8 = 000000FE
    lw      t9, 0x0004(s0)             ## 00000004
    sb      t5, 0x034D(s0)             ## 0000034D
    sh      t6, 0x001C(s0)             ## 0000001C
    sb      $zero, 0x034C(s0)          ## 0000034C
    sb      t7, 0x00AF(s0)             ## 000000AF
    sb      t8, 0x00AE(s0)             ## 000000AE
    lui     $at, %hi(var_808E9AA8)     ## $at = 808F0000
    swc1    $f10, 0x0350(s0)           ## 00000350
    lwc1    $f16, %lo(var_808E9AA8)($at) 
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    and     t0, t9, $at                
    sw      t0, 0x0004(s0)             ## 00000004
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_808E65F4              
    swc1    $f16, 0x0354(s0)           ## 00000354
    lw      $ra, 0x002C($sp)           
lbl_808E60A0:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_808E60B0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004B148              
    addiu   a1, a1, 0x0424             ## a1 = 00000424
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0358             ## a1 = 00000358
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004B8A8              
    addiu   a1, a1, 0x03A4             ## a1 = 000003A4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6100:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x0024             ## a0 = 00000024
    addiu   a1, a2, 0x0334             ## a1 = 00000334
    jal     func_80063F00              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    sh      v0, 0x00B6(a2)             ## 000000B6
    sh      v0, 0x0032(a2)             ## 00000032
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_808E6138:
    lb      t7, 0x034D(a0)             ## 0000034D
    lui     t6, 0x0001                 ## t6 = 00010000
    lb      v1, 0x034C(a0)             ## 0000034C
    addu    t6, t6, a1                 
    lw      t6, 0x1E08(t6)             ## 00011E08
    sll     t8, t7,  3                 
    bne     v1, $zero, lbl_808E6168    
    addu    v0, t6, t8                 
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    sb      t9, 0x034E(a0)             ## 0000034E
    beq     $zero, $zero, lbl_808E618C 
    lb      v1, 0x034C(a0)             ## 0000034C
lbl_808E6168:
    lbu     t0, 0x0000(v0)             ## 00000000
    addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
    addiu   t1, t0, 0xFFFF             ## t1 = FFFFFFFF
    sll     t2, t1, 24                 
    sra     t3, t2, 24                 
    bnel    t3, v1, lbl_808E6190       
    lb      t5, 0x034E(a0)             ## 0000034E
    sb      t4, 0x034E(a0)             ## 0000034E
    lb      v1, 0x034C(a0)             ## 0000034C
lbl_808E618C:
    lb      t5, 0x034E(a0)             ## 0000034E
lbl_808E6190:
    lui     t0, 0x8012                 ## t0 = 80120000
    lui     $at, 0x00FF                ## $at = 00FF0000
    addu    t7, v1, t5                 
    sb      t7, 0x034C(a0)             ## 0000034C
    lw      a2, 0x0004(v0)             ## 00000004
    lb      t3, 0x034C(a0)             ## 0000034C
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t6, a2,  4                 
    srl     t8, t6, 28                 
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, 0x0C38(t0)             ## 80120C38
    sll     t4, t3,  2                 
    and     t1, a2, $at                
    subu    t4, t4, t3                 
    sll     t4, t4,  1                 
    addu    t2, t0, t1                 
    addu    a1, t2, t4                 
    lui     $at, 0x8000                ## $at = 80000000
    addu    a1, a1, $at                
    lh      t5, 0x0000(a1)             ## 00000000
    mtc1    t5, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0334(a0)            ## 00000334
    lh      t7, 0x0002(a1)             ## 00000002
    mtc1    t7, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0338(a0)           ## 00000338
    lh      t6, 0x0004(a1)             ## 00000004
    mtc1    t6, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x033C(a0)           ## 0000033C
    jr      $ra                        
    nop


func_808E6224:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lh      v0, 0x0032(a3)             ## 00000032
    lw      v1, 0x1C44(a1)             ## 00001C44
    or      a2, $zero, $zero           ## a2 = 00000000
    slti    $at, v0, 0x9D5E            
    bne     $at, $zero, lbl_808E6250   
    slti    $at, v0, 0x62A3            
    bnel    $at, $zero, lbl_808E625C   
    slti    $at, v0, 0xDF20            
lbl_808E6250:
    beq     $zero, $zero, lbl_808E627C 
    addiu   a2, $zero, 0x8000          ## a2 = FFFF8000
    slti    $at, v0, 0xDF20            
lbl_808E625C:
    beql    $at, $zero, lbl_808E6270   
    slti    $at, v0, 0x20E1            
    beq     $zero, $zero, lbl_808E627C 
    addiu   a2, $zero, 0xC000          ## a2 = FFFFC000
    slti    $at, v0, 0x20E1            
lbl_808E6270:
    bnel    $at, $zero, lbl_808E6280   
    sll     a0, a2, 16                 
    addiu   a2, $zero, 0x4000          ## a2 = 00004000
lbl_808E627C:
    sll     a0, a2, 16                 
lbl_808E6280:
    sra     a0, a0, 16                 
    sw      v1, 0x0034($sp)            
    sh      a2, 0x001A($sp)            
    jal     func_80063684              ## coss?
    sw      a3, 0x0038($sp)            
    lh      a2, 0x001A($sp)            
    swc1    $f0, 0x0028($sp)           
    sll     a0, a2, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lwc1    $f14, 0x0028($sp)          
    mtc1    $zero, $f18                ## $f18 = 0.00
    lw      v1, 0x0034($sp)            
    lw      a3, 0x0038($sp)            
    c.le.s  $f18, $f14                 
    mov.s   $f16, $f0                  
    lui     $at, 0x4214                ## $at = 42140000
    lw      $ra, 0x0014($sp)           
    bc1t    lbl_808E62D4               
    or      v0, $zero, $zero           ## v0 = 00000000
    neg.s   $f14, $f14                 
lbl_808E62D4:
    c.le.s  $f18, $f0                  
    nop
    bc1tl   lbl_808E62EC               
    lwc1    $f4, 0x0024(a3)            ## 00000024
    neg.s   $f16, $f0                  
    lwc1    $f4, 0x0024(a3)            ## 00000024
lbl_808E62EC:
    lwc1    $f6, 0x0024(v1)            ## 00000024
    lwc1    $f8, 0x002C(a3)            ## 0000002C
    lwc1    $f10, 0x002C(v1)           ## 0000002C
    sub.s   $f0, $f4, $f6              
    mtc1    $at, $f4                   ## $f4 = 37.00
    lui     $at, 0x43C8                ## $at = 43C80000
    sub.s   $f12, $f8, $f10            
    mtc1    $at, $f8                   ## $f8 = 400.00
    mul.s   $f6, $f14, $f4             
    c.le.s  $f18, $f0                  
    lui     $at, 0x4214                ## $at = 42140000
    mul.s   $f10, $f16, $f8            
    bc1fl   lbl_808E6330               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_808E6330 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_808E6330:
    add.s   $f4, $f6, $f10             
    c.lt.s  $f2, $f4                   
    nop
    bc1f    lbl_808E6390               
    nop
    c.le.s  $f18, $f12                 
    mtc1    $at, $f8                   ## $f8 = 37.00
    lui     $at, 0x43C8                ## $at = 43C80000
    mtc1    $at, $f10                  ## $f10 = 400.00
    bc1fl   lbl_808E6368               
    neg.s   $f0, $f12                  
    beq     $zero, $zero, lbl_808E6368 
    mov.s   $f0, $f12                  
    neg.s   $f0, $f12                  
lbl_808E6368:
    mul.s   $f6, $f16, $f8             
    nop
    mul.s   $f4, $f14, $f10            
    add.s   $f8, $f6, $f4              
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_808E6390               
    nop
    beq     $zero, $zero, lbl_808E6390 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_808E6390:
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_808E6398:
    addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
    sw      s3, 0x0024($sp)            
    or      s3, a0, $zero              ## s3 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s8, 0x0038($sp)            
    sw      s7, 0x0034($sp)            
    sw      s6, 0x0030($sp)            
    sw      s5, 0x002C($sp)            
    sw      s4, 0x0028($sp)            
    sw      s2, 0x0020($sp)            
    sw      s1, 0x001C($sp)            
    sw      s0, 0x0018($sp)            
    lui     t6, 0x0001                 ## t6 = 00010000
    lb      t7, 0x034D(s3)             ## 0000034D
    addu    t6, t6, a1                 
    lw      t6, 0x1E08(t6)             ## 00011E08
    sll     t8, t7,  3                 
    or      s2, $zero, $zero           ## s2 = 00000000
    addu    s4, t6, t8                 
    lbu     s0, 0x0000(s4)             ## 00000000
    or      s1, $zero, $zero           ## s1 = 00000000
    addiu   s5, s3, 0x0024             ## s5 = 00000024
    addiu   s0, s0, 0xFFFF             ## s0 = FFFFFFFF
    bltz    s0, lbl_808E64F8           
    lui     s8, 0x00FF                 ## s8 = 00FF0000
    lui     s7, 0x8012                 ## s7 = 80120000
    addiu   s7, s7, 0x0C38             ## s7 = 80120C38
    ori     s8, s8, 0xFFFF             ## s8 = 00FFFFFF
    addiu   s6, $sp, 0x005C            ## s6 = FFFFFFEC
lbl_808E640C:
    lw      v1, 0x0004(s4)             ## 00000004
    lui     $at, 0x8000                ## $at = 80000000
    or      a0, s5, $zero              ## a0 = 00000024
    sll     t9, v1,  4                 
    srl     t0, t9, 28                 
    sll     t1, t0,  2                 
    addu    t2, s7, t1                 
    lw      t3, 0x0000(t2)             ## 00000000
    and     t4, v1, s8                 
    or      a1, s6, $zero              ## a1 = FFFFFFEC
    addu    t5, t3, t4                 
    addu    v0, t5, s1                 
    addu    v0, v0, $at                
    lh      t7, 0x0000(v0)             ## 00000000
    mtc1    t7, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x005C($sp)           
    lh      t6, 0x0002(v0)             ## 00000002
    mtc1    t6, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0060($sp)          
    lh      t8, 0x0004(v0)             ## 00000004
    mtc1    t8, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    jal     func_80063F00              
    swc1    $f18, 0x0064($sp)          
    lh      t9, 0x008A(s3)             ## 0000008A
    addiu   s0, s0, 0xFFFF             ## s0 = FFFFFFFE
    addiu   s1, s1, 0x0006             ## s1 = 00000006
    subu    v1, v0, t9                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_808E64A8           
    subu    a0, $zero, v1              
    beq     $zero, $zero, lbl_808E64A8 
    or      a0, v1, $zero              ## a0 = 00000000
lbl_808E64A8:
    slti    $at, a0, 0x1771            
    beq     $at, $zero, lbl_808E64F0   
    nop
    lb      t0, 0x034C(s3)             ## 0000034C
    sh      v0, 0x0032(s3)             ## 00000032
    bnel    s2, t0, lbl_808E64D4       
    lw      t4, 0x0000(s6)             ## FFFFFFEC
    lb      t1, 0x034E(s3)             ## 0000034E
    subu    t2, $zero, t1              
    sb      t2, 0x034E(s3)             ## 0000034E
    lw      t4, 0x0000(s6)             ## FFFFFFEC
lbl_808E64D4:
    sw      t4, 0x0334(s3)             ## 00000334
    lw      t3, 0x0004(s6)             ## FFFFFFF0
    sw      t3, 0x0338(s3)             ## 00000338
    lw      t4, 0x0008(s6)             ## FFFFFFF4
    sb      s2, 0x034C(s3)             ## 0000034C
    beq     $zero, $zero, lbl_808E64F8 
    sw      t4, 0x033C(s3)             ## 0000033C
lbl_808E64F0:
    bgez    s0, lbl_808E640C           
    addiu   s2, s2, 0x0001             ## s2 = 00000001
lbl_808E64F8:
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    lw      s3, 0x0024($sp)            
    lw      s4, 0x0028($sp)            
    lw      s5, 0x002C($sp)            
    lw      s6, 0x0030($sp)            
    lw      s7, 0x0034($sp)            
    lw      s8, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           ## $sp = 00000000


func_808E6528:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x41A8             ## a1 = 060041A8
    addiu   a0, a3, 0x017C             ## a0 = 0000017C
    lui     a2, 0xC080                 ## a2 = C0800000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   a0, $zero, 0x001E          ## a0 = 0000001E
    addiu   a1, $zero, 0x0032          ## a1 = 00000032
    jal     func_80063BF0              
    swc1    $f4, 0x0068(a3)            ## 00000068
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0006          ## t6 = 00000006
    lui     a1, %hi(func_808E6E30)     ## a1 = 808E0000
    addiu   a1, a1, %lo(func_808E6E30) ## a1 = 808E6E30
    sh      v0, 0x031A(a0)             ## 0000031A
    jal     func_808E5D40              
    sw      t6, 0x0310(a0)             ## 00000310
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6590:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xEBE4             ## a1 = 0600EBE4
    addiu   a0, a2, 0x017C             ## a0 = 0000017C
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   a0, $zero, 0x001E          ## a0 = 0000001E
    addiu   a1, $zero, 0x0032          ## a1 = 00000032
    jal     func_80063BF0              
    swc1    $f4, 0x0068(a2)            ## 00000068
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0006          ## t6 = 00000006
    lui     a1, %hi(func_808E8A54)     ## a1 = 808F0000
    addiu   a1, a1, %lo(func_808E8A54) ## a1 = 808E8A54
    sh      v0, 0x031A(a0)             ## 0000031A
    jal     func_808E5D40              
    sw      t6, 0x0310(a0)             ## 00000310
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E65F4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x41A8             ## a1 = 060041A8
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    jal     func_8008D328              
    lui     a2, 0xC080                 ## a2 = C0800000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   a0, $zero, 0x0028          ## a0 = 00000028
    addiu   a1, $zero, 0x0050          ## a1 = 00000050
    jal     func_80063BF0              
    swc1    $f4, 0x0068(s0)            ## 00000068
    addiu   t6, $zero, 0x0006          ## t6 = 00000006
    sh      v0, 0x031A(s0)             ## 0000031A
    sw      t6, 0x0310(s0)             ## 00000310
    lw      a1, 0x0024($sp)            
    jal     func_808E6138              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_808E6EA8)     ## a1 = 808E0000
    addiu   a1, a1, %lo(func_808E6EA8) ## a1 = 808E6EA8
    jal     func_808E5D40              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E666C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x9FC0             ## a0 = 06009FC0
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0xC080                ## $at = C0800000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   ## $f8 = -4.00
    lui     a1, 0x0601                 ## a1 = 06010000
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x9FC0             ## a1 = 06009FC0
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     $at, %hi(var_808E9AAC)     ## $at = 808F0000
    lwc1    $f10, %lo(var_808E9AAC)($at) 
    addiu   a0, $zero, 0x0032          ## a0 = 00000032
    addiu   a1, $zero, 0x0046          ## a1 = 00000046
    jal     func_80063BF0              
    swc1    $f10, 0x0068(s0)           ## 00000068
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   t7, $zero, 0x0009          ## t7 = 00000009
    lui     a1, %hi(func_808E8458)     ## a1 = 808F0000
    sh      v0, 0x031A(s0)             ## 0000031A
    sh      t6, 0x0322(s0)             ## 00000322
    sw      t7, 0x0310(s0)             ## 00000310
    addiu   a1, a1, %lo(func_808E8458) ## a1 = 808E8458
    jal     func_808E5D40              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6710:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x9FC0             ## a0 = 06009FC0
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, %hi(var_808E9AB0)     ## $at = 808F0000
    lwc1    $f8, %lo(var_808E9AB0)($at) 
    cvt.s.w $f6, $f4                   
    addiu   a0, $zero, 0x0032          ## a0 = 00000032
    addiu   a1, $zero, 0x0046          ## a1 = 00000046
    swc1    $f6, 0x0034($sp)           
    jal     func_80063BF0              
    swc1    $f8, 0x0068(s0)            ## 00000068
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   t7, $zero, 0x0009          ## t7 = 00000009
    sh      v0, 0x031A(s0)             ## 0000031A
    sh      t6, 0x0322(s0)             ## 00000322
    sw      t7, 0x0310(s0)             ## 00000310
    lui     $at, 0xC080                ## $at = C0800000
    mtc1    $at, $f16                  ## $f16 = -4.00
    lwc1    $f10, 0x0034($sp)          
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x9FC0             ## a1 = 06009FC0
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    swc1    $f10, 0x0010($sp)          
    jal     func_8008D17C              
    swc1    $f16, 0x0018($sp)          
    lui     a1, %hi(func_808E8768)     ## a1 = 808F0000
    addiu   a1, a1, %lo(func_808E8768) ## a1 = 808E8768
    jal     func_808E5D40              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E67C0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2C10             ## a0 = 06002C10
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x2C10             ## a1 = 06002C10
    cvt.s.w $f6, $f4                   
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lui     a2, 0xC080                 ## a2 = C0800000
    jal     func_8008D21C              
    swc1    $f6, 0x0024($sp)           
    mtc1    $zero, $f8                 ## $f8 = 0.00
    addiu   t6, $zero, 0x000A          ## t6 = 0000000A
    sw      t6, 0x0310(s0)             ## 00000310
    swc1    $f8, 0x0068(s0)            ## 00000068
    lwc1    $f10, 0x0024($sp)          
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x38BC          ## a1 = 000038BC
    trunc.w.s $f16, $f10                 
    mfc1    t0, $f16                   
    nop
    addiu   t1, t0, 0x0006             ## t1 = 00000006
    jal     func_80022FD0              
    sh      t1, 0x031E(s0)             ## 0000031E
    lh      t2, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
    or      a0, s0, $zero              ## a0 = 00000000
    bne     t2, $at, lbl_808E685C      
    lui     a1, %hi(func_808E7958)     ## a1 = 808E0000
    lui     a1, %hi(func_808E7478)     ## a1 = 808E0000
    addiu   a1, a1, %lo(func_808E7478) ## a1 = 808E7478
    jal     func_808E5D40              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E6868 
    lw      $ra, 0x001C($sp)           
lbl_808E685C:
    jal     func_808E5D40              
    addiu   a1, a1, %lo(func_808E7958) ## a1 = 00007958
    lw      $ra, 0x001C($sp)           
lbl_808E6868:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6878:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x2F10             ## a1 = 06002F10
    addiu   a0, a2, 0x017C             ## a0 = 0000017C
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38BA          ## a1 = 000038BA
    lw      a0, 0x0018($sp)            
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   t7, $zero, 0x000A          ## t7 = 0000000A
    addiu   t8, $zero, 0x0003          ## t8 = 00000003
    lui     a1, %hi(func_808E7C9C)     ## a1 = 808E0000
    addiu   a1, a1, %lo(func_808E7C9C) ## a1 = 808E7C9C
    sh      t6, 0x0324(a0)             ## 00000324
    sw      t7, 0x0310(a0)             ## 00000310
    sh      t8, 0x031E(a0)             ## 0000031E
    jal     func_808E5D40              
    swc1    $f4, 0x0068(a0)            ## 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E68E8:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xB4BC             ## a0 = 0600B4BC
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t6, $zero, 0x000A          ## t6 = 0000000A
    cvt.s.w $f6, $f4                   
    sw      t6, 0x0310(s0)             ## 00000310
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   t7, $zero, 0x0003          ## t7 = 00000003
    mfc1    a3, $f0                    
    sw      t7, 0x0014($sp)            
    addiu   a1, a1, 0xB4BC             ## a1 = 0600B4BC
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lui     a2, 0x4040                 ## a2 = 40400000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lh      t8, 0x0032(s0)             ## 00000032
    lh      t9, 0x008A(s0)             ## 0000008A
    addiu   a0, $zero, 0x0001          ## a0 = 00000001
    sh      a0, 0x031E(s0)             ## 0000031E
    subu    v0, t8, t9                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_808E696C           
    lui     a1, %hi(func_808E75E0)     ## a1 = 808E0000
    beq     $zero, $zero, lbl_808E6970 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_808E696C:
    subu    v1, $zero, v0              
lbl_808E6970:
    slti    $at, v1, 0x0259            
    beq     $at, $zero, lbl_808E6988   
    addiu   a1, a1, %lo(func_808E75E0) ## a1 = 808E75E0
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    beq     $zero, $zero, lbl_808E699C 
    sh      t0, 0x0324(s0)             ## 00000324
lbl_808E6988:
    bltz    v0, lbl_808E6998           
    addiu   t1, $zero, 0x0003          ## t1 = 00000003
    beq     $zero, $zero, lbl_808E699C 
    sh      a0, 0x0324(s0)             ## 00000324
lbl_808E6998:
    sh      t1, 0x0324(s0)             ## 00000324
lbl_808E699C:
    jal     func_808E5D40              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E69B8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x9280             ## a1 = 06009280
    addiu   a0, a2, 0x017C             ## a0 = 0000017C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x000B          ## t6 = 0000000B
    addiu   t7, $zero, 0x0005          ## t7 = 00000005
    addiu   a1, $zero, 0x38B9          ## a1 = 000038B9
    sw      t6, 0x0310(a0)             ## 00000310
    sh      $zero, 0x031A(a0)          ## 0000031A
    jal     func_80022FD0              
    sh      t7, 0x031E(a0)             ## 0000031E
    lui     a1, %hi(func_808E700C)     ## a1 = 808E0000
    lw      a0, 0x0018($sp)            
    jal     func_808E5D40              
    addiu   a1, a1, %lo(func_808E700C) ## a1 = 808E700C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6A18:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0x9280             ## a1 = 06009280
    addiu   a0, a2, 0x017C             ## a0 = 0000017C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f4                   ## $f4 = -8.00
    lhu     t7, 0x0088(a0)             ## 00000088
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $at, $f6                   ## $f6 = 6.00
    addiu   t6, $zero, 0x000B          ## t6 = 0000000B
    addiu   t9, $zero, 0x0032          ## t9 = 00000032
    andi    t8, t7, 0xFFFE             ## t8 = 00000000
    addiu   a1, $zero, 0x38B9          ## a1 = 000038B9
    sw      t6, 0x0310(a0)             ## 00000310
    sh      t8, 0x0088(a0)             ## 00000088
    sh      $zero, 0x031A(a0)          ## 0000031A
    sh      t9, 0x031E(a0)             ## 0000031E
    swc1    $f4, 0x0068(a0)            ## 00000068
    jal     func_80022FD0              
    swc1    $f6, 0x0060(a0)            ## 00000060
    lui     a1, %hi(func_808E71B8)     ## a1 = 808E0000
    lw      a0, 0x0018($sp)            
    jal     func_808E5D40              
    addiu   a1, a1, %lo(func_808E71B8) ## a1 = 808E71B8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6A9C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xEBE4             ## a0 = 0600EBE4
    mtc1    v0, $f4                    ## $f4 = 0.00
    lw      v1, 0x0028($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    cvt.s.w $f6, $f4                   
    addiu   t6, $zero, 0x000B          ## t6 = 0000000B
    sw      t6, 0x0310(v1)             ## 00000310
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   t7, $zero, 0x0003          ## t7 = 00000003
    mfc1    a3, $f0                    
    sw      t7, 0x0014($sp)            
    addiu   a1, a1, 0xEBE4             ## a1 = 0600EBE4
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x40A0                 ## a2 = 40A00000
    addiu   a0, v1, 0x017C             ## a0 = 0000017C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lui     a1, %hi(func_808E7174)     ## a1 = 808E0000
    addiu   a1, a1, %lo(func_808E7174) ## a1 = 808E7174
    jal     func_808E5D40              
    lw      a0, 0x0028($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6B14:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xC44C             ## a1 = 0600C44C
    addiu   a0, a2, 0x017C             ## a0 = 0000017C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    addiu   t7, $zero, 0x0014          ## t7 = 00000014
    addiu   a1, $zero, 0x38BE          ## a1 = 000038BE
    sw      t6, 0x0310(a0)             ## 00000310
    sh      $zero, 0x031A(a0)          ## 0000031A
    jal     func_80022FD0              
    sh      t7, 0x031E(a0)             ## 0000031E
    lui     a1, %hi(func_808E7FF4)     ## a1 = 808E0000
    lw      a0, 0x0018($sp)            
    jal     func_808E5D40              
    addiu   a1, a1, %lo(func_808E7FF4) ## a1 = 808E7FF4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6B74:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xD5D4             ## a0 = 0600D5D4
    mtc1    v0, $f4                    ## $f4 = 0.00
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    addiu   t7, $zero, 0x0006          ## t7 = 00000006
    cvt.s.w $f6, $f4                   
    mtc1    $zero, $f8                 ## $f8 = 0.00
    sw      t6, 0x0310(s0)             ## 00000310
    sh      $zero, 0x031A(s0)          ## 0000031A
    sh      t7, 0x031E(s0)             ## 0000031E
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   t8, $zero, 0x0003          ## t8 = 00000003
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0xD5D4             ## a1 = 0600D5D4
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4080                 ## a3 = 40800000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     a1, %hi(func_808E8088)     ## a1 = 808F0000
    addiu   a1, a1, %lo(func_808E8088) ## a1 = 808E8088
    jal     func_808E5D40              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6BFC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xBE58             ## a1 = 0600BE58
    addiu   a0, a3, 0x017C             ## a0 = 0000017C
    lui     a2, 0xC080                 ## a2 = C0800000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    lw      t7, 0x0004(a0)             ## 00000004
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   t9, $zero, 0x0050          ## t9 = 00000050
    addiu   t0, $zero, 0x005F          ## t0 = 0000005F
    addiu   t1, $zero, 0x001E          ## t1 = 0000001E
    and     t8, t7, $at                
    addiu   a1, $zero, 0x38BE          ## a1 = 000038BE
    sw      t6, 0x0310(a0)             ## 00000310
    sw      t8, 0x0004(a0)             ## 00000004
    sh      t9, 0x039A(a0)             ## 0000039A
    sh      t0, 0x0398(a0)             ## 00000398
    sh      t1, 0x031A(a0)             ## 0000031A
    jal     func_80022FD0              
    swc1    $f4, 0x0068(a0)            ## 00000068
    lui     a1, %hi(func_808E8194)     ## a1 = 808F0000
    lw      a0, 0x0018($sp)            
    jal     func_808E5D40              
    addiu   a1, a1, %lo(func_808E8194) ## a1 = 808E8194
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6C84:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    sw      t6, 0x0310(s0)             ## 00000310
    addiu   t7, $zero, 0x0050          ## t7 = 00000050
    swc1    $f4, 0x0068(s0)            ## 00000068
    sw      t7, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0078          ## a2 = 00000078
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    lbu     t8, 0x0178(s0)             ## 00000178
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    addiu   t9, $zero, 0x0028          ## t9 = 00000028
    bnel    t8, $at, lbl_808E6CE0      
    lh      t0, 0x001C(s0)             ## 0000001C
    beq     $zero, $zero, lbl_808E6D04 
    sh      t9, 0x0318(s0)             ## 00000318
    lh      t0, 0x001C(s0)             ## 0000001C
lbl_808E6CE0:
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x1950             ## a1 = 06001950
    beq     t0, $zero, lbl_808E6CF8    
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    jal     func_8008D278              
    addiu   a2, $zero, 0x0000          ## a2 = 00000000
lbl_808E6CF8:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x389E          ## a1 = 0000389E
lbl_808E6D04:
    lui     a1, %hi(func_808E6D28)     ## a1 = 808E0000
    addiu   a1, a1, %lo(func_808E6D28) ## a1 = 808E6D28
    jal     func_808E5D40              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6D28:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lw      v0, 0x1C44(t6)             ## 00001C44
    lw      v1, 0x0670(v0)             ## 00000670
    andi    t7, v1, 0x0080             ## t7 = 00000000
    beql    t7, $zero, lbl_808E6D98    
    lbu     t0, 0x0114(s0)             ## 00000114
    lw      t8, 0x0118(v0)             ## 00000118
    lui     $at, 0x4080                ## $at = 40800000
    or      a1, s0, $zero              ## a1 = 00000000
    bnel    s0, t8, lbl_808E6D98       
    lbu     t0, 0x0114(s0)             ## 00000114
    mtc1    $at, $f0                   ## $f0 = 4.00
    addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
    and     t9, v1, $at                
    sw      t9, 0x0670(v0)             ## 00000670
    sw      $zero, 0x0118(v0)          ## 00000118
    lh      a3, 0x0032(s0)             ## 00000032
    mfc1    a2, $f0                    
    lw      a0, 0x002C($sp)            
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    sh      $zero, 0x0324(s0)          ## 00000324
    lbu     t0, 0x0114(s0)             ## 00000114
lbl_808E6D98:
    bnel    t0, $zero, lbl_808E6E20    
    lw      $ra, 0x0024($sp)           
    lh      t1, 0x001C(s0)             ## 0000001C
    bnel    t1, $zero, lbl_808E6DFC    
    lbu     t4, 0x00AF(s0)             ## 000000AF
    lbu     t2, 0x00AF(s0)             ## 000000AF
    bnel    t2, $zero, lbl_808E6DCC    
    lw      t3, 0x0310(s0)             ## 00000310
    jal     func_808E6BFC              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E6E20 
    lw      $ra, 0x0024($sp)           
    lw      t3, 0x0310(s0)             ## 00000310
lbl_808E6DCC:
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bne     t3, $at, lbl_808E6DE8      
    nop
    jal     func_808E6B74              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E6E20 
    lw      $ra, 0x0024($sp)           
lbl_808E6DE8:
    jal     func_808E6590              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E6E20 
    lw      $ra, 0x0024($sp)           
    lbu     t4, 0x00AF(s0)             ## 000000AF
lbl_808E6DFC:
    bne     t4, $zero, lbl_808E6E14    
    nop
    jal     func_808E8C44              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E6E20 
    lw      $ra, 0x0024($sp)           
lbl_808E6E14:
    jal     func_808E8B04              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_808E6E20:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6E30:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    addiu   a0, a2, 0x017C             ## a0 = 0000017C
    sw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
    lw      a0, 0x0018($sp)            
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    lh      v1, 0x031A(a2)             ## 0000031A
    bne     v1, $zero, lbl_808E6E70    
    addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
    beq     $zero, $zero, lbl_808E6E78 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_808E6E70:
    sh      t6, 0x031A(a2)             ## 0000031A
    lh      v0, 0x031A(a2)             ## 0000031A
lbl_808E6E78:
    bnel    v0, $zero, lbl_808E6E9C    
    lw      $ra, 0x0014($sp)           
    jal     func_8008D6A8              
    sw      a2, 0x0020($sp)            
    beq     v0, $zero, lbl_808E6E98    
    lw      a2, 0x0020($sp)            
    jal     func_808E666C              
    or      a0, a2, $zero              ## a0 = 00000000
lbl_808E6E98:
    lw      $ra, 0x0014($sp)           
lbl_808E6E9C:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E6EA8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lh      v1, 0x031A(s0)             ## 0000031A
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    bne     v1, $zero, lbl_808E6F20    
    addiu   t7, v1, 0xFFFF             ## t7 = FFFFFFFF
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    jal     func_80063F00              
    addiu   a1, s0, 0x0334             ## a1 = 00000334
    sh      v0, 0x0320(s0)             ## 00000320
    lh      a1, 0x0320(s0)             ## 00000320
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
    bnel    v0, $zero, lbl_808E6F38    
    lwc1    $f0, 0x0094(s0)            ## 00000094
    lh      t6, 0x00B6(s0)             ## 000000B6
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808E6710              
    sh      t6, 0x0032(s0)             ## 00000032
    beq     $zero, $zero, lbl_808E6F38 
    lwc1    $f0, 0x0094(s0)            ## 00000094
lbl_808E6F20:
    sh      t7, 0x031A(s0)             ## 0000031A
    lh      a1, 0x0016(s0)             ## 00000016
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
    lwc1    $f0, 0x0094(s0)            ## 00000094
lbl_808E6F38:
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f6                   ## $f6 = 20.00
    c.le.s  $f4, $f0                   
    or      a0, s0, $zero              ## a0 = 00000000
    bc1fl   lbl_808E6F60               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_808E6F60 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_808E6F60:
    c.le.s  $f2, $f6                   
    nop
    bc1fl   lbl_808E6FFC               
    lw      $ra, 0x0024($sp)           
    jal     func_808E6224              
    lw      a1, 0x002C($sp)            
    beql    v0, $zero, lbl_808E6FFC    
    lw      $ra, 0x0024($sp)           
    lh      t8, 0x00B6(s0)             ## 000000B6
    lh      t9, 0x008A(s0)             ## 0000008A
    subu    v0, t8, t9                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_808E6FA4           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_808E6FA4 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_808E6FA4:
    slti    $at, v1, 0x4001            
    bnel    $at, $zero, lbl_808E6FDC   
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80021768              
    lw      a0, 0x002C($sp)            
    beq     v0, $zero, lbl_808E6FF8    
    lui     $at, 0x4320                ## $at = 43200000
    lwc1    $f8, 0x0090(s0)            ## 00000090
    mtc1    $at, $f10                  ## $f10 = 160.00
    nop
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_808E6FF8               
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808E6FDC:
    jal     func_808E6398              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38BB          ## a1 = 000038BB
    jal     func_808E67C0              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808E6FF8:
    lw      $ra, 0x0024($sp)           
lbl_808E6FFC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E700C:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0030($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x004C($sp)            
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    lui     a2, 0x3F00                 ## a2 = 3F000000
    lui     a3, 0x3F80                 ## a3 = 3F800000
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    lwc1    $f6, 0x0068(s0)            ## 00000068
    lui     $at, 0x4080                ## $at = 40800000
    lw      a0, 0x004C($sp)            
    c.lt.s  $f4, $f6                   
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    lui     a3, 0x40A0                 ## a3 = 40A00000
    bc1f    lbl_808E708C               
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    mtc1    $at, $f8                   ## $f8 = 4.00
    addiu   t7, $zero, 0x0064          ## t7 = 00000064
    addiu   t8, $zero, 0x000F          ## t8 = 0000000F
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0010($sp)            
    sw      $zero, 0x0020($sp)         
    jal     func_800260E8              
    swc1    $f8, 0x0014($sp)           
lbl_808E708C:
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    jal     func_8008C9C0              
    sw      a0, 0x003C($sp)            
    beql    v0, $zero, lbl_808E7164    
    lw      $ra, 0x0034($sp)           
    lh      t9, 0x031A(s0)             ## 0000031A
    bnel    t9, $zero, lbl_808E712C    
    lh      t5, 0x001C(s0)             ## 0000001C
    lh      t0, 0x031E(s0)             ## 0000031E
    lui     a0, 0x0600                 ## a0 = 06000000
    addiu   t1, t0, 0xFFFF             ## t1 = FFFFFFFF
    sh      t1, 0x031E(s0)             ## 0000031E
    lh      t2, 0x031E(s0)             ## 0000031E
    bnel    t2, $zero, lbl_808E7164    
    lw      $ra, 0x0034($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x2C10             ## a0 = 06002C10
    mtc1    v0, $f10                   ## $f10 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    cvt.s.w $f10, $f10                 
    addiu   t3, $zero, 0x0002          ## t3 = 00000002
    sw      t3, 0x0014($sp)            
    addiu   a1, a1, 0x2C10             ## a1 = 06002C10
    lw      a0, 0x003C($sp)            
    lui     a2, 0xBF80                 ## a2 = BF800000
    mfc1    a3, $f10                   
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    mtc1    $zero, $f16                ## $f16 = 0.00
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    sh      t4, 0x031A(s0)             ## 0000031A
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x38BD          ## a1 = 000038BD
    jal     func_80022FD0              
    swc1    $f16, 0x0068(s0)           ## 00000068
    beq     $zero, $zero, lbl_808E7164 
    lw      $ra, 0x0034($sp)           
    lh      t5, 0x001C(s0)             ## 0000001C
lbl_808E712C:
    or      a0, s0, $zero              ## a0 = 00000000
    bgez    t5, lbl_808E7158           
    nop
    jal     func_808E666C              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t6, $zero, 0x0050          ## t6 = 00000050
    sh      t6, 0x031E(s0)             ## 0000031E
    lh      v0, 0x031E(s0)             ## 0000031E
    sh      v0, 0x031C(s0)             ## 0000031C
    beq     $zero, $zero, lbl_808E7160 
    sh      v0, 0x031A(s0)             ## 0000031A
lbl_808E7158:
    jal     func_808E65F4              
    lw      a1, 0x004C($sp)            
lbl_808E7160:
    lw      $ra, 0x0034($sp)           
lbl_808E7164:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E7174:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sh      $zero, 0x0324(a1)          ## 00000324
    sw      a1, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a1, 0x017C             ## a0 = 0000017C
    beq     v0, $zero, lbl_808E71A8    
    lw      a1, 0x0018($sp)            
    jal     func_808E6590              
    or      a0, a1, $zero              ## a0 = 00000000
lbl_808E71A8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E71B8:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0054($sp)            
    lhu     t6, 0x0088(s0)             ## 00000088
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beql    t7, $zero, lbl_808E7468    
    lw      $ra, 0x0034($sp)           
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x3FC0                 ## a3 = 3FC00000
    mfc1    a1, $f0                    
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    lwc1    $f6, 0x0068(s0)            ## 00000068
    lui     $at, 0x4080                ## $at = 40800000
    lw      a0, 0x0054($sp)            
    c.lt.s  $f4, $f6                   
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    lui     a3, 0x40A0                 ## a3 = 40A00000
    bc1f    lbl_808E7248               
    addiu   t8, $zero, 0x0003          ## t8 = 00000003
    mtc1    $at, $f8                   ## $f8 = 4.00
    addiu   t9, $zero, 0x0064          ## t9 = 00000064
    addiu   t0, $zero, 0x000F          ## t0 = 0000000F
    sw      t0, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0010($sp)            
    sw      $zero, 0x0020($sp)         
    jal     func_800260E8              
    swc1    $f8, 0x0014($sp)           
lbl_808E7248:
    lh      t1, 0x031A(s0)             ## 0000031A
    beql    t1, $zero, lbl_808E73A8    
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lh      t2, 0x031E(s0)             ## 0000031E
    lui     $at, 0x4320                ## $at = 43200000
    addiu   t3, t2, 0xFFFF             ## t3 = FFFFFFFF
    sh      t3, 0x031E(s0)             ## 0000031E
    lh      t4, 0x031E(s0)             ## 0000031E
    bnel    t4, $zero, lbl_808E7374    
    mtc1    $at, $f10                  ## $f10 = 160.00
    lwc1    $f0, 0x0094(s0)            ## 00000094
    mtc1    $zero, $f10                ## $f10 = 0.00
    lh      t5, 0x00B6(s0)             ## 000000B6
    lh      t6, 0x008A(s0)             ## 0000008A
    c.le.s  $f10, $f0                  
    lui     $at, 0x41A0                ## $at = 41A00000
    subu    v1, t5, t6                 
    sll     v1, v1, 16                 
    bc1f    lbl_808E72A0               
    sra     v1, v1, 16                 
    beq     $zero, $zero, lbl_808E72A4 
    mov.s   $f2, $f0                   
lbl_808E72A0:
    neg.s   $f2, $f0                   
lbl_808E72A4:
    mtc1    $at, $f16                  ## $f16 = 20.00
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0054($sp)            
    c.le.s  $f2, $f16                  
    nop
    bc1f    lbl_808E7314               
    nop
    jal     func_808E6224              
    sh      v1, 0x004A($sp)            
    beq     v0, $zero, lbl_808E7314    
    lh      v1, 0x004A($sp)            
    bltz    v1, lbl_808E72E0           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_808E72E0 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_808E72E0:
    slti    $at, v0, 0x4001            
    beq     $at, $zero, lbl_808E7314   
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f18                  ## $f18 = 200.00
    lwc1    $f4, 0x0090(s0)            ## 00000090
    c.le.s  $f4, $f18                  
    nop
    bc1f    lbl_808E7314               
    nop
    jal     func_808E67C0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E73A8 
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
lbl_808E7314:
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2C10             ## a0 = 06002C10
    mtc1    v0, $f6                    ## $f6 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    cvt.s.w $f6, $f6                   
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    sw      t7, 0x0014($sp)            
    addiu   a1, a1, 0x2C10             ## a1 = 06002C10
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lui     a2, 0xBF80                 ## a2 = BF800000
    mfc1    a3, $f6                    
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    mtc1    $zero, $f8                 ## $f8 = 0.00
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x38BD          ## a1 = 000038BD
    jal     func_80022FD0              
    swc1    $f8, 0x0068(s0)            ## 00000068
    beq     $zero, $zero, lbl_808E73A8 
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    mtc1    $at, $f10                  ## $f10 = 0.00
lbl_808E7374:
    lwc1    $f16, 0x0090(s0)           ## 00000090
    lui     $at, 0xC0A0                ## $at = C0A00000
    c.le.s  $f16, $f10                 
    nop
    bc1fl   lbl_808E739C               
    mtc1    $zero, $f4                 ## $f4 = 0.00
    mtc1    $at, $f18                  ## $f18 = -5.00
    beq     $zero, $zero, lbl_808E73A4 
    swc1    $f18, 0x0068(s0)           ## 00000068
    mtc1    $zero, $f4                 ## $f4 = 0.00
lbl_808E739C:
    nop
    swc1    $f4, 0x0068(s0)            ## 00000068
lbl_808E73A4:
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
lbl_808E73A8:
    jal     func_8008C9C0              
    sw      a0, 0x003C($sp)            
    beql    v0, $zero, lbl_808E7468    
    lw      $ra, 0x0034($sp)           
    lh      t8, 0x031A(s0)             ## 0000031A
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    bne     t8, $zero, lbl_808E7414    
    nop
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2F10             ## a0 = 06002F10
    mtc1    v0, $f6                    ## $f6 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    cvt.s.w $f8, $f6                   
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    mfc1    a3, $f0                    
    sw      t9, 0x0014($sp)            
    addiu   a1, a1, 0x2F10             ## a1 = 06002F10
    lw      a0, 0x003C($sp)            
    swc1    $f8, 0x0010($sp)           
    lui     a2, 0x3F00                 ## a2 = 3F000000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    beq     $zero, $zero, lbl_808E7464 
    sh      t0, 0x031A(s0)             ## 0000031A
lbl_808E7414:
    jal     func_80063F00              
    addiu   a1, s0, 0x0334             ## a1 = 00000334
    lh      t1, 0x008A(s0)             ## 0000008A
    or      a0, s0, $zero              ## a0 = 00000000
    subu    v1, v0, t1                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_808E7440           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_808E7440 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_808E7440:
    slti    $at, v0, 0x4001            
    beq     $at, $zero, lbl_808E745C   
    nop
    jal     func_808E65F4              
    lw      a1, 0x0054($sp)            
    beq     $zero, $zero, lbl_808E7468 
    lw      $ra, 0x0034($sp)           
lbl_808E745C:
    jal     func_808E6710              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808E7464:
    lw      $ra, 0x0034($sp)           
lbl_808E7468:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E7478:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x004C($sp)            
    lh      t6, 0x008A(s0)             ## 0000008A
    lh      t7, 0x00B6(s0)             ## 000000B6
    subu    v0, t6, t7                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bgezl   v0, lbl_808E74B8           
    lwc1    $f4, 0x0194(s0)            ## 00000194
    subu    v0, $zero, v0              
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    lwc1    $f4, 0x0194(s0)            ## 00000194
lbl_808E74B8:
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    sw      a0, 0x003C($sp)            
    trunc.w.s $f6, $f4                   
    sh      v0, 0x0042($sp)            
    mfc1    t9, $f6                    
    jal     func_8008C9C0              
    sw      t9, 0x0044($sp)            
    beq     v0, $zero, lbl_808E74F4    
    lw      a0, 0x003C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    jal     func_8008D2D4              
    addiu   a1, a1, 0x2F10             ## a1 = 06002F10
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38BA          ## a1 = 000038BA
lbl_808E74F4:
    lh      v0, 0x031E(s0)             ## 0000031E
    lui     $at, 0x4120                ## $at = 41200000
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    beq     v0, $zero, lbl_808E7530    
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   t0, v0, 0xFFFF             ## t0 = FFFFFFFF
    sh      t0, 0x031E(s0)             ## 0000031E
    lh      a1, 0x008A(s0)             ## 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0BB8          ## a3 = 00000BB8
    beq     $zero, $zero, lbl_808E75B4 
    lh      t7, 0x0042($sp)            
lbl_808E7530:
    mtc1    $at, $f8                   ## $f8 = 0.00
    sh      t1, 0x0324(s0)             ## 00000324
    lui     $at, 0x4080                ## $at = 40800000
    swc1    $f8, 0x0068(s0)            ## 00000068
    mtc1    $at, $f10                  ## $f10 = 4.00
    addiu   t2, $zero, 0x0003          ## t2 = 00000003
    addiu   t3, $zero, 0x0064          ## t3 = 00000064
    addiu   t4, $zero, 0x000F          ## t4 = 0000000F
    sw      t4, 0x001C($sp)            
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0010($sp)            
    sw      $zero, 0x0020($sp)         
    lw      a0, 0x004C($sp)            
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    lui     a3, 0x40A0                 ## a3 = 40A00000
    jal     func_800260E8              
    swc1    $f10, 0x0014($sp)          
    lwc1    $f16, 0x0194(s0)           ## 00000194
    lw      t6, 0x0044($sp)            
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    trunc.w.s $f18, $f16                 
    mfc1    v0, $f18                   
    nop
    beql    t6, v0, lbl_808E75B4       
    lh      t7, 0x0042($sp)            
    beq     v0, $at, lbl_808E75A8      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_808E75B4      
    lh      t7, 0x0042($sp)            
lbl_808E75A8:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38BF          ## a1 = 000038BF
    lh      t7, 0x0042($sp)            
lbl_808E75B4:
    or      a0, s0, $zero              ## a0 = 00000000
    slti    $at, t7, 0x1389            
    bnel    $at, $zero, lbl_808E75D0   
    lw      $ra, 0x0034($sp)           
    jal     func_808E69B8              
    sh      $zero, 0x0324(s0)          ## 00000324
    lw      $ra, 0x0034($sp)           
lbl_808E75D0:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E75E0:
    addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x008C($sp)            
    addiu   v0, $sp, 0x004C            ## v0 = FFFFFFC4
    lui     t8, %hi(var_808E9980)      ## t8 = 808F0000
    lw      t6, 0x008C($sp)            
    addiu   t8, t8, %lo(var_808E9980)  ## t8 = 808E9980
    lw      t0, 0x0000(t8)             ## 808E9980
    lw      v1, 0x1C44(t6)             ## 00001C44
    addiu   t7, $sp, 0x0068            ## t7 = FFFFFFE0
    sw      t0, 0x0000(t7)             ## FFFFFFE0
    lw      t0, 0x0008(t8)             ## 808E9988
    lw      t9, 0x0004(t8)             ## 808E9984
    lui     t2, %hi(var_808E998C)      ## t2 = 808F0000
    addiu   t2, t2, %lo(var_808E998C)  ## t2 = 808E998C
    sw      t0, 0x0008(t7)             ## FFFFFFE8
    sw      t9, 0x0004(t7)             ## FFFFFFE4
    lw      t4, 0x0000(t2)             ## 808E998C
    addiu   t1, $sp, 0x005C            ## t1 = FFFFFFD4
    lw      t3, 0x0004(t2)             ## 808E9990
    sw      t4, 0x0000(t1)             ## FFFFFFD4
    lw      t4, 0x0008(t2)             ## 808E9994
    lui     t6, %hi(var_808E9998)      ## t6 = 808F0000
    addiu   t6, t6, %lo(var_808E9998)  ## t6 = 808E9998
    sw      t3, 0x0004(t1)             ## FFFFFFD8
    sw      t4, 0x0008(t1)             ## FFFFFFDC
    lw      t8, 0x0000(t6)             ## 808E9998
    addiu   t5, $sp, 0x0054            ## t5 = FFFFFFCC
    lui     t9, %hi(var_808E99A0)      ## t9 = 808F0000
    sw      t8, 0x0000(t5)             ## FFFFFFCC
    lhu     t8, 0x0004(t6)             ## 808E999C
    addiu   t9, t9, %lo(var_808E99A0)  ## t9 = 808E99A0
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    sh      t8, 0x0004(t5)             ## FFFFFFD0
    lw      t1, 0x0000(t9)             ## 808E99A0
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x02EE          ## a3 = 000002EE
    sw      t1, 0x0000(v0)             ## FFFFFFC4
    lhu     t1, 0x0004(t9)             ## 808E99A4
    sh      t1, 0x0004(v0)             ## FFFFFFC8
    lh      t2, 0x0324(s0)             ## 00000324
    lh      t6, 0x0032(s0)             ## 00000032
    sll     t3, t2,  1                 
    addu    t4, v0, t3                 
    lh      t5, -0x0002(t4)            ## FFFFFFFE
    sw      $zero, 0x0010($sp)         
    sw      v1, 0x0084($sp)            
    addu    a1, t5, t6                 
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lbu     a0, 0x03B4(s0)             ## 000003B4
    lw      v1, 0x0084($sp)            
    andi    t7, a0, 0x0002             ## t7 = 00000000
    beql    t7, $zero, lbl_808E7784    
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lw      t9, 0x03A8(s0)             ## 000003A8
    andi    t8, a0, 0xFFFD             ## t8 = 0000017C
    sb      t8, 0x03B4(s0)             ## 000003B4
    bnel    v1, t9, lbl_808E7784       
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lb      v0, 0x0A68(v1)             ## 00000A68
    bgez    v0, lbl_808E7724           
    sb      v0, 0x004B($sp)            
    slti    $at, v0, 0xFFD9            
    beql    $at, $zero, lbl_808E7700   
    sb      $zero, 0x0A68(v1)          ## 00000A68
    beq     $zero, $zero, lbl_808E7724 
    sb      $zero, 0x0A68(v1)          ## 00000A68
    sb      $zero, 0x0A68(v1)          ## 00000A68
lbl_808E7700:
    lw      a0, 0x008C($sp)            
    lui     t9, 0x0001                 ## t9 = 00010000
    sw      v1, 0x0084($sp)            
    addu    t9, t9, a0                 
    lw      t9, 0x1D58(t9)             ## 00011D58
    addiu   a1, $zero, 0xFFF8          ## a1 = FFFFFFF8
    jalr    $ra, t9                    
    nop
    lw      v1, 0x0084($sp)            
lbl_808E7724:
    lui     $at, %hi(var_808E9AB4)     ## $at = 808F0000
    lwc1    $f4, %lo(var_808E9AB4)($at) 
    lwc1    $f6, 0x0090(s0)            ## 00000090
    lui     $at, %hi(var_808E9AB8)     ## $at = 808F0000
    lwc1    $f10, %lo(var_808E9AB8)($at) 
    sub.s   $f8, $f4, $f6              
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f18                  ## $f18 = 4.00
    lui     $at, 0x4100                ## $at = 41000000
    mul.s   $f16, $f8, $f10            
    mtc1    $at, $f6                   ## $f6 = 8.00
    lh      a3, 0x0032(s0)             ## 00000032
    sw      v1, 0x0084($sp)            
    lw      a0, 0x008C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    swc1    $f6, 0x0010($sp)           
    add.s   $f4, $f16, $f18            
    mfc1    a2, $f4                    
    jal     func_80022EC4              
    nop
    lw      v1, 0x0084($sp)            
    lbu     t1, 0x004B($sp)            
    sb      t1, 0x0A68(v1)             ## 00000A68
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
lbl_808E7784:
    jal     func_8008C9C0              
    sw      a0, 0x0040($sp)            
    beql    v0, $zero, lbl_808E78E0    
    lh      v0, 0x031E(s0)             ## 0000031E
    lh      v0, 0x031E(s0)             ## 0000031E
    beq     v0, $zero, lbl_808E77F8    
    addiu   t2, v0, 0xFFFF             ## t2 = FFFFFFFF
    sh      t2, 0x031E(s0)             ## 0000031E
    lh      t3, 0x031E(s0)             ## 0000031E
    lui     s0, 0x0601                 ## s0 = 06010000
    addiu   s0, s0, 0xABE0             ## s0 = 0600ABE0
    bnel    t3, $zero, lbl_808E7948    
    lw      $ra, 0x0034($sp)           
    jal     func_8008A194              
    or      a0, s0, $zero              ## a0 = 0600ABE0
    mtc1    v0, $f8                    ## $f8 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t4, $zero, 0x0003          ## t4 = 00000003
    cvt.s.w $f10, $f8                  
    mfc1    a3, $f0                    
    sw      t4, 0x0014($sp)            
    lw      a0, 0x0040($sp)            
    or      a1, s0, $zero              ## a1 = 0600ABE0
    lui     a2, 0x3FC0                 ## a2 = 3FC00000
    swc1    $f10, 0x0010($sp)          
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    beq     $zero, $zero, lbl_808E7948 
    lw      $ra, 0x0034($sp)           
lbl_808E77F8:
    lw      t7, 0x0328(s0)             ## 0600AF08
    addiu   t5, $sp, 0x0074            ## t5 = FFFFFFEC
    or      a0, s0, $zero              ## a0 = 0600ABE0
    sw      t7, 0x0000(t5)             ## FFFFFFEC
    lw      t6, 0x032C(s0)             ## 0600AF0C
    addiu   a1, $zero, 0x39EF          ## a1 = 000039EF
    sw      t6, 0x0004(t5)             ## FFFFFFF0
    lw      t7, 0x0330(s0)             ## 0600AF10
    sw      t7, 0x0008(t5)             ## FFFFFFF4
    lwc1    $f16, 0x0080(s0)           ## 0600AC60
    jal     func_80022FD0              
    swc1    $f16, 0x0078($sp)          
    lwc1    $f12, 0x0090(s0)           ## 0600AC70
    addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    jal     func_800915CC              
    addiu   a3, $zero, 0x0096          ## a3 = 00000096
    addiu   a2, $sp, 0x0068            ## a2 = FFFFFFE0
    or      a3, a2, $zero              ## a3 = FFFFFFE0
    lw      a0, 0x008C($sp)            
    jal     func_8001CB1C              
    addiu   a1, $sp, 0x0074            ## a1 = FFFFFFEC
    addiu   t8, $zero, 0x012C          ## t8 = 0000012C
    addiu   t0, $zero, 0x00B4          ## t0 = 000000B4
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    sw      t9, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    lw      a0, 0x008C($sp)            
    addiu   a1, $sp, 0x0074            ## a1 = FFFFFFEC
    lui     a2, 0x4000                 ## a2 = 40000000
    jal     func_80026308              
    addiu   a3, $zero, 0x0003          ## a3 = 00000003
    lw      a0, 0x008C($sp)            
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    addiu   a2, $zero, 0x0019          ## a2 = 00000019
    addiu   a3, $zero, 0x0005          ## a3 = 00000005
    jal     func_800497A4              
    addiu   a0, a0, 0x01E0             ## a0 = 000001E0
    lw      t3, 0x008C($sp)            
    addiu   t1, $zero, 0x0014          ## t1 = 00000014
    addiu   t2, $sp, 0x0054            ## t2 = FFFFFFCC
    addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
    sw      t4, 0x001C($sp)            
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 0600ABE0
    addiu   a1, $sp, 0x0074            ## a1 = FFFFFFEC
    addiu   a2, s0, 0x0030             ## a2 = 0600AC10
    addiu   a3, $sp, 0x005C            ## a3 = FFFFFFD4
    sw      $zero, 0x0020($sp)         
    jal     func_80028644              
    sw      t3, 0x0018($sp)            
    jal     func_808E6A9C              
    or      a0, s0, $zero              ## a0 = 0600ABE0
    beq     $zero, $zero, lbl_808E7948 
    lw      $ra, 0x0034($sp)           
    lh      v0, 0x031E(s0)             ## 0600AEFE
lbl_808E78E0:
    lui     $at, 0x40C0                ## $at = 40C00000
    beq     v0, $zero, lbl_808E7918    
    nop
    mtc1    $at, $f18                  ## $f18 = 6.00
    lwc1    $f4, 0x0194(s0)            ## 0600AD74
    or      a0, s0, $zero              ## a0 = 0600ABE0
    c.eq.s  $f18, $f4                  
    nop
    bc1f    lbl_808E7918               
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38E2          ## a1 = 000038E2
    beq     $zero, $zero, lbl_808E7948 
    lw      $ra, 0x0034($sp)           
lbl_808E7918:
    bne     v0, $zero, lbl_808E7944    
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f6                   ## $f6 = 3.00
    lwc1    $f8, 0x0194(s0)            ## 0600AD74
    or      a0, s0, $zero              ## a0 = 0600ABE0
    c.eq.s  $f6, $f8                   
    nop
    bc1fl   lbl_808E7948               
    lw      $ra, 0x0034($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38E1          ## a1 = 000038E1
lbl_808E7944:
    lw      $ra, 0x0034($sp)           
lbl_808E7948:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0088           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E7958:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s1, 0x0030($sp)            
    lw      s1, 0x1C44(a1)             ## 00001C44
    sw      $zero, 0x004C($sp)         
    lh      a3, 0x0032(s0)             ## 00000032
    sw      a1, 0x005C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80026850              
    lui     a2, 0x42DC                 ## a2 = 42DC0000
    sltiu   t6, v0, 0x0001             
    sw      t6, 0x0048($sp)            
    lwc1    $f4, 0x0194(s0)            ## 00000194
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    sw      a0, 0x003C($sp)            
    trunc.w.s $f6, $f4                   
    mfc1    t8, $f6                    
    jal     func_8008C9C0              
    sw      t8, 0x0050($sp)            
    beq     v0, $zero, lbl_808E79CC    
    lw      a0, 0x003C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    jal     func_8008D2D4              
    addiu   a1, a1, 0x2F10             ## a1 = 06002F10
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38BA          ## a1 = 000038BA
lbl_808E79CC:
    lh      v0, 0x031E(s0)             ## 0000031E
    lui     $at, 0x4120                ## $at = 41200000
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    beq     v0, $zero, lbl_808E7A08    
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
    sh      t9, 0x031E(s0)             ## 0000031E
    lh      a1, 0x0032(s0)             ## 00000032
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x1F40          ## a3 = 00001F40
    beq     $zero, $zero, lbl_808E7A88 
    sw      $zero, 0x0048($sp)         
lbl_808E7A08:
    mtc1    $at, $f8                   ## $f8 = 0.00
    sh      t0, 0x0324(s0)             ## 00000324
    lui     $at, 0x4080                ## $at = 40800000
    swc1    $f8, 0x0068(s0)            ## 00000068
    mtc1    $at, $f10                  ## $f10 = 4.00
    addiu   t1, $zero, 0x0003          ## t1 = 00000003
    addiu   t2, $zero, 0x0064          ## t2 = 00000064
    addiu   t3, $zero, 0x000F          ## t3 = 0000000F
    sw      t3, 0x001C($sp)            
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0010($sp)            
    sw      $zero, 0x0020($sp)         
    lw      a0, 0x005C($sp)            
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    lui     a3, 0x40A0                 ## a3 = 40A00000
    jal     func_800260E8              
    swc1    $f10, 0x0014($sp)          
    lwc1    $f16, 0x0194(s0)           ## 00000194
    lw      t5, 0x0050($sp)            
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    trunc.w.s $f18, $f16                 
    mfc1    v0, $f18                   
    nop
    beql    t5, v0, lbl_808E7A8C       
    lbu     v1, 0x03B4(s0)             ## 000003B4
    beq     v0, $at, lbl_808E7A80      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_808E7A8C      
    lbu     v1, 0x03B4(s0)             ## 000003B4
lbl_808E7A80:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38BF          ## a1 = 000038BF
lbl_808E7A88:
    lbu     v1, 0x03B4(s0)             ## 000003B4
lbl_808E7A8C:
    andi    t6, v1, 0x0002             ## t6 = 00000000
    beql    t6, $zero, lbl_808E7B64    
    lw      t5, 0x0670(s1)             ## 00000670
    lw      t7, 0x03A8(s0)             ## 000003A8
    lw      t8, 0x0048($sp)            
    andi    t4, v1, 0xFFFD             ## t4 = 00000000
    bnel    s1, t7, lbl_808E7B60       
    sb      t4, 0x03B4(s0)             ## 000003B4
    bnel    t8, $zero, lbl_808E7B54    
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    lw      t9, 0x0670(s1)             ## 00000670
    andi    t0, t9, 0x0080             ## t0 = 00000000
    bnel    t0, $zero, lbl_808E7B54    
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    lb      v0, 0x0A68(s1)             ## 00000A68
    bgez    v0, lbl_808E7B08           
    slti    $at, v0, 0xFFD9            
    beql    $at, $zero, lbl_808E7AE8   
    sb      $zero, 0x0A68(s1)          ## 00000A68
    sb      $zero, 0x0A68(s1)          ## 00000A68
    beq     $zero, $zero, lbl_808E7B08 
    lbu     v1, 0x03B4(s0)             ## 000003B4
    sb      $zero, 0x0A68(s1)          ## 00000A68
lbl_808E7AE8:
    lw      a0, 0x005C($sp)            
    lui     t9, 0x0001                 ## t9 = 00010000
    addiu   a1, $zero, 0xFFF8          ## a1 = FFFFFFF8
    addu    t9, t9, a0                 
    lw      t9, 0x1D58(t9)             ## 00011D58
    jalr    $ra, t9                    
    nop
    lbu     v1, 0x03B4(s0)             ## 000003B4
lbl_808E7B08:
    lw      v0, 0x005C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    andi    t2, v1, 0x0004             ## t2 = 00000000
    bne     t2, $zero, lbl_808E7B30    
    addu    v0, v0, $at                
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x083E          ## a1 = 0000083E
    jal     func_80022FD0              
    sw      v0, 0x0038($sp)            
    lw      v0, 0x0038($sp)            
lbl_808E7B30:
    lw      t9, 0x1D4C(v0)             ## 00001D4C
    lw      a0, 0x005C($sp)            
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    beql    v0, $zero, lbl_808E7B54    
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    sw      s0, 0x0118(s1)             ## 00000118
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
lbl_808E7B54:
    beq     $zero, $zero, lbl_808E7B60 
    sw      t3, 0x004C($sp)            
    sb      t4, 0x03B4(s0)             ## 000003B4
lbl_808E7B60:
    lw      t5, 0x0670(s1)             ## 00000670
lbl_808E7B64:
    andi    t6, t5, 0x0080             ## t6 = 00000000
    beql    t6, $zero, lbl_808E7C18    
    lw      t0, 0x0048($sp)            
    lw      t7, 0x0118(s1)             ## 00000118
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    bnel    s0, t7, lbl_808E7C18       
    lw      t0, 0x0048($sp)            
    lh      a0, 0x00B6(s0)             ## 000000B6
    jal     func_80063684              ## coss?
    sw      t8, 0x004C($sp)            
    swc1    $f0, 0x0040($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f6                   ## $f6 = 10.00
    lwc1    $f4, 0x0040($sp)           
    lui     $at, 0x42B2                ## $at = 42B20000
    mtc1    $at, $f18                  ## $f18 = 89.00
    mul.s   $f8, $f4, $f6              
    lwc1    $f10, 0x0024(s0)           ## 00000024
    mul.s   $f4, $f0, $f18             
    add.s   $f16, $f10, $f8            
    add.s   $f6, $f4, $f16             
    swc1    $f6, 0x0024(s1)            ## 00000024
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    swc1    $f0, 0x0040($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f8                   ## $f8 = 10.00
    lwc1    $f10, 0x0040($sp)          
    lui     $at, 0x42B2                ## $at = 42B20000
    mtc1    $at, $f6                   ## $f6 = 89.00
    mul.s   $f18, $f10, $f8            
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    mtc1    $zero, $f2                 ## $f2 = 0.00
    mul.s   $f10, $f0, $f6             
    sh      $zero, 0x0840(s1)          ## 00000840
    swc1    $f2, 0x0068(s1)            ## 00000068
    swc1    $f2, 0x0060(s1)            ## 00000060
    add.s   $f16, $f4, $f18            
    add.s   $f8, $f10, $f16            
    swc1    $f8, 0x002C(s1)            ## 0000002C
    lw      t0, 0x0048($sp)            
lbl_808E7C18:
    lw      t1, 0x004C($sp)            
    beql    t0, $zero, lbl_808E7C8C    
    lw      $ra, 0x0034($sp)           
    bne     t1, $zero, lbl_808E7C34    
    lw      v0, 0x0670(s1)             ## 00000670
    andi    t2, v0, 0x0080             ## t2 = 00000000
    beq     t2, $zero, lbl_808E7C70    
lbl_808E7C34:
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f0                   ## $f0 = 4.00
    addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
    and     t9, v0, $at                
    sw      t9, 0x0670(s1)             ## 00000670
    lbu     t3, 0x03B4(s0)             ## 000003B4
    mfc1    a2, $f0                    
    or      a1, s0, $zero              ## a1 = 00000000
    andi    t4, t3, 0xFFFD             ## t4 = 00000000
    sb      t4, 0x03B4(s0)             ## 000003B4
    sw      $zero, 0x0118(s1)          ## 00000118
    lh      a3, 0x0032(s0)             ## 00000032
    lw      a0, 0x005C($sp)            
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
lbl_808E7C70:
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f4                   ## $f4 = -10.00
    sh      $zero, 0x0324(s0)          ## 00000324
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808E6A18              
    swc1    $f4, 0x0068(s0)            ## 00000068
    lw      $ra, 0x0034($sp)           
lbl_808E7C8C:
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_808E7C9C:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s1, 0x0030($sp)            
    lw      s1, 0x1C44(a1)             ## 00001C44
    sw      $zero, 0x0054($sp)         
    lh      a3, 0x0032(s0)             ## 00000032
    sw      a1, 0x0064($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80026850              
    lui     a2, 0x42DC                 ## a2 = 42DC0000
    sltiu   t6, v0, 0x0001             
    sw      t6, 0x0050($sp)            
    lwc1    $f4, 0x0194(s0)            ## 00000194
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    trunc.w.s $f6, $f4                   
    mfc1    t8, $f6                    
    jal     func_8008C9C0              
    sw      t8, 0x0058($sp)            
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f8                   ## $f8 = 4.00
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    addiu   t9, $zero, 0x0003          ## t9 = 00000003
    addiu   t0, $zero, 0x0064          ## t0 = 00000064
    addiu   t1, $zero, 0x000F          ## t1 = 0000000F
    sw      t1, 0x001C($sp)            
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0010($sp)            
    sw      a2, 0x0040($sp)            
    lw      a0, 0x0064($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a3, 0x40A0                 ## a3 = 40A00000
    sw      $zero, 0x0020($sp)         
    jal     func_800260E8              
    swc1    $f8, 0x0014($sp)           
    lwc1    $f10, 0x0194(s0)           ## 00000194
    lw      t3, 0x0058($sp)            
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    trunc.w.s $f16, $f10                 
    mfc1    v0, $f16                   
    nop
    beql    t3, v0, lbl_808E7D6C       
    lbu     v1, 0x03B4(s0)             ## 000003B4
    beq     v0, $at, lbl_808E7D60      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    v0, $at, lbl_808E7D6C      
    lbu     v1, 0x03B4(s0)             ## 000003B4
lbl_808E7D60:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38BF          ## a1 = 000038BF
    lbu     v1, 0x03B4(s0)             ## 000003B4
lbl_808E7D6C:
    andi    t4, v1, 0x0002             ## t4 = 00000000
    beql    t4, $zero, lbl_808E7E44    
    lw      t3, 0x0670(s1)             ## 00000670
    lw      t5, 0x03A8(s0)             ## 000003A8
    lw      t6, 0x0050($sp)            
    andi    t2, v1, 0xFFFD             ## t2 = 00000000
    bnel    s1, t5, lbl_808E7E40       
    sb      t2, 0x03B4(s0)             ## 000003B4
    bnel    t6, $zero, lbl_808E7E34    
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    lw      t7, 0x0670(s1)             ## 00000670
    andi    t8, t7, 0x0080             ## t8 = 00000000
    bnel    t8, $zero, lbl_808E7E34    
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    lb      v0, 0x0A68(s1)             ## 00000A68
    bgez    v0, lbl_808E7DE8           
    slti    $at, v0, 0xFFD9            
    beql    $at, $zero, lbl_808E7DC8   
    sb      $zero, 0x0A68(s1)          ## 00000A68
    sb      $zero, 0x0A68(s1)          ## 00000A68
    beq     $zero, $zero, lbl_808E7DE8 
    lbu     v1, 0x03B4(s0)             ## 000003B4
    sb      $zero, 0x0A68(s1)          ## 00000A68
lbl_808E7DC8:
    lw      a0, 0x0064($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    addiu   a1, $zero, 0xFFF8          ## a1 = FFFFFFF8
    addu    $at, $at, a0               
    lw      t9, 0x1D58($at)            ## 00011D58
    jalr    $ra, t9                    
    nop
    lbu     v1, 0x03B4(s0)             ## 000003B4
lbl_808E7DE8:
    lw      v0, 0x0064($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    andi    t0, v1, 0x0004             ## t0 = 00000000
    bne     t0, $zero, lbl_808E7E10    
    addu    v0, v0, $at                
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x083E          ## a1 = 0000083E
    jal     func_80022FD0              
    sw      v0, 0x003C($sp)            
    lw      v0, 0x003C($sp)            
lbl_808E7E10:
    lw      t9, 0x1D4C(v0)             ## 00001D4C
    lw      a0, 0x0064($sp)            
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    beql    v0, $zero, lbl_808E7E34    
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    sw      s0, 0x0118(s1)             ## 00000118
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
lbl_808E7E34:
    beq     $zero, $zero, lbl_808E7E40 
    sw      t1, 0x0054($sp)            
    sb      t2, 0x03B4(s0)             ## 000003B4
lbl_808E7E40:
    lw      t3, 0x0670(s1)             ## 00000670
lbl_808E7E44:
    andi    t4, t3, 0x0080             ## t4 = 00000000
    beql    t4, $zero, lbl_808E7EF8    
    lw      t7, 0x0050($sp)            
    lw      t5, 0x0118(s1)             ## 00000118
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    bnel    s0, t5, lbl_808E7EF8       
    lw      t7, 0x0050($sp)            
    lh      a0, 0x00B6(s0)             ## 000000B6
    jal     func_80063684              ## coss?
    sw      t6, 0x0054($sp)            
    swc1    $f0, 0x0048($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    lwc1    $f18, 0x0048($sp)          
    lui     $at, 0x42B2                ## $at = 42B20000
    mtc1    $at, $f16                  ## $f16 = 89.00
    mul.s   $f6, $f18, $f4             
    lwc1    $f8, 0x0024(s0)            ## 00000024
    mul.s   $f18, $f0, $f16            
    add.s   $f10, $f8, $f6             
    add.s   $f4, $f18, $f10            
    swc1    $f4, 0x0024(s1)            ## 00000024
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    swc1    $f0, 0x0048($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f6                   ## $f6 = 10.00
    lwc1    $f8, 0x0048($sp)           
    lui     $at, 0x42B2                ## $at = 42B20000
    mtc1    $at, $f4                   ## $f4 = 89.00
    mul.s   $f16, $f8, $f6             
    lwc1    $f18, 0x002C(s0)           ## 0000002C
    mtc1    $zero, $f2                 ## $f2 = 0.00
    mul.s   $f8, $f0, $f4              
    sh      $zero, 0x0840(s1)          ## 00000840
    swc1    $f2, 0x0068(s1)            ## 00000068
    swc1    $f2, 0x0060(s1)            ## 00000060
    add.s   $f10, $f18, $f16           
    add.s   $f6, $f8, $f10             
    swc1    $f6, 0x002C(s1)            ## 0000002C
    lw      t7, 0x0050($sp)            
lbl_808E7EF8:
    lw      t8, 0x0054($sp)            
    beql    t7, $zero, lbl_808E7F98    
    or      a0, s0, $zero              ## a0 = 00000000
    bne     t8, $zero, lbl_808E7F1C    
    lui     $at, 0x4080                ## $at = 40800000
    lw      t0, 0x0670(s1)             ## 00000670
    andi    t9, t0, 0x0080             ## t9 = 00000000
    beql    t9, $zero, lbl_808E7F80    
    lh      t6, 0x031E(s0)             ## 0000031E
lbl_808E7F1C:
    lbu     t1, 0x03B4(s0)             ## 000003B4
    mtc1    $at, $f0                   ## $f0 = 4.00
    addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
    andi    t2, t1, 0xFFFD             ## t2 = 00000000
    sb      t2, 0x03B4(s0)             ## 000003B4
    lw      t3, 0x0670(s1)             ## 00000670
    sw      $zero, 0x0118(s1)          ## 00000118
    mfc1    a2, $f0                    
    and     t4, t3, $at                
    sw      t4, 0x0670(s1)             ## 00000670
    lh      a3, 0x0032(s0)             ## 00000032
    lw      a0, 0x0064($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f18                  ## $f18 = -10.00
    sh      $zero, 0x0324(s0)          ## 00000324
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808E6A18              
    swc1    $f18, 0x0068(s0)           ## 00000068
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    beq     $zero, $zero, lbl_808E7F94 
    sh      t5, 0x031E(s0)             ## 0000031E
    lh      t6, 0x031E(s0)             ## 0000031E
lbl_808E7F80:
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
    sh      t7, 0x031E(s0)             ## 0000031E
    jal     func_808E6138              
    lw      a1, 0x0064($sp)            
lbl_808E7F94:
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808E7F98:
    jal     func_808E6100              
    lw      a1, 0x0064($sp)            
    lh      t0, 0x031E(s0)             ## 0000031E
    lh      t8, 0x0032(s0)             ## 00000032
    addiu   a0, s0, 0x0008             ## a0 = 00000008
    bne     t0, $zero, lbl_808E7FE0    
    sh      t8, 0x00B6(s0)             ## 000000B6
    jal     func_80063EB8              
    lw      a1, 0x0040($sp)            
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f16                  ## $f16 = 80.00
    or      a0, s0, $zero              ## a0 = 00000000
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_808E7FE4               
    lw      $ra, 0x0034($sp)           
    jal     func_808E69B8              
    sh      $zero, 0x0324(s0)          ## 00000324
lbl_808E7FE0:
    lw      $ra, 0x0034($sp)           
lbl_808E7FE4:
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_808E7FF4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    beq     v0, $zero, lbl_808E8074    
    lw      a0, 0x0024($sp)            
    lh      t6, 0x031E(s0)             ## 0000031E
    lui     a1, 0x0601                 ## a1 = 06010000
    beq     t6, $zero, lbl_808E806C    
    nop
    jal     func_8008D1C4              
    addiu   a1, a1, 0xE18C             ## a1 = 0600E18C
    sh      $zero, 0x031E(s0)          ## 0000031E
    lwc1    $f12, 0x0090(s0)           ## 00000090
    addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    jal     func_800915CC              
    addiu   a3, $zero, 0x0096          ## a3 = 00000096
    lw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    addiu   a2, $zero, 0x0019          ## a2 = 00000019
    addiu   a3, $zero, 0x0005          ## a3 = 00000005
    jal     func_800497A4              
    addiu   a0, a0, 0x01E0             ## a0 = 000001E0
    beq     $zero, $zero, lbl_808E8078 
    lw      $ra, 0x001C($sp)           
lbl_808E806C:
    jal     func_808E6590              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808E8074:
    lw      $ra, 0x001C($sp)           
lbl_808E8078:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E8088:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    jal     func_8008C9C0              
    sw      a0, 0x0034($sp)            
    beql    v0, $zero, lbl_808E8184    
    lw      $ra, 0x002C($sp)           
    lh      v0, 0x031E(s0)             ## 0000031E
    beq     v0, $zero, lbl_808E8178    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x031E(s0)             ## 0000031E
    lh      t7, 0x031E(s0)             ## 0000031E
    bnel    t7, $zero, lbl_808E8184    
    lw      $ra, 0x002C($sp)           
    lh      t8, 0x031A(s0)             ## 0000031A
    lui     a0, 0x0601                 ## a0 = 06010000
    bne     t8, $zero, lbl_808E8130    
    nop
    jal     func_8008A194              
    addiu   a0, a0, 0xE18C             ## a0 = 0600E18C
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0601                 ## a1 = 06010000
    cvt.s.w $f6, $f4                   
    addiu   t9, $zero, 0x0003          ## t9 = 00000003
    mfc1    a3, $f0                    
    sw      t9, 0x0014($sp)            
    addiu   a1, a1, 0xE18C             ## a1 = 0600E18C
    lw      a0, 0x0034($sp)            
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x4040                 ## a2 = 40400000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    addiu   t1, $zero, 0x0006          ## t1 = 00000006
    sh      t0, 0x031A(s0)             ## 0000031A
    sh      t1, 0x031E(s0)             ## 0000031E
    beq     $zero, $zero, lbl_808E8184 
    lw      $ra, 0x002C($sp)           
lbl_808E8130:
    lui     s0, 0x0601                 ## s0 = 06010000
    addiu   s0, s0, 0xE18C             ## s0 = 0600E18C
    jal     func_8008A194              
    or      a0, s0, $zero              ## a0 = 0600E18C
    mtc1    v0, $f8                    ## $f8 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t2, $zero, 0x0003          ## t2 = 00000003
    cvt.s.w $f10, $f8                  
    mfc1    a3, $f0                    
    sw      t2, 0x0014($sp)            
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              ## a1 = 0600E18C
    lui     a2, 0x4040                 ## a2 = 40400000
    swc1    $f10, 0x0010($sp)          
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    beq     $zero, $zero, lbl_808E8184 
    lw      $ra, 0x002C($sp)           
lbl_808E8178:
    jal     func_808E6590              
    or      a0, s0, $zero              ## a0 = 0600E18C
    lw      $ra, 0x002C($sp)           
lbl_808E8184:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E8194:
    addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
    sw      s4, 0x0070($sp)            
    sw      s3, 0x006C($sp)            
    sw      s2, 0x0068($sp)            
    or      s2, a0, $zero              ## s2 = 00000000
    or      s3, a1, $zero              ## s3 = 00000000
    addiu   s4, $sp, 0x009C            ## s4 = FFFFFFF4
    sw      $ra, 0x0074($sp)           
    sw      s1, 0x0064($sp)            
    sw      s0, 0x0060($sp)            
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    lw      t7, 0x0024(s2)             ## 00000024
    sw      t7, 0x0000(s4)             ## FFFFFFF4
    lw      t6, 0x0028(s2)             ## 00000028
    sw      t6, 0x0004(s4)             ## FFFFFFF8
    lw      t7, 0x002C(s2)             ## 0000002C
    sw      t7, 0x0008(s4)             ## FFFFFFFC
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s2)             ## 000000B6
    lui     $at, 0xC28C                ## $at = C28C0000
    mtc1    $at, $f20                  ## $f20 = -70.00
    lwc1    $f4, 0x009C($sp)           
    mul.s   $f6, $f0, $f20             
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x009C($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(s2)             ## 000000B6
    mul.s   $f16, $f0, $f20            
    lwc1    $f10, 0x00A4($sp)          
    mtc1    $zero, $f2                 ## $f2 = 0.00
    addiu   a0, s2, 0x0068             ## a0 = 00000068
    lui     a2, 0x3F80                 ## a2 = 3F800000
    mfc1    a1, $f2                    
    lui     a3, 0x3F00                 ## a3 = 3F000000
    add.s   $f18, $f10, $f16           
    swc1    $f2, 0x0010($sp)           
    jal     func_80064178              
    swc1    $f18, 0x00A4($sp)          
    lw      t0, 0x0000(s4)             ## FFFFFFF4
    addiu   t8, $sp, 0x0090            ## t8 = FFFFFFE8
    addiu   a0, s2, 0x017C             ## a0 = 0000017C
    sw      t0, 0x0000(t8)             ## FFFFFFE8
    lw      t9, 0x0004(s4)             ## FFFFFFF8
    sw      t9, 0x0004(t8)             ## FFFFFFEC
    lw      t0, 0x0008(s4)             ## FFFFFFFC
    jal     func_8008C9C0              
    sw      t0, 0x0008(t8)             ## FFFFFFF0
    beql    v0, $zero, lbl_808E839C    
    lwc1    $f6, 0x0194(s2)            ## 00000194
    lh      t1, 0x031A(s2)             ## 0000031A
    or      a0, s3, $zero              ## a0 = 00000000
    or      a1, s2, $zero              ## a1 = 00000000
    blez    t1, lbl_808E8380           
    or      a2, s4, $zero              ## a2 = FFFFFFF4
    addiu   s1, $sp, 0x0084            ## s1 = FFFFFFDC
    lui     t2, %hi(var_808E99A8)      ## t2 = 808F0000
    addiu   t2, t2, %lo(var_808E99A8)  ## t2 = 808E99A8
    lw      t4, 0x0000(t2)             ## 808E99A8
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f24                  ## $f24 = 20.00
    sw      t4, 0x0000(s1)             ## FFFFFFDC
    lw      t3, 0x0004(t2)             ## 808E99AC
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f22                  ## $f22 = 15.00
    sw      t3, 0x0004(s1)             ## FFFFFFE0
    lw      t4, 0x0008(t2)             ## 808E99B0
    lui     $at, 0x4370                ## $at = 43700000
    mtc1    $at, $f20                  ## $f20 = 240.00
    sw      t4, 0x0008(s1)             ## FFFFFFE4
    lh      t5, 0x031A(s2)             ## 0000031A
    addiu   s0, $zero, 0x0004          ## s0 = 00000004
    addiu   t6, t5, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x031A(s2)             ## 0000031A
lbl_808E82C0:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f4, 0x0090($sp)           
    mov.s   $f12, $f22                 
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x009C($sp)           
    lwc1    $f8, 0x0094($sp)           
    mov.s   $f12, $f20                 
    add.s   $f10, $f8, $f24            
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x00A0($sp)          
    lwc1    $f18, 0x0098($sp)          
    addiu   t7, $zero, 0x00E6          ## t7 = 000000E6
    addiu   t8, $zero, 0x0007          ## t8 = 00000007
    add.s   $f4, $f0, $f18             
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
    addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
    addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
    addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    addiu   t5, $zero, 0x0009          ## t5 = 00000009
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    swc1    $f4, 0x00A4($sp)           
    sw      t6, 0x003C($sp)            
    sw      t5, 0x0038($sp)            
    sw      t4, 0x0034($sp)            
    sw      t3, 0x002C($sp)            
    sw      t2, 0x0024($sp)            
    sw      t1, 0x0020($sp)            
    sw      t0, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    or      a0, s3, $zero              ## a0 = 00000000
    or      a1, s4, $zero              ## a1 = FFFFFFF4
    or      a2, s1, $zero              ## a2 = FFFFFFDC
    or      a3, s1, $zero              ## a3 = FFFFFFDC
    sw      $zero, 0x0028($sp)         
    jal     func_8001E1D4              
    sw      $zero, 0x0030($sp)         
    addiu   s0, s0, 0xFFFF             ## s0 = 00000003
    bgez    s0, lbl_808E82C0           
    nop
    beq     $zero, $zero, lbl_808E8430 
    lw      $ra, 0x0074($sp)           
lbl_808E8380:
    jal     func_80013A84              
    addiu   a3, $zero, 0x00C0          ## a3 = 000000C0
    jal     func_80020EB4              
    or      a0, s2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E8430 
    lw      $ra, 0x0074($sp)           
    lwc1    $f6, 0x0194(s2)            ## 00000194
lbl_808E839C:
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
    trunc.w.s $f8, $f6                   
    addiu   a2, $zero, 0x0014          ## a2 = 00000014
    addiu   a3, $zero, 0x0096          ## a3 = 00000096
    mfc1    v0, $f8                    
    nop
    beq     v0, $at, lbl_808E83C8      
    addiu   $at, $zero, 0x0016         ## $at = 00000016
    bnel    v0, $at, lbl_808E8430      
    lw      $ra, 0x0074($sp)           
lbl_808E83C8:
    jal     func_800915CC              
    lwc1    $f12, 0x0090(s2)           ## 00000090
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f10                  ## $f10 = 3.00
    addiu   t8, $zero, 0x000A          ## t8 = 0000000A
    addiu   t9, $zero, 0x0190          ## t9 = 00000190
    addiu   t0, $zero, 0x003C          ## t0 = 0000003C
    sw      t0, 0x001C($sp)            
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0010($sp)            
    or      a0, s3, $zero              ## a0 = 00000000
    or      a1, s2, $zero              ## a1 = 00000000
    or      a2, s4, $zero              ## a2 = FFFFFFF4
    lui     a3, 0x4248                 ## a3 = 42480000
    sw      $zero, 0x0020($sp)         
    jal     func_800260E8              
    swc1    $f10, 0x0014($sp)          
    or      a0, s2, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387A          ## a1 = 0000387A
    addiu   a0, s3, 0x01E0             ## a0 = 000001E0
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    addiu   a2, $zero, 0x0019          ## a2 = 00000019
    jal     func_800497A4              
    addiu   a3, $zero, 0x0005          ## a3 = 00000005
    lw      $ra, 0x0074($sp)           
lbl_808E8430:
    ldc1    $f20, 0x0048($sp)          
    ldc1    $f22, 0x0050($sp)          
    ldc1    $f24, 0x0058($sp)          
    lw      s0, 0x0060($sp)            
    lw      s1, 0x0064($sp)            
    lw      s2, 0x0068($sp)            
    lw      s3, 0x006C($sp)            
    lw      s4, 0x0070($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A8           ## $sp = 00000000


func_808E8458:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x1C44(a1)             ## 00001C44
    lui     a1, 0x3F19                 ## a1 = 3F190000
    lui     a2, 0x3DCC                 ## a2 = 3DCC0000
    sw      t6, 0x003C($sp)            
    lh      t8, 0x00B6(s0)             ## 000000B6
    lh      t7, 0x008A(s0)             ## 0000008A
    ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
    ori     a1, a1, 0x9999             ## a1 = 3F199999
    subu    v1, t7, t8                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bgez    v1, lbl_808E84A8           
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    subu    v1, $zero, v1              
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_808E84A8:
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     a3, 0x3F80                 ## a3 = 3F800000
    sh      v1, 0x003A($sp)            
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lwc1    $f8, 0x0194(s0)            ## 00000194
    lwc1    $f6, 0x0068(s0)            ## 00000068
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    trunc.w.s $f10, $f8                  
    swc1    $f6, 0x0198(s0)            ## 00000198
    mfc1    t0, $f10                   
    jal     func_8008C9C0              
    sw      t0, 0x004C($sp)            
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lwc1    $f0, 0x0198(s0)            ## 00000198
    lh      v1, 0x003A($sp)            
    addiu   a0, s0, 0x0008             ## a0 = 00000008
    c.le.s  $f2, $f0                   
    nop
    bc1fl   lbl_808E8508               
    neg.s   $f16, $f0                  
    beq     $zero, $zero, lbl_808E850C 
    swc1    $f0, 0x0034($sp)           
    neg.s   $f16, $f0                  
lbl_808E8508:
    swc1    $f16, 0x0034($sp)          
lbl_808E850C:
    lwc1    $f18, 0x0194(s0)           ## 00000194
    lwc1    $f4, 0x0034($sp)           
    c.le.s  $f2, $f0                   
    sub.s   $f6, $f18, $f4             
    trunc.w.s $f8, $f6                   
    mfc1    t2, $f8                    
    bc1f    lbl_808E8534               
    sw      t2, 0x0048($sp)            
    beq     $zero, $zero, lbl_808E853C 
    swc1    $f0, 0x0034($sp)           
lbl_808E8534:
    neg.s   $f10, $f0                  
    swc1    $f10, 0x0034($sp)          
lbl_808E853C:
    lh      t3, 0x031E(s0)             ## 0000031E
    lw      a1, 0x003C($sp)            
    bne     t3, $zero, lbl_808E85C8    
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    jal     func_80063EB8              
    sh      v1, 0x003A($sp)            
    lwc1    $f16, 0x0354(s0)           ## 00000354
    lh      v1, 0x003A($sp)            
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    c.lt.s  $f0, $f16                  
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x02EE          ## a3 = 000002EE
    bc1fl   lbl_808E85CC               
    lw      t6, 0x0004(s0)             ## 00000004
    lh      a1, 0x008A(s0)             ## 0000008A
    sh      v1, 0x003A($sp)            
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lui     $at, 0x43FA                ## $at = 43FA0000
    mtc1    $at, $f4                   ## $f4 = 500.00
    lwc1    $f18, 0x0090(s0)           ## 00000090
    lw      t4, 0x0004(s0)             ## 00000004
    lh      v1, 0x003A($sp)            
    c.lt.s  $f18, $f4                  
    ori     t5, t4, 0x0001             ## t5 = 00000001
    sw      t5, 0x0004(s0)             ## 00000004
    slti    $at, v1, 0x1388            
    bc1fl   lbl_808E86D8               
    lwc1    $f10, 0x0194(s0)           ## 00000194
    beql    $at, $zero, lbl_808E86D8   
    lwc1    $f10, 0x0194(s0)           ## 00000194
    jal     func_808E67C0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E86D8 
    lwc1    $f10, 0x0194(s0)           ## 00000194
lbl_808E85C8:
    lw      t6, 0x0004(s0)             ## 00000004
lbl_808E85CC:
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    and     t7, t6, $at                
    sw      t7, 0x0004(s0)             ## 00000004
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    sw      a1, 0x0030($sp)            
    jal     func_80063EB8              
    sw      a0, 0x002C($sp)            
    lwc1    $f6, 0x0350(s0)            ## 00000350
    lw      a0, 0x002C($sp)            
    lw      a1, 0x0030($sp)            
    c.lt.s  $f6, $f0                   
    nop
    bc1t    lbl_808E8614               
    nop
    lh      v1, 0x031C(s0)             ## 0000031C
    beq     v1, $zero, lbl_808E863C    
    nop
lbl_808E8614:
    jal     func_80063F00              
    nop
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x02EE          ## a3 = 000002EE
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lh      v1, 0x031C(s0)             ## 0000031C
lbl_808E863C:
    beq     v1, $zero, lbl_808E8648    
    addiu   t8, v1, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x031C(s0)             ## 0000031C
lbl_808E8648:
    lh      v0, 0x031E(s0)             ## 0000031E
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_808E865C    
    addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
    sh      t9, 0x031E(s0)             ## 0000031E
lbl_808E865C:
    lh      t0, 0x031C(s0)             ## 0000031C
    bnel    t0, $zero, lbl_808E8674    
    lh      t1, 0x031A(s0)             ## 0000031A
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38BB          ## a1 = 000038BB
    lh      t1, 0x031A(s0)             ## 0000031A
lbl_808E8674:
    addiu   t2, t1, 0xFFFF             ## t2 = FFFFFFFF
    sh      t2, 0x031A(s0)             ## 0000031A
    lh      t3, 0x031A(s0)             ## 0000031A
    bnel    t3, $zero, lbl_808E86D8    
    lwc1    $f10, 0x0194(s0)           ## 00000194
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_808E9ABC)     ## $at = 808F0000
    lwc1    $f8, %lo(var_808E9ABC)($at) 
    addiu   a0, $zero, 0x0032          ## a0 = 00000032
    c.lt.s  $f8, $f0                   
    nop
    bc1f    lbl_808E86CC               
    nop
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0046          ## a1 = 00000046
    sh      v0, 0x031A(s0)             ## 0000031A
    addiu   a0, $zero, 0x000F          ## a0 = 0000000F
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0028          ## a1 = 00000028
    beq     $zero, $zero, lbl_808E86D4 
    sh      v0, 0x031C(s0)             ## 0000031C
lbl_808E86CC:
    jal     func_808E6528              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808E86D4:
    lwc1    $f10, 0x0194(s0)           ## 00000194
lbl_808E86D8:
    lw      v0, 0x004C($sp)            
    lw      t6, 0x0048($sp)            
    trunc.w.s $f16, $f10                 
    slti    $at, t6, 0x0002            
    mfc1    t5, $f16                   
    nop
    beql    v0, t5, lbl_808E8754       
    lh      t4, 0x0032(s0)             ## 00000032
    beq     $at, $zero, lbl_808E8718   
    lwc1    $f18, 0x0034($sp)          
    trunc.w.s $f4, $f18                  
    mfc1    t8, $f4                    
    nop
    addu    t9, t8, v0                 
    bgtzl   t9, lbl_808E8748           
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808E8718:
    lw      t0, 0x0048($sp)            
    lwc1    $f6, 0x0034($sp)           
    slti    $at, t0, 0x0015            
    beql    $at, $zero, lbl_808E8754   
    lh      t4, 0x0032(s0)             ## 00000032
    trunc.w.s $f8, $f6                   
    mfc1    t2, $f8                    
    nop
    addu    t3, t2, v0                 
    slti    $at, t3, 0x0014            
    bne     $at, $zero, lbl_808E8750   
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808E8748:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38B8          ## a1 = 000038B8
lbl_808E8750:
    lh      t4, 0x0032(s0)             ## 00000032
lbl_808E8754:
    sh      t4, 0x00B6(s0)             ## 000000B6
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_808E8768:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x004C($sp)            
    addiu   a0, s0, 0x0334             ## a0 = 00000334
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    sw      a1, 0x0028($sp)            
    jal     func_80063EB8              
    sw      a0, 0x002C($sp)            
    lui     $at, 0x4100                ## $at = 41000000
    mtc1    $at, $f4                   ## $f4 = 8.00
    nop
    c.le.s  $f0, $f4                   
    nop
    bc1tl   lbl_808E87F4               
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_808E9AC0)     ## $at = 808F0000
    lwc1    $f6, %lo(var_808E9AC0)($at) 
    addiu   a0, s0, 0x0008             ## a0 = 00000008
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_808E8808               
    mtc1    $zero, $f10                ## $f10 = 0.00
    jal     func_80063EB8              
    lw      a1, 0x0028($sp)            
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f8                   ## $f8 = 4.00
    nop
    c.le.s  $f0, $f8                   
    nop
    bc1f    lbl_808E8804               
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808E87F4:
    jal     func_808E65F4              
    lw      a1, 0x004C($sp)            
    beq     $zero, $zero, lbl_808E8838 
    lw      a0, 0x0028($sp)            
lbl_808E8804:
    mtc1    $zero, $f10                ## $f10 = 0.00
lbl_808E8808:
    lui     a1, 0x3F19                 ## a1 = 3F190000
    lui     a2, 0x3DCC                 ## a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
    ori     a1, a1, 0x9999             ## a1 = 3F199999
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    lui     a3, 0x3F80                 ## a3 = 3F800000
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lwc1    $f2, 0x0068(s0)            ## 00000068
    add.s   $f16, $f2, $f2             
    swc1    $f16, 0x0198(s0)           ## 00000198
    lw      a0, 0x0028($sp)            
lbl_808E8838:
    jal     func_80063F00              
    lw      a1, 0x002C($sp)            
    sh      v0, 0x0320(s0)             ## 00000320
    lh      a1, 0x0320(s0)             ## 00000320
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x05DC          ## a3 = 000005DC
    lwc1    $f0, 0x0094(s0)            ## 00000094
    mtc1    $zero, $f18                ## $f18 = 0.00
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f4                   ## $f4 = 20.00
    c.le.s  $f18, $f0                  
    or      a0, s0, $zero              ## a0 = 00000000
    bc1fl   lbl_808E8888               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_808E8888 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_808E8888:
    c.le.s  $f2, $f4                   
    nop
    bc1fl   lbl_808E892C               
    lh      v0, 0x031C(s0)             ## 0000031C
    jal     func_808E6224              
    lw      a1, 0x004C($sp)            
    beql    v0, $zero, lbl_808E892C    
    lh      v0, 0x031C(s0)             ## 0000031C
    lh      t6, 0x00B6(s0)             ## 000000B6
    lh      t7, 0x008A(s0)             ## 0000008A
    subu    v0, t6, t7                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_808E88CC           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_808E88CC 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_808E88CC:
    slti    $at, v1, 0x4001            
    bnel    $at, $zero, lbl_808E8904   
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80021768              
    lw      a0, 0x004C($sp)            
    beq     v0, $zero, lbl_808E8928    
    lui     $at, 0x4320                ## $at = 43200000
    lwc1    $f6, 0x0090(s0)            ## 00000090
    mtc1    $at, $f8                   ## $f8 = 160.00
    nop
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_808E8928               
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808E8904:
    jal     func_808E6398              
    lw      a1, 0x004C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38BB          ## a1 = 000038BB
    jal     func_808E67C0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E8A44 
    lw      $ra, 0x0024($sp)           
lbl_808E8928:
    lh      v0, 0x031C(s0)             ## 0000031C
lbl_808E892C:
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_808E893C    
    addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x031C(s0)             ## 0000031C
lbl_808E893C:
    lh      v0, 0x031E(s0)             ## 0000031E
    beq     v0, $zero, lbl_808E894C    
    addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
    sh      t9, 0x031E(s0)             ## 0000031E
lbl_808E894C:
    lh      t0, 0x031C(s0)             ## 0000031C
    bnel    t0, $zero, lbl_808E8974    
    lwc1    $f10, 0x0194(s0)           ## 00000194
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38BB          ## a1 = 000038BB
    addiu   a0, $zero, 0x001E          ## a0 = 0000001E
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0046          ## a1 = 00000046
    sh      v0, 0x031C(s0)             ## 0000031C
    lwc1    $f10, 0x0194(s0)           ## 00000194
lbl_808E8974:
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    trunc.w.s $f16, $f10                 
    mfc1    v1, $f16                   
    jal     func_8008C9C0              
    sw      v1, 0x0044($sp)            
    lwc1    $f0, 0x0198(s0)            ## 00000198
    mtc1    $zero, $f18                ## $f18 = 0.00
    mtc1    $zero, $f8                 ## $f8 = 0.00
    lw      v1, 0x0044($sp)            
    c.le.s  $f18, $f0                  
    nop
    bc1fl   lbl_808E89B4               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_808E89B4 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_808E89B4:
    lwc1    $f12, 0x0194(s0)           ## 00000194
    c.le.s  $f8, $f0                   
    sub.s   $f4, $f12, $f2             
    trunc.w.s $f10, $f12                 
    trunc.w.s $f6, $f4                   
    mfc1    t4, $f10                   
    mfc1    v0, $f6                    
    bc1fl   lbl_808E89E4               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_808E89E4 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_808E89E4:
    beq     v1, t4, lbl_808E8A38       
    slti    $at, v0, 0x0002            
    beql    $at, $zero, lbl_808E8A0C   
    slti    $at, v0, 0x0015            
    trunc.w.s $f16, $f2                  
    mfc1    t6, $f16                   
    nop
    addu    t7, t6, v1                 
    bgtz    t7, lbl_808E8A2C           
    slti    $at, v0, 0x0015            
lbl_808E8A0C:
    beql    $at, $zero, lbl_808E8A3C   
    lh      t1, 0x0032(s0)             ## 00000032
    trunc.w.s $f18, $f2                  
    mfc1    t9, $f18                   
    nop
    addu    t0, t9, v1                 
    slti    $at, t0, 0x0014            
    bne     $at, $zero, lbl_808E8A38   
lbl_808E8A2C:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38B8          ## a1 = 000038B8
lbl_808E8A38:
    lh      t1, 0x0032(s0)             ## 00000032
lbl_808E8A3C:
    sh      t1, 0x00B6(s0)             ## 000000B6
    lw      $ra, 0x0024($sp)           
lbl_808E8A44:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E8A54:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lw      t6, 0x1C44(a1)             ## 00001C44
    addiu   a0, a2, 0x017C             ## a0 = 0000017C
    sw      t6, 0x0024($sp)            
    lh      t8, 0x008A(a2)             ## 0000008A
    lh      t7, 0x0032(a2)             ## 00000032
    sw      a2, 0x0028($sp)            
    subu    v1, t7, t8                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    jal     func_8008C9C0              
    sh      v1, 0x001E($sp)            
    lw      a2, 0x0028($sp)            
    lw      a1, 0x0024($sp)            
    addiu   a0, a2, 0x0008             ## a0 = 00000008
    jal     func_80063EB8              
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    lw      a2, 0x0028($sp)            
    lh      v1, 0x001E($sp)            
    lw      t9, 0x0024($sp)            
    lwc1    $f4, 0x0354(a2)            ## 00000354
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_808E8AF8               
    lw      $ra, 0x0014($sp)           
    lw      t0, 0x066C(t9)             ## 0000066C
    sll     t1, t0,  5                 
    bltzl   t1, lbl_808E8AF8           
    lw      $ra, 0x0014($sp)           
    bltz    v1, lbl_808E8AE0           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_808E8AE0 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_808E8AE0:
    slti    $at, v0, 0x3E80            
    beql    $at, $zero, lbl_808E8AF8   
    lw      $ra, 0x0014($sp)           
    jal     func_808E68E8              
    or      a0, a2, $zero              ## a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_808E8AF8:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E8B04:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t6, 0x008A(s0)             ## 0000008A
    lh      t7, 0x00B6(s0)             ## 000000B6
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lui     a1, 0x0600                 ## a1 = 06000000
    subu    v0, t6, t7                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_808E8B40           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_808E8B40 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_808E8B40:
    slti    $at, v1, 0x4001            
    beq     $at, $zero, lbl_808E8B70   
    addiu   a1, a1, 0x095C             ## a1 = 0600095C
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x1950             ## a1 = 06001950
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    jal     func_8008D21C              
    lui     a2, 0xC080                 ## a2 = C0800000
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f4                   ## $f4 = -8.00
    beq     $zero, $zero, lbl_808E8B88 
    swc1    $f4, 0x0068(s0)            ## 00000068
lbl_808E8B70:
    jal     func_8008D21C              
    lui     a2, 0xC080                 ## a2 = C0800000
    lui     $at, 0x4100                ## $at = 41000000
    mtc1    $at, $f6                   ## $f6 = 8.00
    nop
    swc1    $f6, 0x0068(s0)            ## 00000068
lbl_808E8B88:
    lh      t9, 0x0032(s0)             ## 00000032
    addiu   t8, $zero, 0x001E          ## t8 = 0000001E
    sh      t8, 0x031A(s0)             ## 0000031A
    sw      $zero, 0x0310(s0)          ## 00000310
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x38BE          ## a1 = 000038BE
    jal     func_80022FD0              
    sh      t9, 0x00B6(s0)             ## 000000B6
    lui     a1, %hi(func_808E8BCC)     ## a1 = 808F0000
    addiu   a1, a1, %lo(func_808E8BCC) ## a1 = 808E8BCC
    jal     func_808E5D40              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E8BCC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x3F00                 ## a3 = 3F000000
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    beql    v0, $zero, lbl_808E8C34    
    lw      $ra, 0x0024($sp)           
    lh      t6, 0x001C(s0)             ## 0000001C
    bgez    t6, lbl_808E8C28           
    nop
    jal     func_808E6528              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E8C34 
    lw      $ra, 0x0024($sp)           
lbl_808E8C28:
    jal     func_808E6878              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_808E8C34:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E8C44:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t6, 0x008A(s0)             ## 0000008A
    lh      t7, 0x00B6(s0)             ## 000000B6
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lui     a1, 0x0600                 ## a1 = 06000000
    subu    v0, t6, t7                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_808E8C80           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_808E8C80 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_808E8C80:
    slti    $at, v1, 0x4001            
    beq     $at, $zero, lbl_808E8CB0   
    addiu   a1, a1, 0x16B4             ## a1 = 060016B4
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x16B4             ## a1 = 060016B4
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    jal     func_8008D21C              
    lui     a2, 0xC080                 ## a2 = C0800000
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f4                   ## $f4 = -8.00
    beq     $zero, $zero, lbl_808E8CC8 
    swc1    $f4, 0x0068(s0)            ## 00000068
lbl_808E8CB0:
    jal     func_8008D21C              
    lui     a2, 0xC080                 ## a2 = C0800000
    lui     $at, 0x4100                ## $at = 41000000
    mtc1    $at, $f6                   ## $f6 = 8.00
    nop
    swc1    $f6, 0x0068(s0)            ## 00000068
lbl_808E8CC8:
    lh      t8, 0x00B6(s0)             ## 000000B6
    addiu   t9, $zero, 0x001E          ## t9 = 0000001E
    sh      t9, 0x031A(s0)             ## 0000031A
    sw      $zero, 0x0310(s0)          ## 00000310
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x38BE          ## a1 = 000038BE
    jal     func_80022FD0              
    sh      t8, 0x0032(s0)             ## 00000032
    lw      t0, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    lui     a1, %hi(func_808E8D1C)     ## a1 = 808F0000
    and     t1, t0, $at                
    sw      t1, 0x0004(s0)             ## 00000004
    addiu   a1, a1, %lo(func_808E8D1C) ## a1 = 808E8D1C
    jal     func_808E5D40              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E8D1C:
    addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
    sdc1    $f20, 0x0048($sp)          
    sw      s4, 0x0070($sp)            
    sw      s1, 0x0064($sp)            
    mtc1    $zero, $f20                ## $f20 = 0.00
    or      s1, a0, $zero              ## s1 = 00000000
    or      s4, a1, $zero              ## s4 = 00000000
    sw      $ra, 0x0074($sp)           
    sw      s3, 0x006C($sp)            
    sw      s2, 0x0068($sp)            
    sw      s0, 0x0060($sp)            
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    mfc1    a1, $f20                   
    addiu   a0, s1, 0x0068             ## a0 = 00000068
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x3F00                 ## a3 = 3F000000
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    jal     func_8008C9C0              
    addiu   a0, s1, 0x017C             ## a0 = 0000017C
    beql    v0, $zero, lbl_808E8EB4    
    lw      $ra, 0x0074($sp)           
    lh      t6, 0x031A(s1)             ## 0000031A
    or      a0, s4, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    blez    t6, lbl_808E8EA0           
    addiu   a2, s1, 0x0024             ## a2 = 00000024
    addiu   s2, $sp, 0x008C            ## s2 = FFFFFFF4
    lui     t7, %hi(var_808E99B4)      ## t7 = 808F0000
    addiu   t7, t7, %lo(var_808E99B4)  ## t7 = 808E99B4
    lw      t9, 0x0000(t7)             ## 808E99B4
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f24                  ## $f24 = 20.00
    sw      t9, 0x0000(s2)             ## FFFFFFF4
    lw      t8, 0x0004(t7)             ## 808E99B8
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f22                  ## $f22 = 15.00
    sw      t8, 0x0004(s2)             ## FFFFFFF8
    lw      t9, 0x0008(t7)             ## 808E99BC
    lui     $at, 0x42DC                ## $at = 42DC0000
    addiu   s0, $zero, 0x0004          ## s0 = 00000004
    sw      t9, 0x0008(s2)             ## FFFFFFFC
    lh      t0, 0x031A(s1)             ## 0000031A
    swc1    $f20, 0x00C4(s1)           ## 000000C4
    mtc1    $at, $f20                  ## $f20 = 110.00
    addiu   t1, t0, 0xFFFF             ## t1 = FFFFFFFF
    sh      t1, 0x031A(s1)             ## 0000031A
    addiu   s3, $sp, 0x007C            ## s3 = FFFFFFE4
lbl_808E8DE0:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f4, 0x0024(s1)            ## 00000024
    mov.s   $f12, $f22                 
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x007C($sp)           
    lwc1    $f8, 0x0028(s1)            ## 00000028
    mov.s   $f12, $f20                 
    add.s   $f10, $f8, $f24            
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x0080($sp)          
    lwc1    $f18, 0x002C(s1)           ## 0000002C
    addiu   t2, $zero, 0x0064          ## t2 = 00000064
    addiu   t3, $zero, 0x0007          ## t3 = 00000007
    add.s   $f4, $f0, $f18             
    addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
    addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
    addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
    addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
    addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    addiu   t0, $zero, 0x0009          ## t0 = 00000009
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    swc1    $f4, 0x0084($sp)           
    sw      t1, 0x003C($sp)            
    sw      t0, 0x0038($sp)            
    sw      t9, 0x0034($sp)            
    sw      t8, 0x002C($sp)            
    sw      t7, 0x0024($sp)            
    sw      t6, 0x0020($sp)            
    sw      t5, 0x001C($sp)            
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    sw      $zero, 0x0030($sp)         
    sw      $zero, 0x0028($sp)         
    or      a0, s4, $zero              ## a0 = 00000000
    or      a1, s3, $zero              ## a1 = FFFFFFE4
    or      a2, s2, $zero              ## a2 = FFFFFFF4
    jal     func_8001E1D4              
    or      a3, s2, $zero              ## a3 = FFFFFFF4
    addiu   s0, s0, 0xFFFF             ## s0 = 00000003
    bgez    s0, lbl_808E8DE0           
    nop
    beq     $zero, $zero, lbl_808E8EB4 
    lw      $ra, 0x0074($sp)           
lbl_808E8EA0:
    jal     func_80013A84              
    addiu   a3, $zero, 0x00E0          ## a3 = 000000E0
    jal     func_80020EB4              
    or      a0, s1, $zero              ## a0 = 00000000
    lw      $ra, 0x0074($sp)           
lbl_808E8EB4:
    ldc1    $f20, 0x0048($sp)          
    ldc1    $f22, 0x0050($sp)          
    ldc1    $f24, 0x0058($sp)          
    lw      s0, 0x0060($sp)            
    lw      s1, 0x0064($sp)            
    lw      s2, 0x0068($sp)            
    lw      s3, 0x006C($sp)            
    lw      s4, 0x0070($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           ## $sp = 00000000


func_808E8EDC:
    addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0074($sp)            
    addiu   a2, $sp, 0x0064            ## a2 = FFFFFFF4
    lui     t6, %hi(var_808E99C0)      ## t6 = 808F0000
    addiu   t6, t6, %lo(var_808E99C0)  ## t6 = 808E99C0
    lw      t8, 0x0000(t6)             ## 808E99C0
    lui     t0, %hi(var_808E99CC)      ## t0 = 808F0000
    addiu   t0, t0, %lo(var_808E99CC)  ## t0 = 808E99CC
    sw      t8, 0x0000(a2)             ## FFFFFFF4
    lw      t7, 0x0004(t6)             ## 808E99C4
    addiu   t9, $sp, 0x0058            ## t9 = FFFFFFE8
    lui     t4, %hi(var_808E99D8)      ## t4 = 808F0000
    sw      t7, 0x0004(a2)             ## FFFFFFF8
    lw      t8, 0x0008(t6)             ## 808E99C8
    addiu   t4, t4, %lo(var_808E99D8)  ## t4 = 808E99D8
    addiu   t3, $sp, 0x004C            ## t3 = FFFFFFDC
    sw      t8, 0x0008(a2)             ## FFFFFFFC
    lw      t2, 0x0000(t0)             ## 808E99CC
    lw      t1, 0x0004(t0)             ## 808E99D0
    lui     t8, %hi(var_808E99E4)      ## t8 = 808F0000
    sw      t2, 0x0000(t9)             ## FFFFFFE8
    lw      t2, 0x0008(t0)             ## 808E99D4
    sw      t1, 0x0004(t9)             ## FFFFFFEC
    addiu   t8, t8, %lo(var_808E99E4)  ## t8 = 808E99E4
    sw      t2, 0x0008(t9)             ## FFFFFFF0
    lw      t6, 0x0000(t4)             ## 808E99D8
    lw      t5, 0x0004(t4)             ## 808E99DC
    addiu   t7, $sp, 0x0040            ## t7 = FFFFFFD0
    sw      t6, 0x0000(t3)             ## FFFFFFDC
    lw      t6, 0x0008(t4)             ## 808E99E0
    sw      t5, 0x0004(t3)             ## FFFFFFE0
    lui     $at, 0x44FA                ## $at = 44FA0000
    sw      t6, 0x0008(t3)             ## FFFFFFE4
    lw      t0, 0x0000(t8)             ## 808E99E4
    lw      t9, 0x0004(t8)             ## 808E99E8
    or      a0, a2, $zero              ## a0 = FFFFFFF4
    sw      t0, 0x0000(t7)             ## FFFFFFD0
    lw      t0, 0x0008(t8)             ## 808E99EC
    sw      t9, 0x0004(t7)             ## FFFFFFD4
    addiu   a1, s0, 0x03F0             ## a1 = 000003F0
    sw      t0, 0x0008(t7)             ## FFFFFFD8
    lh      t1, 0x001C(s0)             ## 0000001C
    lwc1    $f4, 0x0064($sp)           
    blez    t1, lbl_808E8FFC           
    nop
    mtc1    $at, $f0                   ## $f0 = 2000.00
    lwc1    $f8, 0x004C($sp)           
    lwc1    $f16, 0x0058($sp)          
    lui     $at, 0xC57A                ## $at = C57A0000
    mtc1    $at, $f2                   ## $f2 = -4000.00
    add.s   $f6, $f4, $f0              
    lui     $at, 0x457A                ## $at = 457A0000
    mtc1    $at, $f12                  ## $f12 = 4000.00
    add.s   $f10, $f8, $f0             
    lwc1    $f4, 0x0040($sp)           
    lwc1    $f8, 0x0054($sp)           
    sub.s   $f18, $f16, $f0            
    lwc1    $f16, 0x0048($sp)          
    swc1    $f6, 0x0064($sp)           
    swc1    $f10, 0x004C($sp)          
    swc1    $f18, 0x0058($sp)          
    sub.s   $f6, $f4, $f0              
    swc1    $f2, 0x006C($sp)           
    swc1    $f2, 0x0060($sp)           
    add.s   $f10, $f8, $f12            
    swc1    $f6, 0x0040($sp)           
    add.s   $f18, $f16, $f12           
    swc1    $f10, 0x0054($sp)          
    swc1    $f18, 0x0048($sp)          
lbl_808E8FFC:
    jal     func_800AB958              
    sw      a1, 0x0034($sp)            
    addiu   a1, s0, 0x03E4             ## a1 = 000003E4
    sw      a1, 0x0038($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0058            ## a0 = FFFFFFE8
    addiu   a1, s0, 0x0408             ## a1 = 00000408
    sw      a1, 0x002C($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x004C            ## a0 = FFFFFFDC
    addiu   a3, s0, 0x03FC             ## a3 = 000003FC
    or      a1, a3, $zero              ## a1 = 000003FC
    sw      a3, 0x0030($sp)            
    jal     func_800AB958              
    addiu   a0, $sp, 0x0040            ## a0 = FFFFFFD0
    lw      t2, 0x002C($sp)            
    lw      a3, 0x0030($sp)            
    addiu   a0, s0, 0x03A4             ## a0 = 000003A4
    lw      a1, 0x0038($sp)            
    lw      a2, 0x0034($sp)            
    jal     func_80050B64              
    sw      t2, 0x0010($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0070           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E9068:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lui     a0, %hi(var_808E99F0)      ## a0 = 808F0000
    addiu   a1, s0, 0x03F0             ## a1 = 000003F0
    sw      a1, 0x0038($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_808E99F0)  ## a0 = 808E99F0
    lui     a0, %hi(var_808E99FC)      ## a0 = 808F0000
    addiu   a1, s0, 0x03E4             ## a1 = 000003E4
    sw      a1, 0x0034($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_808E99FC)  ## a0 = 808E99FC
    lui     a0, %hi(var_808E9A08)      ## a0 = 808F0000
    addiu   a1, s0, 0x0408             ## a1 = 00000408
    sw      a1, 0x002C($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_808E9A08)  ## a0 = 808E9A08
    lui     a0, %hi(var_808E9A14)      ## a0 = 808F0000
    addiu   a3, s0, 0x03FC             ## a3 = 000003FC
    or      a1, a3, $zero              ## a1 = 000003FC
    sw      a3, 0x0030($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_808E9A14)  ## a0 = 808E9A14
    lw      t6, 0x002C($sp)            
    lw      a3, 0x0030($sp)            
    addiu   a0, s0, 0x03A4             ## a0 = 000003A4
    lw      a1, 0x0034($sp)            
    lw      a2, 0x0038($sp)            
    jal     func_80050B64              
    sw      t6, 0x0010($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E9100:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     v0, 0x0435(s0)             ## 00000435
    lw      t6, 0x002C($sp)            
    andi    t7, v0, 0x0002             ## t7 = 00000000
    beq     t7, $zero, lbl_808E9140    
    lw      v1, 0x1C44(t6)             ## 00001C44
    lbu     t9, 0x0369(s0)             ## 00000369
    andi    t8, v0, 0xFF7D             ## t8 = 00000000
    sb      t8, 0x0435(s0)             ## 00000435
    andi    t0, t9, 0xFFFD             ## t0 = 00000000
    beq     $zero, $zero, lbl_808E92B4 
    sb      t0, 0x0369(s0)             ## 00000369
lbl_808E9140:
    lbu     a0, 0x0369(s0)             ## 00000369
    andi    t1, a0, 0x0002             ## t1 = 00000000
    beql    t1, $zero, lbl_808E92B8    
    lw      $ra, 0x0024($sp)           
    lw      t2, 0x0310(s0)             ## 00000310
    slti    $at, t2, 0x0005            
    bnel    $at, $zero, lbl_808E92B8   
    lw      $ra, 0x0024($sp)           
    lbu     a3, 0x00B1(s0)             ## 000000B1
    andi    t3, a0, 0xFFFD             ## t3 = 00000000
    sb      t3, 0x0369(s0)             ## 00000369
    beq     a3, $zero, lbl_808E92B4    
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    beql    a3, $at, lbl_808E92B8      
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x0670(v1)             ## 00000670
    andi    t4, v0, 0x0080             ## t4 = 00000000
    beql    t4, $zero, lbl_808E91D0    
    sb      a3, 0x0178(s0)             ## 00000178
    lw      t5, 0x0118(v1)             ## 00000118
    lui     $at, 0x40C0                ## $at = 40C00000
    or      a1, s0, $zero              ## a1 = 00000000
    bnel    s0, t5, lbl_808E91D0       
    sb      a3, 0x0178(s0)             ## 00000178
    mtc1    $at, $f0                   ## $f0 = 6.00
    addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
    and     t6, v0, $at                
    sw      t6, 0x0670(v1)             ## 00000670
    sw      $zero, 0x0118(v1)          ## 00000118
    lh      a3, 0x0032(s0)             ## 00000032
    mfc1    a2, $f0                    
    lw      a0, 0x002C($sp)            
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    lbu     a3, 0x00B1(s0)             ## 000000B1
    sb      a3, 0x0178(s0)             ## 00000178
lbl_808E91D0:
    sh      $zero, 0x0324(s0)          ## 00000324
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0370             ## a1 = 00000370
    jal     func_800283BC              
    or      a2, $zero, $zero           ## a2 = 00000000
    lbu     v0, 0x00B1(s0)             ## 000000B1
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v0, $at, lbl_808E91FC      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bne     v0, $at, lbl_808E9224      
    nop
lbl_808E91FC:
    lw      t7, 0x0310(s0)             ## 00000310
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    beql    t7, $at, lbl_808E92B8      
    lw      $ra, 0x0024($sp)           
    jal     func_80028390              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808E6C84              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E92B8 
    lw      $ra, 0x0024($sp)           
lbl_808E9224:
    jal     func_80028390              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t8, $zero, 0x000C          ## t8 = 0000000C
    sw      t8, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   a2, $zero, 0x00FA          ## a2 = 000000FA
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    lh      t9, 0x001C(s0)             ## 0000001C
    bnel    t9, $zero, lbl_808E9294    
    lbu     t2, 0x00AF(s0)             ## 000000AF
    lbu     t0, 0x00AF(s0)             ## 000000AF
    bnel    t0, $zero, lbl_808E9274    
    lw      t1, 0x0310(s0)             ## 00000310
    jal     func_808E6BFC              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E92B8 
    lw      $ra, 0x0024($sp)           
    lw      t1, 0x0310(s0)             ## 00000310
lbl_808E9274:
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beql    t1, $at, lbl_808E92B8      
    lw      $ra, 0x0024($sp)           
    jal     func_808E6B14              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E92B8 
    lw      $ra, 0x0024($sp)           
    lbu     t2, 0x00AF(s0)             ## 000000AF
lbl_808E9294:
    bne     t2, $zero, lbl_808E92AC    
    nop
    jal     func_808E8C44              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808E92B8 
    lw      $ra, 0x0024($sp)           
lbl_808E92AC:
    jal     func_808E8B04              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808E92B4:
    lw      $ra, 0x0024($sp)           
lbl_808E92B8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E92C8:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808E9100              
    or      a1, s1, $zero              ## a1 = 00000000
    lbu     t6, 0x00B1(s0)             ## 000000B1
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    beql    t6, $at, lbl_808E948C      
    lw      $ra, 0x0024($sp)           
    lw      t9, 0x0314(s0)             ## 00000314
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f0                   ## $f0 = 40.00
    lui     $at, 0x428C                ## $at = 428C0000
    mtc1    $at, $f4                   ## $f4 = 70.00
    addiu   t7, $zero, 0x001D          ## t7 = 0000001D
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t7, 0x0014($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lui     $at, %hi(var_808E9AC4)     ## $at = 808F0000
    lwc1    $f8, %lo(var_808E9AC4)($at) 
    lwc1    $f6, 0x0050(s0)            ## 00000050
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f10, $f6, $f8             
    mfc1    a1, $f10                   
    jal     func_80020F04              
    nop
    addiu   a1, s0, 0x0358             ## a1 = 00000358
    sw      a1, 0x0028($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lbu     t8, 0x00AF(s0)             ## 000000AF
    bgtzl   t8, lbl_808E9404           
    lui     $at, 0x0001                ## $at = 00010000
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lui     $at, %hi(var_808E9AC8)     ## $at = 808F0000
    lwc1    $f16, %lo(var_808E9AC8)($at) 
    lwc1    $f18, 0x0054(s0)           ## 00000054
    lh      t0, 0x039E(s0)             ## 0000039E
    lh      a0, 0x00B6(s0)             ## 000000B6
    mul.s   $f4, $f16, $f18            
    mtc1    t0, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    mul.s   $f6, $f0, $f4              
    add.s   $f16, $f10, $f6            
    trunc.w.s $f18, $f16                 
    mfc1    t2, $f18                   
    jal     func_80063684              ## coss?
    sh      t2, 0x039E(s0)             ## 0000039E
    lui     $at, %hi(var_808E9ACC)     ## $at = 808F0000
    lwc1    $f4, %lo(var_808E9ACC)($at) 
    lwc1    $f8, 0x0054(s0)            ## 00000054
    lh      t3, 0x03A2(s0)             ## 000003A2
    mul.s   $f10, $f4, $f8             
    mtc1    t3, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    mul.s   $f6, $f0, $f10             
    add.s   $f4, $f18, $f6             
    trunc.w.s $f8, $f4                   
    mfc1    t5, $f8                    
    nop
    sh      t5, 0x03A2(s0)             ## 000003A2
    lui     $at, 0x0001                ## $at = 00010000
lbl_808E9404:
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, s1, $at                
    sw      a1, 0x0030($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004C130              ## CollisionCheck_setOT
    lw      a2, 0x0028($sp)            
    lw      v0, 0x0310(s0)             ## 00000310
    slti    $at, v0, 0x0005            
    bnel    $at, $zero, lbl_808E9458   
    slti    $at, v0, 0x0006            
    lh      t6, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    or      a0, s1, $zero              ## a0 = 00000000
    beq     t6, $zero, lbl_808E9448    
    lw      a1, 0x0030($sp)            
    beql    v0, $at, lbl_808E9458      
    slti    $at, v0, 0x0006            
lbl_808E9448:
    jal     func_8004BF40              ## CollisionCheck_setAC
    lw      a2, 0x0028($sp)            
    lw      v0, 0x0310(s0)             ## 00000310
    slti    $at, v0, 0x0006            
lbl_808E9458:
    bne     $at, $zero, lbl_808E946C   
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0030($sp)            
    jal     func_8004BF40              ## CollisionCheck_setAC
    addiu   a2, s0, 0x0424             ## a2 = 00000424
lbl_808E946C:
    lh      t9, 0x0324(s0)             ## 00000324
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0030($sp)            
    blezl   t9, lbl_808E948C           
    lw      $ra, 0x0024($sp)           
    jal     func_8004BD50              ## CollisionCheck_setAT
    addiu   a2, s0, 0x03A4             ## a2 = 000003A4
    lw      $ra, 0x0024($sp)           
lbl_808E948C:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_808E949C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    sw      a2, 0x0040($sp)            
    sw      a3, 0x0044($sp)            
    lw      t6, 0x0048($sp)            
    addiu   v1, $zero, 0xFFFF          ## v1 = FFFFFFFF
    lw      t8, 0x003C($sp)            
    lh      t7, 0x001C(t6)             ## 0000001C
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    bnel    t7, $zero, lbl_808E9540    
    lw      t2, 0x0048($sp)            
    bne     t8, $at, lbl_808E9510      
    lui     a0, %hi(var_808E9A38)      ## a0 = 808F0000
    addiu   a0, a0, %lo(var_808E9A38)  ## a0 = 808E9A38
    addiu   a1, t6, 0x0328             ## a1 = 00000328
    jal     func_800AB958              
    sw      v1, 0x0034($sp)            
    lw      t9, 0x0048($sp)            
    lw      v1, 0x0034($sp)            
    lw      a1, 0x0038($sp)            
    lh      t0, 0x0324(t9)             ## 00000324
    or      a0, t9, $zero              ## a0 = 00000000
    blez    t0, lbl_808E9510           
    nop
    jal     func_808E9068              
    sw      v1, 0x0034($sp)            
    lw      v1, 0x0034($sp)            
lbl_808E9510:
    lui     a3, %hi(var_808E9A2C)      ## a3 = 808F0000
    addiu   a3, a3, %lo(var_808E9A2C)  ## a3 = 808E9A2C
    addiu   t1, $zero, 0x001B          ## t1 = 0000001B
    sw      t1, 0x0010($sp)            
    sw      a3, 0x0014($sp)            
    lw      a0, 0x0048($sp)            
    lw      a1, 0x003C($sp)            
    addiu   a2, $zero, 0x0016          ## a2 = 00000016
    jal     func_8001F74C              
    sw      v1, 0x0034($sp)            
    lw      v1, 0x0034($sp)            
    lw      t2, 0x0048($sp)            
lbl_808E9540:
    lw      t4, 0x003C($sp)            
    lh      t3, 0x0318(t2)             ## 00000318
    addiu   t5, t4, 0xFFFA             ## t5 = FFFFFFFA
    sltiu   $at, t5, 0x0016            
    beql    t3, $zero, lbl_808E962C    
    lw      $ra, 0x001C($sp)           
    beq     $at, $zero, lbl_808E95C0   
    sll     t5, t5,  2                 
    lui     $at, %hi(var_808E9AD0)     ## $at = 808F0000
    addu    $at, $at, t5               
    lw      t5, %lo(var_808E9AD0)($at) 
    jr      t5                         
    nop
var_808E9574:
    beq     $zero, $zero, lbl_808E95C0 
    or      v1, $zero, $zero           ## v1 = 00000000
var_808E957C:
    beq     $zero, $zero, lbl_808E95C0 
    addiu   v1, $zero, 0x0001          ## v1 = 00000001
var_808E9584:
    beq     $zero, $zero, lbl_808E95C0 
    addiu   v1, $zero, 0x0002          ## v1 = 00000002
var_808E958C:
    beq     $zero, $zero, lbl_808E95C0 
    addiu   v1, $zero, 0x0003          ## v1 = 00000003
var_808E9594:
    beq     $zero, $zero, lbl_808E95C0 
    addiu   v1, $zero, 0x0004          ## v1 = 00000004
var_808E959C:
    beq     $zero, $zero, lbl_808E95C0 
    addiu   v1, $zero, 0x0005          ## v1 = 00000005
var_808E95A4:
    beq     $zero, $zero, lbl_808E95C0 
    addiu   v1, $zero, 0x0006          ## v1 = 00000006
var_808E95AC:
    beq     $zero, $zero, lbl_808E95C0 
    addiu   v1, $zero, 0x0007          ## v1 = 00000007
var_808E95B4:
    beq     $zero, $zero, lbl_808E95C0 
    addiu   v1, $zero, 0x0008          ## v1 = 00000008
var_808E95BC:
    addiu   v1, $zero, 0x0009          ## v1 = 00000009
lbl_808E95C0:
    bltz    v1, lbl_808E9628           
    lui     a0, %hi(var_808E9A44)      ## a0 = 808F0000
    addiu   a0, a0, %lo(var_808E9A44)  ## a0 = 808E9A44
    addiu   a1, $sp, 0x0024            ## a1 = FFFFFFEC
    jal     func_800AB958              
    sw      v1, 0x0034($sp)            
    lwc1    $f4, 0x0024($sp)           
    lw      v1, 0x0034($sp)            
    lw      t7, 0x0048($sp)            
    trunc.w.s $f6, $f4                   
    sll     t8, v1,  2                 
    subu    t8, t8, v1                 
    sll     t8, t8,  1                 
    mfc1    t0, $f6                    
    addu    v0, t7, t8                 
    sh      t0, 0x013C(v0)             ## 0000013C
    lwc1    $f8, 0x0028($sp)           
    trunc.w.s $f10, $f8                  
    mfc1    t1, $f10                   
    nop
    sh      t1, 0x013E(v0)             ## 0000013E
    lwc1    $f16, 0x002C($sp)          
    trunc.w.s $f18, $f16                 
    mfc1    t3, $f18                   
    nop
    sh      t3, 0x0140(v0)             ## 00000140
lbl_808E9628:
    lw      $ra, 0x001C($sp)           
lbl_808E962C:
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_808E9638:
    addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
    sw      s5, 0x0048($sp)            
    or      s5, a0, $zero              ## s5 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s4, 0x0044($sp)            
    sw      s3, 0x0040($sp)            
    sw      s2, 0x003C($sp)            
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    sw      a1, 0x00BC($sp)            
    lw      t6, 0x00BC($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             ## 00000000
    lw      a1, 0x0180(s5)             ## 00000180
    lw      a2, 0x019C(s5)             ## 0000019C
    lbu     a3, 0x017E(s5)             ## 0000017E
    lui     t7, %hi(func_808E949C)     ## t7 = 808F0000
    addiu   t7, t7, %lo(func_808E949C) ## t7 = 808E949C
    sw      t7, 0x0014($sp)            
    sw      s5, 0x0018($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    lw      a0, 0x00BC($sp)            
    lh      t8, 0x001C(s5)             ## 0000001C
    beql    t8, $zero, lbl_808E9740    
    lh      t2, 0x0318(s5)             ## 00000318
    lh      t9, 0x0324(s5)             ## 00000324
    or      a0, s5, $zero              ## a0 = 00000000
    blez    t9, lbl_808E96B8           
    nop
    jal     func_808E8EDC              
    lw      a1, 0x00BC($sp)            
lbl_808E96B8:
    lui     s1, %hi(var_808E9A50)      ## s1 = 808F0000
    lui     s3, %hi(var_808E9A74)      ## s3 = 808F0000
    addiu   s3, s3, %lo(var_808E9A74)  ## s3 = 808E9A74
    addiu   s1, s1, %lo(var_808E9A50)  ## s1 = 808E9A50
    addiu   s2, $sp, 0x008C            ## s2 = FFFFFFD4
    addiu   s0, $sp, 0x0068            ## s0 = FFFFFFB0
    addiu   s4, $sp, 0x008C            ## s4 = FFFFFFD4
lbl_808E96D4:
    or      a0, s1, $zero              ## a0 = 808E9A50
    jal     func_800AB958              
    or      a1, s2, $zero              ## a1 = FFFFFFD4
    or      a0, s3, $zero              ## a0 = 808E9A74
    jal     func_800AB958              
    or      a1, s0, $zero              ## a1 = FFFFFFB0
    addiu   s0, s0, 0x000C             ## s0 = FFFFFFBC
    addiu   s1, s1, 0x000C             ## s1 = 808E9A5C
    addiu   s2, s2, 0x000C             ## s2 = FFFFFFE0
    bne     s0, s4, lbl_808E96D4       
    addiu   s3, s3, 0x000C             ## s3 = 808E9A80
    addiu   s0, s5, 0x0424             ## s0 = 00000424
    addiu   t0, $sp, 0x00A4            ## t0 = FFFFFFEC
    sw      t0, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000424
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $sp, 0x008C            ## a2 = FFFFFFD4
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0098            ## a3 = FFFFFFE0
    addiu   t1, $sp, 0x0080            ## t1 = FFFFFFC8
    sw      t1, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000424
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    addiu   a2, $sp, 0x0068            ## a2 = FFFFFFB0
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0074            ## a3 = FFFFFFBC
    lh      t2, 0x0318(s5)             ## 00000318
lbl_808E9740:
    beql    t2, $zero, lbl_808E97EC    
    lw      $ra, 0x004C($sp)           
    lbu     t3, 0x0114(s5)             ## 00000114
    lh      v1, 0x0318(s5)             ## 00000318
    or      a1, s5, $zero              ## a1 = 00000000
    addiu   t4, t3, 0x0001             ## t4 = 00000001
    bltz    v1, lbl_808E976C           
    sb      t4, 0x0114(s5)             ## 00000114
    addiu   t5, v1, 0xFFFF             ## t5 = FFFFFFFF
    sh      t5, 0x0318(s5)             ## 00000318
    lh      v1, 0x0318(s5)             ## 00000318
lbl_808E976C:
    andi    t6, v1, 0x0003             ## t6 = 00000000
    bne     t6, $zero, lbl_808E97E8    
    sra     v0, v1,  2                 
    lh      t7, 0x001C(s5)             ## 0000001C
    lui     $at, 0x4020                ## $at = 40200000
    mtc1    $at, $f0                   ## $f0 = 2.50
    bne     t7, $zero, lbl_808E9798    
    lw      a0, 0x00BC($sp)            
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f0                   ## $f0 = 4.00
    nop
lbl_808E9798:
    sll     t8, v0,  2                 
    subu    t8, t8, v0                 
    sll     t8, t8,  1                 
    addu    a2, s5, t8                 
    addiu   t9, $zero, 0x0096          ## t9 = 00000096
    addiu   t0, $zero, 0x0096          ## t0 = 00000096
    addiu   t1, $zero, 0x00FA          ## t1 = 000000FA
    addiu   t2, $zero, 0x00EB          ## t2 = 000000EB
    addiu   t3, $zero, 0x00F5          ## t3 = 000000F5
    addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
    sw      t4, 0x0024($sp)            
    sw      t3, 0x0020($sp)            
    sw      t2, 0x001C($sp)            
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a2, a2, 0x013C             ## a2 = 0000013C
    addiu   a3, $zero, 0x0096          ## a3 = 00000096
    jal     func_8001DCEC              
    swc1    $f0, 0x0028($sp)           
lbl_808E97E8:
    lw      $ra, 0x004C($sp)           
lbl_808E97EC:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    lw      s2, 0x003C($sp)            
    lw      s3, 0x0040($sp)            
    lw      s4, 0x0044($sp)            
    lw      s5, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B8           ## $sp = 00000000
    nop

.section .data

var_808E9810: .word 0x004B0500, 0x00000015, 0x00300000, 0x000004FC
.word func_808E5D4C
.word func_808E60B0
.word func_808E92C8
.word func_808E9638
var_808E9830: .word \
0x00000939, 0x20010000, 0x01000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00140046, 0x00000000, 0x00000000
var_808E985C: .word \
0x02000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x000D0000, 0xC1200000, 0x41600000, \
0x40000000, 0xC1200000, 0xC0C00000, 0x40000000, \
0x41100000, 0x41600000, 0x40000000, 0x02000000, \
0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, \
0x000D0000, 0xC1200000, 0xC0C00000, 0x40000000, \
0x41100000, 0xC0C00000, 0x40000000, 0x41100000, \
0x41600000, 0x40000000
var_808E98D4: .word 0x09000D00, 0x00020000, 0x00000002
.word var_808E985C
var_808E98E4: .word \
0x0A110000, 0x00030000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0x00000000, 0x00000000, 0x01000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_808E9934: .word \
0x50F2F1F2, 0x10F2F2F2, 0xF1F2F4F2, 0x64F2F4F2, \
0xF2506350, 0x0000F1F4, 0xF2F2F8F4, 0x5000F400
var_808E9954: .word \
0x50F200F2, 0x00F2F210, 0xF1F2F4F2, 0x64F2F4F2, \
0xF2506350, 0x0000F1F4, 0xF2F2F8F4, 0x5000F400
var_808E9974: .word 0x8917004A, 0xB86CFC18, 0x304C14B4
var_808E9980: .word 0x00000000, 0x00000000, 0x00000000
var_808E998C: .word 0x41900000, 0x41900000, 0x00000000
var_808E9998: .word 0x00140028, 0x00000000
var_808E99A0: .word 0xF63C0000, 0x0DAC0000
var_808E99A8: .word 0x00000000, 0x00000000, 0x00000000
var_808E99B4: .word 0x00000000, 0x00000000, 0x00000000
var_808E99C0: .word 0x447A0000, 0x44BB8000, 0x00000000
var_808E99CC: .word 0xC47A0000, 0x44BB8000, 0x00000000
var_808E99D8: .word 0x447A0000, 0x44BB8000, 0x458CA000
var_808E99E4: .word 0xC47A0000, 0x44BB8000, 0x458CA000
var_808E99F0: .word 0x447A0000, 0x00000000, 0x00000000
var_808E99FC: .word 0x447A0000, 0x00000000, 0x00000000
var_808E9A08: .word 0x447A0000, 0xC5FA0000, 0xC4BB8000
var_808E9A14: .word \
0x447A0000, 0xC60CA000, 0x44FA0000, 0x44898000, \
0xC42F0000, 0x00000000
var_808E9A2C: .word 0x00000000, 0x00000000, 0x00000000
var_808E9A38: .word 0x00000000, 0xC5FA0000, 0x00000000
var_808E9A44: .word 0x00000000, 0x00000000, 0x00000000
var_808E9A50: .word \
0x457A0000, 0x45DAC000, 0x455AC000, 0x457A0000, \
0x00000000, 0x455AC000, 0xC57A0000, 0x45DAC000, \
0x455AC000
var_808E9A74: .word \
0xC57A0000, 0x45DAC000, 0x455AC000, 0xC57A0000, \
0x00000000, 0x455AC000, 0x457A0000, 0x00000000, \
0x455AC000, 0x00000000, 0x00000000

.section .rodata

var_808E9AA0: .word 0x44DAC000
var_808E9AA4: .word 0x44318000
var_808E9AA8: .word 0x44DAC000
var_808E9AAC: .word 0x3F199999
var_808E9AB0: .word 0x3F199999
var_808E9AB4: .word 0x44228000
var_808E9AB8: .word 0x3D23D70A
var_808E9ABC: .word 0x3F333333
var_808E9AC0: .word 0x3DCCCCCD
var_808E9AC4: .word 0x458CA000
var_808E9AC8: .word 0xC5898000
var_808E9ACC: .word 0xC5898000
var_808E9AD0: .word var_808E959C
.word var_808E9574
.word lbl_808E95C0
.word var_808E958C
.word lbl_808E95C0
.word lbl_808E95C0
.word var_808E957C
.word lbl_808E95C0
.word var_808E9594
.word lbl_808E95C0
.word lbl_808E95C0
.word var_808E9584
.word lbl_808E95C0
.word lbl_808E95C0
.word var_808E95A4
.word lbl_808E95C0
.word var_808E95B4
.word lbl_808E95C0
.word lbl_808E95C0
.word var_808E95AC
.word lbl_808E95C0
.word var_808E95BC
.word 0x00000000, 0x00000000

