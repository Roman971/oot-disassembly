#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A86630:
    sw      a1, 0x0154(a0)             ## 00000154
    jr      $ra                        
    nop


func_80A8663C:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    sw      a2, 0x0028($sp)            
    sw      $zero, 0x0018($sp)         
    lw      a0, 0x0020($sp)            
    jal     func_80035260              
    or      a1, a3, $zero              ## a1 = 00000000
    lw      a0, 0x0028($sp)            
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0018            ## a1 = FFFFFFF8
    lw      a0, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    lw      a3, 0x0018($sp)            
    jal     func_800313A4              ## DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             ## a1 = 00000810
    lw      t6, 0x0020($sp)            
    sw      v0, 0x013C(t6)             ## 0000013C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80A86694:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x003C($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    lh      t6, 0x001C(s0)             ## 0000001C
    sra     t7, t6,  5                 
    andi    t8, t7, 0x0001             ## t8 = 00000000
    beql    t8, $zero, lbl_80A86708    
    lw      $ra, 0x003C($sp)           
    lwc1    $f4, 0x0024(s0)            ## 00000024
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    addiu   a0, a2, 0x1C24             ## a0 = 00001C24
    swc1    $f4, 0x0010($sp)           
    lwc1    $f6, 0x0028(s0)            ## 00000028
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a3, $zero, 0x011E          ## a3 = 0000011E
    swc1    $f6, 0x0014($sp)           
    lwc1    $f8, 0x002C(s0)            ## 0000002C
    swc1    $f8, 0x0018($sp)           
    lh      t9, 0x0030(s0)             ## 00000030
    sw      t9, 0x001C($sp)            
    lh      t0, 0x0032(s0)             ## 00000032
    sw      t0, 0x0020($sp)            
    lh      t1, 0x0034(s0)             ## 00000034
    sw      t2, 0x0028($sp)            
    jal     func_800253F0              
    sw      t1, 0x0024($sp)            
    lw      $ra, 0x003C($sp)           
lbl_80A86708:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A86718:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     a2, %hi(var_80A86B2C)      ## a2 = 80A80000
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t7, t6, 0x0003             ## t7 = 00000000
    sll     t8, t7,  2                 
    addu    a2, a2, t8                 
    lw      a2, %lo(var_80A86B2C)(a2)  
    lw      a1, 0x0024($sp)            
    jal     func_80A8663C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lui     a1, %hi(var_80A86B1C)      ## a1 = 80A80000
    addiu   a1, a1, %lo(var_80A86B1C)  ## a1 = 80A86B1C
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80A86694              
    lw      a1, 0x0024($sp)            
    lh      v1, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    andi    v0, v1, 0x0003             ## v0 = 00000000
    beq     v0, $zero, lbl_80A86798    
    nop
    beq     v0, $at, lbl_80A867A8      
    lw      a0, 0x0024($sp)            
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    bnel    v0, $at, lbl_80A867D8      
    lw      $ra, 0x001C($sp)           
lbl_80A86798:
    jal     func_80A8681C              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A867D8 
    lw      $ra, 0x001C($sp)           
lbl_80A867A8:
    sra     a1, v1,  8                 
    jal     func_8002049C              
    andi    a1, a1, 0x003F             ## a1 = 00000000
    beq     v0, $zero, lbl_80A867CC    
    nop
    jal     func_80A8681C              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A867D8 
    lw      $ra, 0x001C($sp)           
lbl_80A867CC:
    jal     func_80A8683C              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A867D8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A867E8:
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


func_80A8681C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80A86630              
    or      a1, $zero, $zero           ## a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A8683C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x42D2                ## $at = 42D20000
    mtc1    $at, $f6                   ## $f6 = 105.00
    lwc1    $f4, 0x000C(a0)            ## 0000000C
    lw      t6, 0x0004(a0)             ## 00000004
    lui     a1, %hi(func_80A86880)     ## a1 = 80A80000
    sub.s   $f8, $f4, $f6              
    ori     t7, t6, 0x0010             ## t7 = 00000010
    sw      t7, 0x0004(a0)             ## 00000004
    addiu   a1, a1, %lo(func_80A86880) ## a1 = 80A86880
    jal     func_80A86630              
    swc1    $f8, 0x0028(a0)            ## 00000028
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A86880:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    lh      a1, 0x001C(t6)             ## 0000001C
    sra     a1, a1,  8                 
    jal     func_8002049C              
    andi    a1, a1, 0x003F             ## a1 = 00000000
    beql    v0, $zero, lbl_80A868BC    
    lw      $ra, 0x0014($sp)           
    jal     func_80A868C8              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A868BC:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A868C8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     a1, %hi(func_80A868EC)     ## a1 = 80A80000
    jal     func_80A86630              
    addiu   a1, a1, %lo(func_80A868EC) ## a1 = 80A868EC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A868EC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     a2, 0x3DCC                 ## a2 = 3DCC0000
    lui     a3, 0x3F4C                 ## a3 = 3F4C0000
    ori     a3, a3, 0xCCCD             ## a3 = 3F4CCCCD
    ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
    addiu   a0, s0, 0x0060             ## a0 = 00000060
    lui     a1, 0x4180                 ## a1 = 41800000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lui     $at, %hi(var_80A86B50)     ## $at = 80A80000
    lwc1    $f2, %lo(var_80A86B50)($at) 
    lw      a1, 0x000C(s0)             ## 0000000C
    lw      a3, 0x0060(s0)             ## 00000060
    mfc1    a2, $f2                    
    addiu   a0, s0, 0x0028             ## a0 = 00000028
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    lui     $at, %hi(var_80A86B54)     ## $at = 80A80000
    lwc1    $f6, %lo(var_80A86B54)($at) 
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A86984               
    lw      $ra, 0x0024($sp)           
    lwc1    $f8, 0x000C(s0)            ## 0000000C
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80A8681C              
    swc1    $f8, 0x0028(s0)            ## 00000028
    lw      t6, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
    and     t7, t6, $at                
    sw      t7, 0x0004(s0)             ## 00000004
    lw      $ra, 0x0024($sp)           
lbl_80A86984:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A86994:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0154(a0)             ## 00000154
    beql    v0, $zero, lbl_80A869B8    
    lh      t6, 0x001C(a0)             ## 0000001C
    jalr    $ra, v0                    
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      t6, 0x001C(a0)             ## 0000001C
lbl_80A869B8:
    lui     a1, %hi(var_80A86B10)      ## a1 = 80A80000
    andi    t7, t6, 0x0003             ## t7 = 00000000
    sll     t8, t7,  2                 
    addu    a1, a1, t8                 
    jal     func_80020F04              
    lw      a1, %lo(var_80A86B10)(a1)  
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A869E0:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E298              
    sw      a0, 0x002C($sp)            
    lw      a2, 0x002C($sp)            
    lw      v0, 0x02C0(a2)             ## 000002C0
    lui     t8, 0xDA38                 ## t8 = DA380000
    ori     t8, t8, 0x0003             ## t8 = DA380003
    addiu   t7, v0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(a2)             ## 000002C0
    sw      t8, 0x0000(v0)             ## 00000000
    lw      t9, 0x003C($sp)            
    lw      a0, 0x0000(t9)             ## 00000000
    jal     func_800AB900              
    sw      v0, 0x0024($sp)            
    lw      v1, 0x0024($sp)            
    lw      a2, 0x002C($sp)            
    addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
    sw      v0, 0x0004(v1)             ## 00000004
    lw      t0, 0x003C($sp)            
    lh      t1, 0x00A4(t0)             ## 000000A4
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
    bne     t1, $at, lbl_80A86A60      
    addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
    lui     a1, %hi(var_80A86B38)      ## a1 = 80A80000
    beq     $zero, $zero, lbl_80A86A70 
    addiu   a1, a1, %lo(var_80A86B38)  ## a1 = 80A86B38
lbl_80A86A60:
    sb      t2, 0x0030($sp)            
    sb      t3, 0x0031($sp)            
    sb      t4, 0x0032($sp)            
    addiu   a1, $sp, 0x0030            ## a1 = FFFFFFF8
lbl_80A86A70:
    lw      v0, 0x02C0(a2)             ## 000002C0
    lui     t6, 0xFB00                 ## t6 = FB000000
    addiu   t5, v0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02C0(a2)             ## 000002C0
    sw      t6, 0x0000(v0)             ## 00000000
    lbu     t1, 0x0001(a1)             ## FFFFFFF9
    lbu     t8, 0x0000(a1)             ## FFFFFFF8
    lbu     t5, 0x0002(a1)             ## FFFFFFFA
    sll     t2, t1, 16                 
    sll     t9, t8, 24                 
    or      t3, t9, t2                 ## t3 = 000000FF
    sll     t6, t5,  8                 
    or      t7, t3, t6                 ## t7 = FB0000FF
    ori     t8, t7, 0x00FF             ## t8 = FB0000FF
    sw      t8, 0x0004(v0)             ## 00000004
    lw      v0, 0x02C0(a2)             ## 000002C0
    lui     t1, 0xDE00                 ## t1 = DE000000
    lui     t3, %hi(var_80A86B3C)      ## t3 = 80A80000
    addiu   t0, v0, 0x0008             ## t0 = 00000008
    sw      t0, 0x02C0(a2)             ## 000002C0
    sw      t1, 0x0000(v0)             ## 00000000
    lw      t9, 0x0038($sp)            
    lh      t2, 0x001C(t9)             ## 0000001C
    andi    t4, t2, 0x0003             ## t4 = 00000003
    sll     t5, t4,  2                 
    addu    t3, t3, t5                 
    lw      t3, %lo(var_80A86B3C)(t3)  
    sw      t3, 0x0004(v0)             ## 00000004
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    nop

.section .data

var_80A86AF0: .word 0x012D0100, 0x00000000, 0x011C0000, 0x00000158
.word func_80A86718
.word func_80A867E8
.word func_80A86994
.word func_80A869E0
var_80A86B10: .word 0x42AA0000, 0x42AA0000, 0x00000000
var_80A86B1C: .word 0xC8500064, 0xB0F407D0, 0xB0F80190, 0x30FC07D0
var_80A86B2C: .word 0x06000730, 0x06000730, 0x06000578
var_80A86B38: .word 0xA57D3700
var_80A86B3C: .word \
0x06000210, 0x06000210, 0x06000470, 0x00000000, \
0x00000000

.section .rodata

var_80A86B50: .word 0x3E99999A
var_80A86B54: .word 0x3A83126F, 0x00000000, 0x00000000

