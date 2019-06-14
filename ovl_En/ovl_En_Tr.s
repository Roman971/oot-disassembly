#include <mips.h>
.set noreorder
.set noat

.section .text
func_809C3300:
    sw      a1, 0x02CC(a0)             ## 000002CC
    jr      $ra                        
    nop


func_809C330C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0028($sp)            
    sw      a1, 0x0034($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 ## a3 = 41F00000
    lui     a1, %hi(func_809C351C)     ## a1 = 809C0000
    addiu   a1, a1, %lo(func_809C351C) ## a1 = 809C351C
    jal     func_809C3300              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, 0x3C23                 ## a1 = 3C230000
    sh      $zero, 0x02C4(s0)          ## 000002C4
    sw      $zero, 0x011C(s0)          ## 0000011C
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      v0, 0x001C(s0)             ## 0000001C
    addiu   s1, s0, 0x013C             ## s1 = 0000013C
    or      a1, s1, $zero              ## a1 = 0000013C
    beq     v0, $zero, lbl_809C338C    
    lw      a0, 0x0034($sp)            
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v0, $at, lbl_809C33E8      
    lw      a0, 0x0034($sp)            
    beq     $zero, $zero, lbl_809C344C 
    lw      $ra, 0x002C($sp)           
lbl_809C338C:
    lui     a2, 0x0601                 ## a2 = 06010000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t6, s0, 0x0180             ## t6 = 00000180
    addiu   t7, s0, 0x0222             ## t7 = 00000222
    addiu   t8, $zero, 0x001B          ## t8 = 0000001B
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x3FC8             ## a3 = 06003FC8
    jal     func_8008C788              
    addiu   a2, a2, 0x1688             ## a2 = 06011688
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x3FC8             ## a1 = 06003FC8
    jal     func_8008D1C4              
    or      a0, s1, $zero              ## a0 = 0000013C
    lui     a1, %hi(func_809C4094)     ## a1 = 809C0000
    sw      $zero, 0x02D4(s0)          ## 000002D4
    addiu   a1, a1, %lo(func_809C4094) ## a1 = 809C4094
    jal     func_809C3300              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t9, $zero, 0x0003          ## t9 = 00000003
    beq     $zero, $zero, lbl_809C3448 
    sh      t9, 0x02C8(s0)             ## 000002C8
lbl_809C33E8:
    addiu   s1, s0, 0x013C             ## s1 = 0000013C
    lui     a2, 0x0601                 ## a2 = 06010000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t0, s0, 0x0180             ## t0 = 00000180
    addiu   t1, s0, 0x0222             ## t1 = 00000222
    addiu   t2, $zero, 0x001B          ## t2 = 0000001B
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t0, 0x0010($sp)            
    addiu   a3, a3, 0x1CDC             ## a3 = 06001CDC
    addiu   a2, a2, 0xC530             ## a2 = 0600C530
    jal     func_8008C788              
    or      a1, s1, $zero              ## a1 = 0000013C
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x1CDC             ## a1 = 06001CDC
    jal     func_8008D1C4              
    or      a0, s1, $zero              ## a0 = 0000013C
    lui     a1, %hi(func_809C4094)     ## a1 = 809C0000
    sw      $zero, 0x02D4(s0)          ## 000002D4
    addiu   a1, a1, %lo(func_809C4094) ## a1 = 809C4094
    jal     func_809C3300              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t3, $zero, 0x0002          ## t3 = 00000002
    sh      t3, 0x02C8(s0)             ## 000002C8
lbl_809C3448:
    lw      $ra, 0x002C($sp)           
lbl_809C344C:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_809C345C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809C346C:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lhu     v1, 0x02C6(s0)             ## 000002C6
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    bne     v1, $at, lbl_809C34DC      
    or      v0, v1, $zero              ## v0 = 00000000
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     a3, 0x8010                 ## a3 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    bne     t6, $zero, lbl_809C34B0    
    lui     t7, 0x8012                 ## t7 = 80120000
    lw      t7, -0x46D0(t7)            ## 8011B930
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bne     t7, $at, lbl_809C34DC      
lbl_809C34B0:
    lui     t8, 0x8010                 ## t8 = 80100000
    addiu   t8, t8, 0x43A8             ## t8 = 801043A8
    lui     a1, 0x8010                 ## a1 = 80100000
    addiu   a1, a1, 0x4394             ## a1 = 80104394
    sw      t8, 0x0014($sp)            
    addiu   a0, $zero, 0x39B3          ## a0 = 000039B3
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    lhu     v1, 0x02C6(s0)             ## 000002C6
    or      v0, v1, $zero              ## v0 = 00000000
lbl_809C34DC:
    blez    v0, lbl_809C34F0           
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t9, v1, 0xFFFF             ## t9 = FFFFFFFF
    beq     $zero, $zero, lbl_809C3500 
    sh      t9, 0x02C6(s0)             ## 000002C6
lbl_809C34F0:
    lw      t0, 0x011C(s0)             ## 0000011C
    beq     t0, $zero, lbl_809C3500    
    nop
    sw      $zero, 0x011C(s0)          ## 0000011C
lbl_809C3500:
    jal     func_8002313C              
    addiu   a1, $zero, 0x317B          ## a1 = 0000317B
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809C351C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809C352C:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x003C($sp)           
    lbu     t6, 0x1D6C(s1)             ## 00001D6C
    beql    t6, $zero, lbl_809C36CC    
    lw      $ra, 0x003C($sp)           
    lh      a2, 0x02C8(s0)             ## 000002C8
    sll     t7, a2,  2                 
    addu    t8, s1, t7                 
    lw      v0, 0x1D8C(t8)             ## 00001D8C
    beql    v0, $zero, lbl_809C36CC    
    lw      $ra, 0x003C($sp)           
    lhu     v1, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v1, $at, lbl_809C3590      
    lui     a1, 0x3C23                 ## a1 = 3C230000
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    beq     v1, $at, lbl_809C35C4      
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809C36A4 
    nop
lbl_809C3590:
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    lui     a1, %hi(func_809C3AD8)     ## a1 = 809C0000
    addiu   a1, a1, %lo(func_809C3AD8) ## a1 = 809C3AD8
    jal     func_809C3300              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t9, $zero, 0x0018          ## t9 = 00000018
    sh      t9, 0x02C6(s0)             ## 000002C6
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3877          ## a1 = 00003877
    beq     $zero, $zero, lbl_809C36C0 
    or      a0, s0, $zero              ## a0 = 00000000
lbl_809C35C4:
    lh      t0, 0x001C(s0)             ## 0000001C
    lui     a0, %hi(var_809C4970)      ## a0 = 809C0000
    sll     t1, t0,  2                 
    addu    a0, a0, t1                 
    jal     func_8008A194              
    lw      a0, %lo(var_809C4970)(a0)  
    mtc1    v0, $f4                    ## $f4 = 0.00
    lh      t2, 0x001C(s0)             ## 0000001C
    lui     $at, 0xC0A0                ## $at = C0A00000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   ## $f8 = -5.00
    lui     a1, %hi(var_809C4970)      ## a1 = 809C0000
    sll     t3, t2,  2                 
    addu    a1, a1, t3                 
    addiu   t4, $zero, 0x0002          ## t4 = 00000002
    sw      t4, 0x0014($sp)            
    lw      a1, %lo(var_809C4970)(a1)  
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     a1, %hi(func_809C346C)     ## a1 = 809C0000
    addiu   a1, a1, %lo(func_809C346C) ## a1 = 809C346C
    jal     func_809C3300              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      v0, 0x001C(s0)             ## 0000001C
    lui     t6, %hi(var_809C4968)      ## t6 = 809C0000
    lwc1    $f10, 0x0024(s0)           ## 00000024
    sll     t5, v0,  2                 
    addu    t6, t6, t5                 
    lw      t6, %lo(var_809C4968)(t6)  
    addiu   t7, $zero, 0x0027          ## t7 = 00000027
    sh      t7, 0x02C6(s0)             ## 000002C6
    sw      t6, 0x02D4(s0)             ## 000002D4
    swc1    $f10, 0x0010($sp)          
    lwc1    $f16, 0x0028(s0)           ## 00000028
    addiu   t8, v0, 0x0009             ## t8 = 00000009
    addiu   a0, s1, 0x1C24             ## a0 = 00001C24
    swc1    $f16, 0x0014($sp)          
    lwc1    $f18, 0x002C(s0)           ## 0000002C
    sw      t8, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    or      a1, s0, $zero              ## a1 = 00000000
    or      a2, s1, $zero              ## a2 = 00000000
    addiu   a3, $zero, 0x00F5          ## a3 = 000000F5
    jal     func_800253F0              
    swc1    $f18, 0x0018($sp)          
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38A5          ## a1 = 000038A5
    beq     $zero, $zero, lbl_809C36C0 
    or      a0, s0, $zero              ## a0 = 00000000
lbl_809C36A4:
    jal     func_809C461C              
    or      a1, s1, $zero              ## a1 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_809C4818              
    lh      a2, 0x02C8(s0)             ## 000002C8
    or      a0, s0, $zero              ## a0 = 00000000
lbl_809C36C0:
    jal     func_8002313C              
    addiu   a1, $zero, 0x317B          ## a1 = 0000317B
    lw      $ra, 0x003C($sp)           
lbl_809C36CC:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_809C36DC:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t8, 0x0024(s0)             ## 00000024
    addiu   t6, $sp, 0x0034            ## t6 = FFFFFFF4
    sw      t8, 0x0000(t6)             ## FFFFFFF4
    lw      t7, 0x0028(s0)             ## 00000028
    sw      t7, 0x0004(t6)             ## FFFFFFF8
    lw      t8, 0x002C(s0)             ## 0000002C
    sw      t8, 0x0008(t6)             ## FFFFFFFC
    lbu     t9, 0x1D6C(s1)             ## 00001D6C
    beql    t9, $zero, lbl_809C3848    
    lw      $ra, 0x0024($sp)           
    lh      a2, 0x02C8(s0)             ## 000002C8
    sll     t0, a2,  2                 
    addu    t1, s1, t0                 
    lw      v0, 0x1D8C(t1)             ## 00001D8C
    beql    v0, $zero, lbl_809C3848    
    lw      $ra, 0x0024($sp)           
    lhu     t2, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x0008         ## $at = 00000008
    or      a1, s1, $zero              ## a1 = 00000000
    bne     t2, $at, lbl_809C3788      
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809C461C              
    or      a0, s0, $zero              ## a0 = 00000000
    lwc1    $f12, 0x0064(s0)           ## 00000064
    jal     func_800AA4F8              
    lwc1    $f14, 0x005C(s0)           ## 0000005C
    sh      v0, 0x0032(s0)             ## 00000032
    lh      a1, 0x0032(s0)             ## 00000032
    addiu   t3, $zero, 0x0100          ## t3 = 00000100
    sw      t3, 0x0010($sp)            
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x000A          ## a2 = 0000000A
    jal     func_80064508              
    addiu   a3, $zero, 0x0400          ## a3 = 00000400
    lh      t4, 0x00B6(s0)             ## 000000B6
    beq     $zero, $zero, lbl_809C3828 
    sh      t4, 0x0032(s0)             ## 00000032
lbl_809C3788:
    jal     func_809C48A0              
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_800636C4              ## sins?
    lh      a0, 0x02C6(s0)             ## 000002C6
    lui     $at, 0x4316                ## $at = 43160000
    mtc1    $at, $f6                   ## $f6 = 150.00
    lui     $at, 0xC2C8                ## $at = C2C80000
    lwc1    $f4, 0x0024(s0)            ## 00000024
    mul.s   $f8, $f0, $f6              
    mtc1    $at, $f18                  ## $f18 = -100.00
    lwc1    $f16, 0x0028(s0)           ## 00000028
    lh      a0, 0x02C6(s0)             ## 000002C6
    add.s   $f6, $f16, $f18            
    add.s   $f10, $f4, $f8             
    swc1    $f6, 0x0028(s0)            ## 00000028
    jal     func_80063684              ## coss?
    swc1    $f10, 0x0024(s0)           ## 00000024
    lui     $at, 0x4316                ## $at = 43160000
    mtc1    $at, $f8                   ## $f8 = 150.00
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    lhu     t6, 0x02C6(s0)             ## 000002C6
    mul.s   $f10, $f0, $f8             
    lwc1    $f18, 0x0024(s0)           ## 00000024
    addiu   t7, t6, 0x4000             ## t7 = 00004000
    addiu   t8, t6, 0x0400             ## t8 = 00000400
    sh      t7, 0x00B6(s0)             ## 000000B6
    sh      t8, 0x02C6(s0)             ## 000002C6
    add.s   $f16, $f4, $f10            
    lwc1    $f4, 0x0028(s0)            ## 00000028
    swc1    $f16, 0x002C(s0)           ## 0000002C
    lwc1    $f6, 0x0034($sp)           
    sub.s   $f8, $f18, $f6             
    lwc1    $f18, 0x002C(s0)           ## 0000002C
    swc1    $f8, 0x005C(s0)            ## 0000005C
    lwc1    $f10, 0x0038($sp)          
    sub.s   $f16, $f4, $f10            
    swc1    $f16, 0x0060(s0)           ## 00000060
    lwc1    $f6, 0x003C($sp)           
    sub.s   $f8, $f18, $f6             
    swc1    $f8, 0x0064(s0)            ## 00000064
lbl_809C3828:
    lhu     t9, 0x1D74(s1)             ## 00001D74
    or      a0, s0, $zero              ## a0 = 00000000
    slti    $at, t9, 0x029E            
    beql    $at, $zero, lbl_809C3848   
    lw      $ra, 0x0024($sp)           
    jal     func_8002313C              
    addiu   a1, $zero, 0x317B          ## a1 = 0000317B
    lw      $ra, 0x0024($sp)           
lbl_809C3848:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_809C3858:
    addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
    sw      a0, 0x0088($sp)            
    sw      a3, 0x0094($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    addiu   a0, $sp, 0x0044            ## a0 = FFFFFFBC
    sw      $ra, 0x002C($sp)           
    sw      s0, 0x0028($sp)            
    sw      a1, 0x008C($sp)            
    sw      a2, 0x0090($sp)            
    lh      t6, 0x07A0(a3)             ## 000007A0
    sll     t7, t6,  2                 
    addu    t8, a3, t7                 
    lw      t9, 0x0790(t8)             ## 00000790
    lw      t1, 0x005C(t9)             ## 0000005C
    sw      t1, 0x0000(a0)             ## FFFFFFBC
    lw      t0, 0x0060(t9)             ## 00000060
    sw      t0, 0x0004(a0)             ## FFFFFFC0
    lw      t1, 0x0064(t9)             ## 00000064
    sw      t1, 0x0008(a0)             ## FFFFFFC4
    lw      a1, 0x0088($sp)            
    sw      a3, 0x008C($sp)            
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    jal     func_80063F00              
    sw      a1, 0x0038($sp)            
    sll     s0, v0, 16                 
    sra     s0, s0, 16                 
    addiu   a0, $sp, 0x0044            ## a0 = FFFFFFBC
    jal     func_80063F34              
    lw      a1, 0x0038($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    subu    t2, $zero, v0              
    sll     a0, s0, 16                 
    sh      t2, 0x0040($sp)            
    sra     a0, a0, 16                 
    swc1    $f0, 0x006C($sp)           
    jal     func_800636C4              ## sins?
    swc1    $f0, 0x0064($sp)           
    swc1    $f0, 0x003C($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x0040($sp)            
    lwc1    $f4, 0x0094($sp)           
    lwc1    $f6, 0x003C($sp)           
    lh      a0, 0x0040($sp)            
    mul.s   $f8, $f4, $f6              
    nop
    mul.s   $f10, $f0, $f8             
    jal     func_800636C4              ## sins?
    swc1    $f10, 0x0070($sp)          
    lwc1    $f16, 0x0094($sp)          
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    mul.s   $f18, $f0, $f16            
    jal     func_80063684              ## coss?
    swc1    $f18, 0x0074($sp)          
    swc1    $f0, 0x003C($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x0040($sp)            
    lwc1    $f4, 0x0094($sp)           
    lwc1    $f6, 0x003C($sp)           
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f2                   ## $f2 = 10.00
    mul.s   $f8, $f4, $f6              
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f16                  ## $f16 = 0.50
    lw      t3, 0x0088($sp)            
    lui     t7, %hi(var_809C49B0)      ## t7 = 809C0000
    swc1    $f16, 0x0068($sp)          
    addiu   t7, t7, %lo(var_809C49B0)  ## t7 = 809C49B0
    mul.s   $f10, $f0, $f8             
    lw      t0, 0x0038($sp)            
    addiu   t9, $sp, 0x0058            ## t9 = FFFFFFD0
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    swc1    $f10, 0x0078($sp)          
    lh      t5, 0x001C(t3)             ## 0000001C
    sll     t6, t5,  3                 
    addu    v0, t6, t7                 
    addiu   t8, v0, 0x0004             ## t8 = 00000004
    sw      v0, 0x0054($sp)            
    sw      t8, 0x0050($sp)            
    lw      t2, 0x0000(t0)             ## 00000000
    sw      t2, 0x0000(t9)             ## FFFFFFD0
    lw      t1, 0x0004(t0)             ## 00000004
    sw      t1, 0x0004(t9)             ## FFFFFFD4
    lw      t2, 0x0008(t0)             ## 00000008
    sw      t2, 0x0008(t9)             ## FFFFFFD8
    lwc1    $f4, 0x0070($sp)           
    lwc1    $f18, 0x0058($sp)          
    lwc1    $f16, 0x0074($sp)          
    mul.s   $f6, $f4, $f2              
    lwc1    $f10, 0x005C($sp)          
    mul.s   $f4, $f16, $f2             
    sub.s   $f8, $f18, $f6             
    lwc1    $f6, 0x0060($sp)           
    sub.s   $f18, $f10, $f4            
    swc1    $f8, 0x0058($sp)           
    lwc1    $f8, 0x0078($sp)           
    swc1    $f18, 0x005C($sp)          
    mul.s   $f16, $f8, $f2             
    sub.s   $f10, $f6, $f16            
    jal     func_80063684              ## coss?
    swc1    $f10, 0x0060($sp)          
    lw      v0, 0x0090($sp)            
    lui     t3, %hi(var_809C4978)      ## t3 = 809C0000
    addiu   t3, t3, %lo(var_809C4978)  ## t3 = 809C4978
    sll     v0, v0,  2                 
    addu    v1, v0, t3                 
    lwc1    $f4, 0x0000(v1)            ## 00000000
    lwc1    $f2, 0x0098($sp)           
    lui     $at, %hi(var_809C4994)     ## $at = 809C0000
    addu    $at, $at, v0               
    mul.s   $f18, $f4, $f2             
    lwc1    $f10, %lo(var_809C4994)($at) 
    lwc1    $f6, 0x0058($sp)           
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    sw      v1, 0x0038($sp)            
    mul.s   $f8, $f0, $f18             
    lwc1    $f18, 0x005C($sp)          
    mul.s   $f4, $f10, $f2             
    add.s   $f16, $f8, $f6             
    add.s   $f8, $f4, $f18             
    swc1    $f16, 0x007C($sp)          
    jal     func_800636C4              ## sins?
    swc1    $f8, 0x0080($sp)           
    lw      v1, 0x0038($sp)            
    lwc1    $f2, 0x0098($sp)           
    lwc1    $f6, 0x0060($sp)           
    lwc1    $f16, 0x0000(v1)           ## 00000000
    lui     $at, 0x4448                ## $at = 44480000
    mtc1    $at, $f8                   ## $f8 = 800.00
    mul.s   $f10, $f16, $f2            
    lui     $at, 0x42A0                ## $at = 42A00000
    lw      t4, 0x0054($sp)            
    lw      t5, 0x0050($sp)            
    lw      a0, 0x008C($sp)            
    addiu   a1, $sp, 0x007C            ## a1 = FFFFFFF4
    addiu   a2, $sp, 0x0070            ## a2 = FFFFFFE8
    mul.s   $f4, $f0, $f10             
    addiu   a3, $sp, 0x0064            ## a3 = FFFFFFDC
    sw      t4, 0x0010($sp)            
    mul.s   $f16, $f8, $f2             
    sw      t5, 0x0014($sp)            
    sub.s   $f18, $f6, $f4             
    mtc1    $at, $f6                   ## $f6 = 80.00
    trunc.w.s $f10, $f16                 
    mul.s   $f4, $f6, $f2              
    swc1    $f18, 0x0084($sp)          
    mfc1    t7, $f10                   
    nop
    sw      t7, 0x0018($sp)            
    trunc.w.s $f18, $f4                  
    mfc1    t9, $f18                   
    jal     func_8001BD94              
    sw      t9, 0x001C($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0088           ## $sp = 00000000
    jr      $ra                        
    nop


func_809C3AD8:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lhu     v0, 0x02C6(s0)             ## 000002C6
    slti    $at, v0, 0x0011            
    bne     $at, $zero, lbl_809C3B28   
    or      v1, v0, $zero              ## v1 = 00000000
    sll     t7, v0,  2                 
    addu    t7, t7, v0                 
    sll     t7, t7,  3                 
    lh      t6, 0x00B6(s0)             ## 000000B6
    addu    t7, t7, v0                 
    sll     t7, t7,  4                 
    subu    t7, t7, v0                 
    subu    t8, t6, t7                 
    addiu   t9, t8, 0x3D68             ## t9 = 00003D68
    beq     $zero, $zero, lbl_809C3C58 
    sh      t9, 0x00B6(s0)             ## 000000B6
lbl_809C3B28:
    slti    $at, v1, 0x0005            
    bne     $at, $zero, lbl_809C3B84   
    lui     $at, %hi(var_809C49F0)     ## $at = 809C0000
    lwc1    $f6, %lo(var_809C49F0)($at) 
    lwc1    $f4, 0x0050(s0)            ## 00000050
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_80020F88              
    nop
    lhu     v0, 0x02C6(s0)             ## 000002C6
    lh      t0, 0x00B6(s0)             ## 000000B6
    sll     t1, v0,  2                 
    addu    t1, t1, v0                 
    sll     t1, t1,  3                 
    addu    t1, t1, v0                 
    sll     t1, t1,  4                 
    subu    t1, t1, v0                 
    subu    t2, t0, t1                 
    addiu   t3, t2, 0x3D68             ## t3 = 00003D68
    sh      t3, 0x00B6(s0)             ## 000000B6
    beq     $zero, $zero, lbl_809C3C58 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_809C3B84:
    blez    v1, lbl_809C3C40           
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    sll     a2, v1,  1                 
    div     $zero, a2, $at             
    lui     $at, %hi(var_809C49F4)     ## $at = 809C0000
    lwc1    $f10, %lo(var_809C49F4)($at) 
    mfhi    a2                         
    sw      a2, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0034($sp)            
    lui     a3, 0x40A0                 ## a3 = 40A00000
    jal     func_809C3858              
    swc1    $f10, 0x0010($sp)          
    lw      a2, 0x002C($sp)            
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a2, a2, 0x0001             ## a2 = 00000001
    div     $zero, a2, $at             
    lui     $at, %hi(var_809C49F8)     ## $at = 809C0000
    lwc1    $f16, %lo(var_809C49F8)($at) 
    mfhi    a2                         
    lw      a1, 0x0034($sp)            
    lui     a3, 0x40A0                 ## a3 = 40A00000
    jal     func_809C3858              
    swc1    $f16, 0x0010($sp)          
    lui     $at, %hi(var_809C49FC)     ## $at = 809C0000
    lwc1    $f4, %lo(var_809C49FC)($at) 
    lwc1    $f18, 0x0050(s0)           ## 00000050
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f6, $f18, $f4             
    mfc1    a1, $f6                    
    jal     func_80020F88              
    nop
    lhu     v0, 0x02C6(s0)             ## 000002C6
    lh      t4, 0x00B6(s0)             ## 000000B6
    sll     t5, v0,  2                 
    addu    t5, t5, v0                 
    sll     t5, t5,  3                 
    addu    t5, t5, v0                 
    sll     t5, t5,  4                 
    subu    t5, t5, v0                 
    subu    t6, t4, t5                 
    addiu   t7, t6, 0x3D68             ## t7 = 00003D68
    sh      t7, 0x00B6(s0)             ## 000000B6
    beq     $zero, $zero, lbl_809C3C58 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_809C3C40:
    lui     a1, %hi(func_809C3E2C)     ## a1 = 809C0000
    jal     func_809C3300              
    addiu   a1, a1, %lo(func_809C3E2C) ## a1 = 809C3E2C
    lhu     v0, 0x02C6(s0)             ## 000002C6
    sw      $zero, 0x0134(s0)          ## 00000134
    or      v1, v0, $zero              ## v1 = 00000000
lbl_809C3C58:
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bne     v1, $at, lbl_809C3C74      
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x38CD          ## a1 = 000038CD
    lhu     v0, 0x02C6(s0)             ## 000002C6
    or      v1, v0, $zero              ## v1 = 00000000
lbl_809C3C74:
    blez    v1, lbl_809C3C80           
    addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x02C6(s0)             ## 000002C6
lbl_809C3C80:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809C3C94:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lhu     v0, 0x02C6(s0)             ## 000002C6
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0034($sp)            
    slti    $at, v0, 0x001F            
    bne     $at, $zero, lbl_809C3D24   
    or      v1, v0, $zero              ## v1 = 00000000
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    sll     a2, v1,  1                 
    div     $zero, a2, $at             
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    mfhi    a2                         
    sw      a2, 0x002C($sp)            
    lui     a3, 0x40A0                 ## a3 = 40A00000
    jal     func_809C3858              
    swc1    $f4, 0x0010($sp)           
    lw      a2, 0x002C($sp)            
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a2, a2, 0x0001             ## a2 = 00000001
    div     $zero, a2, $at             
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    mfhi    a2                         
    lw      a1, 0x0034($sp)            
    lui     a3, 0x40A0                 ## a3 = 40A00000
    jal     func_809C3858              
    swc1    $f6, 0x0010($sp)           
    lhu     v0, 0x02C6(s0)             ## 000002C6
    beq     $zero, $zero, lbl_809C3E00 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_809C3D24:
    addiu   $at, $zero, 0x001E         ## $at = 0000001E
    bne     v1, $at, lbl_809C3D6C      
    lui     t6, %hi(func_809C44B0)     ## t6 = 809C0000
    sll     t8, v1,  2                 
    subu    t8, t8, v1                 
    sll     t8, t8,  2                 
    addu    t8, t8, v1                 
    sll     t8, t8,  2                 
    addu    t8, t8, v1                 
    lh      t7, 0x00B6(s0)             ## 000000B6
    sll     t8, t8,  2                 
    subu    t8, t8, v1                 
    sll     t8, t8,  1                 
    addiu   t6, t6, %lo(func_809C44B0) ## t6 = 809C44B0
    addu    t9, t7, t8                 
    sw      t6, 0x0134(s0)             ## 00000134
    beq     $zero, $zero, lbl_809C3E00 
    sh      t9, 0x00B6(s0)             ## 000000B6
lbl_809C3D6C:
    blez    v1, lbl_809C3DDC           
    or      a0, s0, $zero              ## a0 = 00000000
    sll     t1, v1,  2                 
    subu    t1, t1, v1                 
    sll     t1, t1,  2                 
    addu    t1, t1, v1                 
    sll     t1, t1,  2                 
    addu    t1, t1, v1                 
    lh      t0, 0x00B6(s0)             ## 000000B6
    sll     t1, t1,  2                 
    subu    t1, t1, v1                 
    sll     t1, t1,  1                 
    addu    t2, t0, t1                 
    sh      t2, 0x00B6(s0)             ## 000000B6
    lui     $at, %hi(var_809C4A00)     ## $at = 809C0000
    lwc1    $f10, %lo(var_809C4A00)($at) 
    lwc1    $f8, 0x0050(s0)            ## 00000050
    lui     $at, %hi(var_809C4A04)     ## $at = 809C0000
    lwc1    $f18, %lo(var_809C4A04)($at) 
    mul.s   $f16, $f8, $f10            
    or      a0, s0, $zero              ## a0 = 00000000
    add.s   $f4, $f16, $f18            
    mfc1    a1, $f4                    
    jal     func_80020F88              
    nop
    lhu     v0, 0x02C6(s0)             ## 000002C6
    beq     $zero, $zero, lbl_809C3E00 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_809C3DDC:
    lui     a1, %hi(func_809C352C)     ## a1 = 809C0000
    jal     func_809C3300              
    addiu   a1, a1, %lo(func_809C352C) ## a1 = 809C352C
    lui     a1, 0x3C23                 ## a1 = 3C230000
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lhu     v0, 0x02C6(s0)             ## 000002C6
    or      v1, v0, $zero              ## v1 = 00000000
lbl_809C3E00:
    blez    v1, lbl_809C3E10           
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t3, v0, 0xFFFF             ## t3 = FFFFFFFF
    sh      t3, 0x02C6(s0)             ## 000002C6
lbl_809C3E10:
    jal     func_8002313C              
    addiu   a1, $zero, 0x317B          ## a1 = 0000317B
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809C3E2C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              ## a3 = 00000000
    lbu     t6, 0x1D6C(a3)             ## 00001D6C
    beql    t6, $zero, lbl_809C3EDC    
    lw      $ra, 0x001C($sp)           
    lh      t7, 0x02C8(s0)             ## 000002C8
    sll     t8, t7,  2                 
    addu    t9, a3, t8                 
    lw      v0, 0x1D8C(t9)             ## 00001D8C
    beql    v0, $zero, lbl_809C3EDC    
    lw      $ra, 0x001C($sp)           
    lhu     v1, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v1, $at, lbl_809C3E84      
    addiu   a1, $zero, 0x390D          ## a1 = 0000390D
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v1, $at, lbl_809C3EDC      
    lw      $ra, 0x001C($sp)           
lbl_809C3E84:
    jal     func_80022FD0              
    sw      a3, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    addiu   t0, $zero, 0x0022          ## t0 = 00000022
    sh      t0, 0x02C6(s0)             ## 000002C6
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809C48A0              
    lh      a2, 0x02C8(s0)             ## 000002C8
    lui     a1, %hi(func_809C3C94)     ## a1 = 809C0000
    addiu   a1, a1, %lo(func_809C3C94) ## a1 = 809C3C94
    jal     func_809C3300              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x49C8             ## a1 = 060049C8
    jal     func_8008D2D4              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lui     a1, 0x3B44                 ## a1 = 3B440000
    sw      $zero, 0x02D4(s0)          ## 000002D4
    ori     a1, a1, 0x9BA6             ## a1 = 3B449BA6
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_809C3EDC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_809C3EEC:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     a0, %hi(var_809C4968)      ## a0 = 809C0000
    sll     t7, t6,  2                 
    addu    a0, a0, t7                 
    jal     func_8008A194              
    lw      a0, %lo(var_809C4968)(a0)  
    lw      v1, 0x0034($sp)            
    mtc1    v0, $f4                    ## $f4 = 0.00
    lbu     t8, 0x1D6C(v1)             ## 00001D6C
    cvt.s.w $f0, $f4                   
    beql    t8, $zero, lbl_809C3FA4    
    lw      $ra, 0x002C($sp)           
    lh      t9, 0x02C8(s0)             ## 000002C8
    sll     t0, t9,  2                 
    addu    t1, v1, t0                 
    lw      v0, 0x1D8C(t1)             ## 00001D8C
    beql    v0, $zero, lbl_809C3FA4    
    lw      $ra, 0x002C($sp)           
    lhu     t2, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    bne     t2, $at, lbl_809C3FA0      
    lui     a1, %hi(var_809C4968)      ## a1 = 809C0000
    lh      t3, 0x001C(s0)             ## 0000001C
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f6                   ## $f6 = -10.00
    sll     t4, t3,  2                 
    addu    a1, a1, t4                 
    lw      a1, %lo(var_809C4968)(a1)  
    sw      $zero, 0x0014($sp)         
    swc1    $f0, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    lui     a1, %hi(func_809C352C)     ## a1 = 809C0000
    sw      $zero, 0x02D4(s0)          ## 000002D4
    addiu   a1, a1, %lo(func_809C352C) ## a1 = 809C352C
    jal     func_809C3300              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_809C3FA0:
    lw      $ra, 0x002C($sp)           
lbl_809C3FA4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809C3FB4:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     a0, %hi(var_809C4958)      ## a0 = 809C0000
    sll     t7, t6,  2                 
    addu    a0, a0, t7                 
    jal     func_8008A194              
    lw      a0, %lo(var_809C4958)(a0)  
    lw      v1, 0x0034($sp)            
    mtc1    v0, $f4                    ## $f4 = 0.00
    lbu     t8, 0x1D6C(v1)             ## 00001D6C
    cvt.s.w $f0, $f4                   
    beql    t8, $zero, lbl_809C4084    
    lw      $ra, 0x002C($sp)           
    lh      t9, 0x02C8(s0)             ## 000002C8
    sll     t0, t9,  2                 
    addu    t1, v1, t0                 
    lw      v0, 0x1D8C(t1)             ## 00001D8C
    beql    v0, $zero, lbl_809C4084    
    lw      $ra, 0x002C($sp)           
    lhu     t2, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    bne     t2, $at, lbl_809C4080      
    lui     a1, %hi(var_809C4958)      ## a1 = 809C0000
    lh      t3, 0x001C(s0)             ## 0000001C
    lui     $at, 0xC080                ## $at = C0800000
    mtc1    $at, $f6                   ## $f6 = -4.00
    sll     t4, t3,  2                 
    addu    a1, a1, t4                 
    addiu   t5, $zero, 0x0002          ## t5 = 00000002
    sw      t5, 0x0014($sp)            
    lw      a1, %lo(var_809C4958)(a1)  
    swc1    $f0, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     t8, %hi(var_809C4960)      ## t8 = 809C0000
    lui     a1, %hi(func_809C3EEC)     ## a1 = 809C0000
    sll     t7, t6,  2                 
    addu    t8, t8, t7                 
    lw      t8, %lo(var_809C4960)(t8)  
    addiu   a1, a1, %lo(func_809C3EEC) ## a1 = 809C3EEC
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_809C3300              
    sw      t8, 0x02D4(s0)             ## 000002D4
lbl_809C4080:
    lw      $ra, 0x002C($sp)           
lbl_809C4084:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_809C4094:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    lui     a3, 0x0001                 ## a3 = 00010000
    addu    a3, a3, a1                 
    beq     t6, $zero, lbl_809C41B4    
    lw      a3, 0x1DE4(a3)             ## 00011DE4
    lh      a2, 0x02C8(s0)             ## 000002C8
    sll     t7, a2,  2                 
    addu    t8, a1, t7                 
    lw      v1, 0x1D8C(t8)             ## 00001D8C
    beql    v1, $zero, lbl_809C41B8    
    lw      $ra, 0x001C($sp)           
    lhu     v0, 0x0000(v1)             ## 00000000
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v0, $at, lbl_809C4104      
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     v0, $at, lbl_809C4124      
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    beq     v0, $at, lbl_809C4154      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    beq     v0, $at, lbl_809C4168      
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809C41B8 
    lw      $ra, 0x001C($sp)           
lbl_809C4104:
    jal     func_809C48A0              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_809C3FB4)     ## a1 = 809C0000
    addiu   a1, a1, %lo(func_809C3FB4) ## a1 = 809C3FB4
    jal     func_809C3300              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809C41B8 
    lw      $ra, 0x001C($sp)           
lbl_809C4124:
    jal     func_809C48A0              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_809C352C)     ## a1 = 809C0000
    addiu   a1, a1, %lo(func_809C352C) ## a1 = 809C352C
    jal     func_809C3300              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x49C8             ## a1 = 060049C8
    jal     func_8008D2D4              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    beq     $zero, $zero, lbl_809C41B4 
    sw      $zero, 0x02D4(s0)          ## 000002D4
lbl_809C4154:
    lui     a1, %hi(func_809C3E2C)     ## a1 = 809C0000
    jal     func_809C3300              
    addiu   a1, a1, %lo(func_809C3E2C) ## a1 = 809C3E2C
    beq     $zero, $zero, lbl_809C41B4 
    sw      $zero, 0x0134(s0)          ## 00000134
lbl_809C4168:
    lui     a1, %hi(func_809C36DC)     ## a1 = 809C0000
    addiu   a1, a1, %lo(func_809C36DC) ## a1 = 809C36DC
    jal     func_809C3300              
    sw      a3, 0x0024($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x49C8             ## a1 = 060049C8
    jal     func_8008D2D4              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lh      t9, 0x001C(s0)             ## 0000001C
    lw      a3, 0x0024($sp)            
    sw      $zero, 0x02D4(s0)          ## 000002D4
    beq     t9, $zero, lbl_809C41B0    
    sll     t4, a3, 10                 
    sll     t1, a3, 10                 
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addu    t2, t1, $at                
    beq     $zero, $zero, lbl_809C41B4 
    sh      t2, 0x02C6(s0)             ## 000002C6
lbl_809C41B0:
    sh      t4, 0x02C6(s0)             ## 000002C6
lbl_809C41B4:
    lw      $ra, 0x001C($sp)           
lbl_809C41B8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_809C41C8:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x004C($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    sw      t6, 0x0014($sp)            
    lw      a0, 0x004C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      t9, 0x02CC(s0)             ## 000002CC
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x004C($sp)            
    jalr    $ra, t9                    
    nop
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0034($sp)            
    beql    v0, $zero, lbl_809C4310    
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x02D4(s0)             ## 000002D4
    lui     t7, 0x0600                 ## t7 = 06000000
    addiu   t7, t7, 0x35CC             ## t7 = 060035CC
    beql    a1, $zero, lbl_809C4304    
    mtc1    $zero, $f10                ## $f10 = 0.00
    beq     t7, a1, lbl_809C4250       
    lui     t8, 0x0600                 ## t8 = 06000000
    addiu   t8, t8, 0x13CC             ## t8 = 060013CC
    bne     t8, a1, lbl_809C4290       
    lui     t1, 0x0600                 ## t1 = 06000000
lbl_809C4250:
    lh      t0, 0x001C(s0)             ## 0000001C
    addiu   a1, $zero, 0x39B1          ## a1 = 000039B1
    or      a0, s0, $zero              ## a0 = 00000000
    beq     t0, $zero, lbl_809C4274    
    nop
    jal     func_80022FD0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_809C4280 
    lw      a0, 0x0034($sp)            
lbl_809C4274:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39B0          ## a1 = 000039B0
    lw      a0, 0x0034($sp)            
lbl_809C4280:
    jal     func_8008D2D4              
    lw      a1, 0x02D4(s0)             ## 000002D4
    beq     $zero, $zero, lbl_809C42F8 
    nop
lbl_809C4290:
    addiu   t1, t1, 0x49C8             ## t1 = 000049C8
    bne     t1, a1, lbl_809C42F0       
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_809C352C)     ## a1 = 809C0000
    jal     func_809C3300              
    addiu   a1, a1, %lo(func_809C352C) ## a1 = 809C352C
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x49C8             ## a0 = 060049C8
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC0A0                ## $at = C0A00000
    mtc1    $at, $f8                   ## $f8 = -5.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x49C8             ## a1 = 060049C8
    lw      a0, 0x0034($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    beq     $zero, $zero, lbl_809C42F8 
    nop
lbl_809C42F0:
    jal     func_8008D2D4              
    lw      a0, 0x0034($sp)            
lbl_809C42F8:
    beq     $zero, $zero, lbl_809C430C 
    sw      $zero, 0x02D4(s0)          ## 000002D4
    mtc1    $zero, $f10                ## $f10 = 0.00
lbl_809C4304:
    nop
    swc1    $f10, 0x0154(s0)           ## 00000154
lbl_809C430C:
    or      a0, s0, $zero              ## a0 = 00000000
lbl_809C4310:
    jal     func_80020F04              
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    lh      v1, 0x02D2(s0)             ## 000002D2
    addiu   a0, $zero, 0x003C          ## a0 = 0000003C
    bne     v1, $zero, lbl_809C4330    
    addiu   t2, v1, 0xFFFF             ## t2 = FFFFFFFF
    beq     $zero, $zero, lbl_809C433C 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809C4330:
    sh      t2, 0x02D2(s0)             ## 000002D2
    lh      v1, 0x02D2(s0)             ## 000002D2
    or      v0, v1, $zero              ## v0 = 00000000
lbl_809C433C:
    bnel    v0, $zero, lbl_809C4358    
    sh      v1, 0x02D0(s0)             ## 000002D0
    jal     func_80063BF0              
    addiu   a1, $zero, 0x003C          ## a1 = 0000003C
    sh      v0, 0x02D2(s0)             ## 000002D2
    lh      v1, 0x02D2(s0)             ## 000002D2
    sh      v1, 0x02D0(s0)             ## 000002D0
lbl_809C4358:
    lh      t3, 0x02D0(s0)             ## 000002D0
    slti    $at, t3, 0x0003            
    bnel    $at, $zero, lbl_809C4370   
    lw      $ra, 0x002C($sp)           
    sh      $zero, 0x02D0(s0)          ## 000002D0
    lw      $ra, 0x002C($sp)           
lbl_809C4370:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_809C4380:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      a2, 0x0048($sp)            
    sw      a3, 0x004C($sp)            
    addiu   a3, $sp, 0x0028            ## a3 = FFFFFFE8
    addiu   a2, $sp, 0x0034            ## a2 = FFFFFFF4
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0040($sp)            
    lui     t6, %hi(var_809C49CC)      ## t6 = 809C0000
    addiu   t6, t6, %lo(var_809C49CC)  ## t6 = 809C49CC
    lw      t8, 0x0000(t6)             ## 809C49CC
    lui     t9, %hi(var_809C49D8)      ## t9 = 809C0000
    addiu   t9, t9, %lo(var_809C49D8)  ## t9 = 809C49D8
    sw      t8, 0x0000(a2)             ## FFFFFFF4
    lw      t7, 0x0004(t6)             ## 809C49D0
    addiu   $at, $zero, 0x0013         ## $at = 00000013
    sw      t7, 0x0004(a2)             ## FFFFFFF8
    lw      t8, 0x0008(t6)             ## 809C49D4
    sw      t8, 0x0008(a2)             ## FFFFFFFC
    lw      t1, 0x0000(t9)             ## 809C49D8
    sw      t1, 0x0000(a3)             ## FFFFFFE8
    lw      t0, 0x0004(t9)             ## 809C49DC
    sw      t0, 0x0004(a3)             ## FFFFFFEC
    lw      t1, 0x0008(t9)             ## 809C49E0
    sw      t1, 0x0008(a3)             ## FFFFFFF0
    lw      t2, 0x0054($sp)            
    lw      v0, 0x011C(t2)             ## 0000011C
    beql    v0, $zero, lbl_809C44A0    
    or      v0, $zero, $zero           ## v0 = 00000000
    bne     a1, $at, lbl_809C449C      
    or      a0, a2, $zero              ## a0 = FFFFFFF4
    or      a1, a3, $zero              ## a1 = FFFFFFE8
    jal     func_800AB958              
    sw      v0, 0x0020($sp)            
    lw      v0, 0x0040($sp)            
    lh      t3, 0x07A0(v0)             ## 000007A0
    sll     t4, t3,  2                 
    addu    t5, v0, t4                 
    jal     func_8004977C              
    lw      a0, 0x0790(t5)             ## 00000790
    sll     a0, v0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f6                   ## $f6 = 10.00
    lwc1    $f4, 0x0028($sp)           
    lw      v0, 0x0040($sp)            
    mul.s   $f8, $f6, $f0              
    sub.s   $f10, $f4, $f8             
    swc1    $f10, 0x0028($sp)          
    lh      t6, 0x07A0(v0)             ## 000007A0
    sll     t7, t6,  2                 
    addu    t8, v0, t7                 
    jal     func_8004977C              
    lw      a0, 0x0790(t8)             ## 00000790
    sll     a0, v0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f18                  ## $f18 = 10.00
    lwc1    $f16, 0x0030($sp)          
    addiu   t0, $sp, 0x0028            ## t0 = FFFFFFE8
    mul.s   $f6, $f18, $f0             
    lw      t9, 0x0020($sp)            
    sub.s   $f4, $f16, $f6             
    swc1    $f4, 0x0030($sp)           
    lw      t2, 0x0000(t0)             ## FFFFFFE8
    sw      t2, 0x0024(t9)             ## 00000024
    lw      t1, 0x0004(t0)             ## FFFFFFEC
    sw      t1, 0x0028(t9)             ## 00000028
    lw      t2, 0x0008(t0)             ## FFFFFFF0
    sw      t2, 0x002C(t9)             ## 0000002C
lbl_809C449C:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_809C44A0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_809C44B0:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lbu     t6, 0x1D6C(s1)             ## 00001D6C
    beq     t6, $zero, lbl_809C44F4    
    nop
    lh      t7, 0x02C8(s0)             ## 000002C8
    lui     t2, 0x8002                 ## t2 = 80020000
    addiu   t2, t2, 0xEFF4             ## t2 = 8001EFF4
    sll     t8, t7,  2                 
    addu    t9, s1, t8                 
    lw      t1, 0x1D8C(t9)             ## 00001D8C
    bnel    t1, $zero, lbl_809C4500    
    sw      t2, 0x00C0(s0)             ## 000000C0
lbl_809C44F4:
    beq     $zero, $zero, lbl_809C45A8 
    sw      $zero, 0x00C0(s0)          ## 000000C0
    sw      t2, 0x00C0(s0)             ## 000000C0
lbl_809C4500:
    lw      a0, 0x0000(s1)             ## 00000000
    jal     func_8007E56C              
    sw      a0, 0x0034($sp)            
    lw      t0, 0x0034($sp)            
    lw      v1, 0x02C0(t0)             ## 000002C0
    lui     t4, 0xDB06                 ## t4 = DB060000
    ori     t4, t4, 0x0020             ## t4 = DB060020
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(t0)             ## 000002C0
    sw      t4, 0x0000(v1)             ## 00000000
    lh      t5, 0x02D0(s0)             ## 000002D0
    lui     a3, %hi(var_809C49C0)      ## a3 = 809C0000
    lui     t2, 0x8012                 ## t2 = 80120000
    sll     t6, t5,  2                 
    addu    a3, a3, t6                 
    lw      a3, %lo(var_809C49C0)(a3)  
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t8, a3,  4                 
    srl     t9, t8, 28                 
    sll     t1, t9,  2                 
    addu    t2, t2, t1                 
    lw      t2, 0x0C38(t2)             ## 80120C38
    and     t7, a3, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t3, t7, t2                 
    addu    t4, t3, $at                
    sw      t4, 0x0004(v1)             ## 00000004
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_80022438              
    or      a2, $zero, $zero           ## a2 = 00000000
    lw      a1, 0x0140(s0)             ## 00000140
    lw      a2, 0x015C(s0)             ## 0000015C
    lbu     a3, 0x013E(s0)             ## 0000013E
    lui     t5, %hi(func_809C4380)     ## t5 = 809C0000
    addiu   t5, t5, %lo(func_809C4380) ## t5 = 809C4380
    sw      t5, 0x0010($sp)            
    sw      s0, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    jal     func_80089D8C              
    or      a0, s1, $zero              ## a0 = 00000000
lbl_809C45A8:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_809C45BC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      t6, 0x001C($sp)            
    lhu     a2, 0x1D74(a3)             ## 00001D74
    sll     t7, t6,  2                 
    addu    t8, a3, t7                 
    lw      v0, 0x1D8C(t8)             ## 00001D8C
    lhu     a0, 0x0004(v0)             ## 00000004
    jal     func_8005C690              
    lhu     a1, 0x0002(v0)             ## 00000002
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f12                  ## $f12 = 1.00
    mov.s   $f2, $f0                   
    lw      $ra, 0x0014($sp)           
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_809C4614               
    mov.s   $f0, $f2                   
    mov.s   $f2, $f12                  
    mov.s   $f0, $f2                   
lbl_809C4614:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_809C461C:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sdc1    $f20, 0x0018($sp)          
    or      a3, a1, $zero              ## a3 = 00000000
    sll     t6, a2,  2                 
    addu    t7, a3, t6                 
    lw      v0, 0x1D8C(t7)             ## 00001D8C
    or      a0, a3, $zero              ## a0 = 00000000
    or      a1, a2, $zero              ## a1 = 00000000
    lw      t8, 0x000C(v0)             ## 0000000C
    lw      t9, 0x0010(v0)             ## 00000010
    lw      t0, 0x0014(v0)             ## 00000014
    mtc1    t8, $f4                    ## $f4 = 0.00
    lw      t1, 0x0018(v0)             ## 00000018
    lw      t2, 0x001C(v0)             ## 0000001C
    cvt.s.w $f2, $f4                   
    mtc1    t9, $f6                    ## $f6 = 0.00
    mtc1    t0, $f8                    ## $f8 = 0.00
    mtc1    t1, $f10                   ## $f10 = 0.00
    mtc1    t2, $f4                    ## $f4 = 0.00
    cvt.s.w $f12, $f6                  
    lw      t3, 0x0020(v0)             ## 00000020
    swc1    $f2, 0x0034($sp)           
    mtc1    t3, $f6                    ## $f6 = 0.00
    cvt.s.w $f14, $f8                  
    swc1    $f12, 0x0038($sp)          
    cvt.s.w $f16, $f10                 
    swc1    $f14, 0x003C($sp)          
    cvt.s.w $f18, $f4                  
    swc1    $f16, 0x0028($sp)          
    cvt.s.w $f20, $f6                  
    jal     func_809C45BC              
    swc1    $f18, 0x002C($sp)          
    lwc1    $f2, 0x0034($sp)           
    lwc1    $f16, 0x0028($sp)          
    lwc1    $f12, 0x0038($sp)          
    lwc1    $f18, 0x002C($sp)          
    sub.s   $f8, $f16, $f2             
    lwc1    $f14, 0x003C($sp)          
    lui     $at, %hi(var_809C4A08)     ## $at = 809C0000
    sub.s   $f4, $f18, $f12            
    mul.s   $f10, $f8, $f0             
    addiu   a0, s0, 0x005C             ## a0 = 0000005C
    sub.s   $f8, $f20, $f14            
    mul.s   $f6, $f4, $f0              
    lwc1    $f4, 0x0024(s0)            ## 00000024
    lui     a2, 0x3F80                 ## a2 = 3F800000
    add.s   $f2, $f10, $f2             
    mul.s   $f10, $f8, $f0             
    lwc1    $f8, %lo(var_809C4A08)($at) 
    add.s   $f12, $f6, $f12            
    lui     $at, %hi(var_809C4A0C)     ## $at = 809C0000
    sub.s   $f6, $f2, $f4              
    add.s   $f14, $f10, $f14           
    lwc1    $f10, 0x0028(s0)           ## 00000028
    mul.s   $f16, $f6, $f8             
    lwc1    $f6, %lo(var_809C4A0C)($at) 
    sub.s   $f4, $f12, $f10            
    lwc1    $f8, 0x002C(s0)            ## 0000002C
    lui     $at, %hi(var_809C4A10)     ## $at = 809C0000
    mul.s   $f18, $f4, $f6             
    sub.s   $f10, $f14, $f8            
    lwc1    $f4, %lo(var_809C4A10)($at) 
    mtc1    $zero, $f14                ## $f14 = 0.00
    lui     $at, 0x41A0                ## $at = 41A00000
    mul.s   $f20, $f10, $f4            
    nop
    mul.s   $f6, $f16, $f16            
    nop
    mul.s   $f8, $f18, $f18            
    add.s   $f10, $f6, $f8             
    mul.s   $f4, $f20, $f20            
    add.s   $f0, $f10, $f4             
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f14                  
    nop
    bc1f    lbl_809C4764               
    nop
    beq     $zero, $zero, lbl_809C478C 
    mov.s   $f12, $f14                 
lbl_809C4764:
    mtc1    $at, $f12                  ## $f12 = 20.00
    nop
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_809C4788               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_809C4788 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_809C4788:
    mov.s   $f12, $f2                  
lbl_809C478C:
    c.eq.s  $f0, $f12                  
    nop
    bc1tl   lbl_809C47CC               
    mfc1    a1, $f16                   
    c.eq.s  $f0, $f14                  
    nop
    bc1tl   lbl_809C47CC               
    mfc1    a1, $f16                   
    div.s   $f2, $f12, $f0             
    mul.s   $f16, $f16, $f2            
    nop
    mul.s   $f18, $f18, $f2            
    nop
    mul.s   $f20, $f20, $f2            
    nop
    mfc1    a1, $f16                   
lbl_809C47CC:
    jal     func_8006385C              
    swc1    $f18, 0x002C($sp)          
    lwc1    $f18, 0x002C($sp)          
    addiu   a0, s0, 0x0060             ## a0 = 00000060
    lui     a2, 0x3F80                 ## a2 = 3F800000
    mfc1    a1, $f18                   
    jal     func_8006385C              
    nop
    mfc1    a1, $f20                   
    addiu   a0, s0, 0x0064             ## a0 = 00000064
    jal     func_8006385C              
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_80021124              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_809C4818:
    sll     t6, a2,  2                 
    addu    t7, a1, t6                 
    lw      t8, 0x1D8C(t7)             ## 00001D8C
    lh      a3, 0x0032(a0)             ## 00000032
    ori     $at, $zero, 0x8000         ## $at = 00008000
    lh      v0, 0x0008(t8)             ## 00000008
    lui     t9, 0x0001                 ## t9 = 00010000
    subu    v1, a3, v0                 
    bgez    v1, lbl_809C484C           
    addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
    subu    v1, $zero, v1              
    beq     $zero, $zero, lbl_809C484C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809C484C:
    slt     $at, v1, $at               
    bnel    $at, $zero, lbl_809C4864   
    mtc1    v1, $f4                    ## $f4 = 0.00
    subu    v0, $zero, v0              
    subu    v1, t9, v1                 
    mtc1    v1, $f4                    ## $f4 = 0.00
lbl_809C4864:
    lui     $at, %hi(var_809C4A14)     ## $at = 809C0000
    lwc1    $f8, %lo(var_809C4A14)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    v1, $f16                   
    nop
    multu   v1, v0                     
    mflo    t1                         
    addu    t2, a3, t1                 
    sh      t2, 0x0032(a0)             ## 00000032
    lh      t3, 0x0032(a0)             ## 00000032
    sh      t3, 0x00B6(a0)             ## 000000B6
    jr      $ra                        
    nop


func_809C48A0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sll     t6, a2,  2                 
    addu    v0, a1, t6                 
    lw      t7, 0x1D8C(v0)             ## 00001D8C
    addiu   t3, $sp, 0x000C            ## t3 = FFFFFFF4
    lw      t8, 0x000C(t7)             ## 0000000C
    mtc1    t8, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x000C($sp)           
    lw      t9, 0x1D8C(v0)             ## 00001D8C
    lw      t0, 0x0010(t9)             ## 00000010
    mtc1    t0, $f8                    ## $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0010($sp)          
    lw      t1, 0x1D8C(v0)             ## 00001D8C
    lw      t2, 0x0014(t1)             ## 00000014
    mtc1    t2, $f16                   ## $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0014($sp)          
    lw      t5, 0x0000(t3)             ## FFFFFFF4
    sw      t5, 0x0024(a0)             ## 00000024
    lw      t4, 0x0004(t3)             ## FFFFFFF8
    sw      t4, 0x0028(a0)             ## 00000028
    lw      t5, 0x0008(t3)             ## FFFFFFFC
    sw      t5, 0x002C(a0)             ## 0000002C
    lw      t6, 0x1D8C(v0)             ## 00001D8C
    lh      v1, 0x0008(t6)             ## 00000008
    sh      v1, 0x00B6(a0)             ## 000000B6
    sh      v1, 0x0032(a0)             ## 00000032
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    nop
    nop

.section .data

var_809C4930: .word 0x00CC0400, 0x00000010, 0x00C10000, 0x000002D8
.word func_809C330C
.word func_809C345C
.word func_809C41C8
.word func_809C44B0
.word 0x06003FC8, 0x06001CDC
var_809C4958: .word 0x06002BC4, 0x06000BFC
var_809C4960: .word 0x060035CC, 0x060013CC
var_809C4968: .word 0x060049C8, 0x060049C8
var_809C4970: .word 0x06012E1C, 0x06012E1C
var_809C4978: .word \
0x00000000, 0x41A00000, 0xC1F00000, 0x41A00000, \
0xC1A00000, 0xC1A00000, 0x41F00000
var_809C4994: .word \
0x00000000, 0x41F00000, 0x00000000, 0xC1F00000, \
0x41F00000, 0xC1F00000, 0x00000000
var_809C49B0: .word 0xFFC800FF, 0xFF0000FF, 0xFFFFFFFF, 0x0000FFFF
var_809C49C0: .word 0x060086D8, 0x060094D8, 0x060098D8
var_809C49CC: .word 0x450FC000, 0x00000000, 0xC4160000
var_809C49D8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_809C49F0: .word 0x3F666666
var_809C49F4: .word 0x3E4CCCCD
var_809C49F8: .word 0x3E4CCCCD
var_809C49FC: .word 0x3F666666
var_809C4A00: .word 0x3F4CCCCD
var_809C4A04: .word 0x3B03126F
var_809C4A08: .word 0x3DCCCCCD
var_809C4A0C: .word 0x3DCCCCCD
var_809C4A10: .word 0x3DCCCCCD
var_809C4A14: .word 0x3DCCCCCD, 0x00000000, 0x00000000

