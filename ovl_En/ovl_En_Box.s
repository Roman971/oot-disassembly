#include <mips.h>
.set noreorder
.set noat

.section .text
func_80868750:
    sw      a1, 0x01A4(a0)             ## 000001A4
    jr      $ra                        
    nop


func_8086875C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    addiu   v0, $sp, 0x0020            ## v0 = FFFFFFE8
    or      a3, a0, $zero              ## a3 = 00000000
    lw      t7, 0x0024(a3)             ## 00000024
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    sw      t7, 0x0000(v0)             ## FFFFFFE8
    lw      t6, 0x0028(a3)             ## 00000028
    addiu   a1, $sp, 0x0030            ## a1 = FFFFFFF8
    addiu   a2, $sp, 0x002C            ## a2 = FFFFFFF4
    sw      t6, 0x0004(v0)             ## FFFFFFEC
    lw      t7, 0x002C(a3)             ## 0000002C
    sw      t7, 0x0008(v0)             ## FFFFFFF0
    lwc1    $f4, 0x0024($sp)           
    lw      a0, 0x003C($sp)            
    sw      a3, 0x0038($sp)            
    add.s   $f8, $f4, $f6              
    sw      v0, 0x0010($sp)            
    addiu   a0, a0, 0x07C0             ## a0 = 000007C0
    jal     func_8002F4B8              ## Raycast
    swc1    $f8, 0x0024($sp)           
    lui     $at, 0xC6FA                ## $at = C6FA0000
    mtc1    $at, $f10                  ## $f10 = -32000.00
    lw      a3, 0x0038($sp)            
    c.eq.s  $f0, $f10                  
    nop
    bc1tl   lbl_808687DC               
    lw      $ra, 0x001C($sp)           
    swc1    $f0, 0x0028(a3)            ## 00000028
    lw      $ra, 0x001C($sp)           
lbl_808687DC:
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_808687E8:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     v0, 0x8012                 ## v0 = 80120000
    lw      v0, -0x5A2C(v0)            ## 8011A5D4
    lui     a0, %hi(var_8086A0A0)      ## a0 = 80870000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    sll     t6, v0,  2                 
    addu    a0, a0, t6                 
    lw      a0, %lo(var_8086A0A0)(a0)  
    sw      $zero, 0x0048($sp)         
    swc1    $f4, 0x0044($sp)           
    jal     func_8008A194              
    sw      a0, 0x004C($sp)            
    mtc1    v0, $f6                    ## $f6 = 0.00
    lui     a1, %hi(var_8086A0B0)      ## a1 = 80870000
    addiu   a1, a1, %lo(var_8086A0B0)  ## a1 = 8086A0B0
    cvt.s.w $f8, $f6                   
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80063F7C              
    swc1    $f8, 0x0040($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           ## a1 = 00000000
    lui     a0, 0x0600                 ## a0 = 06000000
    addiu   a0, a0, 0x5FC8             ## a0 = 06005FC8
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0048            ## a1 = FFFFFFF0
    addiu   a1, s1, 0x0810             ## a1 = 00000810
    sw      a1, 0x0030($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    or      a2, s0, $zero              ## a2 = 00000000
    jal     func_800313A4              ## DynaPolyInfo_setActor
    lw      a3, 0x0048($sp)            
    sw      v0, 0x013C(s0)             ## 0000013C
    lw      a1, 0x0030($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80031588              
    or      a2, v0, $zero              ## a2 = 00000000
    lh      t7, 0x001C(s0)             ## 0000001C
    lui     $at, 0xC0B0                ## $at = C0B00000
    mtc1    $at, $f10                  ## $f10 = -5.50
    lui     $at, 0xC248                ## $at = C2480000
    lh      t0, 0x0034(s0)             ## 00000034
    mtc1    $at, $f16                  ## $f16 = -50.00
    lh      a1, 0x001C(s0)             ## 0000001C
    sra     t8, t7, 12                 
    andi    t9, t8, 0x000F             ## t9 = 00000000
    sb      $zero, 0x01E6(s0)          ## 000001E6
    sb      t9, 0x01E9(s0)             ## 000001E9
    sb      $zero, 0x01EA(s0)          ## 000001EA
    sb      $zero, 0x01EB(s0)          ## 000001EB
    or      a0, s1, $zero              ## a0 = 00000000
    swc1    $f10, 0x006C(s0)           ## 0000006C
    sb      t0, 0x01E8(s0)             ## 000001E8
    swc1    $f16, 0x0070(s0)           ## 00000070
    jal     func_8002060C              
    andi    a1, a1, 0x001F             ## a1 = 00000000
    beq     v0, $zero, lbl_80868918    
    addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
    addiu   t2, $zero, 0x0064          ## t2 = 00000064
    lui     a1, %hi(func_808696FC)     ## a1 = 80870000
    sb      t1, 0x01E7(s0)             ## 000001E7
    sb      t2, 0x01EA(s0)             ## 000001EA
    addiu   a1, a1, %lo(func_808696FC) ## a1 = 808696FC
    jal     func_80868750              
    or      a0, s0, $zero              ## a0 = 00000000
    lbu     t3, 0x01E6(s0)             ## 000001E6
    ori     t4, t3, 0x0010             ## t4 = 00000010
    sb      t4, 0x01E6(s0)             ## 000001E6
    lwc1    $f18, 0x0040($sp)          
    beq     $zero, $zero, lbl_80868B5C 
    swc1    $f18, 0x0044($sp)          
lbl_80868918:
    lbu     v0, 0x01E9(s0)             ## 000001E9
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    or      a0, s1, $zero              ## a0 = 00000000
    beq     v0, $at, lbl_80868934      
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    bnel    v0, $at, lbl_808689B4      
    lbu     v0, 0x01E9(s0)             ## 000001E9
lbl_80868934:
    jal     func_8002049C              
    lbu     a1, 0x01E8(s0)             ## 000001E8
    bne     v0, $zero, lbl_808689B0    
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0030($sp)            
    jal     func_800314D8              
    lw      a2, 0x013C(s0)             ## 0000013C
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    lui     a1, %hi(func_80868FC8)     ## a1 = 80870000
    addiu   t7, $zero, 0xFFF4          ## t7 = FFFFFFF4
    c.lt.s  $f0, $f4                   
    addiu   a1, a1, %lo(func_80868FC8) ## a1 = 80868FC8
    or      a0, s0, $zero              ## a0 = 00000000
    bc1f    lbl_80868988               
    nop
    lbu     t5, 0x01E6(s0)             ## 000001E6
    ori     t6, t5, 0x0004             ## t6 = 00000004
    sb      t6, 0x01E6(s0)             ## 000001E6
lbl_80868988:
    jal     func_80868750              
    sw      t7, 0x0198(s0)             ## 00000198
    lbu     t8, 0x01E6(s0)             ## 000001E6
    lw      t0, 0x0004(s0)             ## 00000004
    sb      $zero, 0x01E7(s0)          ## 000001E7
    ori     t9, t8, 0x0001             ## t9 = 00000001
    ori     t1, t0, 0x0010             ## t1 = 00000010
    sb      t9, 0x01E6(s0)             ## 000001E6
    beq     $zero, $zero, lbl_80868B5C 
    sw      t1, 0x0004(s0)             ## 00000004
lbl_808689B0:
    lbu     v0, 0x01E9(s0)             ## 000001E9
lbl_808689B4:
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, s1, $zero              ## a0 = 00000000
    beq     v0, $at, lbl_808689CC      
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    bnel    v0, $at, lbl_80868A30      
    lbu     v0, 0x01E9(s0)             ## 000001E9
lbl_808689CC:
    jal     func_80020640              
    lb      a1, 0x0003(s0)             ## 00000003
    bne     v0, $zero, lbl_80868A2C    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_808692A8)     ## a1 = 80870000
    jal     func_80868750              
    addiu   a1, a1, %lo(func_808692A8) ## a1 = 808692A8
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0030($sp)            
    jal     func_800314D8              
    lw      a2, 0x013C(s0)             ## 0000013C
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f8                   ## $f8 = 50.00
    lwc1    $f6, 0x000C(s0)            ## 0000000C
    lbu     t2, 0x01E6(s0)             ## 000001E6
    lw      t4, 0x0004(s0)             ## 00000004
    sub.s   $f10, $f6, $f8             
    ori     t3, t2, 0x0001             ## t3 = 00000001
    ori     t5, t4, 0x0010             ## t5 = 00000010
    sb      t3, 0x01E6(s0)             ## 000001E6
    swc1    $f10, 0x0028(s0)           ## 00000028
    sb      $zero, 0x01E7(s0)          ## 000001E7
    beq     $zero, $zero, lbl_80868B5C 
    sw      t5, 0x0004(s0)             ## 00000004
lbl_80868A2C:
    lbu     v0, 0x01E9(s0)             ## 000001E9
lbl_80868A30:
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $at, lbl_80868A4C      
    lui     a1, %hi(func_80869098)     ## a1 = 80870000
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    bnel    v0, $at, lbl_80868AAC      
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
lbl_80868A4C:
    jal     func_80868750              
    addiu   a1, a1, %lo(func_80869098) ## a1 = 80869098
    lw      t6, 0x0004(s0)             ## 00000004
    lui     $at, 0x0200                ## $at = 02000000
    or      a0, s1, $zero              ## a0 = 00000000
    or      t7, t6, $at                ## t7 = 02000000
    sw      t7, 0x0004(s0)             ## 00000004
    lw      a1, 0x0030($sp)            
    jal     func_800314D8              
    lw      a2, 0x013C(s0)             ## 0000013C
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f18                  ## $f18 = 50.00
    lwc1    $f16, 0x000C(s0)           ## 0000000C
    lbu     t8, 0x01E6(s0)             ## 000001E6
    lw      t0, 0x0004(s0)             ## 00000004
    sub.s   $f4, $f16, $f18            
    ori     t9, t8, 0x0001             ## t9 = 00000001
    ori     t1, t0, 0x0010             ## t1 = 00000010
    sb      t9, 0x01E6(s0)             ## 000001E6
    swc1    $f4, 0x0028(s0)            ## 00000028
    sb      $zero, 0x01E7(s0)          ## 000001E7
    beq     $zero, $zero, lbl_80868B5C 
    sw      t1, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
lbl_80868AAC:
    bne     v0, $at, lbl_80868B14      
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8002049C              
    lbu     a1, 0x01E8(s0)             ## 000001E8
    bne     v0, $zero, lbl_80868B14    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_80869228)     ## a1 = 80870000
    jal     func_80868750              
    addiu   a1, a1, %lo(func_80869228) ## a1 = 80869228
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0030($sp)            
    jal     func_800314D8              
    lw      a2, 0x013C(s0)             ## 0000013C
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f8                   ## $f8 = 50.00
    lwc1    $f6, 0x000C(s0)            ## 0000000C
    lbu     t2, 0x01E6(s0)             ## 000001E6
    lw      t4, 0x0004(s0)             ## 00000004
    sub.s   $f10, $f6, $f8             
    ori     t3, t2, 0x0001             ## t3 = 00000001
    ori     t5, t4, 0x0010             ## t5 = 00000010
    sb      t3, 0x01E6(s0)             ## 000001E6
    swc1    $f10, 0x0028(s0)           ## 00000028
    sb      $zero, 0x01E7(s0)          ## 000001E7
    beq     $zero, $zero, lbl_80868B5C 
    sw      t5, 0x0004(s0)             ## 00000004
lbl_80868B14:
    lbu     v0, 0x01E9(s0)             ## 000001E9
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $at, lbl_80868B34      
    lui     a1, %hi(func_808694C8)     ## a1 = 80870000
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bne     v0, $at, lbl_80868B40      
    nop
lbl_80868B34:
    lw      t6, 0x0004(s0)             ## 00000004
    ori     t7, t6, 0x0080             ## t7 = 00000080
    sw      t7, 0x0004(s0)             ## 00000004
lbl_80868B40:
    jal     func_80868750              
    addiu   a1, a1, %lo(func_808694C8) ## a1 = 808694C8
    lbu     t8, 0x01E6(s0)             ## 000001E6
    ori     t0, t8, 0x0001             ## t0 = 00000001
    sb      t0, 0x01E6(s0)             ## 000001E6
    ori     t1, t0, 0x0010             ## t1 = 00000011
    sb      t1, 0x01E6(s0)             ## 000001E6
lbl_80868B5C:
    sh      $zero, 0x00B8(s0)          ## 000000B8
    lh      t2, 0x0032(s0)             ## 00000032
    lh      v0, 0x00B8(s0)             ## 000000B8
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addu    t3, t2, $at                
    sh      t3, 0x0032(s0)             ## 00000032
    sh      v0, 0x0034(s0)             ## 00000034
    sh      v0, 0x0018(s0)             ## 00000018
    addiu   a1, s0, 0x0154             ## a1 = 00000154
    lui     a2, 0x0600                 ## a2 = 06000000
    addiu   t4, s0, 0x01A8             ## t4 = 000001A8
    addiu   t5, s0, 0x01C6             ## t5 = 000001C6
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    addiu   a2, a2, 0x47D8             ## a2 = 060047D8
    sw      a1, 0x0034($sp)            
    lw      a3, 0x004C($sp)            
    jal     func_8008C684              
    or      a0, s1, $zero              ## a0 = 00000000
    lwc1    $f16, 0x0040($sp)          
    mtc1    $zero, $f18                ## $f18 = 0.00
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    sw      t7, 0x0014($sp)            
    lw      a0, 0x0034($sp)            
    lw      a1, 0x004C($sp)            
    lui     a2, 0x3FC0                 ## a2 = 3FC00000
    lw      a3, 0x0044($sp)            
    swc1    $f16, 0x0010($sp)          
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    lbu     v0, 0x01E9(s0)             ## 000001E9
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $at, lbl_80868C0C      
    lui     a1, 0x3BA3                 ## a1 = 3BA30000
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    beq     v0, $at, lbl_80868C0C      
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    beq     v0, $at, lbl_80868C0C      
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    bnel    v0, $at, lbl_80868C2C      
    lui     a1, 0x3C23                 ## a1 = 3C230000
lbl_80868C0C:
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x41A0                 ## a1 = 41A00000
    beq     $zero, $zero, lbl_80868C48 
    lw      $ra, 0x002C($sp)           
    lui     a1, 0x3C23                 ## a1 = 3C230000
lbl_80868C2C:
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4220                 ## a1 = 42200000
    lw      $ra, 0x002C($sp)           
lbl_80868C48:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_80868C58:
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


func_80868C8C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0028($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x41C8                ## $at = 41C80000
    mtc1    $at, $f4                   ## $f4 = 25.00
    nop
    mul.s   $f6, $f0, $f4              
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f6, 0x0024($sp)           
    lui     $at, 0x4780                ## $at = 47800000
    mtc1    $at, $f8                   ## $f8 = 65536.00
    lw      t7, 0x0028($sp)            
    mul.s   $f10, $f0, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    v0, $f16                   
    nop
    sh      v0, 0x0022($sp)            
    lw      t9, 0x0024(t7)             ## 00000024
    sll     a0, v0, 16                 
    sra     a0, a0, 16                 
    sw      t9, 0x0000(s0)             ## 00000000
    lw      t8, 0x0028(t7)             ## 00000028
    sw      t8, 0x0004(s0)             ## 00000004
    lw      t9, 0x002C(t7)             ## 0000002C
    jal     func_800636C4              ## sins?
    sw      t9, 0x0008(s0)             ## 00000008
    lwc1    $f4, 0x0024($sp)           
    lwc1    $f18, 0x0000(s0)           ## 00000000
    mul.s   $f6, $f0, $f4              
    add.s   $f8, $f18, $f6             
    swc1    $f8, 0x0000(s0)            ## 00000000
    jal     func_80063684              ## coss?
    lh      a0, 0x0022($sp)            
    lwc1    $f16, 0x0024($sp)          
    lwc1    $f10, 0x0008(s0)           ## 00000008
    lui     $at, 0x3F80                ## $at = 3F800000
    mul.s   $f4, $f0, $f16             
    mtc1    $at, $f6                   ## $f6 = 1.00
    add.s   $f18, $f10, $f4            
    swc1    $f18, 0x0008(s0)           ## 00000008
    lw      t0, 0x0030($sp)            
    swc1    $f6, 0x0004(t0)            ## 00000004
    jal     func_800636C4              ## sins?
    lh      a0, 0x0022($sp)            
    lw      t1, 0x0030($sp)            
    swc1    $f0, 0x0000(t1)            ## 00000000
    jal     func_80063684              ## coss?
    lh      a0, 0x0022($sp)            
    lw      v0, 0x0034($sp)            
    lw      t2, 0x0030($sp)            
    mtc1    $zero, $f2                 ## $f2 = 0.00
    swc1    $f0, 0x0008(t2)            ## 00000008
    swc1    $f2, 0x0000(v0)            ## 00000000
    swc1    $f2, 0x0004(v0)            ## 00000004
    swc1    $f2, 0x0008(v0)            ## 00000008
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80868D90:
    addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
    sw      s5, 0x003C($sp)            
    sw      s4, 0x0038($sp)            
    or      s4, a0, $zero              ## s4 = 00000000
    or      s5, a1, $zero              ## s5 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s6, 0x0040($sp)            
    sw      s3, 0x0034($sp)            
    sw      s2, 0x0030($sp)            
    sw      s1, 0x002C($sp)            
    sw      s0, 0x0028($sp)            
    or      s0, $zero, $zero           ## s0 = 00000000
    addiu   s6, $zero, 0x0014          ## s6 = 00000014
    addiu   s3, $sp, 0x0048            ## s3 = FFFFFFD8
    addiu   s2, $sp, 0x0054            ## s2 = FFFFFFE4
    addiu   s1, $sp, 0x0060            ## s1 = FFFFFFF0
    or      a0, s4, $zero              ## a0 = 00000000
lbl_80868DD4:
    or      a1, s1, $zero              ## a1 = FFFFFFF0
    or      a2, s2, $zero              ## a2 = FFFFFFE4
    jal     func_80868C8C              
    or      a3, s3, $zero              ## a3 = FFFFFFD8
    addiu   t6, $zero, 0x0064          ## t6 = 00000064
    addiu   t7, $zero, 0x001E          ## t7 = 0000001E
    addiu   t8, $zero, 0x000F          ## t8 = 0000000F
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    or      a0, s5, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = FFFFFFF0
    or      a2, s2, $zero              ## a2 = FFFFFFE4
    jal     func_8001C234              
    or      a3, s3, $zero              ## a3 = FFFFFFD8
    addiu   s0, s0, 0x0001             ## s0 = 00000001
    bnel    s0, s6, lbl_80868DD4       
    or      a0, s4, $zero              ## a0 = 00000000
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    lw      s3, 0x0034($sp)            
    lw      s4, 0x0038($sp)            
    lw      s5, 0x003C($sp)            
    lw      s6, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           ## $sp = 00000000


func_80868E44:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     t7, 0x01E6(s0)             ## 000001E6
    lhu     t9, 0x0088(s0)             ## 00000088
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
    and     t8, t7, $at                
    andi    t0, t9, 0x0001             ## t0 = 00000000
    sb      t6, 0x01E7(s0)             ## 000001E7
    beq     t0, $zero, lbl_80868F5C    
    sb      t8, 0x01E6(s0)             ## 000001E6
    ori     t2, t8, 0x0002             ## t2 = 00000002
    andi    v0, t2, 0x00FF             ## v0 = 00000002
    andi    t3, v0, 0x0004             ## t3 = 00000000
    beq     t3, $zero, lbl_80868E9C    
    sb      t2, 0x01E6(s0)             ## 000001E6
    andi    t4, v0, 0xFFFB             ## t4 = 00000002
    beq     $zero, $zero, lbl_80868EA4 
    sb      t4, 0x01E6(s0)             ## 000001E6
lbl_80868E9C:
    ori     t5, v0, 0x0004             ## t5 = 00000006
    sb      t5, 0x01E6(s0)             ## 000001E6
lbl_80868EA4:
    lbu     t6, 0x01E9(s0)             ## 000001E9
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    or      a0, s0, $zero              ## a0 = 00000000
    bne     t6, $at, lbl_80868ED4      
    lui     a1, %hi(func_808694C8)     ## a1 = 80870000
    lwc1    $f4, 0x0060(s0)            ## 00000060
    lui     $at, %hi(var_8086A0D0)     ## $at = 80870000
    lwc1    $f8, %lo(var_8086A0D0)($at) 
    neg.s   $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    beq     $zero, $zero, lbl_80868EEC 
    swc1    $f10, 0x0060(s0)           ## 00000060
lbl_80868ED4:
    lwc1    $f16, 0x0060(s0)           ## 00000060
    lui     $at, %hi(var_8086A0D4)     ## $at = 80870000
    lwc1    $f4, %lo(var_8086A0D4)($at) 
    neg.s   $f18, $f16                 
    mul.s   $f6, $f18, $f4             
    swc1    $f6, 0x0060(s0)            ## 00000060
lbl_80868EEC:
    lui     $at, 0x40B0                ## $at = 40B00000
    mtc1    $at, $f10                  ## $f10 = 5.50
    lwc1    $f8, 0x0060(s0)            ## 00000060
    addiu   a1, a1, %lo(func_808694C8) ## a1 = 808694C8
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_80868F28               
    nop
    lwc1    $f16, 0x0080(s0)           ## 00000080
    sh      $zero, 0x00B8(s0)          ## 000000B8
    jal     func_80868750              
    swc1    $f16, 0x0028(s0)           ## 00000028
    lw      a0, 0x002C($sp)            
    jal     func_8006B9B4              
    lh      a1, 0x019E(s0)             ## 0000019E
lbl_80868F28:
    lui     a3, 0x8010                 ## a3 = 80100000
    lui     t7, 0x8010                 ## t7 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    addiu   t7, t7, 0x43A8             ## t7 = 801043A8
    sw      t7, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2856          ## a0 = 00002856
    addiu   a1, s0, 0x00E4             ## a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80868D90              
    lw      a1, 0x002C($sp)            
lbl_80868F5C:
    lbu     t8, 0x01E6(s0)             ## 000001E6
    lwc1    $f18, 0x0028(s0)           ## 00000028
    lwc1    $f4, 0x0080(s0)            ## 00000080
    andi    t9, t8, 0x0004             ## t9 = 00000000
    beq     t9, $zero, lbl_80868F94    
    sub.s   $f0, $f18, $f4             
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f6                   ## $f6 = 50.00
    nop
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t1, $f10                   
    beq     $zero, $zero, lbl_80868FB4 
    sh      t1, 0x00B8(s0)             ## 000000B8
lbl_80868F94:
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f18                  ## $f18 = 50.00
    neg.s   $f16, $f0                  
    mul.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t3, $f6                    
    nop
    sh      t3, 0x00B8(s0)             ## 000000B8
lbl_80868FB4:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80868FC8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      v0, 0x001C(s0)             ## 0000001C
    andi    v0, v0, 0x001F             ## v0 = 00000000
    slti    $at, v0, 0x0014            
    bne     $at, $zero, lbl_80869004   
    slti    $at, v0, 0x0020            
    beq     $at, $zero, lbl_80869004   
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022D94              
    or      a1, s1, $zero              ## a1 = 00000000
lbl_80869004:
    lw      v0, 0x0198(s0)             ## 00000198
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_80868E44)     ## a1 = 80870000
    bltz    v0, lbl_80869054           
    slti    $at, v0, 0xFFF5            
    jal     func_80868750              
    addiu   a1, a1, %lo(func_80868E44) ## a1 = 80868E44
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x1194          ## a1 = 00001194
    addiu   a2, $zero, 0x270F          ## a2 = 0000270F
    or      a3, s0, $zero              ## a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    sw      v0, 0x019C(s0)             ## 0000019C
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s1, 0x0810             ## a1 = 00000810
    jal     func_80031530              
    lw      a2, 0x013C(s0)             ## 0000013C
    beq     $zero, $zero, lbl_80869088 
    lw      $ra, 0x0024($sp)           
lbl_80869054:
    bne     $at, $zero, lbl_80869068   
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   t6, v0, 0x0001             ## t6 = 00000001
    beq     $zero, $zero, lbl_80869084 
    sw      t6, 0x0198(s0)             ## 00000198
lbl_80869068:
    jal     func_8002049C              
    lbu     a1, 0x01E8(s0)             ## 000001E8
    beql    v0, $zero, lbl_80869088    
    lw      $ra, 0x0024($sp)           
    lw      t7, 0x0198(s0)             ## 00000198
    addiu   t8, t7, 0x0001             ## t8 = 00000001
    sw      t8, 0x0198(s0)             ## 00000198
lbl_80869084:
    lw      $ra, 0x0024($sp)           
lbl_80869088:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80869098:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    lh      v0, 0x001C(s0)             ## 0000001C
    lw      v1, 0x1C44(a2)             ## 00001C44
    andi    v0, v0, 0x001F             ## v0 = 00000000
    slti    $at, v0, 0x0014            
    bne     $at, $zero, lbl_808690E4   
    slti    $at, v0, 0x0020            
    beq     $at, $zero, lbl_808690E4   
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, a2, $zero              ## a1 = 00000000
    sw      v1, 0x0020($sp)            
    jal     func_80022D94              
    sw      a2, 0x002C($sp)            
    lw      v1, 0x0020($sp)            
    lw      a2, 0x002C($sp)            
lbl_808690E4:
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    addiu   a1, v1, 0x0024             ## a1 = 00000024
    sw      v1, 0x0020($sp)            
    jal     func_800A5538              
    sw      a2, 0x002C($sp)            
    lui     $at, %hi(var_8086A0D8)     ## $at = 80870000
    lwc1    $f4, %lo(var_8086A0D8)($at) 
    lw      v1, 0x0020($sp)            
    lw      a2, 0x002C($sp)            
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80869124               
    lbu     v0, 0x01EB(s0)             ## 000001EB
    beq     $zero, $zero, lbl_80869214 
    sb      $zero, 0x01EB(s0)          ## 000001EB
    lbu     v0, 0x01EB(s0)             ## 000001EB
lbl_80869124:
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     v0, $zero, lbl_8086915C    
    nop
    lw      v0, 0x0670(v1)             ## 00000670
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    sll     t6, v0,  7                 
    bltzl   t6, lbl_80869158           
    sb      t8, 0x01EB(s0)             ## 000001EB
    lui     $at, 0x0080                ## $at = 00800000
    or      t7, v0, $at                ## t7 = 00800000
    beq     $zero, $zero, lbl_80869214 
    sw      t7, 0x0670(v1)             ## 00000670
    sb      t8, 0x01EB(s0)             ## 000001EB
lbl_80869158:
    andi    v0, t8, 0x00FF             ## v0 = 00000001
lbl_8086915C:
    bne     v0, $at, lbl_80869178      
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_800DD400              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    addiu   t9, $zero, 0x0002          ## t9 = 00000002
    beq     $zero, $zero, lbl_80869214 
    sb      t9, 0x01EB(s0)             ## 000001EB
lbl_80869178:
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    bne     v0, $at, lbl_80869214      
    lui     $at, 0x0001                ## $at = 00010000
    addu    v0, a2, $at                
    lhu     t0, 0x04C6(v0)             ## 000004C6
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bnel    t0, $at, lbl_80869218      
    lw      $ra, 0x001C($sp)           
    lhu     v1, 0x04C4(v0)             ## 000004C4
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    bnel    v1, $at, lbl_808691B8      
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    lbu     t1, 0x01E9(s0)             ## 000001E9
    addiu   $at, $zero, 0x0009         ## $at = 00000009
    beq     t1, $at, lbl_808691D0      
    addiu   $at, $zero, 0x0009         ## $at = 00000009
lbl_808691B8:
    bnel    v1, $at, lbl_80869214      
    sb      $zero, 0x01EB(s0)          ## 000001EB
    lbu     t2, 0x01E9(s0)             ## 000001E9
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    bnel    t2, $at, lbl_80869214      
    sb      $zero, 0x01EB(s0)          ## 000001EB
lbl_808691D0:
    lw      t3, 0x0004(s0)             ## 00000004
    lui     $at, 0xFDFF                ## $at = FDFF0000
    ori     $at, $at, 0xFFFF           ## $at = FDFFFFFF
    and     t4, t3, $at                
    sw      t4, 0x0004(s0)             ## 00000004
    lui     a1, %hi(func_80869360)     ## a1 = 80870000
    addiu   a1, a1, %lo(func_80869360) ## a1 = 80869360
    sw      a2, 0x002C($sp)            
    jal     func_80868750              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a0, 0x002C($sp)            
    jal     func_8006BA10              
    or      a1, s0, $zero              ## a1 = 00000000
    sw      $zero, 0x0198(s0)          ## 00000198
    beq     $zero, $zero, lbl_80869214 
    sb      $zero, 0x01EB(s0)          ## 000001EB
    sb      $zero, 0x01EB(s0)          ## 000001EB
lbl_80869214:
    lw      $ra, 0x001C($sp)           
lbl_80869218:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80869228:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      v0, 0x001C(s0)             ## 0000001C
    andi    v0, v0, 0x001F             ## v0 = 00000000
    slti    $at, v0, 0x0014            
    bne     $at, $zero, lbl_80869260   
    slti    $at, v0, 0x0020            
    beq     $at, $zero, lbl_80869260   
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022D94              
    lw      a1, 0x0024($sp)            
lbl_80869260:
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    lbu     a1, 0x01E8(s0)             ## 000001E8
    beq     v0, $zero, lbl_80869294    
    lw      a0, 0x0024($sp)            
    jal     func_8006BA10              
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a1, %hi(func_80869360)     ## a1 = 80870000
    addiu   a1, a1, %lo(func_80869360) ## a1 = 80869360
    jal     func_80868750              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t6, $zero, 0xFFE2          ## t6 = FFFFFFE2
    sw      t6, 0x0198(s0)             ## 00000198
lbl_80869294:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_808692A8:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x001C(s0)             ## 0000001C
    andi    v0, v0, 0x001F             ## v0 = 00000000
    slti    $at, v0, 0x0014            
    bne     $at, $zero, lbl_808692E4   
    slti    $at, v0, 0x0020            
    beq     $at, $zero, lbl_808692E4   
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022D94              
    or      a1, s1, $zero              ## a1 = 00000000
lbl_808692E4:
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80020694              
    lb      a1, 0x0003(s0)             ## 00000003
    beql    v0, $zero, lbl_80869350    
    lw      $ra, 0x001C($sp)           
    jal     func_8007943C              
    or      a0, s1, $zero              ## a0 = 00000000
    bne     v0, $zero, lbl_8086934C    
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80020658              
    lb      a1, 0x0003(s0)             ## 00000003
    lui     a1, %hi(func_80869360)     ## a1 = 80870000
    addiu   a1, a1, %lo(func_80869360) ## a1 = 80869360
    jal     func_80868750              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8006BA10              
    or      a1, s0, $zero              ## a1 = 00000000
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8006BBF4              
    lbu     a1, 0x0002(s0)             ## 00000002
    beq     v0, $zero, lbl_80869348    
    addiu   t6, $zero, 0xFFE2          ## t6 = FFFFFFE2
    beq     $zero, $zero, lbl_8086934C 
    sw      $zero, 0x0198(s0)          ## 00000198
lbl_80869348:
    sw      t6, 0x0198(s0)             ## 00000198
lbl_8086934C:
    lw      $ra, 0x001C($sp)           
lbl_80869350:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80869360:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x003C($sp)            
    jal     func_80049DA4              
    nop
    lbu     t6, 0x0002(s0)             ## 00000002
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_8086941C)     ## a1 = 80870000
    beq     v0, t6, lbl_8086939C       
    nop
    lw      t7, 0x0198(s0)             ## 00000198
    beql    t7, $zero, lbl_8086940C    
    lw      $ra, 0x0034($sp)           
lbl_8086939C:
    jal     func_80868750              
    addiu   a1, a1, %lo(func_8086941C) ## a1 = 8086941C
    lwc1    $f4, 0x000C(s0)            ## 0000000C
    lw      a1, 0x003C($sp)            
    sw      $zero, 0x0198(s0)          ## 00000198
    lw      a3, 0x0008(s0)             ## 00000008
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0010(s0)            ## 00000010
    addiu   t8, $zero, 0x0011          ## t8 = 00000011
    sw      t8, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    addiu   a2, $zero, 0x008C          ## a2 = 0000008C
    addiu   a0, a1, 0x1C24             ## a0 = 00001C24
    jal     func_80025110              ## ActorSpawn
    swc1    $f6, 0x0014($sp)           
    lui     a3, 0x8010                 ## a3 = 80100000
    lui     t9, 0x8010                 ## t9 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    addiu   t9, t9, 0x43A8             ## t9 = 801043A8
    sw      t9, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x287B          ## a0 = 0000287B
    addiu   a1, s0, 0x00E4             ## a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    lw      $ra, 0x0034($sp)           
lbl_8086940C:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_8086941C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      a0, 0x001C($sp)            
    lw      a2, 0x013C(a3)             ## 0000013C
    sw      a3, 0x0018($sp)            
    jal     func_80031530              
    addiu   a1, a0, 0x0810             ## a1 = 00000810
    lw      a3, 0x0018($sp)            
    lw      v0, 0x0198(a3)             ## 00000198
    bgez    v0, lbl_8086945C           
    slti    $at, v0, 0x0028            
    addiu   t7, v0, 0x0001             ## t7 = 00000001
    beq     $zero, $zero, lbl_808694B8 
    sw      t7, 0x0198(a3)             ## 00000198
lbl_8086945C:
    beq     $at, $zero, lbl_80869480   
    lui     $at, 0x3FA0                ## $at = 3FA00000
    mtc1    $at, $f6                   ## $f6 = 1.25
    lwc1    $f4, 0x0028(a3)            ## 00000028
    addiu   t8, v0, 0x0001             ## t8 = 00000001
    sw      t8, 0x0198(a3)             ## 00000198
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_808694B8 
    swc1    $f8, 0x0028(a3)            ## 00000028
lbl_80869480:
    slti    $at, v0, 0x003C            
    beq     $at, $zero, lbl_808694AC   
    or      a0, a3, $zero              ## a0 = 00000000
    lbu     t9, 0x01E7(a3)             ## 000001E7
    lwc1    $f10, 0x000C(a3)           ## 0000000C
    addiu   t1, v0, 0x0001             ## t1 = 00000001
    addiu   t0, t9, 0x000C             ## t0 = 0000000C
    sb      t0, 0x01E7(a3)             ## 000001E7
    sw      t1, 0x0198(a3)             ## 00000198
    beq     $zero, $zero, lbl_808694B8 
    swc1    $f10, 0x0028(a3)           ## 00000028
lbl_808694AC:
    lui     a1, %hi(func_808694C8)     ## a1 = 80870000
    jal     func_80868750              
    addiu   a1, a1, %lo(func_808694C8) ## a1 = 808694C8
lbl_808694B8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808694C8:
    addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x006C($sp)            
    lbu     t7, 0x01E6(s0)             ## 000001E6
    lh      v0, 0x01E4(s0)             ## 000001E4
    addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
    ori     t8, t7, 0x0001             ## t8 = 00000001
    sb      t6, 0x01E7(s0)             ## 000001E7
    beq     v0, $zero, lbl_80869610    
    sb      t8, 0x01E6(s0)             ## 000001E6
    lui     v1, 0x8012                 ## v1 = 80120000
    bgez    v0, lbl_8086950C           
    lw      v1, -0x5A2C(v1)            ## 8011A5D4
    beq     $zero, $zero, lbl_80869510 
    addiu   v0, $zero, 0x0002          ## v0 = 00000002
lbl_8086950C:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80869510:
    sll     t9, v0,  2                 
    sll     t0, v1,  2                 
    addu    t1, t9, t0                 
    lui     a1, %hi(var_8086A0A0)      ## a1 = 80870000
    addu    a1, a1, t1                 
    lw      a0, %lo(var_8086A0A0)(a1)  
    jal     func_8008A194              
    sw      a0, 0x0060($sp)            
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f8                 ## $f8 = 0.00
    addiu   t2, $zero, 0x0002          ## t2 = 00000002
    cvt.s.w $f6, $f4                   
    lw      a1, 0x0060($sp)            
    sw      t2, 0x0014($sp)            
    addiu   a0, s0, 0x0154             ## a0 = 00000154
    lui     a2, 0x3FC0                 ## a2 = 3FC00000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     a1, %hi(func_808696FC)     ## a1 = 80870000
    addiu   a1, a1, %lo(func_808696FC) ## a1 = 808696FC
    jal     func_80868750              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t3, 0x01E4(s0)             ## 000001E4
    blezl   t3, lbl_808695FC           
    lh      a1, 0x001C(s0)             ## 0000001C
    lbu     v0, 0x01E9(s0)             ## 000001E9
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    beq     v0, $at, lbl_808695F8      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    beq     v0, $at, lbl_808695F8      
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    beq     v0, $at, lbl_808695F8      
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    beql    v0, $at, lbl_808695FC      
    lh      a1, 0x001C(s0)             ## 0000001C
    lwc1    $f10, 0x0024(s0)           ## 00000024
    lw      a2, 0x006C($sp)            
    addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
    swc1    $f10, 0x0010($sp)          
    lwc1    $f16, 0x0028(s0)           ## 00000028
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a3, $zero, 0x00AA          ## a3 = 000000AA
    swc1    $f16, 0x0014($sp)          
    lwc1    $f18, 0x002C(s0)           ## 0000002C
    addiu   a0, a2, 0x1C24             ## a0 = 00001C24
    swc1    $f18, 0x0018($sp)          
    lh      t4, 0x00B4(s0)             ## 000000B4
    sw      t4, 0x001C($sp)            
    lh      t5, 0x00B6(s0)             ## 000000B6
    sw      t5, 0x0020($sp)            
    lh      t6, 0x00B8(s0)             ## 000000B8
    sw      t7, 0x0028($sp)            
    jal     func_800253F0              
    sw      t6, 0x0024($sp)            
    jal     func_800C69A0              
    addiu   a0, $zero, 0x092B          ## a0 = 0000092B
lbl_808695F8:
    lh      a1, 0x001C(s0)             ## 0000001C
lbl_808695FC:
    lw      a0, 0x006C($sp)            
    jal     func_80020624              
    andi    a1, a1, 0x001F             ## a1 = 00000000
    beq     $zero, $zero, lbl_808696EC 
    lw      $ra, 0x003C($sp)           
lbl_80869610:
    lw      t8, 0x006C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $sp, 0x004C            ## a1 = FFFFFFE4
    lw      v0, 0x1C44(t8)             ## 00001C44
    jal     func_8002154C              
    addiu   a2, v0, 0x0024             ## a2 = 00000024
    lui     $at, 0xC248                ## $at = C2480000
    lwc1    $f0, 0x0054($sp)           
    mtc1    $at, $f4                   ## $f4 = -50.00
    nop
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_808696C8               
    lh      a1, 0x001C(s0)             ## 0000001C
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     $at, 0x4120                ## $at = 41200000
    c.lt.s  $f0, $f6                   
    lwc1    $f0, 0x0050($sp)           
    bc1fl   lbl_808696C8               
    lh      a1, 0x001C(s0)             ## 0000001C
    mtc1    $at, $f8                   ## $f8 = 10.00
    abs.s   $f0, $f0                   
    lui     $at, 0x41A0                ## $at = 41A00000
    c.lt.s  $f0, $f8                   
    lwc1    $f0, 0x004C($sp)           
    bc1fl   lbl_808696C8               
    lh      a1, 0x001C(s0)             ## 0000001C
    mtc1    $at, $f10                  ## $f10 = 20.00
    abs.s   $f0, $f0                   
    or      a0, s0, $zero              ## a0 = 00000000
    c.lt.s  $f0, $f10                  
    addiu   a1, $zero, 0x3000          ## a1 = 00003000
    bc1fl   lbl_808696C8               
    lh      a1, 0x001C(s0)             ## 0000001C
    jal     func_80021968              
    lw      a2, 0x006C($sp)            
    beql    v0, $zero, lbl_808696C8    
    lh      a1, 0x001C(s0)             ## 0000001C
    lh      a2, 0x001C(s0)             ## 0000001C
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x006C($sp)            
    sra     a2, a2,  5                 
    andi    a2, a2, 0x007F             ## a2 = 00000000
    jal     func_80022CF4              
    subu    a2, $zero, a2              
    lh      a1, 0x001C(s0)             ## 0000001C
lbl_808696C8:
    lw      a0, 0x006C($sp)            
    jal     func_8002060C              
    andi    a1, a1, 0x001F             ## a1 = 00000000
    beq     v0, $zero, lbl_808696E8    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_808696FC)     ## a1 = 80870000
    jal     func_80868750              
    addiu   a1, a1, %lo(func_808696FC) ## a1 = 808696FC
lbl_808696E8:
    lw      $ra, 0x003C($sp)           
lbl_808696EC:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0068           ## $sp = 00000000
    jr      $ra                        
    nop


func_808696FC:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
    addiu   a0, s0, 0x0154             ## a0 = 00000154
    and     t7, t6, $at                
    sw      t7, 0x0004(s0)             ## 00000004
    jal     func_8008C9C0              
    sw      a0, 0x0028($sp)            
    beq     v0, $zero, lbl_808697A4    
    lui     a1, 0x41F0                 ## a1 = 41F00000
    lh      v0, 0x01E4(s0)             ## 000001E4
    blez    v0, lbl_80869774           
    slti    $at, v0, 0xFF89            
    slti    $at, v0, 0x0078            
    beq     $at, $zero, lbl_80869754   
    addiu   t8, v0, 0x0001             ## t8 = 00000001
    beq     $zero, $zero, lbl_80869870 
    sh      t8, 0x01E4(s0)             ## 000001E4
lbl_80869754:
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lui     a2, 0x3D4C                 ## a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             ## a2 = 3D4CCCCD
    mfc1    a1, $f2                    
    jal     func_8006385C              
    addiu   a0, s0, 0x01A0             ## a0 = 000001A0
    beq     $zero, $zero, lbl_80869874 
    lw      $ra, 0x0024($sp)           
lbl_80869774:
    bne     $at, $zero, lbl_80869784   
    addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
    beq     $zero, $zero, lbl_80869870 
    sh      t9, 0x01E4(s0)             ## 000001E4
lbl_80869784:
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lui     a2, 0x3D4C                 ## a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             ## a2 = 3D4CCCCD
    mfc1    a1, $f2                    
    jal     func_8006385C              
    addiu   a0, s0, 0x01A0             ## a0 = 000001A0
    beq     $zero, $zero, lbl_80869874 
    lw      $ra, 0x0024($sp)           
lbl_808697A4:
    sh      $zero, 0x002E($sp)         
    jal     func_8008D6A8              
    lw      a0, 0x0028($sp)            
    beq     v0, $zero, lbl_808697C4    
    lw      a0, 0x0028($sp)            
    addiu   a0, $zero, 0x281F          ## a0 = 0000281F
    beq     $zero, $zero, lbl_808697D8 
    sh      a0, 0x002E($sp)            
lbl_808697C4:
    jal     func_8008D6A8              
    lui     a1, 0x42B4                 ## a1 = 42B40000
    beq     v0, $zero, lbl_808697D8    
    addiu   t0, $zero, 0x2820          ## t0 = 00002820
    sh      t0, 0x002E($sp)            
lbl_808697D8:
    lhu     a0, 0x002E($sp)            
    lui     a3, 0x8010                 ## a3 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    beq     a0, $zero, lbl_80869804    
    addiu   a1, s0, 0x00E4             ## a1 = 000000E4
    lui     t1, 0x8010                 ## t1 = 80100000
    addiu   t1, t1, 0x43A8             ## t1 = 801043A8
    sw      t1, 0x0014($sp)            
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
lbl_80869804:
    lw      t2, 0x0174(s0)             ## 00000174
    addiu   t3, $zero, 0x7D00          ## t3 = 00007D00
    lh      v0, 0x0016(t2)             ## 00000016
    blez    v0, lbl_80869870           
    subu    t4, t3, v0                 
    mtc1    t4, $f4                    ## $f4 = 0.00
    lui     $at, %hi(var_8086A0DC)     ## $at = 80870000
    lwc1    $f8, %lo(var_8086A0DC)($at) 
    cvt.s.w $f6, $f4                   
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lui     $at, 0x3F80                ## $at = 3F800000
    mul.s   $f10, $f6, $f8             
    swc1    $f10, 0x01A0(s0)           ## 000001A0
    lwc1    $f0, 0x01A0(s0)            ## 000001A0
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80869858               
    mtc1    $at, $f2                   ## $f2 = 1.00
    beq     $zero, $zero, lbl_80869870 
    swc1    $f2, 0x01A0(s0)            ## 000001A0
    mtc1    $at, $f2                   ## $f2 = 1.00
lbl_80869858:
    nop
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80869874               
    lw      $ra, 0x0024($sp)           
    swc1    $f2, 0x01A0(s0)            ## 000001A0
lbl_80869870:
    lw      $ra, 0x0024($sp)           
lbl_80869874:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80869884:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x005C($sp)            
    lui     t7, %hi(var_8086A0B4)      ## t7 = 80870000
    addiu   t7, t7, %lo(var_8086A0B4)  ## t7 = 8086A0B4
    lw      t9, 0x0000(t7)             ## 8086A0B4
    addiu   t6, $sp, 0x0040            ## t6 = FFFFFFE8
    lw      t8, 0x0004(t7)             ## 8086A0B8
    sw      t9, 0x0000(t6)             ## FFFFFFE8
    lw      t9, 0x0008(t7)             ## 8086A0BC
    lui     t1, %hi(var_8086A0C0)      ## t1 = 80870000
    addiu   t1, t1, %lo(var_8086A0C0)  ## t1 = 8086A0C0
    sw      t8, 0x0004(t6)             ## FFFFFFEC
    sw      t9, 0x0008(t6)             ## FFFFFFF0
    lw      t3, 0x0000(t1)             ## 8086A0C0
    addiu   t0, $sp, 0x0034            ## t0 = FFFFFFDC
    lw      t2, 0x0004(t1)             ## 8086A0C4
    sw      t3, 0x0000(t0)             ## FFFFFFDC
    lw      t3, 0x0008(t1)             ## 8086A0C8
    sw      t2, 0x0004(t0)             ## FFFFFFE0
    or      a0, s0, $zero              ## a0 = 00000000
    sw      t3, 0x0008(t0)             ## FFFFFFE4
    lbu     t4, 0x01EA(s0)             ## 000001EA
    addiu   a1, $zero, 0x31F1          ## a1 = 000031F1
    addiu   t5, t4, 0x0001             ## t5 = 00000001
    jal     func_8002313C              
    sb      t5, 0x01EA(s0)             ## 000001EA
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_8086A0E0)     ## $at = 80870000
    lwc1    $f4, %lo(var_8086A0E0)($at) 
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80869B20               
    lw      $ra, 0x0024($sp)           
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lw      t8, 0x0024(s0)             ## 00000024
    addiu   t6, $sp, 0x004C            ## t6 = FFFFFFF4
    lui     $at, 0x3F80                ## $at = 3F800000
    sw      t8, 0x0000(t6)             ## FFFFFFF4
    lw      t7, 0x0028(s0)             ## 00000028
    add.s   $f6, $f0, $f0              
    mtc1    $at, $f8                   ## $f8 = 1.00
    sw      t7, 0x0004(t6)             ## FFFFFFF8
    lw      t8, 0x002C(s0)             ## 0000002C
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    sub.s   $f2, $f6, $f8              
    sw      t8, 0x0008(t6)             ## FFFFFFFC
    lbu     v0, 0x01E9(s0)             ## 000001E9
    beq     v0, $at, lbl_80869974      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    beq     v0, $at, lbl_80869974      
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    beq     v0, $at, lbl_80869974      
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    bnel    v0, $at, lbl_80869A40      
    lh      a0, 0x0032(s0)             ## 00000032
lbl_80869974:
    lh      a0, 0x0032(s0)             ## 00000032
    swc1    $f2, 0x0030($sp)           
    addiu   a0, a0, 0x4000             ## a0 = 00004000
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f10                  ## $f10 = 10.00
    lwc1    $f2, 0x0030($sp)           
    lwc1    $f16, 0x004C($sp)          
    mul.s   $f12, $f2, $f10            
    nop
    mul.s   $f18, $f12, $f0            
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x004C($sp)           
    lh      a0, 0x0032(s0)             ## 00000032
    swc1    $f12, 0x0028($sp)          
    addiu   a0, a0, 0x4000             ## a0 = 00004000
    sll     a0, a0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lwc1    $f12, 0x0028($sp)          
    lwc1    $f6, 0x0054($sp)           
    mul.s   $f8, $f12, $f0             
    add.s   $f10, $f6, $f8             
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f10, 0x0054($sp)          
    add.s   $f16, $f0, $f0             
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f18                  ## $f18 = 1.00
    lh      a0, 0x0032(s0)             ## 00000032
    sub.s   $f2, $f16, $f18            
    jal     func_800636C4              ## sins?
    swc1    $f2, 0x0030($sp)           
    lui     $at, %hi(var_8086A0E4)     ## $at = 80870000
    lwc1    $f4, %lo(var_8086A0E4)($at) 
    lwc1    $f2, 0x0030($sp)           
    lui     $at, %hi(var_8086A0E8)     ## $at = 80870000
    lwc1    $f8, %lo(var_8086A0E8)($at) 
    mul.s   $f12, $f2, $f4             
    swc1    $f8, 0x0044($sp)           
    mul.s   $f6, $f0, $f12             
    swc1    $f6, 0x0040($sp)           
    lh      a0, 0x0032(s0)             ## 00000032
    jal     func_80063684              ## coss?
    swc1    $f12, 0x0028($sp)          
    lwc1    $f12, 0x0028($sp)          
    mul.s   $f10, $f0, $f12            
    beq     $zero, $zero, lbl_80869B00 
    swc1    $f10, 0x0048($sp)          
    lh      a0, 0x0032(s0)             ## 00000032
lbl_80869A40:
    swc1    $f2, 0x0030($sp)           
    addiu   a0, a0, 0x4000             ## a0 = 00004000
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f16                  ## $f16 = 20.00
    lwc1    $f2, 0x0030($sp)           
    lwc1    $f18, 0x004C($sp)          
    mul.s   $f12, $f2, $f16            
    nop
    mul.s   $f4, $f12, $f0             
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x004C($sp)           
    lh      a0, 0x0032(s0)             ## 00000032
    swc1    $f12, 0x0028($sp)          
    addiu   a0, a0, 0x4000             ## a0 = 00004000
    sll     a0, a0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lwc1    $f12, 0x0028($sp)          
    lwc1    $f8, 0x0054($sp)           
    mul.s   $f10, $f12, $f0            
    add.s   $f16, $f8, $f10            
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f16, 0x0054($sp)          
    add.s   $f18, $f0, $f0             
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    lh      a0, 0x0032(s0)             ## 00000032
    sub.s   $f2, $f18, $f4             
    jal     func_800636C4              ## sins?
    swc1    $f2, 0x0030($sp)           
    lui     $at, %hi(var_8086A0EC)     ## $at = 80870000
    lwc1    $f6, %lo(var_8086A0EC)($at) 
    lwc1    $f2, 0x0030($sp)           
    lui     $at, %hi(var_8086A0F0)     ## $at = 80870000
    lwc1    $f10, %lo(var_8086A0F0)($at) 
    mul.s   $f12, $f2, $f6             
    swc1    $f10, 0x0044($sp)          
    mul.s   $f8, $f0, $f12             
    swc1    $f8, 0x0040($sp)           
    lh      a0, 0x0032(s0)             ## 00000032
    jal     func_80063684              ## coss?
    swc1    $f12, 0x0028($sp)          
    lwc1    $f12, 0x0028($sp)          
    mul.s   $f16, $f0, $f12            
    swc1    $f16, 0x0048($sp)          
lbl_80869B00:
    addiu   t9, $zero, 0x0096          ## t9 = 00000096
    sw      t9, 0x0010($sp)            
    lw      a0, 0x005C($sp)            
    addiu   a1, $sp, 0x004C            ## a1 = FFFFFFF4
    addiu   a2, $sp, 0x0040            ## a2 = FFFFFFE8
    jal     func_8001E560              
    addiu   a3, $sp, 0x0034            ## a3 = FFFFFFDC
    lw      $ra, 0x0024($sp)           
lbl_80869B20:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000
    jr      $ra                        
    nop


func_80869B30:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     v0, 0x01E6(s0)             ## 000001E6
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t6, v0, 0x0010             ## t6 = 00000000
    beq     t6, $zero, lbl_80869B64    
    andi    t7, v0, 0xFFEF             ## t7 = 00000000
    sb      t7, 0x01E6(s0)             ## 000001E6
    jal     func_8086875C              
    lw      a1, 0x002C($sp)            
lbl_80869B64:
    lw      t9, 0x01A4(s0)             ## 000001A4
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x002C($sp)            
    jalr    $ra, t9                    
    nop
    lbu     t8, 0x01E6(s0)             ## 000001E6
    andi    t0, t8, 0x0001             ## t0 = 00000000
    bnel    t0, $zero, lbl_80869BB8    
    lbu     v0, 0x01E9(s0)             ## 000001E9
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t1, $zero, 0x001C          ## t1 = 0000001C
    sw      t1, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lbu     v0, 0x01E9(s0)             ## 000001E9
lbl_80869BB8:
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $at, lbl_80869BE0      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    beq     v0, $at, lbl_80869BE0      
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    beq     v0, $at, lbl_80869BE0      
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    bne     v0, $at, lbl_80869BF0      
    lui     a1, 0x4220                 ## a1 = 42200000
lbl_80869BE0:
    jal     func_80020F04              
    lui     a1, 0x41A0                 ## a1 = 41A00000
    beq     $zero, $zero, lbl_80869BFC 
    lh      t2, 0x001C(s0)             ## 0000001C
lbl_80869BF0:
    jal     func_80020F04              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t2, 0x001C(s0)             ## 0000001C
lbl_80869BFC:
    addiu   $at, $zero, 0x007C         ## $at = 0000007C
    sra     t3, t2,  5                 
    andi    t4, t3, 0x007F             ## t4 = 00000000
    bnel    t4, $at, lbl_80869C5C      
    lw      $ra, 0x0024($sp)           
    lw      t6, 0x01A4(s0)             ## 000001A4
    lui     t5, %hi(func_808696FC)     ## t5 = 80870000
    addiu   t5, t5, %lo(func_808696FC) ## t5 = 808696FC
    bne     t5, t6, lbl_80869C58       
    lui     $at, 0x4234                ## $at = 42340000
    mtc1    $at, $f4                   ## $f4 = 45.00
    lwc1    $f6, 0x016C(s0)            ## 0000016C
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80869C5C               
    lw      $ra, 0x0024($sp)           
    lbu     t7, 0x01EA(s0)             ## 000001EA
    or      a0, s0, $zero              ## a0 = 00000000
    slti    $at, t7, 0x0064            
    beql    $at, $zero, lbl_80869C5C   
    lw      $ra, 0x0024($sp)           
    jal     func_80869884              
    lw      a1, 0x002C($sp)            
lbl_80869C58:
    lw      $ra, 0x0024($sp)           
lbl_80869C5C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80869C6C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      a2, 0x0038($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    sw      a3, 0x003C($sp)            
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     a1, $at, lbl_80869D24      
    lw      v1, 0x0044($sp)            
    lw      v0, 0x0000(v1)             ## 00000000
    lui     t7, 0xDA38                 ## t7 = DA380000
    ori     t7, t7, 0x0003             ## t7 = DA380003
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x0000(v1)             ## 00000000
    sw      t7, 0x0000(v0)             ## 00000000
    lw      a0, 0x0000(a2)             ## 00000000
    jal     func_800AB900              
    sw      v0, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    lw      v1, 0x0044($sp)            
    lui     t4, 0xDE00                 ## t4 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      t8, 0x0040($sp)            
    lbu     t9, 0x01E9(t8)             ## 000001E9
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    lui     t1, 0xDE00                 ## t1 = DE000000
    beql    t9, $at, lbl_80869D04      
    lw      v0, 0x0000(v1)             ## 00000000
    lw      v0, 0x0000(v1)             ## 00000000
    lui     t2, 0x0600                 ## t2 = 06000000
    addiu   t2, t2, 0x06F0             ## t2 = 060006F0
    addiu   t0, v0, 0x0008             ## t0 = 00000008
    sw      t0, 0x0000(v1)             ## 00000000
    sw      t2, 0x0004(v0)             ## 00000004
    sw      t1, 0x0000(v0)             ## 00000000
    beq     $zero, $zero, lbl_80869DC0 
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x0000(v1)             ## 00000000
lbl_80869D04:
    lui     t5, 0x0600                 ## t5 = 06000000
    addiu   t5, t5, 0x0AE8             ## t5 = 06000AE8
    addiu   t3, v0, 0x0008             ## t3 = 00000008
    sw      t3, 0x0000(v1)             ## 00000000
    sw      t5, 0x0004(v0)             ## 00000004
    sw      t4, 0x0000(v0)             ## 00000000
    beq     $zero, $zero, lbl_80869DC0 
    lw      $ra, 0x0014($sp)           
lbl_80869D24:
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bne     a1, $at, lbl_80869DBC      
    lw      v1, 0x0044($sp)            
    lw      v0, 0x0000(v1)             ## 00000000
    lui     t7, 0xDA38                 ## t7 = DA380000
    ori     t7, t7, 0x0003             ## t7 = DA380003
    addiu   t6, v0, 0x0008             ## t6 = 00000008
    sw      t6, 0x0000(v1)             ## 00000000
    sw      t7, 0x0000(v0)             ## 00000000
    lw      a0, 0x0000(a2)             ## 00000000
    jal     func_800AB900              
    sw      v0, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    lw      v1, 0x0044($sp)            
    lui     t4, 0xDE00                 ## t4 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      t8, 0x0040($sp)            
    lbu     t9, 0x01E9(t8)             ## 000001E9
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    lui     t1, 0xDE00                 ## t1 = DE000000
    beql    t9, $at, lbl_80869DA4      
    lw      v0, 0x0000(v1)             ## 00000000
    lw      v0, 0x0000(v1)             ## 00000000
    lui     t2, 0x0600                 ## t2 = 06000000
    addiu   t2, t2, 0x10C0             ## t2 = 060010C0
    addiu   t0, v0, 0x0008             ## t0 = 00000008
    sw      t0, 0x0000(v1)             ## 00000000
    sw      t2, 0x0004(v0)             ## 00000004
    sw      t1, 0x0000(v0)             ## 00000000
    beq     $zero, $zero, lbl_80869DC0 
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x0000(v1)             ## 00000000
lbl_80869DA4:
    lui     t5, 0x0600                 ## t5 = 06000000
    addiu   t5, t5, 0x1678             ## t5 = 06001678
    addiu   t3, v0, 0x0008             ## t3 = 00000008
    sw      t3, 0x0000(v1)             ## 00000000
    sw      t5, 0x0004(v0)             ## 00000004
    sw      t4, 0x0000(v0)             ## 00000000
lbl_80869DBC:
    lw      $ra, 0x0014($sp)           
lbl_80869DC0:
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80869DCC:
    lw      v1, 0x02C4(a0)             ## 000002C4
    lui     t6, 0xDF00                 ## t6 = DF000000
    addiu   v1, v1, 0xFFF0             ## v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             ## 000002C4
    sw      t6, 0x0000(v1)             ## FFFFFFF0
    sw      $zero, 0x0004(v1)          ## FFFFFFF4
    or      v0, v1, $zero              ## v0 = FFFFFFF0
    jr      $ra                        
    nop


func_80869DF0:
    lw      v1, 0x02C4(a0)             ## 000002C4
    lui     t6, 0xE200                 ## t6 = E2000000
    ori     t6, t6, 0x001C             ## t6 = E200001C
    addiu   v1, v1, 0xFFF0             ## v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             ## 000002C4
    lui     t7, 0xC810                 ## t7 = C8100000
    ori     t7, t7, 0x49F8             ## t7 = C81049F8
    sw      t7, 0x0004(v1)             ## FFFFFFF4
    sw      t6, 0x0000(v1)             ## FFFFFFF0
    lui     t8, 0xDF00                 ## t8 = DF000000
    sw      t8, 0x0008(v1)             ## FFFFFFF8
    sw      $zero, 0x000C(v1)          ## FFFFFFFC
    or      v0, v1, $zero              ## v0 = FFFFFFF0
    jr      $ra                        
    nop


func_80869E2C:
    lw      v1, 0x02C4(a0)             ## 000002C4
    lui     t6, 0xE200                 ## t6 = E2000000
    ori     t6, t6, 0x001C             ## t6 = E200001C
    addiu   v1, v1, 0xFFF0             ## v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             ## 000002C4
    lui     t7, 0xC811                 ## t7 = C8110000
    ori     t7, t7, 0x2078             ## t7 = C8112078
    sw      t7, 0x0004(v1)             ## FFFFFFF4
    sw      t6, 0x0000(v1)             ## FFFFFFF0
    lui     t8, 0xDF00                 ## t8 = DF000000
    sw      t8, 0x0008(v1)             ## FFFFFFF8
    sw      $zero, 0x000C(v1)          ## FFFFFFFC
    or      v0, v1, $zero              ## v0 = FFFFFFF0
    jr      $ra                        
    nop


func_80869E68:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      s2, 0x0030($sp)            
    sw      s1, 0x002C($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    or      s2, a1, $zero              ## s2 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s0, 0x0028($sp)            
    lbu     v0, 0x01E7(s1)             ## 000001E7
    addiu   $at, $zero, 0x00FF         ## $at = 000000FF
    lw      s0, 0x0000(s2)             ## 00000000
    bnel    v0, $at, lbl_80869EB4      
    lw      t6, 0x0004(s1)             ## 00000004
    lbu     a0, 0x01E9(s1)             ## 000001E9
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beq     a0, $at, lbl_80869EB0      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    a0, $at, lbl_80869EE0      
    lw      v0, 0x02C0(s0)             ## 000002C0
lbl_80869EB0:
    lw      t6, 0x0004(s1)             ## 00000004
lbl_80869EB4:
    addiu   $at, $zero, 0x0080         ## $at = 00000080
    andi    t7, t6, 0x0080             ## t7 = 00000000
    beq     t7, $at, lbl_80869F78      
    nop
    lbu     a0, 0x01E9(s1)             ## 000001E9
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beq     a0, $at, lbl_80869EDC      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bne     a0, $at, lbl_80869F78      
    nop
lbl_80869EDC:
    lw      v0, 0x02C0(s0)             ## 000002C0
lbl_80869EE0:
    lui     t9, 0xE700                 ## t9 = E7000000
    addiu   t8, v0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(s0)             ## 000002C0
    sw      $zero, 0x0004(v0)          ## 00000004
    sw      t9, 0x0000(v0)             ## 00000000
    lw      v0, 0x02C0(s0)             ## 000002C0
    lui     t1, 0xFB00                 ## t1 = FB000000
    addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
    addiu   t0, v0, 0x0008             ## t0 = 00000008
    sw      t0, 0x02C0(s0)             ## 000002C0
    sw      t2, 0x0004(v0)             ## 00000004
    sw      t1, 0x0000(v0)             ## 00000000
    lw      v0, 0x02C0(s0)             ## 000002C0
    lui     t4, 0xDB06                 ## t4 = DB060000
    ori     t4, t4, 0x0020             ## t4 = DB060020
    addiu   t3, v0, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(s0)             ## 000002C0
    sw      t4, 0x0000(v0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_80869DCC              
    sw      v0, 0x0048($sp)            
    lw      a2, 0x0048($sp)            
    sw      v0, 0x0004(a2)             ## 00000004
    jal     func_8007E298              
    lw      a0, 0x0000(s2)             ## 00000000
    lw      a1, 0x0158(s1)             ## 00000158
    lw      a2, 0x0174(s1)             ## 00000174
    lui     t5, %hi(func_80869C6C)     ## t5 = 80870000
    addiu   t5, t5, %lo(func_80869C6C) ## t5 = 80869C6C
    sw      t5, 0x0010($sp)            
    sw      s1, 0x0014($sp)            
    lw      t6, 0x02C0(s0)             ## 000002C0
    or      a0, s2, $zero              ## a0 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_8008A414              
    sw      t6, 0x0018($sp)            
    beq     $zero, $zero, lbl_8086A064 
    sw      v0, 0x02C0(s0)             ## 000002C0
lbl_80869F78:
    beql    v0, $zero, lbl_8086A068    
    lw      $ra, 0x0034($sp)           
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t8, 0xE700                 ## t8 = E7000000
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s0)             ## 000002D0
    sw      $zero, 0x0004(v0)          ## 00000004
    sw      t8, 0x0000(v0)             ## 00000000
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             ## 00000000
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t0, 0xFB00                 ## t0 = FB000000
    addiu   t9, v0, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s0)             ## 000002D0
    sw      t0, 0x0000(v0)             ## 00000000
    lbu     t2, 0x01E7(s1)             ## 000001E7
    sw      t2, 0x0004(v0)             ## 00000004
    lbu     a0, 0x01E9(s1)             ## 000001E9
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beq     a0, $at, lbl_80869FD4      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bnel    a0, $at, lbl_8086A00C      
    lw      v0, 0x02D0(s0)             ## 000002D0
lbl_80869FD4:
    lw      v0, 0x02D0(s0)             ## 000002D0
    lui     t4, 0xDB06                 ## t4 = DB060000
    ori     t4, t4, 0x0020             ## t4 = DB060020
    addiu   t3, v0, 0x0008             ## t3 = 00000008
    sw      t3, 0x02D0(s0)             ## 000002D0
    sw      t4, 0x0000(v0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_80869E2C              
    sw      v0, 0x003C($sp)            
    lw      v1, 0x003C($sp)            
    sw      v0, 0x0004(v1)             ## 00000004
    beq     $zero, $zero, lbl_8086A038 
    lw      a1, 0x0158(s1)             ## 00000158
    lw      v0, 0x02D0(s0)             ## 000002D0
lbl_8086A00C:
    lui     t6, 0xDB06                 ## t6 = DB060000
    ori     t6, t6, 0x0020             ## t6 = DB060020
    addiu   t5, v0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s0)             ## 000002D0
    sw      t6, 0x0000(v0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_80869DF0              
    sw      v0, 0x0038($sp)            
    lw      v1, 0x0038($sp)            
    sw      v0, 0x0004(v1)             ## 00000004
    lw      a1, 0x0158(s1)             ## 00000158
lbl_8086A038:
    lw      a2, 0x0174(s1)             ## 00000174
    lui     t7, %hi(func_80869C6C)     ## t7 = 80870000
    addiu   t7, t7, %lo(func_80869C6C) ## t7 = 80869C6C
    sw      t7, 0x0010($sp)            
    sw      s1, 0x0014($sp)            
    lw      t8, 0x02D0(s0)             ## 000002D0
    or      a0, s2, $zero              ## a0 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_8008A414              
    sw      t8, 0x0018($sp)            
    sw      v0, 0x02D0(s0)             ## 000002D0
lbl_8086A064:
    lw      $ra, 0x0034($sp)           
lbl_8086A068:
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000
    nop

.section .data

var_8086A080: .word 0x000A0B00, 0x00000000, 0x000E0000, 0x000001EC
.word func_808687E8
.word func_80868C58
.word func_80869B30
.word func_80869E68
var_8086A0A0: .word 0x0600024C, 0x06000128, 0x0600043C, 0x0600043C
var_8086A0B0: .word 0x001F0000
var_8086A0B4: .word 0x00000000, 0x3F800000, 0x00000000
var_8086A0C0: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_8086A0D0: .word 0x3F0CCCCD
var_8086A0D4: .word 0x3F266666
var_8086A0D8: .word 0x46AFC800
var_8086A0DC: .word 0x387BA882
var_8086A0E0: .word 0x3E99999A
var_8086A0E4: .word 0x3F4CCCCD
var_8086A0E8: .word 0x3FE66666
var_8086A0EC: .word 0x3FCCCCCD
var_8086A0F0: .word 0x3FE66666, 0x00000000, 0x00000000, 0x00000000

