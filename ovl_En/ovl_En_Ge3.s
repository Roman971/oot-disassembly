#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B7ED10:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      v0, 0x0034($sp)            
    lui     t6, %hi(var_80B7F76C)      ## t6 = 80B80000
    lw      t7, 0x0030($sp)            
    sll     v0, v0,  2                 
    addu    t6, t6, v0                 
    lw      t6, %lo(var_80B7F76C)(t6)  
    lui     t8, %hi(var_80B7F770)      ## t8 = 80B80000
    addiu   t8, t8, %lo(var_80B7F770)  ## t8 = 80B7F770
    addu    v1, v0, t8                 
    sw      t6, 0x0300(t7)             ## 00000300
    sw      v1, 0x0028($sp)            
    jal     func_8008A194              
    lw      a0, 0x0000(v1)             ## 00000000
    mtc1    v0, $f4                    ## $f4 = 0.00
    lw      t9, 0x0034($sp)            
    lui     t0, %hi(var_80B7F774)      ## t0 = 80B80000
    cvt.s.w $f6, $f4                   
    lui     $at, 0xC100                ## $at = C1000000
    addu    t0, t0, t9                 
    lbu     t0, %lo(var_80B7F774)(t0)  
    mtc1    $at, $f8                   ## $f8 = -8.00
    lw      v1, 0x0028($sp)            
    lw      a0, 0x0030($sp)            
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    sw      t0, 0x0014($sp)            
    lw      a1, 0x0000(v1)             ## 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x0188             ## a0 = 00000188
    lw      v0, 0x0030($sp)            
    lhu     t1, 0x02FC(v0)             ## 000002FC
    andi    t2, t1, 0xFFFD             ## t2 = 00000000
    sh      t2, 0x02FC(v0)             ## 000002FC
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_80B7EDB8:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x4210                 ## a3 = 42100000
    addiu   a1, s0, 0x0188             ## a1 = 00000188
    lui     a2, 0x0601                 ## a2 = 06010000
    addiu   t6, s0, 0x01CC             ## t6 = 000001CC
    addiu   t7, s0, 0x025C             ## t7 = 0000025C
    addiu   t8, $zero, 0x0018          ## t8 = 00000018
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a2, a2, 0xA458             ## a2 = 0600A458
    sw      a1, 0x0034($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_8008C788              
    or      a3, $zero, $zero           ## a3 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xB07C             ## a1 = 0600B07C
    jal     func_8008D2D4              
    lw      a0, 0x0034($sp)            
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    sw      a1, 0x0034($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_80B7F740)      ## a3 = 80B80000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_80B7F740)  ## a3 = 80B7F740
    lw      a0, 0x0044($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    lui     a1, 0x3C23                 ## a1 = 3C230000
    sb      t9, 0x00AE(s0)             ## 000000AE
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    sh      $zero, 0x0034(s0)          ## 00000034
    sh      $zero, 0x00B8(s0)          ## 000000B8
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B7ED10              
    or      a1, $zero, $zero           ## a1 = 00000000
    lui     $at, 0xC080                ## $at = C0800000
    mtc1    $at, $f4                   ## $f4 = -4.00
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f6                   ## $f6 = -1.00
    lui     t0, %hi(func_80B7F294)     ## t0 = 80B80000
    addiu   t0, t0, %lo(func_80B7F294) ## t0 = 80B7F294
    addiu   t1, $zero, 0x0006          ## t1 = 00000006
    sw      t0, 0x0300(s0)             ## 00000300
    sh      $zero, 0x02FC(s0)          ## 000002FC
    sb      t1, 0x001F(s0)             ## 0000001F
    swc1    $f4, 0x0070(s0)            ## 00000070
    swc1    $f6, 0x006C(s0)            ## 0000006C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7EEC0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x013C             ## a1 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7EEEC:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lh      t6, 0x008A(s0)             ## 0000008A
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    sw      t6, 0x0030($sp)            
    lh      t8, 0x00B6(s0)             ## 000000B6
    lh      a1, 0x0032($sp)            
    addiu   a3, $zero, 0x0FA0          ## a3 = 00000FA0
    subu    v0, t6, t8                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80B7EF38           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80B7EF38 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_80B7EF38:
    slti    $at, v1, 0x4001            
    beq     $at, $zero, lbl_80B7EF88   
    addiu   t9, $zero, 0x0064          ## t9 = 00000064
    jal     func_80064508              
    sw      t9, 0x0010($sp)            
    lh      t0, 0x00B6(s0)             ## 000000B6
    lw      t2, 0x0038(s0)             ## 00000038
    or      a1, s0, $zero              ## a1 = 00000000
    sh      t0, 0x0032(s0)             ## 00000032
    sw      t2, 0x0010($sp)            
    lw      t1, 0x003C(s0)             ## 0000003C
    lw      a0, 0x0044($sp)            
    addiu   a2, s0, 0x02F0             ## a2 = 000002F0
    sw      t1, 0x0014($sp)            
    lw      t2, 0x0040(s0)             ## 00000040
    addiu   a3, s0, 0x02F6             ## a3 = 000002F6
    jal     func_8002B024              
    sw      t2, 0x0018($sp)            
    beq     $zero, $zero, lbl_80B7EFF4 
    lw      $ra, 0x002C($sp)           
lbl_80B7EF88:
    bgez    v0, lbl_80B7EFB4           
    addiu   a0, s0, 0x02F2             ## a0 = 000002F2
    addiu   t3, $zero, 0x0100          ## t3 = 00000100
    sw      t3, 0x0010($sp)            
    addiu   a0, s0, 0x02F2             ## a0 = 000002F2
    addiu   a1, $zero, 0xE000          ## a1 = FFFFE000
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    beq     $zero, $zero, lbl_80B7EFD0 
    lh      a1, 0x008A(s0)             ## 0000008A
lbl_80B7EFB4:
    addiu   t4, $zero, 0x0100          ## t4 = 00000100
    sw      t4, 0x0010($sp)            
    addiu   a1, $zero, 0x2000          ## a1 = 00002000
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    lh      a1, 0x008A(s0)             ## 0000008A
lbl_80B7EFD0:
    addiu   t5, $zero, 0x0064          ## t5 = 00000064
    sw      t5, 0x0010($sp)            
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x000C          ## a2 = 0000000C
    jal     func_80064508              
    addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
    lh      t6, 0x00B6(s0)             ## 000000B6
    sh      t6, 0x0032(s0)             ## 00000032
    lw      $ra, 0x002C($sp)           
lbl_80B7EFF4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7F004:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lh      t6, 0x008A(s0)             ## 0000008A
    lh      t7, 0x00B6(s0)             ## 000000B6
    addiu   a0, s0, 0x02F0             ## a0 = 000002F0
    or      a1, $zero, $zero           ## a1 = 00000000
    subu    v0, t6, t7                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80B7F044           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80B7F044 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_80B7F044:
    slti    $at, v1, 0x2301            
    beq     $at, $zero, lbl_80B7F0A0   
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f6                   ## $f6 = 100.00
    lwc1    $f4, 0x0090(s0)            ## 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80B7F0A4               
    addiu   t0, $zero, 0x0064          ## t0 = 00000064
    lw      t9, 0x0038(s0)             ## 00000038
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    sw      t9, 0x0010($sp)            
    lw      t8, 0x003C(s0)             ## 0000003C
    addiu   a2, s0, 0x02F0             ## a2 = 000002F0
    addiu   a3, s0, 0x02F6             ## a3 = 000002F6
    sw      t8, 0x0014($sp)            
    lw      t9, 0x0040(s0)             ## 00000040
    jal     func_8002B024              
    sw      t9, 0x0018($sp)            
    beq     $zero, $zero, lbl_80B7F108 
    lw      $ra, 0x002C($sp)           
lbl_80B7F0A0:
    addiu   t0, $zero, 0x0064          ## t0 = 00000064
lbl_80B7F0A4:
    sw      t0, 0x0010($sp)            
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    addiu   t1, $zero, 0x0064          ## t1 = 00000064
    sw      t1, 0x0010($sp)            
    addiu   a0, s0, 0x02F2             ## a0 = 000002F2
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    addiu   t2, $zero, 0x0064          ## t2 = 00000064
    sw      t2, 0x0010($sp)            
    addiu   a0, s0, 0x02F6             ## a0 = 000002F6
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    addiu   t3, $zero, 0x0064          ## t3 = 00000064
    sw      t3, 0x0010($sp)            
    addiu   a0, s0, 0x02F8             ## a0 = 000002F8
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    lw      $ra, 0x002C($sp)           
lbl_80B7F108:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7F118:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022AD0              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80B7F164    
    lw      a0, 0x0018($sp)            
    lw      t8, 0x0004(a0)             ## 00000004
    lui     $at, 0xFFFE                ## $at = FFFE0000
    lui     t6, %hi(func_80B7F17C)     ## t6 = 80B80000
    lui     t7, %hi(func_80B7F480)     ## t7 = 80B80000
    ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
    addiu   t6, t6, %lo(func_80B7F17C) ## t6 = 80B7F17C
    addiu   t7, t7, %lo(func_80B7F480) ## t7 = 80B7F480
    and     t9, t8, $at                
    sw      t6, 0x0300(a0)             ## 00000300
    sw      t7, 0x0130(a0)             ## 00000130
    sw      t9, 0x0004(a0)             ## 00000004
lbl_80B7F164:
    jal     func_80B7EEEC              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7F17C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80B7F004              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7F19C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80022BB0              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80B7F1D0    
    lw      a0, 0x0020($sp)            
    lui     t6, %hi(func_80B7F118)     ## t6 = 80B80000
    addiu   t6, t6, %lo(func_80B7F118) ## t6 = 80B7F118
    sw      $zero, 0x0118(a0)          ## 00000118
    beq     $zero, $zero, lbl_80B7F1F0 
    sw      t6, 0x0300(a0)             ## 00000300
lbl_80B7F1D0:
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f4                   ## $f4 = 50.00
    lui     a3, 0x461C                 ## a3 = 461C0000
    ori     a3, a3, 0x4000             ## a3 = 461C4000
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x003A          ## a2 = 0000003A
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_80B7F1F0:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7F200:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_800DD464              
    addiu   a0, a0, 0x20D8             ## a0 = 000020D8
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v0, $at, lbl_80B7F288      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    lw      a0, 0x0024($sp)            
    beql    v0, $zero, lbl_80B7F288    
    lw      $ra, 0x001C($sp)           
    jal     func_800D6218              
    lw      a0, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    lui     $at, 0xFFFE                ## $at = FFFE0000
    ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
    lw      t6, 0x0004(a0)             ## 00000004
    lui     t8, %hi(func_80B7F19C)     ## t8 = 80B80000
    addiu   t8, t8, %lo(func_80B7F19C) ## t8 = 80B7F19C
    and     t7, t6, $at                
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f4                   ## $f4 = 50.00
    lui     a3, 0x461C                 ## a3 = 461C0000
    sw      t7, 0x0004(a0)             ## 00000004
    sw      t8, 0x0300(a0)             ## 00000300
    lw      a1, 0x0024($sp)            
    ori     a3, a3, 0x4000             ## a3 = 461C4000
    addiu   a2, $zero, 0x003A          ## a2 = 0000003A
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
lbl_80B7F288:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7F294:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022930              
    lw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80B7F2C8    
    lui     t6, %hi(func_80B7F200)     ## t6 = 80B80000
    addiu   t6, t6, %lo(func_80B7F200) ## t6 = 80B7F200
    beq     $zero, $zero, lbl_80B7F32C 
    sw      t6, 0x0300(s0)             ## 00000300
lbl_80B7F2C8:
    lhu     t7, 0x02FC(s0)             ## 000002FC
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    andi    t8, t7, 0x0004             ## t8 = 00000000
    bnel    t8, $zero, lbl_80B7F2F8    
    lui     $at, 0x4396                ## $at = 43960000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          ## a2 = 00000007
    lhu     t9, 0x02FC(s0)             ## 000002FC
    ori     t0, t9, 0x0004             ## t0 = 00000004
    sh      t0, 0x02FC(s0)             ## 000002FC
    lui     $at, 0x4396                ## $at = 43960000
lbl_80B7F2F8:
    mtc1    $at, $f0                   ## $f0 = 300.00
    lw      t2, 0x0004(s0)             ## 00000004
    lui     $at, 0x0001                ## $at = 00010000
    addiu   t1, $zero, 0x6004          ## t1 = 00006004
    or      t3, t2, $at                ## t3 = 00010000
    sh      t1, 0x010E(s0)             ## 0000010E
    sw      t3, 0x0004(s0)             ## 00000004
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      $zero, 0x0010($sp)         
    lw      a1, 0x002C($sp)            
    jal     func_80022960              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B7F32C:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B7F004              
    lw      a1, 0x002C($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7F34C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a2, s0, 0x013C             ## a2 = 0000013C
    or      a1, a2, $zero              ## a1 = 0000013C
    sw      a2, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x002C($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    addu    a1, a0, $at                
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f0                   ## $f0 = 40.00
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    sw      t6, 0x0014($sp)            
    mfc1    a2, $f0                    
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a3, 0x41C8                 ## a3 = 41C80000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lhu     t7, 0x02FC(s0)             ## 000002FC
    andi    t8, t7, 0x0002             ## t8 = 00000000
    bnel    t8, $zero, lbl_80B7F3E4    
    lw      $ra, 0x0024($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0188             ## a0 = 00000188
    beql    v0, $zero, lbl_80B7F3E4    
    lw      $ra, 0x0024($sp)           
    lhu     t9, 0x02FC(s0)             ## 000002FC
    ori     t0, t9, 0x0002             ## t0 = 00000002
    sh      t0, 0x02FC(s0)             ## 000002FC
    lw      $ra, 0x0024($sp)           
lbl_80B7F3E4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7F3F4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_8002121C              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    addiu   a0, $zero, 0x003C          ## a0 = 0000003C
    addiu   a1, $zero, 0x003C          ## a1 = 0000003C
    lh      v1, 0x02EE(a2)             ## 000002EE
    bne     v1, $zero, lbl_80B7F430    
    addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B7F43C 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B7F430:
    sh      t6, 0x02EE(a2)             ## 000002EE
    lh      v1, 0x02EE(a2)             ## 000002EE
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80B7F43C:
    bnel    v0, $zero, lbl_80B7F45C    
    sh      v1, 0x02EC(a2)             ## 000002EC
    jal     func_80063BF0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    sh      v0, 0x02EE(a2)             ## 000002EE
    lh      v1, 0x02EE(a2)             ## 000002EE
    sh      v1, 0x02EC(a2)             ## 000002EC
lbl_80B7F45C:
    lh      t7, 0x02EC(a2)             ## 000002EC
    slti    $at, t7, 0x0003            
    bnel    $at, $zero, lbl_80B7F474   
    lw      $ra, 0x0014($sp)           
    sh      $zero, 0x02EC(a2)          ## 000002EC
    lw      $ra, 0x0014($sp)           
lbl_80B7F474:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7F480:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B7F34C              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      t9, 0x0300(s0)             ## 00000300
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022930              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_80B7F4E8    
    lui     $at, 0x42C8                ## $at = 42C80000
    lui     t6, %hi(func_80B7F118)     ## t6 = 80B80000
    lui     t7, %hi(func_80B7F534)     ## t7 = 80B80000
    addiu   t6, t6, %lo(func_80B7F118) ## t6 = 80B7F118
    addiu   t7, t7, %lo(func_80B7F534) ## t7 = 80B7F534
    sw      t6, 0x0300(s0)             ## 00000300
    beq     $zero, $zero, lbl_80B7F514 
    sw      t7, 0x0130(s0)             ## 00000130
lbl_80B7F4E8:
    mtc1    $at, $f0                   ## $f0 = 100.00
    lwc1    $f4, 0x0090(s0)            ## 00000090
    addiu   t8, $zero, 0x6005          ## t8 = 00006005
    sh      t8, 0x010E(s0)             ## 0000010E
    c.lt.s  $f4, $f0                   
    or      a0, s0, $zero              ## a0 = 00000000
    bc1fl   lbl_80B7F518               
    or      a0, s0, $zero              ## a0 = 00000000
    mfc1    a2, $f0                    
    jal     func_80022A68              
    or      a1, s1, $zero              ## a1 = 00000000
lbl_80B7F514:
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B7F518:
    jal     func_80B7F3F4              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80B7F534:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80B7F34C              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    lw      t9, 0x0300(a0)             ## 00000300
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    jal     func_80B7F3F4              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7F580:
    sw      a0, 0x0000($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    beq     a1, $at, lbl_80B7F5B4      
    or      v0, $zero, $zero           ## v0 = 00000000
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    beq     a1, $at, lbl_80B7F5BC      
    lw      t7, 0x0014($sp)            
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    beq     a1, $at, lbl_80B7F5B4      
    addiu   $at, $zero, 0x0010         ## $at = 00000010
    bnel    a1, $at, lbl_80B7F5D4      
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B7F5B4:
    jr      $ra                        
    sw      $zero, 0x0000(a2)          ## 00000000
lbl_80B7F5BC:
    lw      v0, 0x0010($sp)            
    lh      t8, 0x02F2(t7)             ## 000002F2
    lh      t6, 0x0000(v0)             ## 00000000
    addu    t9, t6, t8                 
    sh      t9, 0x0000(v0)             ## 00000000
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B7F5D4:
    jr      $ra                        
    nop


func_80B7F5DC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      a0, 0x0028($sp)            
    addiu   a0, $sp, 0x0018            ## a0 = FFFFFFF0
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    lui     t6, %hi(var_80B7F778)      ## t6 = 80B80000
    addiu   t6, t6, %lo(var_80B7F778)  ## t6 = 80B7F778
    lw      t8, 0x0000(t6)             ## 80B7F778
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    sw      t8, 0x0000(a0)             ## FFFFFFF0
    lw      t7, 0x0004(t6)             ## 80B7F77C
    sw      t7, 0x0004(a0)             ## FFFFFFF4
    lw      t8, 0x0008(t6)             ## 80B7F780
    bne     a1, $at, lbl_80B7F628      
    sw      t8, 0x0008(a0)             ## FFFFFFF8
    lw      a1, 0x0038($sp)            
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             ## a1 = 00000038
lbl_80B7F628:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7F638:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E56C              
    sw      a0, 0x0034($sp)            
    lw      t0, 0x0034($sp)            
    lw      v1, 0x02C0(t0)             ## 000002C0
    lui     t8, 0xDB06                 ## t8 = DB060000
    ori     t8, t8, 0x0020             ## t8 = DB060020
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(t0)             ## 000002C0
    sw      t8, 0x0000(v1)             ## 00000000
    lh      t9, 0x02EC(s0)             ## 000002EC
    lui     a3, %hi(var_80B7F784)      ## a3 = 80B80000
    lui     t6, 0x8012                 ## t6 = 80120000
    sll     t1, t9,  2                 
    addu    a3, a3, t1                 
    lw      a3, %lo(var_80B7F784)(a3)  
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t3, a3,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, 0x0C38(t6)             ## 80120C38
    and     t2, a3, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t7, t2, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0004(v1)             ## 00000004
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x0044($sp)            
    jal     func_80022438              
    or      a2, $zero, $zero           ## a2 = 00000000
    lw      a1, 0x018C(s0)             ## 0000018C
    lw      a2, 0x01A8(s0)             ## 000001A8
    lbu     a3, 0x018A(s0)             ## 0000018A
    lui     t9, %hi(func_80B7F580)     ## t9 = 80B80000
    lui     t1, %hi(func_80B7F5DC)     ## t1 = 80B80000
    addiu   t1, t1, %lo(func_80B7F5DC) ## t1 = 80B7F5DC
    addiu   t9, t9, %lo(func_80B7F580) ## t9 = 80B7F580
    sw      t9, 0x0010($sp)            
    sw      t1, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x0044($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80B7F720: .word 0x01D00400, 0x00000019, 0x01690000, 0x00000304
.word func_80B7EDB8
.word func_80B7EEC0
.word func_80B7F534
.word func_80B7F638
var_80B7F740: .word \
0x0A000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000722, 0x00000000, 0x00010100, \
0x00140032, 0x00000000, 0x00000000
var_80B7F76C: .word func_80B7F17C
var_80B7F770: .word 0x0600B07C
var_80B7F774: .word 0x00000000
var_80B7F778: .word 0x44160000, 0x442F0000, 0x00000000
var_80B7F784: .word 0x06005FE8, 0x060065A8, 0x06006D28

.section .rodata


