#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B41110:
    sw      a1, 0x02E4(a0)             ## 000002E4
    jr      $ra                        
    nop


func_80B4111C:
    addiu   $sp, $sp, 0xFE18           ## $sp = FFFFFE18
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a1, %hi(var_80B45ED4)      ## a1 = 80B40000
    addiu   a1, a1, %lo(var_80B45ED4)  ## a1 = 80B45ED4
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     t6, %hi(var_80B45EB4)      ## t6 = 80B40000
    addiu   t6, t6, %lo(var_80B45EB4)  ## t6 = 80B45EB4
    lui     a2, 0x8002                 ## a2 = 80020000
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    sw      t6, 0x0098(s0)             ## 00000098
    addiu   a2, a2, 0xF280             ## a2 = 8001F280
    jal     func_8001EC20              
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    lh      t4, 0x001C(s0)             ## 0000001C
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    addiu   t7, $zero, 0x00FE          ## t7 = 000000FE
    sb      t7, 0x00AE(s0)             ## 000000AE
    addiu   t8, $zero, 0x0014          ## t8 = 00000014
    addiu   t9, $zero, 0x0032          ## t9 = 00000032
    addiu   t2, $zero, 0x0064          ## t2 = 00000064
    sb      t8, 0x00AF(s0)             ## 000000AF
    sh      t9, 0x00A8(s0)             ## 000000A8
    sh      t2, 0x00AA(s0)             ## 000000AA
    addiu   t3, $zero, 0x0054          ## t3 = 00000054
    andi    t5, t4, 0xFF00             ## t5 = 00000000
    andi    t7, t6, 0x00FF             ## t7 = 00000000
    sb      t3, 0x0117(s0)             ## 00000117
    sh      t5, 0x0304(s0)             ## 00000304
    sh      t7, 0x001C(s0)             ## 0000001C
    sb      $zero, 0x030A(s0)          ## 0000030A
    swc1    $f4, 0x02FC(s0)            ## 000002FC
    addiu   t2, $zero, 0x0018          ## t2 = 00000018
    addiu   t9, s0, 0x024C             ## t9 = 0000024C
    addiu   t8, s0, 0x01BC             ## t8 = 000001BC
    lui     a2, 0x0601                 ## a2 = 06010000
    lui     a3, 0x0601                 ## a3 = 06010000
    addiu   a3, a3, 0xB6D4             ## a3 = 0600B6D4
    addiu   a2, a2, 0xA458             ## a2 = 0600A458
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    sw      t2, 0x0018($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8008C788              
    addiu   a1, s0, 0x0178             ## a1 = 00000178
    addiu   a1, s0, 0x0310             ## a1 = 00000310
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_80B45DB0)      ## a3 = 80B40000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_80B45DB0)  ## a3 = 80B45DB0
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a1, s0, 0x03DC             ## a1 = 000003DC
    sw      a1, 0x0030($sp)            
    jal     func_8004B064              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_80B45E54)      ## a3 = 80B40000
    addiu   t3, s0, 0x03FC             ## t3 = 000003FC
    lw      a1, 0x0030($sp)            
    sw      t3, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80B45E54)  ## a3 = 80B45E54
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004B3EC              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a1, s0, 0x035C             ## a1 = 0000035C
    sw      a1, 0x0030($sp)            
    jal     func_8004B858              
    or      a0, s1, $zero              ## a0 = 00000000
    lui     a3, %hi(var_80B45E64)      ## a3 = 80B40000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_80B45E64)  ## a3 = 80B45E64
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004B960              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
    addiu   t4, $zero, 0x0040          ## t4 = 00000040
    addiu   t5, $zero, 0x0008          ## t5 = 00000008
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    addiu   t7, $sp, 0x0044            ## t7 = FFFFFE5C
    sb      v1, 0x01D5($sp)            
    sb      v1, 0x01D4($sp)            
    sb      v1, 0x01D2($sp)            
    sb      v1, 0x01D1($sp)            
    sb      v1, 0x01D0($sp)            
    sb      v1, 0x01CE($sp)            
    sb      v1, 0x01CD($sp)            
    sb      v1, 0x01CC($sp)            
    sb      v1, 0x01CB($sp)            
    sb      v1, 0x01CA($sp)            
    sb      v1, 0x01C9($sp)            
    sb      v1, 0x01C8($sp)            
    sb      t4, 0x01CF($sp)            
    sb      $zero, 0x01D3($sp)         
    sw      t5, 0x01D8($sp)            
    sw      $zero, 0x01DC($sp)         
    sw      t6, 0x01E0($sp)            
    sw      t7, 0x0014($sp)            
    sb      v1, 0x01D6($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x030C             ## a1 = 0000030C
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8001AA5C              
    sb      $zero, 0x01D7($sp)         
    lui     a1, 0x3C4C                 ## a1 = 3C4C0000
    ori     a1, a1, 0xCCCC             ## a1 = 3C4CCCCC
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B41780              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      v0, 0x0304(s0)             ## 00000304
    or      a0, s1, $zero              ## a0 = 00000000
    beql    v0, $zero, lbl_80B41330    
    lw      $ra, 0x002C($sp)           
    jal     func_800206E8              
    sra     a1, v0,  8                 
    beql    v0, $zero, lbl_80B41330    
    lw      $ra, 0x002C($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_80B41330:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x01E8           ## $sp = 00000000


func_80B41340:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_800C6894              
    nop
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8001AE04              
    lw      a1, 0x030C(t6)             ## 0000030C
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004B148              
    addiu   a1, a1, 0x03DC             ## a1 = 000003DC
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0310             ## a1 = 00000310
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004B8A8              
    addiu   a1, a1, 0x035C             ## a1 = 0000035C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B413A8:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a2, 0x0048($sp)            
    lh      v0, 0x00B6(s0)             ## 000000B6
    lh      t6, 0x007E(s0)             ## 0000007E
    lw      t1, 0x1C44(a0)             ## 00001C44
    or      a1, s0, $zero              ## a1 = 00000000
    subu    t0, t6, v0                 
    sll     t0, t0, 16                 
    sra     t0, t0, 16                 
    bgez    t0, lbl_80B413EC           
    lui     a2, 0x42C8                 ## a2 = 42C80000
    subu    t0, $zero, t0              
    sll     t0, t0, 16                 
    sra     t0, t0, 16                 
lbl_80B413EC:
    lh      t7, 0x008A(s0)             ## 0000008A
    addiu   a3, $zero, 0x2710          ## a3 = 00002710
    addiu   t8, $zero, 0x3E80          ## t8 = 00003E80
    subu    v1, t7, v0                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bgezl   v1, lbl_80B4141C           
    sw      t8, 0x0010($sp)            
    subu    v1, $zero, v1              
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    sw      t8, 0x0010($sp)            
lbl_80B4141C:
    sw      v0, 0x0014($sp)            
    sh      v1, 0x0034($sp)            
    sw      a0, 0x0040($sp)            
    sh      t0, 0x0036($sp)            
    jal     func_8002821C              
    sw      t1, 0x003C($sp)            
    lh      v1, 0x0034($sp)            
    lh      t0, 0x0036($sp)            
    beq     v0, $zero, lbl_80B41490    
    lw      t1, 0x003C($sp)            
    lb      t9, 0x0832(t1)             ## 00000832
    addiu   $at, $zero, 0x0011         ## $at = 00000011
    lw      t2, 0x0040($sp)            
    bne     t9, $at, lbl_80B4146C      
    lui     t3, 0x0001                 ## t3 = 00010000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B42ED8              
    lw      a1, 0x0040($sp)            
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B4146C:
    addu    t3, t3, t2                 
    lw      t3, 0x1DE4(t3)             ## 00001DE4
    andi    t4, t3, 0x0001             ## t4 = 00000000
    beql    t4, $zero, lbl_80B41494    
    addiu   t5, $zero, 0x2AA8          ## t5 = 00002AA8
    jal     func_80B44260              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B41490:
    addiu   t5, $zero, 0x2AA8          ## t5 = 00002AA8
lbl_80B41494:
    sw      t5, 0x0010($sp)            
    lh      t6, 0x00B6(s0)             ## 000000B6
    sw      t1, 0x003C($sp)            
    sh      t0, 0x0036($sp)            
    sh      v1, 0x0034($sp)            
    lw      a0, 0x0040($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a2, 0x42C8                 ## a2 = 42C80000
    addiu   a3, $zero, 0x5DC0          ## a3 = 00005DC0
    jal     func_8002821C              
    sw      t6, 0x0014($sp)            
    lh      v1, 0x0034($sp)            
    lh      t0, 0x0036($sp)            
    beq     v0, $zero, lbl_80B415A4    
    lw      t1, 0x003C($sp)            
    lhu     t7, 0x0088(s0)             ## 00000088
    lh      v1, 0x008A(s0)             ## 0000008A
    andi    t8, t7, 0x0008             ## t8 = 00000000
    sh      v1, 0x0032(s0)             ## 00000032
    beq     t8, $zero, lbl_80B4152C    
    sh      v1, 0x00B6(s0)             ## 000000B6
    bltz    t0, lbl_80B414F8           
    subu    v0, $zero, t0              
    beq     $zero, $zero, lbl_80B414F8 
    or      v0, t0, $zero              ## v0 = 00000000
lbl_80B414F8:
    slti    $at, v0, 0x2EE0            
    beq     $at, $zero, lbl_80B4152C   
    lui     $at, 0x42B4                ## $at = 42B40000
    mtc1    $at, $f6                   ## $f6 = 90.00
    lwc1    $f4, 0x0090(s0)            ## 00000090
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80B41530               
    lb      t9, 0x0832(t1)             ## 00000832
    jal     func_80B440C0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B4152C:
    lb      t9, 0x0832(t1)             ## 00000832
lbl_80B41530:
    addiu   $at, $zero, 0x0011         ## $at = 00000011
    or      a0, s0, $zero              ## a0 = 00000000
    bnel    t9, $at, lbl_80B41554      
    lui     $at, 0x42B4                ## $at = 42B40000
    jal     func_80B42ED8              
    lw      a1, 0x0040($sp)            
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lui     $at, 0x42B4                ## $at = 42B40000
lbl_80B41554:
    mtc1    $at, $f10                  ## $f10 = 90.00
    lwc1    $f8, 0x0090(s0)            ## 00000090
    lw      t2, 0x0040($sp)            
    lui     t3, 0x0001                 ## t3 = 00010000
    c.lt.s  $f8, $f10                  
    addu    t3, t3, t2                 
    bc1f    lbl_80B41594               
    nop
    lw      t3, 0x1DE4(t3)             ## 00011DE4
    andi    t4, t3, 0x0001             ## t4 = 00000000
    beq     t4, $zero, lbl_80B41594    
    nop
    jal     func_80B44260              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B41594:
    jal     func_80B43B98              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B415A4:
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f16                  ## $f16 = 80.00
    lw      a0, 0x0040($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, $zero, 0xFFFF          ## a2 = FFFFFFFF
    addiu   a3, $zero, 0x0003          ## a3 = 00000003
    sh      v1, 0x0034($sp)            
    sh      t0, 0x0036($sp)            
    sw      t1, 0x003C($sp)            
    jal     func_80028158              
    swc1    $f16, 0x0010($sp)          
    lh      v1, 0x0034($sp)            
    lh      t0, 0x0036($sp)            
    lw      t1, 0x003C($sp)            
    beq     v0, $zero, lbl_80B416AC    
    or      a1, v0, $zero              ## a1 = 00000000
    lhu     t5, 0x0088(s0)             ## 00000088
    lh      v1, 0x008A(s0)             ## 0000008A
    slti    $at, t0, 0x2EE0            
    andi    t6, t5, 0x0008             ## t6 = 00000000
    sh      v1, 0x0032(s0)             ## 00000032
    beq     t6, $zero, lbl_80B41608    
    sh      v1, 0x00B6(s0)             ## 000000B6
    bnel    $at, $zero, lbl_80B4161C   
    lh      t8, 0x0000(v0)             ## 00000000
lbl_80B41608:
    lh      t7, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x00DA         ## $at = 000000DA
    bne     t7, $at, lbl_80B4169C      
    nop
    lh      t8, 0x0000(v0)             ## 00000000
lbl_80B4161C:
    addiu   $at, $zero, 0x00DA         ## $at = 000000DA
    or      a0, s0, $zero              ## a0 = 00000000
    bnel    t8, $at, lbl_80B4168C      
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_800214AC              
    sw      a1, 0x0030($sp)            
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f18                  ## $f18 = 80.00
    lw      a1, 0x0030($sp)            
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80B4168C               
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t9, 0x00B6(s0)             ## 000000B6
    lh      t2, 0x0032(a1)             ## 00000032
    ori     $at, $zero, 0x8000         ## $at = 00008000
    subu    t3, t9, t2                 
    addu    t4, t3, $at                
    sll     t5, t4, 16                 
    sra     t6, t5, 16                 
    slti    $at, t6, 0x3E80            
    beql    $at, $zero, lbl_80B4168C   
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B440C0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B4168C:
    jal     func_80B44604              
    lw      a1, 0x0040($sp)            
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B4169C:
    jal     func_80B43B98              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B416AC:
    lh      t7, 0x004A($sp)            
    beq     t7, $zero, lbl_80B41768    
    slti    $at, v1, 0x1B58            
    bne     $at, $zero, lbl_80B416D0   
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B44604              
    lw      a1, 0x0040($sp)            
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B416D0:
    lui     $at, 0x4234                ## $at = 42340000
    mtc1    $at, $f4                   ## $f4 = 45.00
    lwc1    $f6, 0x0090(s0)            ## 00000090
    lh      t8, 0x00B6(t1)             ## 000000B6
    lh      t9, 0x00B6(s0)             ## 000000B6
    c.le.s  $f6, $f4                   
    lw      a0, 0x0040($sp)            
    subu    v1, t8, t9                 
    sll     v1, v1, 16                 
    bc1f    lbl_80B41758               
    sra     v1, v1, 16                 
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80026950              
    sh      v1, 0x002E($sp)            
    bne     v0, $zero, lbl_80B41758    
    lh      v1, 0x002E($sp)            
    lw      t2, 0x0040($sp)            
    lui     t3, 0x0001                 ## t3 = 00010000
    addu    t3, t3, t2                 
    lw      t3, 0x1DE4(t3)             ## 00011DE4
    andi    t4, t3, 0x0007             ## t4 = 00000000
    bne     t4, $zero, lbl_80B41748    
    nop
    bltz    v1, lbl_80B4173C           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80B4173C 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80B4173C:
    slti    $at, v0, 0x38E0            
    beq     $at, $zero, lbl_80B41758   
    nop
lbl_80B41748:
    jal     func_80B43490              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B41758:
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4176C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B41768:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B4176C:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B41780:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xADF8             ## a1 = 0600ADF8
    addiu   a0, a3, 0x0178             ## a0 = 00000178
    addiu   a2, $zero, 0x0000          ## a2 = 00000000
    jal     func_8008D278              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0x42F0                ## $at = 42F00000
    mtc1    $at, $f6                   ## $f6 = 120.00
    lwc1    $f4, 0x000C(a0)            ## 0000000C
    lhu     t8, 0x0088(a0)             ## 00000088
    lw      t0, 0x0004(a0)             ## 00000004
    lui     $at, 0xC000                ## $at = C0000000
    add.s   $f8, $f4, $f6              
    mtc1    $at, $f10                  ## $f10 = -2.00
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    addiu   t6, $zero, 0x000A          ## t6 = 0000000A
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    lui     a1, %hi(func_80B41814)     ## a1 = 80B40000
    andi    t9, t8, 0xFFFC             ## t9 = 00000000
    and     t1, t0, $at                
    addiu   a1, a1, %lo(func_80B41814) ## a1 = 80B41814
    swc1    $f8, 0x0028(a0)            ## 00000028
    sw      t6, 0x02F0(a0)             ## 000002F0
    sh      t7, 0x0308(a0)             ## 00000308
    sw      $zero, 0x02DC(a0)          ## 000002DC
    sh      t9, 0x0088(a0)             ## 00000088
    sw      t1, 0x0004(a0)             ## 00000004
    jal     func_80B41110              
    swc1    $f10, 0x006C(a0)           ## 0000006C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B41814:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x0308(s0)             ## 00000308
    lw      a0, 0x003C($sp)            
    beql    t6, $zero, lbl_80B41848    
    lui     $at, 0x4396                ## $at = 43960000
    jal     func_8002049C              
    lh      a1, 0x0018(s0)             ## 00000018
    beq     v0, $zero, lbl_80B41868    
    lui     $at, 0x4396                ## $at = 43960000
lbl_80B41848:
    mtc1    $at, $f4                   ## $f4 = 300.00
    lwc1    $f6, 0x0090(s0)            ## 00000090
    lui     $at, 0x42B4                ## $at = 42B40000
    addiu   a0, $zero, 0x0038          ## a0 = 00000038
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80B41890               
    mtc1    $at, $f18                  ## $f18 = 90.00
lbl_80B41868:
    lui     $at, 0x42F0                ## $at = 42F00000
    mtc1    $at, $f10                  ## $f10 = 120.00
    lwc1    $f8, 0x0080(s0)            ## 00000080
    lh      v0, 0x008A(s0)             ## 0000008A
    add.s   $f16, $f8, $f10            
    sh      v0, 0x0032(s0)             ## 00000032
    sh      v0, 0x00B6(s0)             ## 000000B6
    beq     $zero, $zero, lbl_80B4189C 
    swc1    $f16, 0x0028(s0)           ## 00000028
    mtc1    $at, $f18                  ## $f18 = 120.00
lbl_80B41890:
    sh      $zero, 0x0308(s0)          ## 00000308
    jal     func_800C6820              
    swc1    $f18, 0x00C4(s0)           ## 000000C4
lbl_80B4189C:
    lhu     t7, 0x0088(s0)             ## 00000088
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t8, t7, 0x0002             ## t8 = 00000000
    beq     t8, $zero, lbl_80B4196C    
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387A          ## a1 = 0000387A
    lwc1    $f6, 0x0080(s0)            ## 00000080
    lw      t2, 0x0024(s0)             ## 00000024
    lw      t9, 0x0004(s0)             ## 00000004
    lhu     t3, 0x0088(s0)             ## 00000088
    lui     $at, 0x3F80                ## $at = 3F800000
    swc1    $f6, 0x0028(s0)            ## 00000028
    sw      t2, 0x0038(s0)             ## 00000038
    mtc1    $at, $f4                   ## $f4 = 1.00
    lw      t2, 0x002C(s0)             ## 0000002C
    lw      t1, 0x0028(s0)             ## 00000028
    mtc1    $zero, $f8                 ## $f8 = 0.00
    ori     t0, t9, 0x0001             ## t0 = 00000001
    andi    t4, t3, 0xFFFD             ## t4 = 00000000
    sw      t0, 0x0004(s0)             ## 00000004
    sh      t4, 0x0088(s0)             ## 00000088
    swc1    $f4, 0x0194(s0)            ## 00000194
    sw      t2, 0x0040(s0)             ## 00000040
    sw      t1, 0x003C(s0)             ## 0000003C
    swc1    $f8, 0x0060(s0)            ## 00000060
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f10                  ## $f10 = 2.00
    addiu   t5, $zero, 0x0002          ## t5 = 00000002
    sw      t5, 0x0010($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x04C0             ## a2 = 000004C0
    lui     a3, 0x4040                 ## a3 = 40400000
    jal     func_800260E8              
    swc1    $f10, 0x0014($sp)          
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f16                  ## $f16 = 2.00
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0010($sp)            
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x04B4             ## a2 = 000004B4
    lui     a3, 0x4040                 ## a3 = 40400000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    jal     func_800260E8              
    swc1    $f16, 0x0014($sp)          
lbl_80B4196C:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    beql    v0, $zero, lbl_80B41988    
    lw      $ra, 0x0034($sp)           
    jal     func_80B41B58              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0034($sp)           
lbl_80B41988:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B41998:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xADF8             ## a0 = 0600ADF8
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC080                ## $at = C0800000
    mtc1    $at, $f8                   ## $f8 = -4.00
    cvt.s.w $f4, $f4                   
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0xADF8             ## a1 = 0600ADF8
    mfc1    a3, $f4                    
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    lui     a2, 0xC000                 ## a2 = C0000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0010($sp)           
    lh      v0, 0x008A(s0)             ## 0000008A
    addiu   t7, $zero, 0x0014          ## t7 = 00000014
    lui     a1, %hi(func_80B41A30)     ## a1 = 80B40000
    sw      t7, 0x02F0(s0)             ## 000002F0
    sh      $zero, 0x0308(s0)          ## 00000308
    sw      $zero, 0x02DC(s0)          ## 000002DC
    addiu   a1, a1, %lo(func_80B41A30) ## a1 = 80B41A30
    or      a0, s0, $zero              ## a0 = 00000000
    sh      v0, 0x0032(s0)             ## 00000032
    jal     func_80B41110              
    sh      v0, 0x00B6(s0)             ## 000000B6
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B41A30:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x003C($sp)            
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    lwc1    $f0, 0x0190(s0)            ## 00000190
    or      a0, s0, $zero              ## a0 = 00000000
    c.eq.s  $f4, $f0                   
    nop
    bc1fl   lbl_80B41A74               
    lui     $at, 0x4000                ## $at = 40000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x386C          ## a1 = 0000386C
    lwc1    $f0, 0x0190(s0)            ## 00000190
    lui     $at, 0x4000                ## $at = 40000000
lbl_80B41A74:
    mtc1    $at, $f2                   ## $f2 = 2.00
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x04C0             ## a2 = 000004C0
    c.eq.s  $f2, $f0                   
    nop
    bc1f    lbl_80B41AF0               
    nop
    mtc1    $zero, $f6                 ## $f6 = 0.00
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    lui     a3, 0x4040                 ## a3 = 40400000
    swc1    $f6, 0x006C(s0)            ## 0000006C
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    swc1    $f2, 0x0014($sp)           
    sw      t6, 0x0010($sp)            
    jal     func_800260E8              
    lw      a0, 0x003C($sp)            
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f8                   ## $f8 = 2.00
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    sw      t7, 0x0010($sp)            
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x04B4             ## a2 = 000004B4
    lui     a3, 0x4040                 ## a3 = 40400000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    jal     func_800260E8              
    swc1    $f8, 0x0014($sp)           
lbl_80B41AF0:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    beq     v0, $zero, lbl_80B41B44    
    lui     $at, 0x4396                ## $at = 43960000
    lwc1    $f10, 0x0080(s0)           ## 00000080
    mtc1    $at, $f16                  ## $f16 = 300.00
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   a0, s0, 0x0028             ## a0 = 00000028
    add.s   $f18, $f10, $f16           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x41A4                 ## a3 = 41A40000
    swc1    $f4, 0x0010($sp)           
    mfc1    a1, $f18                   
    jal     func_80064178              
    nop
    lw      t8, 0x02F0(s0)             ## 000002F0
    addiu   t9, t8, 0xFFFF             ## t9 = FFFFFFFF
    bne     t9, $zero, lbl_80B41B44    
    sw      t9, 0x02F0(s0)             ## 000002F0
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B41B44:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B41B58:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xB6D4             ## a1 = 0600B6D4
    addiu   a0, a3, 0x0178             ## a0 = 00000178
    lui     a2, 0xC080                 ## a2 = C0800000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    jal     func_800CDCCC              ## Rand.Next() float
    sw      t6, 0x02DC(a3)             ## 000002DC
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f8                   ## $f8 = 5.00
    mul.s   $f6, $f0, $f4              
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f18                ## $f18 = 0.00
    lui     a1, %hi(func_80B41BE0)     ## a1 = 80B40000
    lh      t9, 0x00B6(a0)             ## 000000B6
    addiu   a1, a1, %lo(func_80B41BE0) ## a1 = 80B41BE0
    swc1    $f18, 0x0068(a0)           ## 00000068
    add.s   $f10, $f6, $f8             
    sh      t9, 0x0032(a0)             ## 00000032
    trunc.w.s $f16, $f10                 
    mfc1    t8, $f16                   
    jal     func_80B41110              
    sw      t8, 0x02F0(a0)             ## 000002F0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B41BE0:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    lw      t7, 0x1C44(t6)             ## 00001C44
    jal     func_8008C9C0              
    sw      t7, 0x002C($sp)            
    lh      a0, 0x02EA(s0)             ## 000002EA
    beql    a0, $zero, lbl_80B41C60    
    lh      t3, 0x008A(s0)             ## 0000008A
    lh      t8, 0x008A(s0)             ## 0000008A
    lh      t9, 0x00B6(s0)             ## 000000B6
    lh      t1, 0x04CE(s0)             ## 000004CE
    addiu   t2, a0, 0xFFFF             ## t2 = FFFFFFFF
    subu    t0, t8, t9                 
    subu    v1, t0, t1                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_80B41C44           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80B41C44 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80B41C44:
    slti    $at, v0, 0x2001            
    bnel    $at, $zero, lbl_80B41C5C   
    sh      $zero, 0x02EA(s0)          ## 000002EA
    beq     $zero, $zero, lbl_80B41EB0 
    sh      t2, 0x02EA(s0)             ## 000002EA
    sh      $zero, 0x02EA(s0)          ## 000002EA
lbl_80B41C5C:
    lh      t3, 0x008A(s0)             ## 0000008A
lbl_80B41C60:
    lh      t4, 0x00B6(s0)             ## 000000B6
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    subu    v1, t3, t4                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    jal     func_80B45BFC              
    sh      v1, 0x0026($sp)            
    bne     v0, $zero, lbl_80B41EB0    
    lh      v1, 0x0026($sp)            
    lh      v0, 0x02E8(s0)             ## 000002E8
    lw      a0, 0x0034($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_80B41CC4    
    addiu   t5, v0, 0xFFFF             ## t5 = FFFFFFFF
    bltz    v1, lbl_80B41CAC           
    sh      t5, 0x02E8(s0)             ## 000002E8
    beq     $zero, $zero, lbl_80B41CB0 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80B41CAC:
    subu    v0, $zero, v1              
lbl_80B41CB0:
    slti    $at, v0, 0x1FFE            
    beql    $at, $zero, lbl_80B41EB4   
    lw      $ra, 0x001C($sp)           
    beq     $zero, $zero, lbl_80B41CD4 
    sh      $zero, 0x02E8(s0)          ## 000002E8
lbl_80B41CC4:
    jal     func_80B413A8              
    or      a2, $zero, $zero           ## a2 = 00000000
    bnel    v0, $zero, lbl_80B41EB4    
    lw      $ra, 0x001C($sp)           
lbl_80B41CD4:
    lw      v0, 0x002C($sp)            
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f6                   ## $f6 = 100.00
    lwc1    $f4, 0x0090(s0)            ## 00000090
    lh      t7, 0x00B6(s0)             ## 000000B6
    lh      t6, 0x00B6(v0)             ## 000000B6
    c.lt.s  $f4, $f6                   
    subu    v1, t6, t7                 
    sll     v1, v1, 16                 
    bc1f    lbl_80B41D44               
    sra     v1, v1, 16                 
    lb      t8, 0x0833(v0)             ## 00000833
    beql    t8, $zero, lbl_80B41D48    
    lw      t9, 0x02F0(s0)             ## 000002F0
    bltz    v1, lbl_80B41D1C           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80B41D1C 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80B41D1C:
    slti    $at, v0, 0x1F40            
    bnel    $at, $zero, lbl_80B41D48   
    lw      t9, 0x02F0(s0)             ## 000002F0
    lh      v0, 0x008A(s0)             ## 0000008A
    or      a0, s0, $zero              ## a0 = 00000000
    sh      v0, 0x0032(s0)             ## 00000032
    jal     func_80B42828              
    sh      v0, 0x00B6(s0)             ## 000000B6
    beq     $zero, $zero, lbl_80B41EB4 
    lw      $ra, 0x001C($sp)           
lbl_80B41D44:
    lw      t9, 0x02F0(s0)             ## 000002F0
lbl_80B41D48:
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x1555          ## a1 = 00001555
    addiu   t0, t9, 0xFFFF             ## t0 = FFFFFFFF
    bne     t0, $zero, lbl_80B41EB0    
    sw      t0, 0x02F0(s0)             ## 000002F0
    jal     func_80021A28              
    sh      v1, 0x0026($sp)            
    beq     v0, $zero, lbl_80B41E80    
    lh      v1, 0x0026($sp)            
    lui     $at, 0x4352                ## $at = 43520000
    mtc1    $at, $f8                   ## $f8 = 210.00
    lwc1    $f0, 0x0090(s0)            ## 00000090
    lui     $at, 0x4316                ## $at = 43160000
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80B41E3C               
    nop
    mtc1    $at, $f10                  ## $f10 = 150.00
    nop
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80B41E3C               
    nop
    jal     func_800CDCCC              ## Rand.Next() float
    sh      v1, 0x0026($sp)            
    lui     $at, %hi(var_80B45FB0)     ## $at = 80B40000
    lwc1    $f16, %lo(var_80B45FB0)($at) 
    lh      v1, 0x0026($sp)            
    lw      a0, 0x0034($sp)            
    c.lt.s  $f0, $f16                  
    or      a1, s0, $zero              ## a1 = 00000000
    bc1f    lbl_80B41E3C               
    nop
    jal     func_80026950              
    sh      v1, 0x0026($sp)            
    bne     v0, $zero, lbl_80B41E1C    
    lh      v1, 0x0026($sp)            
    jal     func_800CDCCC              ## Rand.Next() float
    sh      v1, 0x0026($sp)            
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f18                  ## $f18 = 0.50
    lh      v1, 0x0026($sp)            
    c.lt.s  $f18, $f0                  
    nop
    bc1t    lbl_80B41E1C               
    nop
    bltz    v1, lbl_80B41E10           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80B41E10 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80B41E10:
    slti    $at, v0, 0x38E0            
    beq     $at, $zero, lbl_80B41E2C   
    nop
lbl_80B41E1C:
    jal     func_80B423F0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B41E8C 
    lw      t2, 0x0034($sp)            
lbl_80B41E2C:
    jal     func_80B43750              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B41E8C 
    lw      t2, 0x0034($sp)            
lbl_80B41E3C:
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_80B45FB4)     ## $at = 80B40000
    lwc1    $f4, %lo(var_80B45FB4)($at) 
    or      a0, s0, $zero              ## a0 = 00000000
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_80B41E70               
    nop
    jal     func_80B41EC4              
    lw      a1, 0x0034($sp)            
    beq     $zero, $zero, lbl_80B41E8C 
    lw      t2, 0x0034($sp)            
lbl_80B41E70:
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B41E8C 
    lw      t2, 0x0034($sp)            
lbl_80B41E80:
    jal     func_80B425FC              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t2, 0x0034($sp)            
lbl_80B41E8C:
    lui     t3, 0x0001                 ## t3 = 00010000
    or      a0, s0, $zero              ## a0 = 00000000
    addu    t3, t3, t2                 
    lw      t3, 0x1DE4(t3)             ## 00011DE4
    andi    t4, t3, 0x005F             ## t4 = 00000000
    bnel    t4, $zero, lbl_80B41EB4    
    lw      $ra, 0x001C($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39C6          ## a1 = 000039C6
lbl_80B41EB0:
    lw      $ra, 0x001C($sp)           
lbl_80B41EB4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B41EC4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x24E8             ## a0 = 060024E8
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC080                ## $at = C0800000
    mtc1    $at, $f8                   ## $f8 = -4.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x24E8             ## a1 = 060024E8
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x0178             ## a0 = 00000178
    lw      a0, 0x0028($sp)            
    addiu   t7, $zero, 0x0008          ## t7 = 00000008
    lui     a1, %hi(func_80B41F44)     ## a1 = 80B40000
    addiu   a1, a1, %lo(func_80B41F44) ## a1 = 80B41F44
    jal     func_80B41110              
    sw      t7, 0x02DC(a0)             ## 000002DC
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B41F44:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    lw      t6, 0x1C44(a2)             ## 00001C44
    sw      a2, 0x004C($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80B45BFC              
    sw      t6, 0x0034($sp)            
    bne     v0, $zero, lbl_80B423DC    
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    lh      a1, 0x008A(s0)             ## 0000008A
    sw      $zero, 0x0010($sp)         
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x02EE          ## a3 = 000002EE
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f4                   ## $f4 = 40.00
    lwc1    $f0, 0x0090(s0)            ## 00000090
    lh      t7, 0x00B6(s0)             ## 000000B6
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    c.le.s  $f0, $f4                   
    lui     a1, 0xC100                 ## a1 = C1000000
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     $at, 0x425C                ## $at = 425C0000
    bc1f    lbl_80B41FD0               
    sh      t7, 0x0032(s0)             ## 00000032
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a3, 0x3FC0                 ## a3 = 3FC00000
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    beq     $zero, $zero, lbl_80B42028 
    lui     $at, 0x3E00                ## $at = 3E000000
lbl_80B41FD0:
    mtc1    $at, $f6                   ## $f6 = 0.13
    lui     a1, 0x4100                 ## a1 = 41000000
    lui     a3, 0x3FC0                 ## a3 = 3FC00000
    c.lt.s  $f6, $f0                   
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    lui     a2, 0x3F80                 ## a2 = 3F800000
    bc1fl   lbl_80B42010               
    mtc1    $zero, $f0                 ## $f0 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    beq     $zero, $zero, lbl_80B42028 
    lui     $at, 0x3E00                ## $at = 3E000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_80B42010:
    lui     a3, 0x40D4                 ## a3 = 40D40000
    ori     a3, a3, 0xCCCD             ## a3 = 40D4CCCD
    mfc1    a1, $f0                    
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    lui     $at, 0x3E00                ## $at = 3E000000
lbl_80B42028:
    mtc1    $at, $f10                  ## $f10 = 0.13
    lwc1    $f8, 0x0068(s0)            ## 00000068
    lw      v0, 0x0034($sp)            
    lh      t9, 0x00B6(s0)             ## 000000B6
    mul.s   $f16, $f8, $f10            
    lui     $at, 0x4316                ## $at = 43160000
    mtc1    $at, $f4                   ## $f4 = 150.00
    swc1    $f16, 0x0194(s0)           ## 00000194
    lh      t8, 0x00B6(v0)             ## 000000B6
    subu    v1, t8, t9                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bgezl   v1, lbl_80B42070           
    lwc1    $f18, 0x0090(s0)           ## 00000090
    subu    v1, $zero, v1              
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    lwc1    $f18, 0x0090(s0)           ## 00000090
lbl_80B42070:
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_80B420DC               
    lwc1    $f8, 0x0190(s0)            ## 00000190
    lb      t0, 0x0833(v0)             ## 00000833
    slti    $at, v1, 0x1F40            
    beql    t0, $zero, lbl_80B420DC    
    lwc1    $f8, 0x0190(s0)            ## 00000190
    bnel    $at, $zero, lbl_80B420DC   
    lwc1    $f8, 0x0190(s0)            ## 00000190
    lh      v0, 0x008A(s0)             ## 0000008A
    sh      v0, 0x0032(s0)             ## 00000032
    sh      v0, 0x00B6(s0)             ## 000000B6
    jal     func_800CDCCC              ## Rand.Next() float
    sh      v1, 0x003A($sp)            
    lui     $at, %hi(var_80B45FB8)     ## $at = 80B40000
    lwc1    $f6, %lo(var_80B45FB8)($at) 
    lh      v1, 0x003A($sp)            
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80B420DC               
    lwc1    $f8, 0x0190(s0)            ## 00000190
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B423E0 
    lw      $ra, 0x0024($sp)           
    lwc1    $f8, 0x0190(s0)            ## 00000190
lbl_80B420DC:
    sh      v1, 0x003A($sp)            
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    trunc.w.s $f10, $f8                  
    mfc1    t2, $f10                   
    jal     func_8008C9C0              
    sw      t2, 0x0044($sp)            
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lwc1    $f0, 0x0194(s0)            ## 00000194
    lh      v1, 0x003A($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    c.le.s  $f2, $f0                   
    addiu   a1, $zero, 0x11C7          ## a1 = 000011C7
    bc1fl   lbl_80B42120               
    neg.s   $f16, $f0                  
    beq     $zero, $zero, lbl_80B42124 
    swc1    $f0, 0x0028($sp)           
    neg.s   $f16, $f0                  
lbl_80B42120:
    swc1    $f16, 0x0028($sp)          
lbl_80B42124:
    lwc1    $f18, 0x0190(s0)           ## 00000190
    lwc1    $f4, 0x0028($sp)           
    c.le.s  $f2, $f0                   
    sub.s   $f6, $f18, $f4             
    trunc.w.s $f8, $f6                   
    mfc1    t4, $f8                    
    bc1f    lbl_80B4214C               
    sw      t4, 0x0040($sp)            
    beq     $zero, $zero, lbl_80B42154 
    swc1    $f0, 0x0028($sp)           
lbl_80B4214C:
    neg.s   $f10, $f0                  
    swc1    $f10, 0x0028($sp)          
lbl_80B42154:
    jal     func_80021A28              
    sh      v1, 0x003A($sp)            
    bne     v0, $zero, lbl_80B421A8    
    lh      v1, 0x003A($sp)            
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f16                  ## $f16 = 0.50
    nop
    c.lt.s  $f16, $f0                  
    nop
    bc1f    lbl_80B42198               
    nop
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4228C 
    lw      a0, 0x004C($sp)            
lbl_80B42198:
    jal     func_80B41B58              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4228C 
    lw      a0, 0x004C($sp)            
lbl_80B421A8:
    lui     $at, 0x42B4                ## $at = 42B40000
    mtc1    $at, $f4                   ## $f4 = 90.00
    lwc1    $f18, 0x0090(s0)           ## 00000090
    lw      a0, 0x004C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_80B4228C               
    lw      a0, 0x004C($sp)            
    jal     func_80026950              
    sh      v1, 0x003A($sp)            
    bne     v0, $zero, lbl_80B42238    
    lh      v1, 0x003A($sp)            
    jal     func_800CDCCC              ## Rand.Next() float
    sh      v1, 0x003A($sp)            
    lui     $at, %hi(var_80B45FBC)     ## $at = 80B40000
    lwc1    $f6, %lo(var_80B45FBC)($at) 
    lui     $at, 0x4234                ## $at = 42340000
    lh      v1, 0x003A($sp)            
    c.lt.s  $f6, $f0                   
    nop
    bc1t    lbl_80B42228               
    nop
    mtc1    $at, $f8                   ## $f8 = 45.00
    lwc1    $f10, 0x0090(s0)           ## 00000090
    slti    $at, v1, 0x38E0            
    c.le.s  $f10, $f8                  
    nop
    bc1fl   lbl_80B4223C               
    lw      a0, 0x004C($sp)            
    beql    $at, $zero, lbl_80B4223C   
    lw      a0, 0x004C($sp)            
lbl_80B42228:
    jal     func_80B43490              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4228C 
    lw      a0, 0x004C($sp)            
lbl_80B42238:
    lw      a0, 0x004C($sp)            
lbl_80B4223C:
    jal     func_80026950              
    or      a1, s0, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_80B42280    
    nop
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f16                  ## $f16 = 0.50
    nop
    c.lt.s  $f16, $f0                  
    nop
    bc1f    lbl_80B42280               
    nop
    jal     func_80B43B98              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4228C 
    lw      a0, 0x004C($sp)            
lbl_80B42280:
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a0, 0x004C($sp)            
lbl_80B4228C:
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80B413A8              
    or      a2, $zero, $zero           ## a2 = 00000000
    bne     v0, $zero, lbl_80B423DC    
    lui     $at, 0x4352                ## $at = 43520000
    lwc1    $f0, 0x0090(s0)            ## 00000090
    mtc1    $at, $f18                  ## $f18 = 210.00
    lui     $at, 0x4316                ## $at = 43160000
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80B4234C               
    lw      t5, 0x004C($sp)            
    mtc1    $at, $f4                   ## $f4 = 150.00
    or      a0, s0, $zero              ## a0 = 00000000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80B4234C               
    lw      t5, 0x004C($sp)            
    jal     func_80021A28              
    addiu   a1, $zero, 0x071C          ## a1 = 0000071C
    beq     v0, $zero, lbl_80B42348    
    lw      a0, 0x004C($sp)            
    jal     func_8002691C              
    or      a1, s0, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_80B42338    
    nop
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f6                   ## $f6 = 0.50
    nop
    c.lt.s  $f6, $f0                   
    nop
    bc1f    lbl_80B42328               
    nop
    jal     func_80B423F0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4234C 
    lw      t5, 0x004C($sp)            
lbl_80B42328:
    jal     func_80B43750              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B4234C 
    lw      t5, 0x004C($sp)            
lbl_80B42338:
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B423E0 
    lw      $ra, 0x0024($sp)           
lbl_80B42348:
    lw      t5, 0x004C($sp)            
lbl_80B4234C:
    lui     t6, 0x0001                 ## t6 = 00010000
    or      a0, s0, $zero              ## a0 = 00000000
    addu    t6, t6, t5                 
    lw      t6, 0x1DE4(t6)             ## 00011DE4
    andi    t7, t6, 0x005F             ## t7 = 00000000
    bnel    t7, $zero, lbl_80B42374    
    lwc1    $f8, 0x0190(s0)            ## 00000190
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39C6          ## a1 = 000039C6
    lwc1    $f8, 0x0190(s0)            ## 00000190
lbl_80B42374:
    lw      v0, 0x0044($sp)            
    lw      v1, 0x0040($sp)            
    trunc.w.s $f10, $f8                  
    mfc1    t9, $f10                   
    nop
    beql    v0, t9, lbl_80B423E0       
    lw      $ra, 0x0024($sp)           
    bgez    v1, lbl_80B423AC           
    lwc1    $f16, 0x0028($sp)          
    trunc.w.s $f18, $f16                 
    mfc1    t1, $f18                   
    nop
    addu    t2, t1, v0                 
    bgtz    t2, lbl_80B423D0           
lbl_80B423AC:
    slti    $at, v1, 0x0004            
    beq     $at, $zero, lbl_80B423DC   
    lwc1    $f4, 0x0028($sp)           
    trunc.w.s $f6, $f4                   
    mfc1    t4, $f6                    
    nop
    addu    t5, t4, v0                 
    slti    $at, t5, 0x0005            
    bne     $at, $zero, lbl_80B423DC   
lbl_80B423D0:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39A0          ## a1 = 000039A0
lbl_80B423DC:
    lw      $ra, 0x0024($sp)           
lbl_80B423E0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B423F0:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1390             ## a0 = 06001390
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC040                ## $at = C0400000
    mtc1    $at, $f8                   ## $f8 = -3.00
    cvt.s.w $f4, $f4                   
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x1390             ## a1 = 06001390
    mfc1    a3, $f4                    
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    lui     a2, 0xBF80                 ## a2 = BF800000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0010($sp)           
    lh      v0, 0x008A(s0)             ## 0000008A
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f10                  ## $f10 = 10.00
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    addiu   t8, $zero, 0x000E          ## t8 = 0000000E
    sw      $zero, 0x02F0(s0)          ## 000002F0
    sh      t7, 0x0308(s0)             ## 00000308
    sw      t8, 0x02DC(s0)             ## 000002DC
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x386C          ## a1 = 0000386C
    sh      v0, 0x00B6(s0)             ## 000000B6
    sh      v0, 0x0032(s0)             ## 00000032
    jal     func_80022FD0              
    swc1    $f10, 0x0068(s0)           ## 00000068
    lui     a1, %hi(func_80B424A4)     ## a1 = 80B40000
    addiu   a1, a1, %lo(func_80B424A4) ## a1 = 80B424A4
    jal     func_80B41110              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B424A4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lh      t8, 0x00B6(s0)             ## 000000B6
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    lw      v0, 0x1C44(t6)             ## 00001C44
    lh      t7, 0x00B6(v0)             ## 000000B6
    subu    t9, t7, t8                 
    jal     func_8008C9C0              
    sh      t9, 0x0022($sp)            
    beq     v0, $zero, lbl_80B425C0    
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    sh      $zero, 0x0308(s0)          ## 00000308
    addiu   a1, $zero, 0x1554          ## a1 = 00001554
    jal     func_80021A28              
    swc1    $f4, 0x0068(s0)            ## 00000068
    bne     v0, $zero, lbl_80B42554    
    lw      a0, 0x002C($sp)            
    jal     func_80B41B58              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f2                   ## $f2 = 5.00
    lh      v1, 0x0022($sp)            
    addiu   t2, $zero, 0x0014          ## t2 = 00000014
    mul.s   $f6, $f0, $f2              
    subu    v0, $zero, v1              
    add.s   $f8, $f6, $f2              
    trunc.w.s $f10, $f8                  
    mfc1    t1, $f10                   
    bltz    v1, lbl_80B42540           
    sw      t1, 0x02F0(s0)             ## 000002F0
    beq     $zero, $zero, lbl_80B42540 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80B42540:
    slti    $at, v0, 0x38E0            
    beql    $at, $zero, lbl_80B425C4   
    lw      t3, 0x002C($sp)            
    beq     $zero, $zero, lbl_80B425C0 
    sh      t2, 0x02EA(s0)             ## 000002EA
lbl_80B42554:
    jal     func_80026950              
    or      a1, s0, $zero              ## a1 = 00000000
    bnel    v0, $zero, lbl_80B425B8    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f16                  ## $f16 = 0.50
    lh      v1, 0x0022($sp)            
    c.lt.s  $f16, $f0                  
    nop
    bc1t    lbl_80B425A4               
    nop
    bltz    v1, lbl_80B42598           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80B42598 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80B42598:
    slti    $at, v0, 0x3FFC            
    beql    $at, $zero, lbl_80B425B8   
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B425A4:
    jal     func_80B43490              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B425C4 
    lw      t3, 0x002C($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B425B8:
    jal     func_80B41EC4              
    lw      a1, 0x002C($sp)            
lbl_80B425C0:
    lw      t3, 0x002C($sp)            
lbl_80B425C4:
    lui     t4, 0x0001                 ## t4 = 00010000
    or      a0, s0, $zero              ## a0 = 00000000
    addu    t4, t4, t3                 
    lw      t4, 0x1DE4(t4)             ## 00011DE4
    andi    t5, t4, 0x005F             ## t5 = 00000000
    bnel    t5, $zero, lbl_80B425EC    
    lw      $ra, 0x001C($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39C6          ## a1 = 000039C6
    lw      $ra, 0x001C($sp)           
lbl_80B425EC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B425FC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0601                 ## a1 = 06010000
    addiu   a1, a1, 0xA814             ## a1 = 0600A814
    addiu   a0, a3, 0x0178             ## a0 = 00000178
    lui     a2, 0xC080                 ## a2 = C0800000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0009          ## t6 = 00000009
    lui     a1, %hi(func_80B42648)     ## a1 = 80B40000
    addiu   a1, a1, %lo(func_80B42648) ## a1 = 80B42648
    jal     func_80B41110              
    sw      t6, 0x02DC(a0)             ## 000002DC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B42648:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_80B45BFC              
    or      a1, s0, $zero              ## a1 = 00000000
    bne     v0, $zero, lbl_80B42814    
    lw      a0, 0x0024($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80B413A8              
    or      a2, $zero, $zero           ## a2 = 00000000
    bnel    v0, $zero, lbl_80B42818    
    lw      $ra, 0x001C($sp)           
    lh      a0, 0x00B6(s0)             ## 000000B6
    lh      t6, 0x008A(s0)             ## 0000008A
    subu    v0, t6, a0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    blezl   v0, lbl_80B426DC           
    mtc1    v0, $f6                    ## $f6 = 0.00
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0x3E80                ## $at = 3E800000
    mtc1    $at, $f8                   ## $f8 = 0.25
    cvt.s.w $f6, $f4                   
    lui     $at, 0x44FA                ## $at = 44FA0000
    mtc1    $at, $f16                  ## $f16 = 2000.00
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    v1, $f4                    
    nop
    sll     v1, v1, 16                 
    beq     $zero, $zero, lbl_80B4270C 
    sra     v1, v1, 16                 
    mtc1    v0, $f6                    ## $f6 = 0.00
lbl_80B426DC:
    lui     $at, 0x3E80                ## $at = 3E800000
    mtc1    $at, $f10                  ## $f10 = 0.25
    cvt.s.w $f8, $f6                   
    lui     $at, 0x44FA                ## $at = 44FA0000
    mtc1    $at, $f18                  ## $f18 = 2000.00
    mul.s   $f16, $f8, $f10            
    sub.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    v1, $f6                    
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_80B4270C:
    addu    t9, a0, v1                 
    sh      t9, 0x00B6(s0)             ## 000000B6
    lh      t0, 0x00B6(s0)             ## 000000B6
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    blez    v0, lbl_80B4275C           
    sh      t0, 0x0032(s0)             ## 00000032
    mtc1    v1, $f8                    ## $f8 = 0.00
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f12                  ## $f12 = 1.00
    cvt.s.w $f10, $f8                  
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f16                  ## $f16 = 0.50
    nop
    mul.s   $f2, $f10, $f16            
    c.lt.s  $f12, $f2                  
    nop
    bc1fl   lbl_80B42794               
    neg.s   $f8, $f2                   
    beq     $zero, $zero, lbl_80B42790 
    mov.s   $f2, $f12                  
lbl_80B4275C:
    mtc1    v1, $f18                   ## $f18 = 0.00
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f12                  ## $f12 = -1.00
    cvt.s.w $f4, $f18                  
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f6                   ## $f6 = 0.50
    nop
    mul.s   $f2, $f4, $f6              
    c.lt.s  $f2, $f12                  
    nop
    bc1fl   lbl_80B42794               
    neg.s   $f8, $f2                   
    mov.s   $f2, $f12                  
lbl_80B42790:
    neg.s   $f8, $f2                   
lbl_80B42794:
    jal     func_8008C9C0              
    swc1    $f8, 0x0194(s0)            ## 00000194
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80021A28              
    addiu   a1, $zero, 0x1555          ## a1 = 00001555
    beql    v0, $zero, lbl_80B427F0    
    lw      t1, 0x0024($sp)            
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_80B45FC0)     ## $at = 80B40000
    lwc1    $f10, %lo(var_80B45FC0)($at) 
    or      a0, s0, $zero              ## a0 = 00000000
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80B427E4               
    nop
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B427F0 
    lw      t1, 0x0024($sp)            
lbl_80B427E4:
    jal     func_80B41EC4              
    lw      a1, 0x0024($sp)            
    lw      t1, 0x0024($sp)            
lbl_80B427F0:
    lui     t2, 0x0001                 ## t2 = 00010000
    or      a0, s0, $zero              ## a0 = 00000000
    addu    t2, t2, t1                 
    lw      t2, 0x1DE4(t2)             ## 00011DE4
    andi    t3, t2, 0x005F             ## t3 = 00000000
    bnel    t3, $zero, lbl_80B42818    
    lw      $ra, 0x001C($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39C6          ## a1 = 000039C6
lbl_80B42814:
    lw      $ra, 0x001C($sp)           
lbl_80B42818:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B42828:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xA814             ## a0 = 0600A814
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0601                 ## a1 = 06010000
    cvt.s.w $f6, $f4                   
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0xA814             ## a1 = 0600A814
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lui     $at, 0x4140                ## $at = 41400000
    mtc1    $at, $f12                  ## $f12 = 12.00
    jal     func_80026D90              
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f10                  ## $f10 = 0.50
    neg.s   $f8, $f0                   
    lh      t7, 0x00B6(s0)             ## 000000B6
    mul.s   $f16, $f8, $f10            
    swc1    $f0, 0x0068(s0)            ## 00000068
    sh      t7, 0x0032(s0)             ## 00000032
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f16, 0x0194(s0)           ## 00000194
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f2                   ## $f2 = 30.00
    mtc1    $zero, $f8                 ## $f8 = 0.00
    addiu   t0, $zero, 0x000A          ## t0 = 0000000A
    mul.s   $f18, $f0, $f2             
    lui     a1, %hi(func_80B428FC)     ## a1 = 80B40000
    sw      t0, 0x02DC(s0)             ## 000002DC
    addiu   a1, a1, %lo(func_80B428FC) ## a1 = 80B428FC
    or      a0, s0, $zero              ## a0 = 00000000
    swc1    $f8, 0x02F4(s0)            ## 000002F4
    add.s   $f4, $f18, $f2             
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    jal     func_80B41110              
    sw      t9, 0x02F0(s0)             ## 000002F0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B428FC:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    lw      t7, 0x1C44(t6)             ## 00001C44
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x0FA0          ## a3 = 00000FA0
    sw      t7, 0x0028($sp)            
    lh      a1, 0x008A(s0)             ## 0000008A
    jal     func_80064508              
    sw      t8, 0x0010($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_80B45BFC              
    or      a1, s0, $zero              ## a1 = 00000000
    bne     v0, $zero, lbl_80B42EC4    
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80B413A8              
    or      a2, $zero, $zero           ## a2 = 00000000
    bnel    v0, $zero, lbl_80B42EC8    
    lw      $ra, 0x0024($sp)           
    lh      v0, 0x00B6(s0)             ## 000000B6
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addiu   t9, v0, 0x3A98             ## t9 = 00003A98
    sh      t9, 0x0032(s0)             ## 00000032
    lw      t0, 0x0028($sp)            
    lh      v1, 0x00B6(t0)             ## 000000B6
    addu    v1, v1, $at                
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    subu    a0, v1, v0                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sh      v1, 0x003E($sp)            
    mtc1    $zero, $f2                 ## $f2 = 0.00
    nop
    c.le.s  $f2, $f0                   
    nop
    bc1f    lbl_80B429E4               
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f0                   ## $f0 = -8.00
    lui     $at, 0x3E80                ## $at = 3E800000
    mtc1    $at, $f6                   ## $f6 = 0.25
    lwc1    $f4, 0x0068(s0)            ## 00000068
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x0068(s0)            ## 00000068
    lwc1    $f10, 0x0068(s0)           ## 00000068
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_80B42A48               
    lhu     v0, 0x0088(s0)             ## 00000088
    beq     $zero, $zero, lbl_80B42A44 
    swc1    $f0, 0x0068(s0)            ## 00000068
lbl_80B429E4:
    lh      t1, 0x003E($sp)            
    lh      t2, 0x00B6(s0)             ## 000000B6
    subu    a0, t1, t2                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    mtc1    $zero, $f18                ## $f18 = 0.00
    lui     $at, 0x4100                ## $at = 41000000
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80B42A48               
    lhu     v0, 0x0088(s0)             ## 00000088
    mtc1    $at, $f0                   ## $f0 = 8.00
    lui     $at, 0x3E80                ## $at = 3E800000
    mtc1    $at, $f6                   ## $f6 = 0.25
    lwc1    $f4, 0x0068(s0)            ## 00000068
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0068(s0)            ## 00000068
    lwc1    $f10, 0x0068(s0)           ## 00000068
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80B42A48               
    lhu     v0, 0x0088(s0)             ## 00000088
    swc1    $f0, 0x0068(s0)            ## 00000068
lbl_80B42A44:
    lhu     v0, 0x0088(s0)             ## 00000088
lbl_80B42A48:
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lwc1    $f0, 0x0068(s0)            ## 00000068
    andi    v0, v0, 0x0008             ## v0 = 00000000
    bne     v0, $zero, lbl_80B42A94    
    nop
    lh      a3, 0x00B6(s0)             ## 000000B6
    mfc1    a2, $f0                    
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a3, a3, 0x3E80             ## a3 = 00003E80
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    jal     func_80026850              
    lw      a1, 0x0044($sp)            
    bnel    v0, $zero, lbl_80B42B64    
    lui     $at, 0x4234                ## $at = 42340000
    lhu     v0, 0x0088(s0)             ## 00000088
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lwc1    $f0, 0x0068(s0)            ## 00000068
    andi    v0, v0, 0x0008             ## v0 = 00000000
lbl_80B42A94:
    beq     v0, $zero, lbl_80B42AE4    
    lui     $at, %hi(var_80B45FC4)     ## $at = 80B40000
    c.le.s  $f2, $f0                   
    nop
    bc1fl   lbl_80B42AC4               
    lh      v0, 0x00B6(s0)             ## 000000B6
    lh      v0, 0x00B6(s0)             ## 000000B6
    addiu   v0, v0, 0x3E80             ## v0 = 00003E80
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80B42AD0 
    sra     v0, v0, 16                 
    lh      v0, 0x00B6(s0)             ## 000000B6
lbl_80B42AC4:
    addiu   v0, v0, 0xC180             ## v0 = 00000000
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_80B42AD0:
    lh      t3, 0x007E(s0)             ## 0000007E
    subu    v0, t3, v0                 
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80B42AF4 
    sra     v0, v0, 16                 
lbl_80B42AE4:
    lwc1    $f18, %lo(var_80B45FC4)($at) 
    or      v0, $zero, $zero           ## v0 = 00000000
    mul.s   $f4, $f0, $f18             
    swc1    $f4, 0x0068(s0)            ## 00000068
lbl_80B42AF4:
    bltz    v0, lbl_80B42B04           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80B42B04 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_80B42B04:
    slti    $at, v1, 0x4001            
    bne     $at, $zero, lbl_80B42B60   
    lui     $at, %hi(var_80B45FC8)     ## $at = 80B40000
    lwc1    $f8, %lo(var_80B45FC8)($at) 
    lwc1    $f6, 0x0068(s0)            ## 00000068
    lui     $at, 0x3F00                ## $at = 3F000000
    mul.s   $f10, $f6, $f8             
    swc1    $f10, 0x0068(s0)           ## 00000068
    lwc1    $f0, 0x0068(s0)            ## 00000068
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80B42B54               
    mtc1    $at, $f6                   ## $f6 = 0.50
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f18                  ## $f18 = 0.50
    nop
    sub.s   $f4, $f0, $f18             
    beq     $zero, $zero, lbl_80B42B60 
    swc1    $f4, 0x0068(s0)            ## 00000068
    mtc1    $at, $f6                   ## $f6 = 0.50
lbl_80B42B54:
    nop
    add.s   $f8, $f0, $f6              
    swc1    $f8, 0x0068(s0)            ## 00000068
lbl_80B42B60:
    lui     $at, 0x4234                ## $at = 42340000
lbl_80B42B64:
    mtc1    $at, $f10                  ## $f10 = 45.00
    lwc1    $f0, 0x0090(s0)            ## 00000090
    mtc1    $zero, $f2                 ## $f2 = 0.00
    c.le.s  $f0, $f10                  
    nop
    bc1f    lbl_80B42B9C               
    addiu   a0, s0, 0x02F4             ## a0 = 000002F4
    lui     a1, 0xC080                 ## a1 = C0800000
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x3FC0                 ## a3 = 3FC00000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    beq     $zero, $zero, lbl_80B42BF0 
    lwc1    $f12, 0x02F4(s0)           ## 000002F4
lbl_80B42B9C:
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f18                  ## $f18 = 40.00
    lui     a3, 0x40D4                 ## a3 = 40D40000
    lui     a1, 0x4080                 ## a1 = 40800000
    c.lt.s  $f18, $f0                  
    ori     a3, a3, 0xCCCD             ## a3 = 40D4CCCD
    addiu   a0, s0, 0x02F4             ## a0 = 000002F4
    lui     a2, 0x3F80                 ## a2 = 3F800000
    bc1fl   lbl_80B42BE4               
    mfc1    a1, $f2                    
    addiu   a0, s0, 0x02F4             ## a0 = 000002F4
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x3FC0                 ## a3 = 3FC00000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    beq     $zero, $zero, lbl_80B42BF0 
    lwc1    $f12, 0x02F4(s0)           ## 000002F4
    mfc1    a1, $f2                    
lbl_80B42BE4:
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    lwc1    $f12, 0x02F4(s0)           ## 000002F4
lbl_80B42BF0:
    mtc1    $zero, $f4                 ## $f4 = 0.00
    nop
    c.eq.s  $f4, $f12                  
    nop
    bc1tl   lbl_80B42C44               
    mtc1    $zero, $f16                ## $f16 = 0.00
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lwc1    $f8, 0x02F4(s0)            ## 000002F4
    lwc1    $f6, 0x0024(s0)            ## 00000024
    lh      a0, 0x00B6(s0)             ## 000000B6
    mul.s   $f10, $f0, $f8             
    add.s   $f18, $f6, $f10            
    jal     func_80063684              ## coss?
    swc1    $f18, 0x0024(s0)           ## 00000024
    lwc1    $f12, 0x02F4(s0)           ## 000002F4
    lwc1    $f4, 0x002C(s0)            ## 0000002C
    mul.s   $f8, $f0, $f12             
    add.s   $f6, $f4, $f8              
    swc1    $f6, 0x002C(s0)            ## 0000002C
    mtc1    $zero, $f16                ## $f16 = 0.00
lbl_80B42C44:
    nop
    c.le.s  $f16, $f12                 
    nop
    bc1fl   lbl_80B42C64               
    neg.s   $f14, $f12                 
    beq     $zero, $zero, lbl_80B42C64 
    mov.s   $f14, $f12                 
    neg.s   $f14, $f12                 
lbl_80B42C64:
    lwc1    $f0, 0x0068(s0)            ## 00000068
    c.le.s  $f16, $f0                  
    nop
    bc1fl   lbl_80B42C84               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80B42C84 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80B42C84:
    c.lt.s  $f14, $f2                  
    lui     $at, 0x3F00                ## $at = 3F000000
    bc1fl   lbl_80B42CB0               
    mtc1    $at, $f6                   ## $f6 = 0.50
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f18                  ## $f18 = 0.50
    neg.s   $f10, $f0                  
    mul.s   $f4, $f10, $f18            
    beq     $zero, $zero, lbl_80B42CBC 
    swc1    $f4, 0x0194(s0)            ## 00000194
    mtc1    $at, $f6                   ## $f6 = 0.50
lbl_80B42CB0:
    neg.s   $f8, $f12                  
    mul.s   $f10, $f8, $f6             
    swc1    $f10, 0x0194(s0)           ## 00000194
lbl_80B42CBC:
    lui     $at, 0xC040                ## $at = C0400000
    mtc1    $at, $f2                   ## $f2 = -3.00
    lwc1    $f0, 0x0194(s0)            ## 00000194
    lui     $at, 0x4040                ## $at = 40400000
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80B42CE8               
    mtc1    $at, $f12                  ## $f12 = 3.00
    beq     $zero, $zero, lbl_80B42D0C 
    swc1    $f2, 0x0194(s0)            ## 00000194
    mtc1    $at, $f12                  ## $f12 = 3.00
lbl_80B42CE8:
    nop
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_80B42D08               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80B42D08 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_80B42D08:
    swc1    $f2, 0x0194(s0)            ## 00000194
lbl_80B42D0C:
    lwc1    $f18, 0x0190(s0)           ## 00000190
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    trunc.w.s $f4, $f18                  
    mfc1    v1, $f4                    
    jal     func_8008C9C0              
    sw      v1, 0x0034($sp)            
    mtc1    $zero, $f16                ## $f16 = 0.00
    lwc1    $f0, 0x0194(s0)            ## 00000194
    lw      v1, 0x0034($sp)            
    c.le.s  $f16, $f0                  
    nop
    bc1fl   lbl_80B42D4C               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80B42D4C 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80B42D4C:
    lwc1    $f12, 0x0190(s0)           ## 00000190
    c.le.s  $f16, $f0                  
    sub.s   $f8, $f12, $f2             
    trunc.w.s $f10, $f12                 
    trunc.w.s $f6, $f8                   
    mfc1    t7, $f10                   
    mfc1    v0, $f6                    
    bc1fl   lbl_80B42D7C               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80B42D7C 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80B42D7C:
    beql    v1, t7, lbl_80B42DD4       
    lw      t4, 0x0044($sp)            
    bgez    v0, lbl_80B42DA4           
    slti    $at, v0, 0x0005            
    trunc.w.s $f18, $f2                  
    mfc1    t9, $f18                   
    nop
    addu    t0, t9, v1                 
    bgtzl   t0, lbl_80B42DC8           
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B42DA4:
    beql    $at, $zero, lbl_80B42DD4   
    lw      t4, 0x0044($sp)            
    trunc.w.s $f4, $f2                   
    mfc1    t2, $f4                    
    nop
    addu    t3, t2, v1                 
    slti    $at, t3, 0x0006            
    bne     $at, $zero, lbl_80B42DD0   
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B42DC8:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39A0          ## a1 = 000039A0
lbl_80B42DD0:
    lw      t4, 0x0044($sp)            
lbl_80B42DD4:
    lui     t5, 0x0001                 ## t5 = 00010000
    or      a0, s0, $zero              ## a0 = 00000000
    addu    t5, t5, t4                 
    lw      t5, 0x1DE4(t5)             ## 00011DE4
    andi    t6, t5, 0x005F             ## t6 = 00000000
    bnel    t6, $zero, lbl_80B42DFC    
    lh      t7, 0x003E($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39C6          ## a1 = 000039C6
    lh      t7, 0x003E($sp)            
lbl_80B42DFC:
    lh      t8, 0x00B6(s0)             ## 000000B6
    subu    a0, t7, t8                 
    sll     a0, a0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80B45FCC)     ## $at = 80B40000
    lwc1    $f8, %lo(var_80B45FCC)($at) 
    lw      a0, 0x0044($sp)            
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80B42E68               
    lw      t9, 0x02F0(s0)             ## 000002F0
    jal     func_80026950              
    or      a1, s0, $zero              ## a1 = 00000000
    bne     v0, $zero, lbl_80B42E64    
    lui     $at, 0x4234                ## $at = 42340000
    mtc1    $at, $f6                   ## $f6 = 45.00
    lwc1    $f10, 0x0090(s0)           ## 00000090
    c.le.s  $f10, $f6                  
    nop
    bc1fl   lbl_80B42E68               
    lw      t9, 0x02F0(s0)             ## 000002F0
    jal     func_80B43490              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B42EC8 
    lw      $ra, 0x0024($sp)           
lbl_80B42E64:
    lw      t9, 0x02F0(s0)             ## 000002F0
lbl_80B42E68:
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   t0, t9, 0xFFFF             ## t0 = FFFFFFFF
    bne     t0, $zero, lbl_80B42EC4    
    sw      t0, 0x02F0(s0)             ## 000002F0
    jal     func_80026950              
    lw      a0, 0x0044($sp)            
    beq     v0, $zero, lbl_80B42EBC    
    nop
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f18                  ## $f18 = 0.50
    nop
    c.lt.s  $f18, $f0                  
    nop
    bc1f    lbl_80B42EBC               
    nop
    jal     func_80B43B98              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B42EC8 
    lw      $ra, 0x0024($sp)           
lbl_80B42EBC:
    jal     func_80B41B58              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B42EC4:
    lw      $ra, 0x0024($sp)           
lbl_80B42EC8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B42ED8:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sdc1    $f20, 0x0028($sp)          
    lw      t6, 0x1C44(a1)             ## 00001C44
    lui     a0, 0x0601                 ## a0 = 06010000
    addiu   a0, a0, 0xA814             ## a0 = 0600A814
    jal     func_8008A194              
    sw      t6, 0x0038($sp)            
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f20                ## $f20 = 0.00
    lui     a1, 0x0601                 ## a1 = 06010000
    cvt.s.w $f6, $f4                   
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    mfc1    a3, $f20                   
    sw      t7, 0x0014($sp)            
    addiu   a1, a1, 0xA814             ## a1 = 0600A814
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f20, 0x0018($sp)          
    lw      t8, 0x0038($sp)            
    lh      t9, 0x00B6(s0)             ## 000000B6
    lh      v0, 0x00B6(t8)             ## 000000B6
    subu    a0, v0, t9                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sh      v0, 0x003E($sp)            
    c.lt.s  $f20, $f0                  
    lh      v0, 0x003E($sp)            
    lui     $at, 0xC120                ## $at = C1200000
    bc1fl   lbl_80B42F78               
    lh      t0, 0x00B6(s0)             ## 000000B6
    mtc1    $at, $f8                   ## $f8 = -10.00
    beq     $zero, $zero, lbl_80B42FE4 
    swc1    $f8, 0x0068(s0)            ## 00000068
    lh      t0, 0x00B6(s0)             ## 000000B6
lbl_80B42F78:
    subu    a0, v0, t0                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    c.lt.s  $f0, $f20                  
    lui     $at, 0x4120                ## $at = 41200000
    bc1f    lbl_80B42FA4               
    nop
    mtc1    $at, $f10                  ## $f10 = 10.00
    beq     $zero, $zero, lbl_80B42FE4 
    swc1    $f10, 0x0068(s0)           ## 00000068
lbl_80B42FA4:
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f16                  ## $f16 = 0.50
    lui     $at, 0xC120                ## $at = C1200000
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_80B42FDC               
    mtc1    $at, $f4                   ## $f4 = -10.00
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f18                  ## $f18 = 10.00
    beq     $zero, $zero, lbl_80B42FE4 
    swc1    $f18, 0x0068(s0)           ## 00000068
    mtc1    $at, $f4                   ## $f4 = 10.00
lbl_80B42FDC:
    nop
    swc1    $f4, 0x0068(s0)            ## 00000068
lbl_80B42FE4:
    lwc1    $f6, 0x0068(s0)            ## 00000068
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f10                  ## $f10 = 0.50
    neg.s   $f8, $f6                   
    lh      t1, 0x00B6(s0)             ## 000000B6
    mul.s   $f16, $f8, $f10            
    addiu   t2, $zero, 0x0006          ## t2 = 00000006
    addiu   t3, $zero, 0x0010          ## t3 = 00000010
    lui     a1, %hi(func_80B43040)     ## a1 = 80B40000
    sw      t2, 0x02F0(s0)             ## 000002F0
    swc1    $f20, 0x02F4(s0)           ## 000002F4
    swc1    $f20, 0x02FC(s0)           ## 000002FC
    swc1    $f16, 0x0194(s0)           ## 00000194
    sw      t3, 0x02DC(s0)             ## 000002DC
    addiu   a1, a1, %lo(func_80B43040) ## a1 = 80B43040
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B41110              
    sh      t1, 0x0032(s0)             ## 00000032
    lw      $ra, 0x0034($sp)           
    ldc1    $f20, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80B43040:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lh      t6, 0x008A(s0)             ## 0000008A
    lhu     v0, 0x0088(s0)             ## 00000088
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t7, t6, 0x3A98             ## t7 = 00003A98
    andi    v0, v0, 0x0008             ## v0 = 00000000
    bne     v0, $zero, lbl_80B4309C    
    sh      t7, 0x0032(s0)             ## 00000032
    lh      a3, 0x00B6(s0)             ## 000000B6
    lw      a1, 0x0034($sp)            
    lw      a2, 0x0068(s0)             ## 00000068
    addiu   a3, a3, 0x3E80             ## a3 = 00003E80
    sll     a3, a3, 16                 
    jal     func_80026850              
    sra     a3, a3, 16                 
    bnel    v0, $zero, lbl_80B43138    
    lui     $at, 0x4234                ## $at = 42340000
    lhu     v0, 0x0088(s0)             ## 00000088
    andi    v0, v0, 0x0008             ## v0 = 00000000
lbl_80B4309C:
    beq     v0, $zero, lbl_80B430F4    
    lui     $at, %hi(var_80B45FD0)     ## $at = 80B40000
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lwc1    $f4, 0x0068(s0)            ## 00000068
    c.le.s  $f2, $f4                   
    nop
    bc1fl   lbl_80B430D4               
    lh      v0, 0x00B6(s0)             ## 000000B6
    lh      v0, 0x00B6(s0)             ## 000000B6
    addiu   v0, v0, 0x3E80             ## v0 = 00003E80
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80B430E0 
    sra     v0, v0, 16                 
    lh      v0, 0x00B6(s0)             ## 000000B6
lbl_80B430D4:
    addiu   v0, v0, 0xC180             ## v0 = 00000000
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_80B430E0:
    lh      t8, 0x007E(s0)             ## 0000007E
    subu    v0, t8, v0                 
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80B43108 
    sra     v0, v0, 16                 
lbl_80B430F4:
    lwc1    $f6, 0x0068(s0)            ## 00000068
    lwc1    $f8, %lo(var_80B45FD0)($at) 
    or      v0, $zero, $zero           ## v0 = 00000000
    mul.s   $f10, $f6, $f8             
    swc1    $f10, 0x0068(s0)           ## 00000068
lbl_80B43108:
    bltz    v0, lbl_80B43118           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80B43118 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_80B43118:
    slti    $at, v1, 0x4001            
    bnel    $at, $zero, lbl_80B43138   
    lui     $at, 0x4234                ## $at = 42340000
    jal     func_80B440C0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B43480 
    lw      $ra, 0x0024($sp)           
    lui     $at, 0x4234                ## $at = 42340000
lbl_80B43138:
    mtc1    $at, $f18                  ## $f18 = 45.00
    lwc1    $f0, 0x0090(s0)            ## 00000090
    mtc1    $zero, $f2                 ## $f2 = 0.00
    c.le.s  $f0, $f18                  
    nop
    bc1f    lbl_80B43170               
    addiu   a0, s0, 0x02F4             ## a0 = 000002F4
    lui     a1, 0xC080                 ## a1 = C0800000
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x3FC0                 ## a3 = 3FC00000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    beq     $zero, $zero, lbl_80B431C4 
    lwc1    $f12, 0x02F4(s0)           ## 000002F4
lbl_80B43170:
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f4                   ## $f4 = 40.00
    lui     a3, 0x40D4                 ## a3 = 40D40000
    lui     a1, 0x4080                 ## a1 = 40800000
    c.lt.s  $f4, $f0                   
    ori     a3, a3, 0xCCCD             ## a3 = 40D4CCCD
    addiu   a0, s0, 0x02F4             ## a0 = 000002F4
    lui     a2, 0x3F80                 ## a2 = 3F800000
    bc1fl   lbl_80B431B8               
    mfc1    a1, $f2                    
    addiu   a0, s0, 0x02F4             ## a0 = 000002F4
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x3FC0                 ## a3 = 3FC00000
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    beq     $zero, $zero, lbl_80B431C4 
    lwc1    $f12, 0x02F4(s0)           ## 000002F4
    mfc1    a1, $f2                    
lbl_80B431B8:
    jal     func_80064178              
    swc1    $f2, 0x0010($sp)           
    lwc1    $f12, 0x02F4(s0)           ## 000002F4
lbl_80B431C4:
    mtc1    $zero, $f6                 ## $f6 = 0.00
    nop
    c.eq.s  $f6, $f12                  
    nop
    bc1tl   lbl_80B43218               
    mtc1    $zero, $f16                ## $f16 = 0.00
    jal     func_800636C4              ## sins?
    lh      a0, 0x008A(s0)             ## 0000008A
    lwc1    $f10, 0x02F4(s0)           ## 000002F4
    lwc1    $f8, 0x0024(s0)            ## 00000024
    lh      a0, 0x008A(s0)             ## 0000008A
    mul.s   $f18, $f0, $f10            
    add.s   $f4, $f8, $f18             
    jal     func_80063684              ## coss?
    swc1    $f4, 0x0024(s0)            ## 00000024
    lwc1    $f12, 0x02F4(s0)           ## 000002F4
    lwc1    $f6, 0x002C(s0)            ## 0000002C
    mul.s   $f10, $f0, $f12            
    add.s   $f8, $f6, $f10             
    swc1    $f8, 0x002C(s0)            ## 0000002C
    mtc1    $zero, $f16                ## $f16 = 0.00
lbl_80B43218:
    nop
    c.le.s  $f16, $f12                 
    nop
    bc1fl   lbl_80B43238               
    neg.s   $f14, $f12                 
    beq     $zero, $zero, lbl_80B43238 
    mov.s   $f14, $f12                 
    neg.s   $f14, $f12                 
lbl_80B43238:
    lwc1    $f0, 0x0068(s0)            ## 00000068
    lui     $at, 0x3F00                ## $at = 3F000000
    c.le.s  $f16, $f0                  
    nop
    bc1fl   lbl_80B4325C               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80B4325C 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80B4325C:
    c.lt.s  $f14, $f2                  
    nop
    bc1fl   lbl_80B43288               
    mtc1    $at, $f8                   ## $f8 = 0.50
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    neg.s   $f18, $f0                  
    mul.s   $f6, $f18, $f4             
    beq     $zero, $zero, lbl_80B43294 
    swc1    $f6, 0x0194(s0)            ## 00000194
    mtc1    $at, $f8                   ## $f8 = 0.50
lbl_80B43288:
    neg.s   $f10, $f12                 
    mul.s   $f18, $f10, $f8            
    swc1    $f18, 0x0194(s0)           ## 00000194
lbl_80B43294:
    lui     $at, 0xC040                ## $at = C0400000
    mtc1    $at, $f2                   ## $f2 = -3.00
    lwc1    $f0, 0x0194(s0)            ## 00000194
    lui     $at, 0x4040                ## $at = 40400000
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80B432C0               
    mtc1    $at, $f12                  ## $f12 = 3.00
    beq     $zero, $zero, lbl_80B432E4 
    swc1    $f2, 0x0194(s0)            ## 00000194
    mtc1    $at, $f12                  ## $f12 = 3.00
lbl_80B432C0:
    nop
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_80B432E0               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80B432E0 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_80B432E0:
    swc1    $f2, 0x0194(s0)            ## 00000194
lbl_80B432E4:
    lwc1    $f4, 0x0190(s0)            ## 00000190
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    trunc.w.s $f6, $f4                   
    mfc1    v1, $f6                    
    jal     func_8008C9C0              
    sw      v1, 0x0028($sp)            
    mtc1    $zero, $f16                ## $f16 = 0.00
    lwc1    $f0, 0x0194(s0)            ## 00000194
    lw      v1, 0x0028($sp)            
    c.le.s  $f16, $f0                  
    nop
    bc1fl   lbl_80B43324               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80B43324 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80B43324:
    lwc1    $f12, 0x0190(s0)           ## 00000190
    c.le.s  $f16, $f0                  
    sub.s   $f10, $f12, $f2            
    trunc.w.s $f18, $f12                 
    trunc.w.s $f8, $f10                  
    mfc1    t2, $f18                   
    mfc1    v0, $f8                    
    bc1fl   lbl_80B43354               
    neg.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80B43354 
    mov.s   $f2, $f0                   
    neg.s   $f2, $f0                   
lbl_80B43354:
    beql    v1, t2, lbl_80B433AC       
    lw      t9, 0x0034($sp)            
    bgez    v0, lbl_80B4337C           
    slti    $at, v0, 0x0005            
    trunc.w.s $f4, $f2                   
    mfc1    t4, $f4                    
    nop
    addu    t5, t4, v1                 
    bgtzl   t5, lbl_80B433A0           
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B4337C:
    beql    $at, $zero, lbl_80B433AC   
    lw      t9, 0x0034($sp)            
    trunc.w.s $f6, $f2                   
    mfc1    t7, $f6                    
    nop
    addu    t8, t7, v1                 
    slti    $at, t8, 0x0006            
    bne     $at, $zero, lbl_80B433A8   
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B433A0:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39A0          ## a1 = 000039A0
lbl_80B433A8:
    lw      t9, 0x0034($sp)            
lbl_80B433AC:
    lui     t0, 0x0001                 ## t0 = 00010000
    or      a0, s0, $zero              ## a0 = 00000000
    addu    t0, t0, t9                 
    lw      t0, 0x1DE4(t0)             ## 00011DE4
    andi    t1, t0, 0x005F             ## t1 = 00000000
    bnel    t1, $zero, lbl_80B433D4    
    lw      t2, 0x02F0(s0)             ## 000002F0
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39C6          ## a1 = 000039C6
    lw      t2, 0x02F0(s0)             ## 000002F0
lbl_80B433D4:
    addiu   t3, t2, 0xFFFF             ## t3 = FFFFFFFF
    bne     t3, $zero, lbl_80B43444    
    sw      t3, 0x02F0(s0)             ## 000002F0
    lh      t5, 0x008A(s0)             ## 0000008A
    or      a1, s0, $zero              ## a1 = 00000000
    sh      t5, 0x00B6(s0)             ## 000000B6
    jal     func_80B45BFC              
    lw      a0, 0x0034($sp)            
    bne     v0, $zero, lbl_80B4347C    
    lw      a0, 0x0034($sp)            
    jal     func_80026950              
    or      a1, s0, $zero              ## a1 = 00000000
    bne     v0, $zero, lbl_80B43434    
    lui     $at, 0x428C                ## $at = 428C0000
    mtc1    $at, $f10                  ## $f10 = 70.00
    lwc1    $f8, 0x0090(s0)            ## 00000090
    c.le.s  $f8, $f10                  
    nop
    bc1f    lbl_80B43434               
    nop
    jal     func_80B43490              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B43480 
    lw      $ra, 0x0024($sp)           
lbl_80B43434:
    jal     func_80B43B98              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B43480 
    lw      $ra, 0x0024($sp)           
lbl_80B43444:
    lwc1    $f18, 0x0068(s0)           ## 00000068
    mtc1    $zero, $f4                 ## $f4 = 0.00
    nop
    c.le.s  $f4, $f18                  
    nop
    bc1fl   lbl_80B43474               
    lh      t8, 0x00B6(s0)             ## 000000B6
    lh      t6, 0x00B6(s0)             ## 000000B6
    addiu   t7, t6, 0x4000             ## t7 = 00004000
    beq     $zero, $zero, lbl_80B4347C 
    sh      t7, 0x00B6(s0)             ## 000000B6
    lh      t8, 0x00B6(s0)             ## 000000B6
lbl_80B43474:
    addiu   t9, t8, 0xC000             ## t9 = FFFFC000
    sh      t9, 0x00B6(s0)             ## 000000B6
lbl_80B4347C:
    lw      $ra, 0x0024($sp)           
lbl_80B43480:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B43490:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x03CC             ## a1 = 060003CC
    addiu   a0, a2, 0x0178             ## a0 = 00000178
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   t8, $zero, 0x0007          ## t8 = 00000007
    lbu     t6, 0x036C(a2)             ## 0000036C
    addiu   a1, $zero, 0x39C6          ## a1 = 000039C6
    sw      t8, 0x02DC(a2)             ## 000002DC
    andi    t7, t6, 0xFFFB             ## t7 = 00000000
    sb      t7, 0x036C(a2)             ## 0000036C
    sh      $zero, 0x0302(a2)          ## 00000302
    addiu   a0, a2, 0x00E4             ## a0 = 000000E4
    jal     func_800C95C4              
    swc1    $f4, 0x0068(a2)            ## 00000068
    lui     a1, %hi(func_80B43500)     ## a1 = 80B40000
    lw      a0, 0x0018($sp)            
    jal     func_80B41110              
    addiu   a1, a1, %lo(func_80B43500) ## a1 = 80B43500
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B43500:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lh      v0, 0x00B6(s0)             ## 000000B6
    or      a0, s0, $zero              ## a0 = 00000000
    lw      v1, 0x1C44(t6)             ## 00001C44
    lh      t7, 0x00B6(v1)             ## 000000B6
    subu    t8, t7, v0                 
    sh      t8, 0x0022($sp)            
    lh      t9, 0x008A(s0)             ## 0000008A
    lh      t1, 0x0022($sp)            
    lh      t2, 0x0022($sp)            
    subu    t0, t9, v0                 
    bgez    t1, lbl_80B43550           
    sh      t0, 0x0020($sp)            
    subu    t3, $zero, t2              
    sh      t3, 0x0022($sp)            
lbl_80B43550:
    lh      t4, 0x0020($sp)            
    lh      t5, 0x0020($sp)            
    bgez    t4, lbl_80B43564           
    subu    t6, $zero, t5              
    sh      t6, 0x0020($sp)            
lbl_80B43564:
    lwc1    $f6, 0x0190(s0)            ## 00000190
    mtc1    $zero, $f4                 ## $f4 = 0.00
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    trunc.w.s $f8, $f6                   
    swc1    $f4, 0x0068(s0)            ## 00000068
    mfc1    v0, $f8                    
    nop
    bnel    v0, $at, lbl_80B435A0      
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3998          ## a1 = 00003998
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    beq     $zero, $zero, lbl_80B435AC 
    sh      t8, 0x0300(s0)             ## 00000300
    addiu   $at, $zero, 0x0006         ## $at = 00000006
lbl_80B435A0:
    bne     v0, $at, lbl_80B435AC      
    addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
    sh      t9, 0x0300(s0)             ## 00000300
lbl_80B435AC:
    lbu     v0, 0x036C(s0)             ## 0000036C
    addiu   t1, $zero, 0xFFFF          ## t1 = FFFFFFFF
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t0, v0, 0x0004             ## t0 = 00000000
    beq     t0, $zero, lbl_80B435D8    
    andi    t2, v0, 0xFFF9             ## t2 = 00000000
    sh      t1, 0x0300(s0)             ## 00000300
    jal     func_80B43B98              
    sb      t2, 0x036C(s0)             ## 0000036C
    beq     $zero, $zero, lbl_80B43740 
    lw      $ra, 0x001C($sp)           
lbl_80B435D8:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    beq     v0, $zero, lbl_80B4373C    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80021A28              
    addiu   a1, $zero, 0x1554          ## a1 = 00001554
    bne     v0, $zero, lbl_80B43644    
    nop
    jal     func_80B41B58              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f2                   ## $f2 = 5.00
    addiu   t6, $zero, 0x0014          ## t6 = 00000014
    mul.s   $f10, $f0, $f2             
    add.s   $f16, $f10, $f2            
    trunc.w.s $f18, $f16                 
    mfc1    t4, $f18                   
    nop
    sw      t4, 0x02F0(s0)             ## 000002F0
    lh      t5, 0x0020($sp)            
    slti    $at, t5, 0x4001            
    bnel    $at, $zero, lbl_80B43740   
    lw      $ra, 0x001C($sp)           
    beq     $zero, $zero, lbl_80B4373C 
    sh      t6, 0x02EA(s0)             ## 000002EA
lbl_80B43644:
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_80B45FD4)     ## $at = 80B40000
    lwc1    $f4, %lo(var_80B45FD4)($at) 
    lui     $at, 0x42F0                ## $at = 42F00000
    c.lt.s  $f4, $f0                   
    nop
    bc1t    lbl_80B43684               
    nop
    lwc1    $f6, 0x0090(s0)            ## 00000090
    mtc1    $at, $f8                   ## $f8 = 120.00
    nop
    c.le.s  $f8, $f6                   
    nop
    bc1fl   lbl_80B436BC               
    lh      t9, 0x008A(s0)             ## 0000008A
lbl_80B43684:
    jal     func_80B41B58              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f2                   ## $f2 = 5.00
    nop
    mul.s   $f10, $f0, $f2             
    add.s   $f16, $f10, $f2            
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    beq     $zero, $zero, lbl_80B4373C 
    sw      t8, 0x02F0(s0)             ## 000002F0
    lh      t9, 0x008A(s0)             ## 0000008A
lbl_80B436BC:
    jal     func_800CDCCC              ## Rand.Next() float
    sh      t9, 0x0032(s0)             ## 00000032
    lui     $at, %hi(var_80B45FD8)     ## $at = 80B40000
    lwc1    $f4, %lo(var_80B45FD8)($at) 
    lh      t0, 0x0022($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    c.lt.s  $f4, $f0                   
    slti    $at, t0, 0x2711            
    bc1f    lbl_80B436F4               
    nop
    jal     func_80B44604              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_80B43740 
    lw      $ra, 0x001C($sp)           
lbl_80B436F4:
    beq     $at, $zero, lbl_80B43734   
    lh      t1, 0x0020($sp)            
    slti    $at, t1, 0x3E81            
    bne     $at, $zero, lbl_80B43720   
    lw      a0, 0x002C($sp)            
    lh      t2, 0x008A(s0)             ## 0000008A
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B42828              
    sh      t2, 0x0032(s0)             ## 00000032
    beq     $zero, $zero, lbl_80B43740 
    lw      $ra, 0x001C($sp)           
lbl_80B43720:
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80B413A8              
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    beq     $zero, $zero, lbl_80B43740 
    lw      $ra, 0x001C($sp)           
lbl_80B43734:
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B4373C:
    lw      $ra, 0x001C($sp)           
lbl_80B43740:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B43750:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0F5C             ## a0 = 06000F5C
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    cvt.s.w $f6, $f4                   
    addiu   t6, $zero, 0x0003          ## t6 = 00000003
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x0F5C             ## a1 = 06000F5C
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lbu     t7, 0x036C(s0)             ## 0000036C
    mtc1    $zero, $f8                 ## $f8 = 0.00
    addiu   t9, $zero, 0x000C          ## t9 = 0000000C
    lui     a1, %hi(func_80B437E4)     ## a1 = 80B40000
    andi    t8, t7, 0xFFF9             ## t8 = 00000000
    sb      t8, 0x036C(s0)             ## 0000036C
    sw      t9, 0x02DC(s0)             ## 000002DC
    sh      $zero, 0x0302(s0)          ## 00000302
    addiu   a1, a1, %lo(func_80B437E4) ## a1 = 80B437E4
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B41110              
    swc1    $f8, 0x0068(s0)            ## 00000068
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B437E4:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    lw      t7, 0x1C44(t6)             ## 00001C44
    sw      t7, 0x003C($sp)            
    lh      t8, 0x0302(s0)             ## 00000302
    slti    $at, t8, 0x0002            
    beql    $at, $zero, lbl_80B438D0   
    lwc1    $f8, 0x0190(s0)            ## 00000190
    lbu     v0, 0x036C(s0)             ## 0000036C
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    lui     $at, 0x3FC0                ## $at = 3FC00000
    andi    t9, v0, 0x0004             ## t9 = 00000000
    beq     t9, $zero, lbl_80B43844    
    andi    t2, v0, 0x0002             ## t2 = 00000000
    mtc1    $at, $f4                   ## $f4 = 1.50
    andi    t0, v0, 0xFFF9             ## t0 = 00000000
    sb      t0, 0x036C(s0)             ## 0000036C
    sh      t1, 0x0302(s0)             ## 00000302
    beq     $zero, $zero, lbl_80B438CC 
    swc1    $f4, 0x0194(s0)            ## 00000194
lbl_80B43844:
    beq     t2, $zero, lbl_80B438CC    
    andi    t3, v0, 0xFFFD             ## t3 = 00000000
    sb      t3, 0x036C(s0)             ## 0000036C
    lw      t4, 0x003C($sp)            
    lw      t5, 0x0360(s0)             ## 00000360
    lui     $at, 0x40C0                ## $at = 40C00000
    lw      a0, 0x0044($sp)            
    bnel    t4, t5, lbl_80B438D0       
    lwc1    $f8, 0x0190(s0)            ## 00000190
    mtc1    $at, $f0                   ## $f0 = 6.00
    lh      a3, 0x008A(s0)             ## 0000008A
    or      a1, s0, $zero              ## a1 = 00000000
    mfc1    a2, $f0                    
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sh      t6, 0x0302(s0)             ## 00000302
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0018          ## a2 = 00000018
    lw      a0, 0x0044($sp)            
    addiu   a1, $zero, 0x6003          ## a1 = 00006003
    jal     func_800DCE14              
    or      a2, s0, $zero              ## a2 = 00000000
    mtc1    $zero, $f6                 ## $f6 = 0.00
    addiu   t7, $zero, 0x001E          ## t7 = 0000001E
    sw      t7, 0x02F0(s0)             ## 000002F0
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x39B9          ## a1 = 000039B9
    jal     func_80022FD0              
    swc1    $f6, 0x0068(s0)            ## 00000068
    beq     $zero, $zero, lbl_80B43B88 
    lw      $ra, 0x0034($sp)           
lbl_80B438CC:
    lwc1    $f8, 0x0190(s0)            ## 00000190
lbl_80B438D0:
    trunc.w.s $f10, $f8                  
    mfc1    v0, $f10                   
    nop
    slti    $at, v0, 0x0009            
    beql    $at, $zero, lbl_80B438FC   
    addiu   $at, $zero, 0x000D         ## $at = 0000000D
    lh      v0, 0x008A(s0)             ## 0000008A
    sh      v0, 0x0032(s0)             ## 00000032
    beq     $zero, $zero, lbl_80B439B8 
    sh      v0, 0x00B6(s0)             ## 000000B6
    addiu   $at, $zero, 0x000D         ## $at = 0000000D
lbl_80B438FC:
    bne     v0, $at, lbl_80B43990      
    lw      a0, 0x0044($sp)            
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f16                  ## $f16 = 2.00
    addiu   t9, $zero, 0x0002          ## t9 = 00000002
    sw      t9, 0x0010($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x04C0             ## a2 = 000004C0
    lui     a3, 0x4040                 ## a3 = 40400000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    jal     func_800260E8              
    swc1    $f16, 0x0014($sp)          
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f18                  ## $f18 = 2.00
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    sw      t0, 0x0010($sp)            
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x04B4             ## a2 = 000004B4
    lui     a3, 0x4040                 ## a3 = 40400000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    jal     func_800260E8              
    swc1    $f18, 0x0014($sp)          
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    sh      t1, 0x0300(s0)             ## 00000300
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x3998          ## a1 = 00003998
    jal     func_80022FD0              
    swc1    $f4, 0x0068(s0)            ## 00000068
    beq     $zero, $zero, lbl_80B439B8 
    nop
lbl_80B43990:
    addiu   $at, $zero, 0x0015         ## $at = 00000015
    bnel    v0, $at, lbl_80B439AC      
    addiu   $at, $zero, 0x0018         ## $at = 00000018
    mtc1    $zero, $f6                 ## $f6 = 0.00
    beq     $zero, $zero, lbl_80B439B8 
    swc1    $f6, 0x0068(s0)            ## 00000068
    addiu   $at, $zero, 0x0018         ## $at = 00000018
lbl_80B439AC:
    bne     v0, $at, lbl_80B439B8      
    addiu   t2, $zero, 0xFFFF          ## t2 = FFFFFFFF
    sh      t2, 0x0300(s0)             ## 00000300
lbl_80B439B8:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    beql    v0, $zero, lbl_80B43B88    
    lw      $ra, 0x0034($sp)           
    lh      t3, 0x0302(s0)             ## 00000302
    or      a0, s0, $zero              ## a0 = 00000000
    slti    $at, t3, 0x0002            
    beql    $at, $zero, lbl_80B43B88   
    lw      $ra, 0x0034($sp)           
    jal     func_80021A28              
    addiu   a1, $zero, 0x1554          ## a1 = 00001554
    bnel    v0, $zero, lbl_80B43A28    
    lh      t7, 0x0302(s0)             ## 00000302
    jal     func_80B41B58              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f2                   ## $f2 = 5.00
    addiu   t6, $zero, 0x002E          ## t6 = 0000002E
    sh      t6, 0x02EA(s0)             ## 000002EA
    mul.s   $f8, $f0, $f2              
    add.s   $f10, $f8, $f2             
    trunc.w.s $f16, $f10                 
    mfc1    t5, $f16                   
    beq     $zero, $zero, lbl_80B43B84 
    sw      t5, 0x02F0(s0)             ## 000002F0
    lh      t7, 0x0302(s0)             ## 00000302
lbl_80B43A28:
    beq     t7, $zero, lbl_80B43A40    
    nop
    jal     func_80B43B98              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B43B88 
    lw      $ra, 0x0034($sp)           
lbl_80B43A40:
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_80B45FDC)     ## $at = 80B40000
    lwc1    $f18, %lo(var_80B45FDC)($at) 
    lui     $at, 0x42F0                ## $at = 42F00000
    c.lt.s  $f18, $f0                  
    nop
    bc1t    lbl_80B43A80               
    nop
    lwc1    $f4, 0x0090(s0)            ## 00000090
    mtc1    $at, $f6                   ## $f6 = 120.00
    nop
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_80B43AB8               
    lh      t0, 0x008A(s0)             ## 0000008A
lbl_80B43A80:
    jal     func_80B41B58              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f2                   ## $f2 = 5.00
    nop
    mul.s   $f8, $f0, $f2              
    add.s   $f10, $f8, $f2             
    trunc.w.s $f16, $f10                 
    mfc1    t9, $f16                   
    beq     $zero, $zero, lbl_80B43B84 
    sw      t9, 0x02F0(s0)             ## 000002F0
    lh      t0, 0x008A(s0)             ## 0000008A
lbl_80B43AB8:
    jal     func_800CDCCC              ## Rand.Next() float
    sh      t0, 0x0032(s0)             ## 00000032
    lui     $at, %hi(var_80B45FE0)     ## $at = 80B40000
    lwc1    $f18, %lo(var_80B45FE0)($at) 
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t1, 0x003C($sp)            
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_80B43AF4               
    lh      a0, 0x00B6(s0)             ## 000000B6
    jal     func_80B44604              
    lw      a1, 0x0044($sp)            
    beq     $zero, $zero, lbl_80B43B88 
    lw      $ra, 0x0034($sp)           
    lh      a0, 0x00B6(s0)             ## 000000B6
lbl_80B43AF4:
    lh      t2, 0x00B6(t1)             ## 000000B6
    subu    v0, t2, a0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bgezl   v0, lbl_80B43B1C           
    slti    $at, v0, 0x2711            
    subu    v0, $zero, v0              
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x2711            
lbl_80B43B1C:
    beq     $at, $zero, lbl_80B43B7C   
    nop
    lh      v1, 0x008A(s0)             ## 0000008A
    or      a1, s0, $zero              ## a1 = 00000000
    subu    v0, v1, a0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bgez    v0, lbl_80B43B4C           
    lw      a0, 0x0044($sp)            
    subu    v0, $zero, v0              
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_80B43B4C:
    slti    $at, v0, 0x3E81            
    bne     $at, $zero, lbl_80B43B6C   
    nop
    sh      v1, 0x0032(s0)             ## 00000032
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B43B88 
    lw      $ra, 0x0034($sp)           
lbl_80B43B6C:
    jal     func_80B413A8              
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    beq     $zero, $zero, lbl_80B43B88 
    lw      $ra, 0x0034($sp)           
lbl_80B43B7C:
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B43B84:
    lw      $ra, 0x0034($sp)           
lbl_80B43B88:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B43B98:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x1390             ## a1 = 06001390
    addiu   a0, a3, 0x0178             ## a0 = 00000178
    lui     a2, 0xC040                 ## a2 = C0400000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0xC100                ## $at = C1000000
    mtc1    $at, $f4                   ## $f4 = -8.00
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   t7, $zero, 0x0004          ## t7 = 00000004
    addiu   a1, $zero, 0x386C          ## a1 = 0000386C
    sw      $zero, 0x02F0(a0)          ## 000002F0
    sh      t6, 0x0308(a0)             ## 00000308
    sw      t7, 0x02DC(a0)             ## 000002DC
    jal     func_80022FD0              
    swc1    $f4, 0x0068(a0)            ## 00000068
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_80B43C14)     ## a1 = 80B40000
    addiu   a1, a1, %lo(func_80B43C14) ## a1 = 80B43C14
    lh      v0, 0x008A(a0)             ## 0000008A
    sh      v0, 0x0032(a0)             ## 00000032
    jal     func_80B41110              
    sh      v0, 0x00B6(a0)             ## 000000B6
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B43C14:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    beq     v0, $zero, lbl_80B43CE4    
    lw      a0, 0x0024($sp)            
    jal     func_80026950              
    or      a1, s0, $zero              ## a1 = 00000000
    bne     v0, $zero, lbl_80B43CAC    
    lui     $at, 0x432A                ## $at = 432A0000
    lwc1    $f0, 0x0090(s0)            ## 00000090
    mtc1    $at, $f4                   ## $f4 = 170.00
    lui     $at, 0x430C                ## $at = 430C0000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80B43CB0               
    lw      t6, 0x0024($sp)            
    mtc1    $at, $f6                   ## $f6 = 140.00
    nop
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80B43CB0               
    lw      t6, 0x0024($sp)            
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_80B45FE4)     ## $at = 80B40000
    lwc1    $f8, %lo(var_80B45FE4)($at) 
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80B43CB0               
    lw      t6, 0x0024($sp)            
    jal     func_80B43750              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B43CE8 
    lw      t9, 0x0024($sp)            
lbl_80B43CAC:
    lw      t6, 0x0024($sp)            
lbl_80B43CB0:
    lui     t7, 0x0001                 ## t7 = 00010000
    or      a0, s0, $zero              ## a0 = 00000000
    addu    t7, t7, t6                 
    lw      t7, 0x1DE4(t7)             ## 00011DE4
    andi    t8, t7, 0x0001             ## t8 = 00000000
    beq     t8, $zero, lbl_80B43CDC    
    nop
    jal     func_80B44604              
    or      a1, t6, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80B43CE8 
    lw      t9, 0x0024($sp)            
lbl_80B43CDC:
    jal     func_80B41B58              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B43CE4:
    lw      t9, 0x0024($sp)            
lbl_80B43CE8:
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t0, 0x009C(t9)             ## 0000009C
    andi    t1, t0, 0x005F             ## t1 = 00000000
    bnel    t1, $zero, lbl_80B43D08    
    lw      $ra, 0x001C($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39C6          ## a1 = 000039C6
    lw      $ra, 0x001C($sp)           
lbl_80B43D08:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B43D18:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lhu     t6, 0x0088(a3)             ## 00000088
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x2280             ## a1 = 06002280
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beq     t7, $zero, lbl_80B43D48    
    addiu   a0, a3, 0x0178             ## a0 = 00000178
    mtc1    $zero, $f4                 ## $f4 = 0.00
    nop
    swc1    $f4, 0x0068(a3)            ## 00000068
lbl_80B43D48:
    lbu     v0, 0x02EE(a3)             ## 000002EE
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    addiu   a2, $zero, 0x0000          ## a2 = 00000000
    bne     v0, $at, lbl_80B43D6C      
    nop
    lw      t8, 0x02DC(a3)             ## 000002DC
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    bnel    t8, $at, lbl_80B43D80      
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
lbl_80B43D6C:
    jal     func_8008D278              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lbu     v0, 0x02EE(a3)             ## 000002EE
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
lbl_80B43D80:
    bne     v0, $at, lbl_80B43D90      
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   t9, $zero, 0x0024          ## t9 = 00000024
    sh      t9, 0x02EC(a3)             ## 000002EC
lbl_80B43D90:
    addiu   a1, $zero, 0x389E          ## a1 = 0000389E
    jal     func_80022FD0              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t0, $zero, 0x000F          ## t0 = 0000000F
    lui     a1, %hi(func_80B43DC4)     ## a1 = 80B40000
    addiu   a1, a1, %lo(func_80B43DC4) ## a1 = 80B43DC4
    jal     func_80B41110              
    sw      t0, 0x02DC(a0)             ## 000002DC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B43DC4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lhu     v0, 0x0088(a3)             ## 00000088
    andi    t6, v0, 0x0002             ## t6 = 00000000
    beql    t6, $zero, lbl_80B43DF4    
    andi    t7, v0, 0x0001             ## t7 = 00000000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lhu     v0, 0x0088(a3)             ## 00000088
    swc1    $f4, 0x0068(a3)            ## 00000068
    andi    t7, v0, 0x0001             ## t7 = 00000000
lbl_80B43DF4:
    beql    t7, $zero, lbl_80B43E2C    
    lbu     t8, 0x0114(a3)             ## 00000114
    lwc1    $f0, 0x0068(a3)            ## 00000068
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     $at, %hi(var_80B45FE8)     ## $at = 80B40000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80B43E28               
    sh      $zero, 0x0308(a3)          ## 00000308
    lwc1    $f8, %lo(var_80B45FE8)($at) 
    add.s   $f10, $f0, $f8             
    swc1    $f10, 0x0068(a3)           ## 00000068
    sh      $zero, 0x0308(a3)          ## 00000308
lbl_80B43E28:
    lbu     t8, 0x0114(a3)             ## 00000114
lbl_80B43E2C:
    bnel    t8, $zero, lbl_80B43E74    
    lw      $ra, 0x0014($sp)           
    lhu     t9, 0x0088(a3)             ## 00000088
    andi    t0, t9, 0x0001             ## t0 = 00000000
    beql    t0, $zero, lbl_80B43E74    
    lw      $ra, 0x0014($sp)           
    lbu     t1, 0x00AF(a3)             ## 000000AF
    lw      a0, 0x001C($sp)            
    or      a1, a3, $zero              ## a1 = 00000000
    bne     t1, $zero, lbl_80B43E68    
    nop
    jal     func_80B44EB4              
    or      a0, a3, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B43E74 
    lw      $ra, 0x0014($sp)           
lbl_80B43E68:
    jal     func_80B413A8              
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    lw      $ra, 0x0014($sp)           
lbl_80B43E74:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B43E80:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x2280             ## a1 = 06002280
    addiu   a0, a3, 0x0178             ## a0 = 00000178
    lui     a2, 0xC080                 ## a2 = C0800000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     $at, 0xC080                ## $at = C0800000
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    lhu     t6, 0x0088(a3)             ## 00000088
    or      a0, a3, $zero              ## a0 = 00000000
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beql    t7, $zero, lbl_80B43ED8    
    sh      t8, 0x0308(a3)             ## 00000308
    mtc1    $at, $f4                   ## $f4 = -4.00
    sh      $zero, 0x0308(a3)          ## 00000308
    beq     $zero, $zero, lbl_80B43ED8 
    swc1    $f4, 0x0068(a3)            ## 00000068
    sh      t8, 0x0308(a3)             ## 00000308
lbl_80B43ED8:
    lh      t9, 0x008A(a3)             ## 0000008A
    sh      $zero, 0x02EA(a3)          ## 000002EA
    addiu   a1, $zero, 0x3999          ## a1 = 00003999
    sh      t9, 0x0032(a3)             ## 00000032
    jal     func_80022FD0              
    sw      a3, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t0, $zero, 0x0002          ## t0 = 00000002
    lui     a1, %hi(func_80B43F18)     ## a1 = 80B40000
    addiu   a1, a1, %lo(func_80B43F18) ## a1 = 80B43F18
    jal     func_80B41110              
    sw      t0, 0x02DC(a0)             ## 000002DC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B43F18:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lhu     v0, 0x0088(s0)             ## 00000088
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    andi    t6, v0, 0x0002             ## t6 = 00000000
    beq     t6, $zero, lbl_80B43F50    
    addiu   a3, $zero, 0x1194          ## a3 = 00001194
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lhu     v0, 0x0088(s0)             ## 00000088
    swc1    $f4, 0x0068(s0)            ## 00000068
lbl_80B43F50:
    andi    t7, v0, 0x0001             ## t7 = 00000000
    beql    t7, $zero, lbl_80B43F8C    
    lh      a1, 0x008A(s0)             ## 0000008A
    lwc1    $f0, 0x0068(s0)            ## 00000068
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     $at, %hi(var_80B45FEC)     ## $at = 80B40000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80B43F88               
    sh      $zero, 0x0308(s0)          ## 00000308
    lwc1    $f8, %lo(var_80B45FEC)($at) 
    add.s   $f10, $f0, $f8             
    swc1    $f10, 0x0068(s0)           ## 00000068
    sh      $zero, 0x0308(s0)          ## 00000308
lbl_80B43F88:
    lh      a1, 0x008A(s0)             ## 0000008A
lbl_80B43F8C:
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x002C($sp)            
    jal     func_80B45BFC              
    or      a1, s0, $zero              ## a1 = 00000000
    bne     v0, $zero, lbl_80B440AC    
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80B413A8              
    or      a2, $zero, $zero           ## a2 = 00000000
    bnel    v0, $zero, lbl_80B440B0    
    lw      $ra, 0x0024($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    beql    v0, $zero, lbl_80B440B0    
    lw      $ra, 0x0024($sp)           
    lhu     v0, 0x0088(s0)             ## 00000088
    andi    t8, v0, 0x0001             ## t8 = 00000000
    beql    t8, $zero, lbl_80B440B0    
    lw      $ra, 0x0024($sp)           
    lh      t9, 0x007E(s0)             ## 0000007E
    lh      t0, 0x00B6(s0)             ## 000000B6
    andi    t1, v0, 0x0008             ## t1 = 00000000
    lw      a0, 0x002C($sp)            
    subu    v1, t9, t0                 
    sll     v1, v1, 16                 
    beq     t1, $zero, lbl_80B44040    
    sra     v1, v1, 16                 
    bltz    v1, lbl_80B4400C           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80B4400C 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80B4400C:
    slti    $at, v0, 0x2EE0            
    beq     $at, $zero, lbl_80B44040   
    lui     $at, 0x42B4                ## $at = 42B40000
    mtc1    $at, $f18                  ## $f18 = 90.00
    lwc1    $f16, 0x0090(s0)           ## 00000090
    c.lt.s  $f16, $f18                 
    nop
    bc1f    lbl_80B44040               
    nop
    jal     func_80B440C0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B440B0 
    lw      $ra, 0x0024($sp)           
lbl_80B44040:
    jal     func_80B45BFC              
    or      a1, s0, $zero              ## a1 = 00000000
    bne     v0, $zero, lbl_80B440AC    
    lui     $at, 0x4234                ## $at = 42340000
    mtc1    $at, $f4                   ## $f4 = 45.00
    lwc1    $f6, 0x0090(s0)            ## 00000090
    lw      a0, 0x002C($sp)            
    c.le.s  $f6, $f4                   
    nop
    bc1f    lbl_80B440A4               
    nop
    jal     func_80026950              
    or      a1, s0, $zero              ## a1 = 00000000
    bne     v0, $zero, lbl_80B440A4    
    lw      t2, 0x002C($sp)            
    lui     t3, 0x0001                 ## t3 = 00010000
    addu    t3, t3, t2                 
    lw      t3, 0x1DE4(t3)             ## 00011DE4
    andi    t4, t3, 0x0007             ## t4 = 00000000
    beq     t4, $zero, lbl_80B440A4    
    nop
    jal     func_80B43490              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B440B0 
    lw      $ra, 0x0024($sp)           
lbl_80B440A4:
    jal     func_80B43B98              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B440AC:
    lw      $ra, 0x0024($sp)           
lbl_80B440B0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B440C0:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1390             ## a0 = 06001390
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC040                ## $at = C0400000
    mtc1    $at, $f8                   ## $f8 = -3.00
    cvt.s.w $f4, $f4                   
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x1390             ## a1 = 06001390
    mfc1    a3, $f4                    
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    lui     a2, 0xBF80                 ## a2 = BF800000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0010($sp)           
    lui     $at, 0x40D0                ## $at = 40D00000
    mtc1    $at, $f10                  ## $f10 = 6.50
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f16                  ## $f16 = 15.00
    addiu   t7, $zero, 0x0003          ## t7 = 00000003
    sw      $zero, 0x02F0(s0)          ## 000002F0
    sh      $zero, 0x0308(s0)          ## 00000308
    sw      t7, 0x02DC(s0)             ## 000002DC
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x386C          ## a1 = 0000386C
    swc1    $f10, 0x0068(s0)           ## 00000068
    jal     func_80022FD0              
    swc1    $f16, 0x0060(s0)           ## 00000060
    lh      t8, 0x00B6(s0)             ## 000000B6
    lui     a1, %hi(func_80B44178)     ## a1 = 80B40000
    addiu   a1, a1, %lo(func_80B44178) ## a1 = 80B44178
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B41110              
    sh      t8, 0x0032(s0)             ## 00000032
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B44178:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      a1, 0x008A(s0)             ## 0000008A
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0FA0          ## a3 = 00000FA0
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f6                   ## $f6 = 5.00
    lwc1    $f4, 0x0060(s0)            ## 00000060
    lw      a0, 0x002C($sp)            
    c.le.s  $f6, $f4                   
    nop
    bc1f    lbl_80B441DC               
    nop
    jal     func_80028320              
    addiu   a1, s0, 0x04C0             ## a1 = 000004C0
    lw      a0, 0x002C($sp)            
    jal     func_80028320              
    addiu   a1, s0, 0x04B4             ## a1 = 000004B4
lbl_80B441DC:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    beql    v0, $zero, lbl_80B44250    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0088(s0)             ## 00000088
    or      a1, s0, $zero              ## a1 = 00000000
    andi    t8, t7, 0x0003             ## t8 = 00000000
    beql    t8, $zero, lbl_80B44250    
    lw      $ra, 0x0024($sp)           
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lh      v0, 0x008A(s0)             ## 0000008A
    lwc1    $f8, 0x0080(s0)            ## 00000080
    sh      $zero, 0x00B4(s0)          ## 000000B4
    sh      v0, 0x00B6(s0)             ## 000000B6
    sh      v0, 0x0032(s0)             ## 00000032
    swc1    $f0, 0x0068(s0)            ## 00000068
    swc1    $f0, 0x0060(s0)            ## 00000060
    swc1    $f8, 0x0028(s0)            ## 00000028
    jal     func_80026950              
    lw      a0, 0x002C($sp)            
    bne     v0, $zero, lbl_80B44244    
    nop
    jal     func_80B43490              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B44250 
    lw      $ra, 0x0024($sp)           
lbl_80B44244:
    jal     func_80B41B58              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80B44250:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B44260:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x1578             ## a0 = 06001578
    lh      t6, 0x0300(s0)             ## 00000300
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f2                 ## $f2 = 0.00
    beq     t6, $zero, lbl_80B44298    
    cvt.s.w $f14, $f4                  
    addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
    sh      t7, 0x0300(s0)             ## 00000300
lbl_80B44298:
    addiu   t8, $zero, 0x0006          ## t8 = 00000006
    lui     $at, 0x4120                ## $at = 41200000
    swc1    $f2, 0x0068(s0)            ## 00000068
    sw      t8, 0x02DC(s0)             ## 000002DC
    mtc1    $at, $f12                  ## $f12 = 10.00
    jal     func_80026D90              
    swc1    $f14, 0x0034($sp)          
    trunc.w.s $f6, $f0                   
    mtc1    $zero, $f2                 ## $f2 = 0.00
    lwc1    $f14, 0x0034($sp)          
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    t0, $f6                    
    addiu   t2, $zero, 0x0002          ## t2 = 00000002
    mfc1    a2, $f2                    
    addiu   t1, t0, 0x000A             ## t1 = 0000000A
    sw      t1, 0x02F0(s0)             ## 000002F0
    mfc1    a3, $f2                    
    sw      t2, 0x0014($sp)            
    addiu   a1, a1, 0x1578             ## a1 = 06001578
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    swc1    $f2, 0x0018($sp)           
    jal     func_8008D17C              
    swc1    $f14, 0x0010($sp)          
    lui     a1, %hi(func_80B44318)     ## a1 = 80B40000
    addiu   a1, a1, %lo(func_80B44318) ## a1 = 80B44318
    jal     func_80B41110              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B44318:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lw      v0, 0x02F0(s0)             ## 000002F0
    lw      t6, 0x003C($sp)            
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    beq     v0, $zero, lbl_80B4434C    
    lw      t1, 0x1C44(t6)             ## 00001C44
    addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80B4435C 
    sw      t7, 0x02F0(s0)             ## 000002F0
lbl_80B4434C:
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    nop
    swc1    $f4, 0x0194(s0)            ## 00000194
lbl_80B4435C:
    jal     func_8008C9C0              
    sw      t1, 0x0034($sp)            
    beq     v0, $zero, lbl_80B44504    
    lw      t1, 0x0034($sp)            
    lh      t0, 0x00B6(s0)             ## 000000B6
    lh      t8, 0x008A(s0)             ## 0000008A
    subu    v0, t8, t0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80B44390           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80B44390 
    or      v1, v0, $zero              ## v1 = 00000000
lbl_80B44390:
    slti    $at, v1, 0x4001            
    beq     $at, $zero, lbl_80B444F4   
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f8                   ## $f8 = 40.00
    lwc1    $f6, 0x0090(s0)            ## 00000090
    lui     $at, 0x4248                ## $at = 42480000
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_80B444F4               
    nop
    lwc1    $f0, 0x0094(s0)            ## 00000094
    mtc1    $zero, $f10                ## $f10 = 0.00
    mtc1    $at, $f16                  ## $f16 = 50.00
    lw      a0, 0x003C($sp)            
    c.le.s  $f10, $f0                  
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a2, 0x42C8                 ## a2 = 42C80000
    addiu   a3, $zero, 0x2710          ## a3 = 00002710
    bc1f    lbl_80B443E8               
    addiu   t9, $zero, 0x4000          ## t9 = 00004000
    beq     $zero, $zero, lbl_80B443EC 
    mov.s   $f2, $f0                   
lbl_80B443E8:
    neg.s   $f2, $f0                   
lbl_80B443EC:
    c.lt.s  $f2, $f16                  
    nop
    bc1f    lbl_80B444F4               
    nop
    sw      t9, 0x0010($sp)            
    sw      t0, 0x0014($sp)            
    jal     func_8002821C              
    sw      t1, 0x0034($sp)            
    beq     v0, $zero, lbl_80B44470    
    lw      t1, 0x0034($sp)            
    lb      t2, 0x0832(t1)             ## 00000832
    addiu   $at, $zero, 0x0011         ## $at = 00000011
    lw      t3, 0x003C($sp)            
    bne     t2, $at, lbl_80B4443C      
    lui     t4, 0x0001                 ## t4 = 00010000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B42ED8              
    lw      a1, 0x003C($sp)            
    beq     $zero, $zero, lbl_80B445F0 
    nop
lbl_80B4443C:
    addu    t4, t4, t3                 
    lw      t4, 0x1DE4(t4)             ## 00001DE4
    andi    t5, t4, 0x0001             ## t5 = 00000000
    beq     t5, $zero, lbl_80B44460    
    nop
    jal     func_80B44260              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B445F0 
    nop
lbl_80B44460:
    jal     func_80B43B98              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B445F4 
    lw      $ra, 0x0024($sp)           
lbl_80B44470:
    lh      t6, 0x00B6(t1)             ## 000000B6
    lh      t7, 0x00B6(s0)             ## 000000B6
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    subu    a2, t6, t7                 
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    jal     func_80026950              
    sh      a2, 0x002C($sp)            
    bne     v0, $zero, lbl_80B444E4    
    lh      a2, 0x002C($sp)            
    lw      t8, 0x003C($sp)            
    lui     t9, 0x0001                 ## t9 = 00010000
    addu    t9, t9, t8                 
    lw      t9, 0x1DE4(t9)             ## 00011DE4
    andi    t2, t9, 0x0001             ## t2 = 00000000
    bne     t2, $zero, lbl_80B444D4    
    nop
    bltz    a2, lbl_80B444C8           
    subu    v1, $zero, a2              
    beq     $zero, $zero, lbl_80B444C8 
    or      v1, a2, $zero              ## v1 = 00000000
lbl_80B444C8:
    slti    $at, v1, 0x38E0            
    beq     $at, $zero, lbl_80B444E4   
    nop
lbl_80B444D4:
    jal     func_80B43490              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B445F4 
    lw      $ra, 0x0024($sp)           
lbl_80B444E4:
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B445F4 
    lw      $ra, 0x0024($sp)           
lbl_80B444F4:
    jal     func_80B42828              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B445F4 
    lw      $ra, 0x0024($sp)           
lbl_80B44504:
    lw      t3, 0x02F0(s0)             ## 000002F0
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    bne     t3, $zero, lbl_80B445F0    
    lui     a2, 0x42C8                 ## a2 = 42C80000
    addiu   t4, $zero, 0x4000          ## t4 = 00004000
    sw      t4, 0x0010($sp)            
    lh      t5, 0x00B6(s0)             ## 000000B6
    sw      t1, 0x0034($sp)            
    addiu   a3, $zero, 0x2710          ## a3 = 00002710
    jal     func_8002821C              
    sw      t5, 0x0014($sp)            
    beq     v0, $zero, lbl_80B445F0    
    lw      t1, 0x0034($sp)            
    lb      t6, 0x0832(t1)             ## 00000832
    addiu   $at, $zero, 0x0011         ## $at = 00000011
    lw      a1, 0x003C($sp)            
    bne     t6, $at, lbl_80B44560      
    lw      a0, 0x003C($sp)            
    jal     func_80B42ED8              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B445F4 
    lw      $ra, 0x0024($sp)           
lbl_80B44560:
    jal     func_80B45BFC              
    or      a1, s0, $zero              ## a1 = 00000000
    bne     v0, $zero, lbl_80B445F0    
    lw      t7, 0x003C($sp)            
    lui     t8, 0x0001                 ## t8 = 00010000
    addu    t8, t8, t7                 
    lw      t8, 0x1DE4(t8)             ## 00011DE4
    lui     $at, 0x42C8                ## $at = 42C80000
    andi    t9, t8, 0x0001             ## t9 = 00000000
    beq     t9, $zero, lbl_80B445E8    
    nop
    lwc1    $f18, 0x0090(s0)           ## 00000090
    mtc1    $at, $f4                   ## $f4 = 100.00
    nop
    c.lt.s  $f18, $f4                  
    nop
    bc1f    lbl_80B445D8               
    nop
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_80B45FF0)     ## $at = 80B40000
    lwc1    $f6, %lo(var_80B45FF0)($at) 
    c.lt.s  $f6, $f0                   
    nop
    bc1f    lbl_80B445D8               
    nop
    jal     func_80B440C0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B445F4 
    lw      $ra, 0x0024($sp)           
lbl_80B445D8:
    jal     func_80B43B98              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B445F4 
    lw      $ra, 0x0024($sp)           
lbl_80B445E8:
    jal     func_80B44260              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B445F0:
    lw      $ra, 0x0024($sp)           
lbl_80B445F4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B44604:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lui     a0, 0x0601                 ## a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xA814             ## a0 = 0600A814
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0601                 ## a1 = 06010000
    cvt.s.w $f6, $f4                   
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0xA814             ## a1 = 0600A814
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x003C($sp)            
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    lw      t8, 0x1C44(t7)             ## 00001C44
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x0FA0          ## a3 = 00000FA0
    sw      t8, 0x0030($sp)            
    lh      a1, 0x008A(s0)             ## 0000008A
    jal     func_80064508              
    sw      t9, 0x0010($sp)            
    lw      t0, 0x0030($sp)            
    lh      t1, 0x00B6(s0)             ## 000000B6
    lh      v1, 0x00B6(t0)             ## 000000B6
    subu    a0, v1, t1                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sh      v1, 0x0036($sp)            
    mtc1    $zero, $f8                 ## $f8 = 0.00
    lh      v1, 0x0036($sp)            
    lui     $at, 0xC0C0                ## $at = C0C00000
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_80B446CC               
    lh      t2, 0x00B6(s0)             ## 000000B6
    mtc1    $at, $f10                  ## $f10 = -6.00
    beq     $zero, $zero, lbl_80B44714 
    swc1    $f10, 0x0068(s0)           ## 00000068
    lh      t2, 0x00B6(s0)             ## 000000B6
lbl_80B446CC:
    subu    a0, v1, t2                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    mtc1    $zero, $f16                ## $f16 = 0.00
    lui     $at, 0x4140                ## $at = 41400000
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80B44708               
    mtc1    $at, $f12                  ## $f12 = 12.00
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $at, $f18                  ## $f18 = 6.00
    beq     $zero, $zero, lbl_80B44714 
    swc1    $f18, 0x0068(s0)           ## 00000068
    mtc1    $at, $f12                  ## $f12 = 6.00
lbl_80B44708:
    jal     func_80026D90              
    nop
    swc1    $f0, 0x0068(s0)            ## 00000068
lbl_80B44714:
    lwc1    $f4, 0x0068(s0)            ## 00000068
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f8                   ## $f8 = 0.50
    neg.s   $f6, $f4                   
    lh      t3, 0x00B6(s0)             ## 000000B6
    mul.s   $f10, $f6, $f8             
    mtc1    $zero, $f16                ## $f16 = 0.00
    addiu   t4, t3, 0x3FFF             ## t4 = 00003FFF
    sh      t4, 0x0032(s0)             ## 00000032
    swc1    $f16, 0x02F4(s0)           ## 000002F4
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f10, 0x0194(s0)           ## 00000194
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f18                  ## $f18 = 10.00
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f6                   ## $f6 = 5.00
    mul.s   $f4, $f0, $f18             
    addiu   t7, $zero, 0x000D          ## t7 = 0000000D
    lui     a1, %hi(func_80B44794)     ## a1 = 80B40000
    sw      t7, 0x02DC(s0)             ## 000002DC
    addiu   a1, a1, %lo(func_80B44794) ## a1 = 80B44794
    or      a0, s0, $zero              ## a0 = 00000000
    add.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t6, $f10                   
    jal     func_80B41110              
    sw      t6, 0x02F0(s0)             ## 000002F0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B44794:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x005C($sp)            
    lw      t6, 0x005C($sp)            
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    lw      t7, 0x1C44(t6)             ## 00001C44
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x0BB8          ## a3 = 00000BB8
    sw      t7, 0x0050($sp)            
    lh      a1, 0x008A(s0)             ## 0000008A
    jal     func_80064508              
    sw      t8, 0x0010($sp)            
    lw      t9, 0x0050($sp)            
    ori     $at, $zero, 0x8000         ## $at = 00008000
    lh      t0, 0x00B6(s0)             ## 000000B6
    lh      v1, 0x00B6(t9)             ## 000000B6
    addu    v1, v1, $at                
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    subu    a0, v1, t0                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sh      v1, 0x0056($sp)            
    mtc1    $zero, $f12                ## $f12 = 0.00
    lh      v1, 0x0056($sp)            
    c.lt.s  $f12, $f0                  
    nop
    bc1f    lbl_80B4482C               
    lui     $at, 0x3E00                ## $at = 3E000000
    mtc1    $at, $f6                   ## $f6 = 0.13
    lwc1    $f4, 0x0068(s0)            ## 00000068
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80B4486C 
    swc1    $f8, 0x0068(s0)            ## 00000068
lbl_80B4482C:
    lh      t1, 0x00B6(s0)             ## 000000B6
    subu    a0, v1, t1                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    mtc1    $zero, $f12                ## $f12 = 0.00
    lui     $at, 0x3E00                ## $at = 3E000000
    c.le.s  $f0, $f12                  
    nop
    bc1fl   lbl_80B44870               
    lhu     v0, 0x0088(s0)             ## 00000088
    lwc1    $f10, 0x0068(s0)           ## 00000068
    mtc1    $at, $f18                  ## $f18 = 0.13
    nop
    sub.s   $f4, $f10, $f18            
    swc1    $f4, 0x0068(s0)            ## 00000068
lbl_80B4486C:
    lhu     v0, 0x0088(s0)             ## 00000088
lbl_80B44870:
    andi    v0, v0, 0x0008             ## v0 = 00000000
    bne     v0, $zero, lbl_80B448B0    
    nop
    lh      a3, 0x00B6(s0)             ## 000000B6
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x005C($sp)            
    addiu   a3, a3, 0x3E80             ## a3 = 00003E80
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    jal     func_80026850              
    lw      a2, 0x0068(s0)             ## 00000068
    mtc1    $zero, $f12                ## $f12 = 0.00
    bnel    v0, $zero, lbl_80B44988    
    lwc1    $f8, 0x0068(s0)            ## 00000068
    lhu     v0, 0x0088(s0)             ## 00000088
    andi    v0, v0, 0x0008             ## v0 = 00000000
lbl_80B448B0:
    beq     v0, $zero, lbl_80B44904    
    lui     $at, %hi(var_80B45FF4)     ## $at = 80B40000
    lwc1    $f6, 0x0068(s0)            ## 00000068
    c.le.s  $f12, $f6                  
    nop
    bc1fl   lbl_80B448E4               
    lh      v1, 0x00B6(s0)             ## 000000B6
    lh      v1, 0x00B6(s0)             ## 000000B6
    addiu   v1, v1, 0x3E80             ## v1 = 00003E80
    sll     v1, v1, 16                 
    beq     $zero, $zero, lbl_80B448F0 
    sra     v1, v1, 16                 
    lh      v1, 0x00B6(s0)             ## 000000B6
lbl_80B448E4:
    addiu   v1, v1, 0xC180             ## v1 = 00000000
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_80B448F0:
    lh      t2, 0x007E(s0)             ## 0000007E
    subu    v1, t2, v1                 
    sll     v1, v1, 16                 
    beq     $zero, $zero, lbl_80B44918 
    sra     v1, v1, 16                 
lbl_80B44904:
    lwc1    $f8, 0x0068(s0)            ## 00000068
    lwc1    $f10, %lo(var_80B45FF4)($at) 
    or      v1, $zero, $zero           ## v1 = 00000000
    mul.s   $f18, $f8, $f10            
    swc1    $f18, 0x0068(s0)           ## 00000068
lbl_80B44918:
    bltz    v1, lbl_80B44928           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_80B44928 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80B44928:
    slti    $at, v0, 0x4001            
    bne     $at, $zero, lbl_80B44984   
    lui     $at, %hi(var_80B45FF8)     ## $at = 80B40000
    lwc1    $f6, %lo(var_80B45FF8)($at) 
    lwc1    $f4, 0x0068(s0)            ## 00000068
    lui     $at, 0x3F00                ## $at = 3F000000
    mul.s   $f8, $f4, $f6              
    swc1    $f8, 0x0068(s0)            ## 00000068
    lwc1    $f0, 0x0068(s0)            ## 00000068
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_80B44978               
    mtc1    $at, $f4                   ## $f4 = 0.50
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f10                  ## $f10 = 0.50
    nop
    sub.s   $f18, $f0, $f10            
    beq     $zero, $zero, lbl_80B44984 
    swc1    $f18, 0x0068(s0)           ## 00000068
    mtc1    $at, $f4                   ## $f4 = 0.50
lbl_80B44978:
    nop
    add.s   $f6, $f0, $f4              
    swc1    $f6, 0x0068(s0)            ## 00000068
lbl_80B44984:
    lwc1    $f8, 0x0068(s0)            ## 00000068
lbl_80B44988:
    lui     $at, 0x4234                ## $at = 42340000
    mtc1    $at, $f10                  ## $f10 = 45.00
    c.le.s  $f12, $f8                  
    lh      v1, 0x00B6(s0)             ## 000000B6
    bc1f    lbl_80B449A8               
    addiu   t3, v1, 0x3E80             ## t3 = 00003E80
    beq     $zero, $zero, lbl_80B449B0 
    sh      t3, 0x0032(s0)             ## 00000032
lbl_80B449A8:
    addiu   t4, v1, 0xC180             ## t4 = FFFFC180
    sh      t4, 0x0032(s0)             ## 00000032
lbl_80B449B0:
    lwc1    $f0, 0x0090(s0)            ## 00000090
    c.le.s  $f0, $f10                  
    nop
    bc1f    lbl_80B449E4               
    addiu   a0, s0, 0x02F4             ## a0 = 000002F4
    lui     a1, 0xC080                 ## a1 = C0800000
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x3FC0                 ## a3 = 3FC00000
    jal     func_80064178              
    swc1    $f12, 0x0010($sp)          
    mtc1    $zero, $f12                ## $f12 = 0.00
    beq     $zero, $zero, lbl_80B44A44 
    lwc1    $f2, 0x02F4(s0)            ## 000002F4
lbl_80B449E4:
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f18                  ## $f18 = 40.00
    lui     a3, 0x40D4                 ## a3 = 40D40000
    lui     a1, 0x4080                 ## a1 = 40800000
    c.lt.s  $f18, $f0                  
    ori     a3, a3, 0xCCCD             ## a3 = 40D4CCCD
    addiu   a0, s0, 0x02F4             ## a0 = 000002F4
    lui     a2, 0x3F80                 ## a2 = 3F800000
    bc1fl   lbl_80B44A30               
    mfc1    a1, $f12                   
    addiu   a0, s0, 0x02F4             ## a0 = 000002F4
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x3FC0                 ## a3 = 3FC00000
    jal     func_80064178              
    swc1    $f12, 0x0010($sp)          
    mtc1    $zero, $f12                ## $f12 = 0.00
    beq     $zero, $zero, lbl_80B44A44 
    lwc1    $f2, 0x02F4(s0)            ## 000002F4
    mfc1    a1, $f12                   
lbl_80B44A30:
    jal     func_80064178              
    swc1    $f12, 0x0010($sp)          
    mtc1    $zero, $f12                ## $f12 = 0.00
    nop
    lwc1    $f2, 0x02F4(s0)            ## 000002F4
lbl_80B44A44:
    c.eq.s  $f12, $f2                  
    nop
    bc1tl   lbl_80B44A90               
    mtc1    $zero, $f16                ## $f16 = 0.00
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lwc1    $f6, 0x02F4(s0)            ## 000002F4
    lwc1    $f4, 0x0024(s0)            ## 00000024
    lh      a0, 0x00B6(s0)             ## 000000B6
    mul.s   $f8, $f0, $f6              
    add.s   $f10, $f4, $f8             
    jal     func_80063684              ## coss?
    swc1    $f10, 0x0024(s0)           ## 00000024
    lwc1    $f2, 0x02F4(s0)            ## 000002F4
    lwc1    $f18, 0x002C(s0)           ## 0000002C
    mul.s   $f6, $f0, $f2              
    add.s   $f4, $f18, $f6             
    swc1    $f4, 0x002C(s0)            ## 0000002C
    mtc1    $zero, $f16                ## $f16 = 0.00
lbl_80B44A90:
    nop
    c.le.s  $f16, $f2                  
    nop
    bc1fl   lbl_80B44AB0               
    neg.s   $f12, $f2                  
    beq     $zero, $zero, lbl_80B44AB0 
    mov.s   $f12, $f2                  
    neg.s   $f12, $f2                  
lbl_80B44AB0:
    lwc1    $f0, 0x0068(s0)            ## 00000068
    lui     $at, 0x3F00                ## $at = 3F000000
    c.le.s  $f16, $f0                  
    nop
    bc1fl   lbl_80B44AD4               
    neg.s   $f14, $f0                  
    beq     $zero, $zero, lbl_80B44AD4 
    mov.s   $f14, $f0                  
    neg.s   $f14, $f0                  
lbl_80B44AD4:
    c.lt.s  $f12, $f14                 
    nop
    bc1fl   lbl_80B44B00               
    mtc1    $at, $f4                   ## $f4 = 0.50
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f10                  ## $f10 = 0.50
    neg.s   $f8, $f0                   
    mul.s   $f18, $f8, $f10            
    beq     $zero, $zero, lbl_80B44B0C 
    swc1    $f18, 0x0194(s0)           ## 00000194
    mtc1    $at, $f4                   ## $f4 = 0.50
lbl_80B44B00:
    neg.s   $f6, $f2                   
    mul.s   $f8, $f6, $f4              
    swc1    $f8, 0x0194(s0)            ## 00000194
lbl_80B44B0C:
    lui     $at, 0xC040                ## $at = C0400000
    mtc1    $at, $f2                   ## $f2 = -3.00
    lwc1    $f0, 0x0194(s0)            ## 00000194
    lui     $at, 0x4040                ## $at = 40400000
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80B44B38               
    mtc1    $at, $f2                   ## $f2 = 3.00
    beq     $zero, $zero, lbl_80B44B5C 
    swc1    $f2, 0x0194(s0)            ## 00000194
    mtc1    $at, $f2                   ## $f2 = 3.00
lbl_80B44B38:
    nop
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80B44B58               
    mov.s   $f14, $f0                  
    beq     $zero, $zero, lbl_80B44B58 
    mov.s   $f14, $f2                  
    mov.s   $f14, $f0                  
lbl_80B44B58:
    swc1    $f14, 0x0194(s0)           ## 00000194
lbl_80B44B5C:
    lwc1    $f10, 0x0190(s0)           ## 00000190
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    trunc.w.s $f18, $f10                 
    mfc1    t6, $f18                   
    jal     func_8008C9C0              
    sw      t6, 0x004C($sp)            
    mtc1    $zero, $f16                ## $f16 = 0.00
    lwc1    $f0, 0x0194(s0)            ## 00000194
    or      a1, s0, $zero              ## a1 = 00000000
    c.le.s  $f16, $f0                  
    nop
    bc1fl   lbl_80B44B9C               
    neg.s   $f14, $f0                  
    beq     $zero, $zero, lbl_80B44B9C 
    mov.s   $f14, $f0                  
    neg.s   $f14, $f0                  
lbl_80B44B9C:
    lwc1    $f6, 0x0190(s0)            ## 00000190
    c.le.s  $f16, $f0                  
    lw      a0, 0x005C($sp)            
    sub.s   $f4, $f6, $f14             
    trunc.w.s $f8, $f4                   
    mfc1    t8, $f8                    
    bc1f    lbl_80B44BC4               
    sw      t8, 0x0048($sp)            
    beq     $zero, $zero, lbl_80B44BC8 
    mov.s   $f14, $f0                  
lbl_80B44BC4:
    neg.s   $f14, $f0                  
lbl_80B44BC8:
    jal     func_80B45BFC              
    swc1    $f14, 0x0030($sp)          
    bne     v0, $zero, lbl_80B44EA0    
    lwc1    $f14, 0x0030($sp)          
    lw      a0, 0x005C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_80B413A8              
    swc1    $f14, 0x0030($sp)          
    bne     v0, $zero, lbl_80B44EA0    
    lwc1    $f14, 0x0030($sp)          
    lw      t9, 0x02F0(s0)             ## 000002F0
    addiu   t0, t9, 0xFFFF             ## t0 = FFFFFFFF
    bne     t0, $zero, lbl_80B44E04    
    sw      t0, 0x02F0(s0)             ## 000002F0
    lw      t2, 0x0050($sp)            
    lh      v1, 0x00B6(s0)             ## 000000B6
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t3, 0x00B6(t2)             ## 000000B6
    lw      a3, 0x005C($sp)            
    subu    v0, t3, v1                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bgezl   v0, lbl_80B44C3C           
    slti    $at, v0, 0x3A98            
    subu    v0, $zero, v0              
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    slti    $at, v0, 0x3A98            
lbl_80B44C3C:
    bne     $at, $zero, lbl_80B44C80   
    nop
    jal     func_80B41B58              
    swc1    $f14, 0x0030($sp)          
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f10                  ## $f10 = 5.00
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    mul.s   $f18, $f0, $f10            
    lwc1    $f14, 0x0030($sp)          
    add.s   $f4, $f18, $f6             
    trunc.w.s $f8, $f4                   
    mfc1    t5, $f8                    
    beq     $zero, $zero, lbl_80B44E04 
    sw      t5, 0x02F0(s0)             ## 000002F0
lbl_80B44C80:
    lw      v0, 0x1C44(a3)             ## 00001C44
    lui     $at, 0x4234                ## $at = 42340000
    mtc1    $at, $f10                  ## $f10 = 45.00
    lwc1    $f18, 0x0090(s0)           ## 00000090
    lh      t6, 0x00B6(v0)             ## 000000B6
    sh      v1, 0x0032(s0)             ## 00000032
    c.le.s  $f18, $f10                 
    subu    a2, t6, v1                 
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    bc1f    lbl_80B44D18               
    or      a0, a3, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    sh      a2, 0x003A($sp)            
    jal     func_80026950              
    swc1    $f14, 0x0030($sp)          
    lh      a2, 0x003A($sp)            
    bne     v0, $zero, lbl_80B44D18    
    lwc1    $f14, 0x0030($sp)          
    lw      t7, 0x005C($sp)            
    lui     t8, 0x0001                 ## t8 = 00010000
    or      a0, s0, $zero              ## a0 = 00000000
    addu    t8, t8, t7                 
    lw      t8, 0x1DE4(t8)             ## 00011DE4
    andi    t9, t8, 0x0003             ## t9 = 00000000
    beq     t9, $zero, lbl_80B44D08    
    nop
    bltz    a2, lbl_80B44CFC           
    subu    v0, $zero, a2              
    beq     $zero, $zero, lbl_80B44CFC 
    or      v0, a2, $zero              ## v0 = 00000000
lbl_80B44CFC:
    slti    $at, v0, 0x38E0            
    beql    $at, $zero, lbl_80B44D1C   
    lui     $at, 0x4352                ## $at = 43520000
lbl_80B44D08:
    jal     func_80B43490              
    swc1    $f14, 0x0030($sp)          
    beq     $zero, $zero, lbl_80B44E04 
    lwc1    $f14, 0x0030($sp)          
lbl_80B44D18:
    lui     $at, 0x4352                ## $at = 43520000
lbl_80B44D1C:
    mtc1    $at, $f6                   ## $f6 = 210.00
    lwc1    $f0, 0x0090(s0)            ## 00000090
    lw      a3, 0x005C($sp)            
    lui     $at, 0x4316                ## $at = 43160000
    c.lt.s  $f0, $f6                   
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, a3, $zero              ## a1 = 00000000
    bc1f    lbl_80B44DF8               
    nop
    mtc1    $at, $f4                   ## $f4 = 150.00
    lui     t0, 0x0001                 ## t0 = 00010000
    addu    t0, t0, a3                 
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_80B44DF8               
    nop
    lw      t0, 0x1DE4(t0)             ## 00011DE4
    andi    t1, t0, 0x0001             ## t1 = 00000000
    bne     t1, $zero, lbl_80B44DF8    
    nop
    or      a0, a3, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    sh      a2, 0x003A($sp)            
    jal     func_80026950              
    swc1    $f14, 0x0030($sp)          
    lh      a2, 0x003A($sp)            
    bne     v0, $zero, lbl_80B44DD4    
    lwc1    $f14, 0x0030($sp)          
    sh      a2, 0x003A($sp)            
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f14, 0x0030($sp)          
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f8                   ## $f8 = 0.50
    lh      a2, 0x003A($sp)            
    lwc1    $f14, 0x0030($sp)          
    c.lt.s  $f8, $f0                   
    nop
    bc1tl   lbl_80B44DD8               
    or      a0, s0, $zero              ## a0 = 00000000
    bltz    a2, lbl_80B44DC8           
    subu    v0, $zero, a2              
    beq     $zero, $zero, lbl_80B44DC8 
    or      v0, a2, $zero              ## v0 = 00000000
lbl_80B44DC8:
    slti    $at, v0, 0x38E0            
    beq     $at, $zero, lbl_80B44DE8   
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B44DD4:
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B44DD8:
    jal     func_80B423F0              
    swc1    $f14, 0x0030($sp)          
    beq     $zero, $zero, lbl_80B44E04 
    lwc1    $f14, 0x0030($sp)          
lbl_80B44DE8:
    jal     func_80B43750              
    swc1    $f14, 0x0030($sp)          
    beq     $zero, $zero, lbl_80B44E04 
    lwc1    $f14, 0x0030($sp)          
lbl_80B44DF8:
    jal     func_80B41EC4              
    swc1    $f14, 0x0030($sp)          
    lwc1    $f14, 0x0030($sp)          
lbl_80B44E04:
    lwc1    $f10, 0x0190(s0)           ## 00000190
    lw      v1, 0x004C($sp)            
    lw      v0, 0x005C($sp)            
    trunc.w.s $f18, $f10                 
    lui     $at, 0x0001                ## $at = 00010000
    lw      a0, 0x0048($sp)            
    addu    v0, v0, $at                
    mfc1    t3, $f18                   
    nop
    beql    v1, t3, lbl_80B44E88       
    lw      t0, 0x1DE4(v0)             ## 00001DE4
    bgez    a0, lbl_80B44E50           
    slti    $at, a0, 0x0005            
    trunc.w.s $f6, $f14                  
    mfc1    t5, $f6                    
    nop
    addu    t6, t5, v1                 
    bgtzl   t6, lbl_80B44E74           
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B44E50:
    beql    $at, $zero, lbl_80B44E88   
    lw      t0, 0x1DE4(v0)             ## 00001DE4
    trunc.w.s $f4, $f14                  
    mfc1    t8, $f4                    
    nop
    addu    t9, t8, v1                 
    slti    $at, t9, 0x0006            
    bne     $at, $zero, lbl_80B44E84   
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B44E74:
    addiu   a1, $zero, 0x39A0          ## a1 = 000039A0
    jal     func_80022FD0              
    sw      v0, 0x0028($sp)            
    lw      v0, 0x0028($sp)            
lbl_80B44E84:
    lw      t0, 0x1DE4(v0)             ## 00001DE4
lbl_80B44E88:
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t1, t0, 0x005F             ## t1 = 00000000
    bnel    t1, $zero, lbl_80B44EA4    
    lw      $ra, 0x0024($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39C6          ## a1 = 000039C6
lbl_80B44EA0:
    lw      $ra, 0x0024($sp)           
lbl_80B44EA4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B44EB4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x1E10             ## a1 = 06001E10
    addiu   a0, a3, 0x0178             ## a0 = 00000178
    lui     a2, 0xC080                 ## a2 = C0800000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    addiu   a1, $zero, 0x399A          ## a1 = 0000399A
    lhu     t6, 0x0088(a3)             ## 00000088
    lh      v0, 0x008A(a3)             ## 0000008A
    or      a0, a3, $zero              ## a0 = 00000000
    andi    t7, t6, 0x0001             ## t7 = 00000000
    sh      v0, 0x00B6(a3)             ## 000000B6
    beq     t7, $zero, lbl_80B44F14    
    sh      v0, 0x0032(a3)             ## 00000032
    lui     $at, 0xC0C0                ## $at = C0C00000
    mtc1    $at, $f4                   ## $f4 = -6.00
    sh      $zero, 0x0308(a3)          ## 00000308
    beq     $zero, $zero, lbl_80B44F1C 
    swc1    $f4, 0x0068(a3)            ## 00000068
lbl_80B44F14:
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    sh      t8, 0x0308(a3)             ## 00000308
lbl_80B44F1C:
    lw      t0, 0x0004(a3)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    sw      t9, 0x02DC(a3)             ## 000002DC
    and     t1, t0, $at                
    sw      t1, 0x0004(a3)             ## 00000004
    jal     func_80022FD0              
    sw      a3, 0x0018($sp)            
    lui     a1, %hi(func_80B44F58)     ## a1 = 80B40000
    lw      a0, 0x0018($sp)            
    jal     func_80B41110              
    addiu   a1, a1, %lo(func_80B44F58) ## a1 = 80B44F58
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B44F58:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lhu     v0, 0x0088(s0)             ## 00000088
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    lui     a2, 0x3F80                 ## a2 = 3F800000
    andi    t6, v0, 0x0002             ## t6 = 00000000
    beq     t6, $zero, lbl_80B44F90    
    lui     a3, 0x3F00                 ## a3 = 3F000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lhu     v0, 0x0088(s0)             ## 00000088
    swc1    $f0, 0x0068(s0)            ## 00000068
lbl_80B44F90:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    andi    t7, v0, 0x0001             ## t7 = 00000000
    beq     t7, $zero, lbl_80B44FB0    
    nop
    mfc1    a1, $f0                    
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    sh      $zero, 0x0308(s0)          ## 00000308
lbl_80B44FB0:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0178             ## a0 = 00000178
    beql    v0, $zero, lbl_80B44FD4    
    lwc1    $f4, 0x0190(s0)            ## 00000190
    jal     func_80B41998              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B45004 
    lw      $ra, 0x0024($sp)           
    lwc1    $f4, 0x0190(s0)            ## 00000190
lbl_80B44FD4:
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    or      a0, s0, $zero              ## a0 = 00000000
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    nop
    bnel    t9, $at, lbl_80B45004      
    lw      $ra, 0x0024($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387A          ## a1 = 0000387A
    jal     func_800C6894              
    nop
    lw      $ra, 0x0024($sp)           
lbl_80B45004:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B45014:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      v0, 0x02DC(s0)             ## 000002DC
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    bnel    v0, $at, lbl_80B45088      
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    lh      v1, 0x02EA(s0)             ## 000002EA
    beq     v1, $zero, lbl_80B45084    
    sll     a0, v1,  5                 
    addu    a0, a0, v1                 
    sll     a0, a0,  2                 
    subu    a0, a0, v1                 
    sll     a0, a0,  2                 
    addu    a0, a0, v1                 
    sll     a0, a0,  3                 
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80B45FFC)     ## $at = 80B40000
    lwc1    $f4, %lo(var_80B45FFC)($at) 
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    beq     $zero, $zero, lbl_80B45100 
    sh      t7, 0x04CE(s0)             ## 000004CE
lbl_80B45084:
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
lbl_80B45088:
    beq     v0, $at, lbl_80B45100      
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    beq     v0, $at, lbl_80B450FC      
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    beq     v0, $at, lbl_80B450FC      
    addiu   a0, s0, 0x04CE             ## a0 = 000004CE
    lh      t8, 0x008A(s0)             ## 0000008A
    lh      t9, 0x00B6(s0)             ## 000000B6
    sw      $zero, 0x0010($sp)         
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    subu    a1, t8, t9                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    jal     func_80064508              
    addiu   a3, $zero, 0x01F4          ## a3 = 000001F4
    lh      v0, 0x04CE(s0)             ## 000004CE
    addiu   t0, $zero, 0xDA91          ## t0 = FFFFDA91
    slti    $at, v0, 0xDA91            
    beql    $at, $zero, lbl_80B450E4   
    slti    $at, v0, 0x2570            
    beq     $zero, $zero, lbl_80B45100 
    sh      t0, 0x04CE(s0)             ## 000004CE
    slti    $at, v0, 0x2570            
lbl_80B450E4:
    bne     $at, $zero, lbl_80B450F4   
    or      v1, v0, $zero              ## v1 = 00000000
    beq     $zero, $zero, lbl_80B450F4 
    addiu   v1, $zero, 0x256F          ## v1 = 0000256F
lbl_80B450F4:
    beq     $zero, $zero, lbl_80B45100 
    sh      v1, 0x04CE(s0)             ## 000004CE
lbl_80B450FC:
    sh      $zero, 0x04CE(s0)          ## 000004CE
lbl_80B45100:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B45114:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lbu     v0, 0x03ED(s0)             ## 000003ED
    andi    t6, v0, 0x0080             ## t6 = 00000000
    beql    t6, $zero, lbl_80B45154    
    lbu     v0, 0x0321(s0)             ## 00000321
    lbu     t8, 0x0321(s0)             ## 00000321
    andi    t7, v0, 0xFF7F             ## t7 = 00000000
    sb      t7, 0x03ED(s0)             ## 000003ED
    andi    t9, t8, 0xFFFD             ## t9 = 00000000
    beq     $zero, $zero, lbl_80B452CC 
    sb      t9, 0x0321(s0)             ## 00000321
    lbu     v0, 0x0321(s0)             ## 00000321
lbl_80B45154:
    andi    t0, v0, 0x0002             ## t0 = 00000000
    beql    t0, $zero, lbl_80B452D0    
    lw      $ra, 0x0024($sp)           
    lw      t1, 0x02DC(s0)             ## 000002DC
    slti    $at, t1, 0x0005            
    bnel    $at, $zero, lbl_80B452D0   
    lw      $ra, 0x0024($sp)           
    lh      t2, 0x0302(s0)             ## 00000302
    slti    $at, t2, 0x0002            
    beql    $at, $zero, lbl_80B452D0   
    lw      $ra, 0x0024($sp)           
    lbu     v1, 0x00B1(s0)             ## 000000B1
    andi    t3, v0, 0xFFFD             ## t3 = 00000000
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    beq     v1, $at, lbl_80B452CC      
    sb      t3, 0x0321(s0)             ## 00000321
    sb      v1, 0x02EE(s0)             ## 000002EE
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0328             ## a1 = 00000328
    jal     func_800283BC              
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a0, s0, 0x00E4             ## a0 = 000000E4
    jal     func_800C95C4              
    addiu   a1, $zero, 0x39C6          ## a1 = 000039C6
    lbu     v0, 0x00B1(s0)             ## 000000B1
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v0, $at, lbl_80B451CC      
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     v0, $at, lbl_80B4520C      
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B451CC:
    lw      t4, 0x02DC(s0)             ## 000002DC
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    or      a0, s0, $zero              ## a0 = 00000000
    beq     t4, $at, lbl_80B452CC      
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   t5, $zero, 0x0050          ## t5 = 00000050
    sw      t5, 0x0010($sp)            
    addiu   a2, $zero, 0x0078          ## a2 = 00000078
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_80028390              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B43D18              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B452D0 
    lw      $ra, 0x0024($sp)           
lbl_80B4520C:
    addiu   t6, $zero, 0x0008          ## t6 = 00000008
    sw      t6, 0x0010($sp)            
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_80028390              
    or      a0, s0, $zero              ## a0 = 00000000
    bne     v0, $zero, lbl_80B452C4    
    nop
    lh      v0, 0x0304(s0)             ## 00000304
    lw      a0, 0x0034($sp)            
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    beq     v0, $zero, lbl_80B452A8    
    ori     a2, v0, 0x0011             ## a2 = 00000011
    sll     a2, a2, 16                 
    jal     func_80013678              
    sra     a2, a2, 16                 
    beq     v0, $zero, lbl_80B452A8    
    addiu   a0, v0, 0x0024             ## a0 = 00000024
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    jal     func_80063F00              
    sw      v0, 0x0028($sp)            
    lw      v1, 0x0028($sp)            
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $at, $f4                   ## $f4 = 6.00
    lui     a3, 0x8010                 ## a3 = 80100000
    lui     t7, 0x8010                 ## t7 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    addiu   t7, t7, 0x43A8             ## t7 = 801043A8
    lui     a1, 0x8010                 ## a1 = 80100000
    sh      v0, 0x0032(v1)             ## 00000032
    swc1    $f4, 0x0068(v1)            ## 00000068
    sw      t7, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a1, a1, 0x4394             ## a1 = 80104394
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
lbl_80B452A8:
    jal     func_80B44EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a0, 0x0034($sp)            
    jal     func_80025B4C              
    or      a1, s0, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80B452D0 
    lw      $ra, 0x0024($sp)           
lbl_80B452C4:
    jal     func_80B43E80              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80B452CC:
    lw      $ra, 0x0024($sp)           
lbl_80B452D0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B452E0:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B45114              
    or      a1, s1, $zero              ## a1 = 00000000
    lbu     t6, 0x00B1(s0)             ## 000000B1
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    beql    t6, $at, lbl_80B45394      
    addiu   a1, s0, 0x0310             ## a1 = 00000310
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f4                   ## $f4 = 60.00
    addiu   t7, $zero, 0x001D          ## t7 = 0000001D
    sw      t7, 0x0014($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a2, 0x4170                 ## a2 = 41700000
    lui     a3, 0x41F0                 ## a3 = 41F00000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lw      t9, 0x02E4(s0)             ## 000002E4
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    lw      t8, 0x0028(s0)             ## 00000028
    lui     $at, 0x4220                ## $at = 42200000
    lw      t0, 0x0024(s0)             ## 00000024
    sw      t8, 0x003C(s0)             ## 0000003C
    lwc1    $f6, 0x003C(s0)            ## 0000003C
    mtc1    $at, $f8                   ## $f8 = 40.00
    sw      t0, 0x0038(s0)             ## 00000038
    lw      t0, 0x002C(s0)             ## 0000002C
    add.s   $f10, $f6, $f8             
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    sw      t0, 0x0040(s0)             ## 00000040
    jal     func_80B45014              
    swc1    $f10, 0x003C(s0)           ## 0000003C
    addiu   a1, s0, 0x0310             ## a1 = 00000310
lbl_80B45394:
    sw      a1, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, s1, $at                
    sw      a1, 0x0034($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004C130              ## CollisionCheck_setOT
    lw      a2, 0x002C($sp)            
    lw      v0, 0x02DC(s0)             ## 000002DC
    slti    $at, v0, 0x0005            
    bnel    $at, $zero, lbl_80B45410   
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    lh      t1, 0x0302(s0)             ## 00000302
    slti    $at, t1, 0x0002            
    beql    $at, $zero, lbl_80B45410   
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    lbu     t2, 0x0114(s0)             ## 00000114
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0034($sp)            
    beq     t2, $zero, lbl_80B45400    
    nop
    lhu     t3, 0x0112(s0)             ## 00000112
    andi    t4, t3, 0x4000             ## t4 = 00000000
    bnel    t4, $zero, lbl_80B45410    
    addiu   $at, $zero, 0x0006         ## $at = 00000006
lbl_80B45400:
    jal     func_8004BF40              ## CollisionCheck_setAC
    lw      a2, 0x002C($sp)            
    lw      v0, 0x02DC(s0)             ## 000002DC
    addiu   $at, $zero, 0x0006         ## $at = 00000006
lbl_80B45410:
    bnel    v0, $at, lbl_80B45444      
    lh      t5, 0x0300(s0)             ## 00000300
    mtc1    $zero, $f16                ## $f16 = 0.00
    lwc1    $f18, 0x0190(s0)           ## 00000190
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0034($sp)            
    c.eq.s  $f16, $f18                 
    nop
    bc1fl   lbl_80B45444               
    lh      t5, 0x0300(s0)             ## 00000300
    jal     func_8004BF40              ## CollisionCheck_setAC
    addiu   a2, s0, 0x03DC             ## a2 = 000003DC
    lh      t5, 0x0300(s0)             ## 00000300
lbl_80B45444:
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0034($sp)            
    blezl   t5, lbl_80B45460           
    lbu     v0, 0x030A(s0)             ## 0000030A
    jal     func_8004BD50              ## CollisionCheck_setAT
    addiu   a2, s0, 0x035C             ## a2 = 0000035C
    lbu     v0, 0x030A(s0)             ## 0000030A
lbl_80B45460:
    bne     v0, $zero, lbl_80B454B0    
    addiu   t0, v0, 0x0001             ## t0 = 00000001
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_80B46000)     ## $at = 80B40000
    lwc1    $f4, %lo(var_80B46000)($at) 
    lui     t6, 0x0001                 ## t6 = 00010000
    addu    t6, t6, s1                 
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80B454BC               
    lw      $ra, 0x0024($sp)           
    lw      t6, 0x1DE4(t6)             ## 00011DE4
    andi    t7, t6, 0x0003             ## t7 = 00000000
    bnel    t7, $zero, lbl_80B454BC    
    lw      $ra, 0x0024($sp)           
    lbu     t9, 0x030A(s0)             ## 0000030A
    addiu   t8, t9, 0x0001             ## t8 = 00000001
    beq     $zero, $zero, lbl_80B454B8 
    sb      t8, 0x030A(s0)             ## 0000030A
lbl_80B454B0:
    andi    t1, t0, 0x0003             ## t1 = 00000000
    sb      t1, 0x030A(s0)             ## 0000030A
lbl_80B454B8:
    lw      $ra, 0x0024($sp)           
lbl_80B454BC:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80B454CC:
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bne     a1, $at, lbl_80B4551C      
    lw      v0, 0x0000(a0)             ## 00000000
    lw      v0, 0x0014($sp)            
    lw      v1, 0x0010($sp)            
    lh      t7, 0x04CC(v0)             ## 000004CC
    lh      t6, 0x0004(v1)             ## 00000004
    lh      t9, 0x0000(v1)             ## 00000000
    lh      t2, 0x0002(v1)             ## 00000002
    addu    t8, t6, t7                 
    sh      t8, 0x0004(v1)             ## 00000004
    lh      t0, 0x04CE(v0)             ## 000004CE
    addu    t1, t9, t0                 
    sh      t1, 0x0000(v1)             ## 00000000
    lh      t3, 0x04D0(v0)             ## 000004D0
    addu    t4, t2, t3                 
    beq     $zero, $zero, lbl_80B45608 
    sh      t4, 0x0002(v1)             ## 00000002
lbl_80B4551C:
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    bne     a1, $at, lbl_80B45564      
    lui     t8, 0xFB00                 ## t8 = FB000000
    lw      a0, 0x02C0(v0)             ## 000002C0
    lui     t6, 0xE700                 ## t6 = E7000000
    addiu   t5, a0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02C0(v0)             ## 000002C0
    sw      $zero, 0x0004(a0)          ## 00000004
    sw      t6, 0x0000(a0)             ## 00000000
    lw      a0, 0x02C0(v0)             ## 000002C0
    lui     t9, 0x503C                 ## t9 = 503C0000
    ori     t9, t9, 0x0AFF             ## t9 = 503C0AFF
    addiu   t7, a0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(v0)             ## 000002C0
    sw      t9, 0x0004(a0)             ## 00000004
    sw      t8, 0x0000(a0)             ## 00000000
    beq     $zero, $zero, lbl_80B4560C 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B45564:
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    beq     a1, $at, lbl_80B4557C      
    lui     t3, 0xFB00                 ## t3 = FB000000
    addiu   $at, $zero, 0x0010         ## $at = 00000010
    bne     a1, $at, lbl_80B455D4      
    lui     t1, 0xFB00                 ## t1 = FB000000
lbl_80B4557C:
    lw      a0, 0x02C0(v0)             ## 000002C0
    lui     t1, 0xE700                 ## t1 = E7000000
    addiu   t0, a0, 0x0008             ## t0 = 00000008
    sw      t0, 0x02C0(v0)             ## 000002C0
    sw      $zero, 0x0004(a0)          ## 00000004
    sw      t1, 0x0000(a0)             ## 00000000
    lw      a0, 0x02C0(v0)             ## 000002C0
    lui     t4, 0x8CAA                 ## t4 = 8CAA0000
    ori     t4, t4, 0xE6FF             ## t4 = 8CAAE6FF
    addiu   t2, a0, 0x0008             ## t2 = 00000008
    sw      t2, 0x02C0(v0)             ## 000002C0
    sw      t4, 0x0004(a0)             ## 00000004
    sw      t3, 0x0000(a0)             ## 00000000
    lw      a0, 0x02C0(v0)             ## 000002C0
    lui     t6, 0xFA00                 ## t6 = FA000000
    addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
    addiu   t5, a0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02C0(v0)             ## 000002C0
    sw      t7, 0x0004(a0)             ## 00000004
    sw      t6, 0x0000(a0)             ## 00000000
    beq     $zero, $zero, lbl_80B4560C 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B455D4:
    lw      a0, 0x02C0(v0)             ## 000002C0
    lui     t9, 0xE700                 ## t9 = E7000000
    addiu   t8, a0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(v0)             ## 000002C0
    sw      $zero, 0x0004(a0)          ## 00000004
    sw      t9, 0x0000(a0)             ## 00000000
    lw      a0, 0x02C0(v0)             ## 000002C0
    lui     t2, 0x8C00                 ## t2 = 8C000000
    ori     t2, t2, 0x00FF             ## t2 = 8C0000FF
    addiu   t0, a0, 0x0008             ## t0 = 00000008
    sw      t0, 0x02C0(v0)             ## 000002C0
    sw      t2, 0x0004(a0)             ## 00000004
    sw      t1, 0x0000(a0)             ## 00000000
lbl_80B45608:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B4560C:
    jr      $ra                        
    nop


func_80B45614:
    addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
    sw      $ra, 0x0024($sp)           
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    sw      a0, 0x0068($sp)            
    sw      a1, 0x006C($sp)            
    sw      a2, 0x0070($sp)            
    sw      a3, 0x0074($sp)            
    lw      t6, 0x006C($sp)            
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    addiu   s1, $zero, 0xFFFF          ## s1 = FFFFFFFF
    bne     t6, $at, lbl_80B45740      
    lw      s0, 0x0078($sp)            
    lw      s0, 0x0078($sp)            
    lui     a0, %hi(var_80B45F10)      ## a0 = 80B40000
    addiu   a0, a0, %lo(var_80B45F10)  ## a0 = 80B45F10
    addiu   a1, s0, 0x03A8             ## a1 = 000003A8
    jal     func_800AB958              
    sw      a1, 0x0030($sp)            
    lui     a0, %hi(var_80B45F1C)      ## a0 = 80B40000
    addiu   a1, s0, 0x039C             ## a1 = 0000039C
    sw      a1, 0x0034($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_80B45F1C)  ## a0 = 80B45F1C
    lui     a0, %hi(var_80B45F28)      ## a0 = 80B40000
    addiu   a1, s0, 0x03C0             ## a1 = 000003C0
    sw      a1, 0x0028($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_80B45F28)  ## a0 = 80B45F28
    lui     a0, %hi(var_80B45F34)      ## a0 = 80B40000
    addiu   a3, s0, 0x03B4             ## a3 = 000003B4
    or      a1, a3, $zero              ## a1 = 000003B4
    sw      a3, 0x002C($sp)            
    jal     func_800AB958              
    addiu   a0, a0, %lo(var_80B45F34)  ## a0 = 80B45F34
    lw      t7, 0x0028($sp)            
    lw      a3, 0x002C($sp)            
    addiu   a0, s0, 0x035C             ## a0 = 0000035C
    lw      a1, 0x0034($sp)            
    lw      a2, 0x0030($sp)            
    jal     func_80050B64              
    sw      t7, 0x0010($sp)            
    lui     a0, %hi(var_80B45EF8)      ## a0 = 80B40000
    addiu   a0, a0, %lo(var_80B45EF8)  ## a0 = 80B45EF8
    jal     func_800AB958              
    addiu   a1, $sp, 0x005C            ## a1 = FFFFFFF4
    lui     a0, %hi(var_80B45F04)      ## a0 = 80B40000
    addiu   a0, a0, %lo(var_80B45F04)  ## a0 = 80B45F04
    jal     func_800AB958              
    addiu   a1, $sp, 0x0050            ## a1 = FFFFFFE8
    lh      v0, 0x0300(s0)             ## 00000300
    bltz    v0, lbl_80B45700           
    nop
    lw      v1, 0x02DC(s0)             ## 000002DC
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    beq     v1, $at, lbl_80B45718      
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    beq     v1, $at, lbl_80B45718      
    nop
lbl_80B45700:
    jal     func_8001A890              
    lw      a0, 0x030C(s0)             ## 0000030C
    jal     func_80014254              
    or      a0, v0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B45764 
    sh      $zero, 0x0300(s0)          ## 00000300
lbl_80B45718:
    blezl   v0, lbl_80B45768           
    lw      v0, 0x006C($sp)            
    jal     func_8001A890              
    lw      a0, 0x030C(s0)             ## 0000030C
    or      a0, v0, $zero              ## a0 = 00000000
    addiu   a1, $sp, 0x005C            ## a1 = FFFFFFF4
    jal     func_80013F30              
    addiu   a2, $sp, 0x0050            ## a2 = FFFFFFE8
    beq     $zero, $zero, lbl_80B45768 
    lw      v0, 0x006C($sp)            
lbl_80B45740:
    lui     t8, %hi(var_80B45EEC)      ## t8 = 80B40000
    addiu   a3, t8, %lo(var_80B45EEC)  ## a3 = 80B45EEC
    addiu   t9, $zero, 0x0016          ## t9 = 00000016
    sw      t9, 0x0010($sp)            
    sw      a3, 0x0014($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a1, 0x006C($sp)            
    jal     func_8001F74C              
    addiu   a2, $zero, 0x0013          ## a2 = 00000013
lbl_80B45764:
    lw      v0, 0x006C($sp)            
lbl_80B45768:
    addiu   $at, $zero, 0x0013         ## $at = 00000013
    lui     a0, %hi(var_80B45EEC)      ## a0 = 80B40000
    bne     v0, $at, lbl_80B45788      
    addiu   a0, a0, %lo(var_80B45EEC)  ## a0 = 80B45EEC
    jal     func_800AB958              
    addiu   a1, s0, 0x04C0             ## a1 = 000004C0
    beq     $zero, $zero, lbl_80B457A4 
    lw      v0, 0x006C($sp)            
lbl_80B45788:
    addiu   $at, $zero, 0x0016         ## $at = 00000016
    bne     v0, $at, lbl_80B457A4      
    lui     a0, %hi(var_80B45EEC)      ## a0 = 80B40000
    addiu   a0, a0, %lo(var_80B45EEC)  ## a0 = 80B45EEC
    jal     func_800AB958              
    addiu   a1, s0, 0x04B4             ## a1 = 000004B4
    lw      v0, 0x006C($sp)            
lbl_80B457A4:
    lh      t0, 0x02EC(s0)             ## 000002EC
    addiu   t1, v0, 0xFFFE             ## t1 = FFFFFFFE
    sltiu   $at, t1, 0x0016            
    beql    t0, $zero, lbl_80B4587C    
    lw      $ra, 0x0024($sp)           
    beq     $at, $zero, lbl_80B45818   
    sll     t1, t1,  2                 
    lui     $at, %hi(var_80B46004)     ## $at = 80B40000
    addu    $at, $at, t1               
    lw      t1, %lo(var_80B46004)($at) 
    jr      t1                         
    nop
var_80B457D4:
    beq     $zero, $zero, lbl_80B45818 
    or      s1, $zero, $zero           ## s1 = 00000000
var_80B457DC:
    beq     $zero, $zero, lbl_80B45818 
    addiu   s1, $zero, 0x0001          ## s1 = 00000001
var_80B457E4:
    beq     $zero, $zero, lbl_80B45818 
    addiu   s1, $zero, 0x0002          ## s1 = 00000002
var_80B457EC:
    beq     $zero, $zero, lbl_80B45818 
    addiu   s1, $zero, 0x0003          ## s1 = 00000003
var_80B457F4:
    beq     $zero, $zero, lbl_80B45818 
    addiu   s1, $zero, 0x0004          ## s1 = 00000004
var_80B457FC:
    beq     $zero, $zero, lbl_80B45818 
    addiu   s1, $zero, 0x0005          ## s1 = 00000005
var_80B45804:
    beq     $zero, $zero, lbl_80B45818 
    addiu   s1, $zero, 0x0006          ## s1 = 00000006
var_80B4580C:
    beq     $zero, $zero, lbl_80B45818 
    addiu   s1, $zero, 0x0007          ## s1 = 00000007
var_80B45814:
    addiu   s1, $zero, 0x0008          ## s1 = 00000008
lbl_80B45818:
    bltz    s1, lbl_80B45878           
    lui     a0, %hi(var_80B45F40)      ## a0 = 80B40000
    addiu   a0, a0, %lo(var_80B45F40)  ## a0 = 80B45F40
    jal     func_800AB958              
    addiu   a1, $sp, 0x003C            ## a1 = FFFFFFD4
    lwc1    $f4, 0x003C($sp)           
    sll     t2, s1,  2                 
    subu    t2, t2, s1                 
    trunc.w.s $f6, $f4                   
    sll     t2, t2,  1                 
    addu    v0, s0, t2                 
    mfc1    t4, $f6                    
    nop
    sh      t4, 0x013C(v0)             ## 0000013C
    lwc1    $f8, 0x0040($sp)           
    trunc.w.s $f10, $f8                  
    mfc1    t6, $f10                   
    nop
    sh      t6, 0x013E(v0)             ## 0000013E
    lwc1    $f16, 0x0044($sp)          
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    nop
    sh      t9, 0x0140(v0)             ## 00000140
lbl_80B45878:
    lw      $ra, 0x0024($sp)           
lbl_80B4587C:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           ## $sp = 00000000


func_80B4588C:
    addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
    sw      s5, 0x0048($sp)            
    or      s5, a0, $zero              ## s5 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s4, 0x0044($sp)            
    sw      s3, 0x0040($sp)            
    sw      s2, 0x003C($sp)            
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    sw      a1, 0x00CC($sp)            
    lh      t7, 0x0302(s5)             ## 00000302
    lw      t6, 0x00CC($sp)            
    addiu   s0, s5, 0x0178             ## s0 = 00000178
    slti    $at, t7, 0x0002            
    bne     $at, $zero, lbl_80B45A00   
    lw      s1, 0x0000(t6)             ## 00000000
    jal     func_8008C9C0              
    or      a0, s0, $zero              ## a0 = 00000178
    beql    v0, $zero, lbl_80B45A04    
    lw      t3, 0x02DC(s5)             ## 000002DC
    lh      t8, 0x0302(s5)             ## 00000302
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    or      a0, s0, $zero              ## a0 = 00000178
    bne     t8, $at, lbl_80B4593C      
    lui     a1, 0x0600                 ## a1 = 06000000
    lui     $at, 0x4140                ## $at = 41400000
    mtc1    $at, $f4                   ## $f4 = 12.00
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f6                   ## $f6 = 4.00
    addiu   t9, $zero, 0x0003          ## t9 = 00000003
    sw      t9, 0x0014($sp)            
    addiu   a1, a1, 0x0F5C             ## a1 = 06000F5C
    lui     a2, 0x3F00                 ## a2 = 3F000000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f4, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    lh      t1, 0x0302(s5)             ## 00000302
    lh      v0, 0x008A(s5)             ## 0000008A
    addiu   t2, t1, 0x0001             ## t2 = 00000001
    sh      t2, 0x0302(s5)             ## 00000302
    sh      v0, 0x00B6(s5)             ## 000000B6
    beq     $zero, $zero, lbl_80B45A00 
    sh      v0, 0x0032(s5)             ## 00000032
lbl_80B4593C:
    lw      t3, 0x02F0(s5)             ## 000002F0
    lui     a0, 0x8010                 ## a0 = 80100000
    addiu   a0, a0, 0x8F34             ## a0 = 800F8F34
    addiu   t4, t3, 0xFFFF             ## t4 = FFFFFFFF
    bne     t4, $zero, lbl_80B45A00    
    sw      t4, 0x02F0(s5)             ## 000002F0
    lbu     t6, 0x000A(a0)             ## 800F8F3E
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    addu    t7, v0, t6                 
    lbu     t8, 0x0074(t7)             ## 00000074
    addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
    beql    v1, t8, lbl_80B4598C       
    lw      v0, 0x00CC($sp)            
    lbu     t9, 0x000B(a0)             ## 800F8F3F
    addu    t1, v0, t9                 
    lbu     t2, 0x0074(t1)             ## 00000074
    bnel    v1, t2, lbl_80B459A4       
    lhu     t4, 0x0EEC(v0)             ## 8011B4BC
    lw      v0, 0x00CC($sp)            
lbl_80B4598C:
    lui     $at, 0x0001                ## $at = 00010000
    addiu   t3, $zero, 0x01A5          ## t3 = 000001A5
    addu    $at, $at, v0               
    beq     $zero, $zero, lbl_80B459E0 
    sh      t3, 0x1E1A($at)            ## 00011E1A
    lhu     t4, 0x0EEC(v0)             ## 8011B4BC
lbl_80B459A4:
    lw      t9, 0x00CC($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    andi    t5, t4, 0x0080             ## t5 = 00000080
    beq     t5, $zero, lbl_80B459D4    
    addu    $at, $at, t9               
    lw      t7, 0x00CC($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    addiu   t6, $zero, 0x05F8          ## t6 = 000005F8
    addu    $at, $at, t7               
    sh      t6, 0x1E1A($at)            ## 00011E1A
    beq     $zero, $zero, lbl_80B459E0 
    lw      v0, 0x00CC($sp)            
lbl_80B459D4:
    addiu   t8, $zero, 0x03B4          ## t8 = 000003B4
    sh      t8, 0x1E1A($at)            ## 00011E1A
    lw      v0, 0x00CC($sp)            
lbl_80B459E0:
    lui     $at, 0x0001                ## $at = 00010000
    addu    $at, $at, v0               
    addiu   t1, $zero, 0x0026          ## t1 = 00000026
    sb      t1, 0x1E5E($at)            ## 00011E5E
    lui     $at, 0x0001                ## $at = 00010000
    addu    $at, $at, v0               
    addiu   t2, $zero, 0x0014          ## t2 = 00000014
    sb      t2, 0x1E15($at)            ## 00011E15
lbl_80B45A00:
    lw      t3, 0x02DC(s5)             ## 000002DC
lbl_80B45A04:
    lw      t5, 0x00CC($sp)            
    bne     t3, $zero, lbl_80B45A1C    
    nop
    lh      t4, 0x0308(s5)             ## 00000308
    bnel    t4, $zero, lbl_80B45BDC    
    lw      $ra, 0x004C($sp)           
lbl_80B45A1C:
    jal     func_8007E298              
    lw      a0, 0x0000(t5)             ## 00000080
    lw      v1, 0x02C0(s1)             ## 000002C0
    lui     t7, 0xDB06                 ## t7 = DB060000
    ori     t7, t7, 0x0020             ## t7 = DB060020
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02C0(s1)             ## 000002C0
    sw      t7, 0x0000(v1)             ## 00000000
    lbu     t8, 0x030A(s5)             ## 0000030A
    lui     t0, %hi(var_80B45F94)      ## t0 = 80B40000
    lui     t5, 0x8012                 ## t5 = 80120000
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80B45F94)(t0)  
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t2, t0,  4                 
    srl     t3, t2, 28                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    lw      t5, 0x0C38(t5)             ## 80120C38
    and     t1, t0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t6, t1, t5                 
    addu    t7, t6, $at                
    sw      t7, 0x0004(v1)             ## 00000004
    lw      a1, 0x017C(s5)             ## 0000017C
    lw      a2, 0x0198(s5)             ## 00000198
    lbu     a3, 0x017A(s5)             ## 0000017A
    lui     t8, %hi(func_80B454CC)     ## t8 = 80B40000
    lui     t9, %hi(func_80B45614)     ## t9 = 80B40000
    addiu   t9, t9, %lo(func_80B45614) ## t9 = 80B45614
    addiu   t8, t8, %lo(func_80B454CC) ## t8 = 80B454CC
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    sw      s5, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x00CC($sp)            
    lw      t2, 0x02DC(s5)             ## 000002DC
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    lui     s1, %hi(var_80B45F4C)      ## s1 = 80B40000
    bne     t2, $at, lbl_80B45B44      
    addiu   s1, s1, %lo(var_80B45F4C)  ## s1 = 80B45F4C
    lui     s3, %hi(var_80B45F70)      ## s3 = 80B40000
    addiu   s3, s3, %lo(var_80B45F70)  ## s3 = 80B45F70
    addiu   s2, $sp, 0x008C            ## s2 = FFFFFFC4
    addiu   s0, $sp, 0x0068            ## s0 = FFFFFFA0
    addiu   s4, $sp, 0x008C            ## s4 = FFFFFFC4
lbl_80B45ADC:
    or      a0, s1, $zero              ## a0 = 80B45F4C
    jal     func_800AB958              
    or      a1, s2, $zero              ## a1 = FFFFFFC4
    or      a0, s3, $zero              ## a0 = 80B45F70
    jal     func_800AB958              
    or      a1, s0, $zero              ## a1 = FFFFFFA0
    addiu   s0, s0, 0x000C             ## s0 = FFFFFFAC
    addiu   s1, s1, 0x000C             ## s1 = 80B45F58
    addiu   s2, s2, 0x000C             ## s2 = FFFFFFD0
    bne     s0, s4, lbl_80B45ADC       
    addiu   s3, s3, 0x000C             ## s3 = 80B45F7C
    addiu   s0, s5, 0x03DC             ## s0 = 000003DC
    addiu   t3, $sp, 0x00A4            ## t3 = FFFFFFDC
    sw      t3, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 000003DC
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $sp, 0x008C            ## a2 = FFFFFFC4
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0098            ## a3 = FFFFFFD0
    addiu   t4, $sp, 0x0080            ## t4 = FFFFFFB8
    sw      t4, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 000003DC
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    addiu   a2, $sp, 0x0068            ## a2 = FFFFFFA0
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0074            ## a3 = FFFFFFAC
lbl_80B45B44:
    lh      t1, 0x02EC(s5)             ## 000002EC
    beql    t1, $zero, lbl_80B45BDC    
    lw      $ra, 0x004C($sp)           
    lh      t7, 0x02EC(s5)             ## 000002EC
    lbu     t5, 0x0114(s5)             ## 00000114
    or      a1, s5, $zero              ## a1 = 00000000
    addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x02EC(s5)             ## 000002EC
    lh      v1, 0x02EC(s5)             ## 000002EC
    addiu   t6, t5, 0x0001             ## t6 = 00000001
    sb      t6, 0x0114(s5)             ## 00000114
    andi    t9, v1, 0x0003             ## t9 = 00000000
    bne     t9, $zero, lbl_80B45BD8    
    sra     v0, v1,  2                 
    sll     t2, v0,  2                 
    subu    t2, t2, v0                 
    lui     $at, 0x3FC0                ## $at = 3FC00000
    mtc1    $at, $f8                   ## $f8 = 1.50
    sll     t2, t2,  1                 
    addu    a2, s5, t2                 
    addiu   t3, $zero, 0x0096          ## t3 = 00000096
    addiu   t4, $zero, 0x0096          ## t4 = 00000096
    addiu   t1, $zero, 0x00FA          ## t1 = 000000FA
    addiu   t5, $zero, 0x00EB          ## t5 = 000000EB
    addiu   t6, $zero, 0x00F5          ## t6 = 000000F5
    addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
    sw      t7, 0x0024($sp)            
    sw      t6, 0x0020($sp)            
    sw      t5, 0x001C($sp)            
    sw      t1, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    addiu   a2, a2, 0x013C             ## a2 = 0000013C
    lw      a0, 0x00CC($sp)            
    addiu   a3, $zero, 0x0096          ## a3 = 00000096
    jal     func_8001DCEC              
    swc1    $f8, 0x0028($sp)           
lbl_80B45BD8:
    lw      $ra, 0x004C($sp)           
lbl_80B45BDC:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    lw      s2, 0x003C($sp)            
    lw      s3, 0x0040($sp)            
    lw      s4, 0x0044($sp)            
    lw      s5, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00C8           ## $sp = 00000000


func_80B45BFC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    lw      a0, 0x0020($sp)            
    or      a1, a3, $zero              ## a1 = 00000000
    lui     a2, 0x4448                 ## a2 = 44480000
    jal     func_80026614              
    sw      a3, 0x0024($sp)            
    lw      a3, 0x0024($sp)            
    beq     v0, $zero, lbl_80B45D7C    
    or      a1, v0, $zero              ## a1 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    sw      v0, 0x001C($sp)            
    jal     func_800213B4              
    sw      a3, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    lh      t7, 0x00B6(a0)             ## 000000B6
    subu    a2, v0, t7                 
    sh      t7, 0x0032(a0)             ## 00000032
    lw      a1, 0x001C($sp)            
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sh      a2, 0x001A($sp)            
    jal     func_800214D8              
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    lh      a2, 0x001A($sp)            
    lw      a3, 0x0024($sp)            
    mov.s   $f2, $f0                   
    bltz    a2, lbl_80B45C80           
    subu    v0, $zero, a2              
    beq     $zero, $zero, lbl_80B45C80 
    or      v0, a2, $zero              ## v0 = 00000000
lbl_80B45C80:
    slti    $at, v0, 0x2EE0            
    beql    $at, $zero, lbl_80B45CE4   
    lh      t0, 0x00B6(a3)             ## 000000B6
    cvt.d.s $f0, $f2                   
    lui     $at, %hi(var_80B46060)     ## $at = 80B40000
    sqrt.d  $f0, $f0                   
    ldc1    $f4, %lo(var_80B46060)($at) 
    lw      t8, 0x001C($sp)            
    c.lt.d  $f0, $f4                   
    nop
    bc1fl   lbl_80B45CE4               
    lh      t0, 0x00B6(a3)             ## 000000B6
    lh      t9, 0x0000(t8)             ## 00000000
    addiu   $at, $zero, 0x0066         ## $at = 00000066
    bne     t9, $at, lbl_80B45CD0      
    nop
    jal     func_80B440C0              
    or      a0, a3, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B45D80 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B45CD0:
    jal     func_80B44260              
    or      a0, a3, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B45D80 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    lh      t0, 0x00B6(a3)             ## 000000B6
lbl_80B45CE4:
    subu    v0, $zero, a2              
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   t1, t0, 0x3FFF             ## t1 = 00003FFF
    bltz    a2, lbl_80B45D00           
    sh      t1, 0x0032(a3)             ## 00000032
    beq     $zero, $zero, lbl_80B45D00 
    or      v0, a2, $zero              ## v0 = 00000000
lbl_80B45D00:
    slti    $at, v0, 0x2000            
    bne     $at, $zero, lbl_80B45D28   
    lw      a1, 0x0020($sp)            
    bltz    a2, lbl_80B45D1C           
    subu    v0, $zero, a2              
    beq     $zero, $zero, lbl_80B45D1C 
    or      v0, a2, $zero              ## v0 = 00000000
lbl_80B45D1C:
    slti    $at, v0, 0x6000            
    bne     $at, $zero, lbl_80B45D50   
    nop
lbl_80B45D28:
    jal     func_80B44604              
    sw      a3, 0x0024($sp)            
    lw      a3, 0x0024($sp)            
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f8                   ## $f8 = 3.00
    lwc1    $f6, 0x0068(a3)            ## 00000068
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    mul.s   $f10, $f6, $f8             
    beq     $zero, $zero, lbl_80B45D80 
    swc1    $f10, 0x0068(a3)           ## 00000068
lbl_80B45D50:
    bltz    a2, lbl_80B45D60           
    subu    v0, $zero, a2              
    beq     $zero, $zero, lbl_80B45D60 
    or      v0, a2, $zero              ## v0 = 00000000
lbl_80B45D60:
    slti    $at, v0, 0x5FFF            
    beq     $at, $zero, lbl_80B45D74   
    nop
    jal     func_80B43B98              
    or      a0, a3, $zero              ## a0 = 00000000
lbl_80B45D74:
    beq     $zero, $zero, lbl_80B45D80 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B45D7C:
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B45D80:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80B45D90: .word 0x01970500, 0x00000015, 0x01690000, 0x000004D4
.word func_80B4111C
.word func_80B41340
.word func_80B452E0
.word func_80B4588C
var_80B45DB0: .word \
0x05000939, 0x10010000, 0x01000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00140032, 0x00000000, 0x00000000
var_80B45DDC: .word \
0x02000000, 0x00000000, 0x00000000, 0xFFC1FFFF, \
0x00000000, 0x00010000, 0xC1200000, 0x41600000, \
0x40000000, 0xC1200000, 0xC0C00000, 0x40000000, \
0x41100000, 0x41600000, 0x40000000, 0x02000000, \
0x00000000, 0x00000000, 0xFFC1FFFF, 0x00000000, \
0x00010000, 0xC1200000, 0xC0C00000, 0x40000000, \
0x41100000, 0xC0C00000, 0x40000000, 0x41100000, \
0x41600000, 0x40000000
var_80B45E54: .word 0x09000D00, 0x00020000, 0x00000002
.word var_80B45DDC
var_80B45E64: .word \
0x0A110000, 0x00030000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0x00000000, 0x00000000, 0x81000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80B45EB4: .word \
0x10020102, 0x10020210, 0x01020402, 0xF2020202, \
0x02E460D3, 0x00000104, 0x02020804, 0x04000400
var_80B45ED4: .word \
0xB04C07D0, 0xC850000A, 0x386CF448, 0x44898000, \
0xC42F0000, 0x00000000
var_80B45EEC: .word 0x43960000, 0x00000000, 0x00000000
var_80B45EF8: .word 0x00000000, 0xC53B8000, 0x00000000
var_80B45F04: .word 0x43C80000, 0x00000000, 0x00000000
var_80B45F10: .word 0x44C80000, 0xC57A0000, 0x00000000
var_80B45F1C: .word 0xC53B8000, 0xC4FA0000, 0x44A28000
var_80B45F28: .word 0xC53B8000, 0xC4FA0000, 0xC4A28000
var_80B45F34: .word 0x447A0000, 0x447A0000, 0x00000000
var_80B45F40: .word 0x00000000, 0x00000000, 0x00000000
var_80B45F4C: .word \
0xC53B8000, 0x45BB8000, 0x44C80000, 0xC53B8000, \
0x00000000, 0x44C80000, 0x453B8000, 0x45BB8000, \
0x44C80000
var_80B45F70: .word \
0xC53B8000, 0x00000000, 0x44C80000, 0x453B8000, \
0x00000000, 0x44C80000, 0x453B8000, 0x45BB8000, \
0x44C80000
var_80B45F94: .word \
0x06005FE8, 0x060065A8, 0x06006D28, 0x060065A8, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B45FB0: .word 0x3E99999A
var_80B45FB4: .word 0x3E99999A
var_80B45FB8: .word 0x3F333333
var_80B45FBC: .word 0x3CF5C28F
var_80B45FC0: .word 0x3F4CCCCD
var_80B45FC4: .word 0xBF4CCCCD
var_80B45FC8: .word 0xBF4CCCCD
var_80B45FCC: .word 0xBF59999A
var_80B45FD0: .word 0xBF4CCCCD
var_80B45FD4: .word 0x3F333333
var_80B45FD8: .word 0x3F333333
var_80B45FDC: .word 0x3F333333
var_80B45FE0: .word 0x3F333333
var_80B45FE4: .word 0x3E4CCCCD
var_80B45FE8: .word 0x3D4CCCCD
var_80B45FEC: .word 0x3D4CCCCD
var_80B45FF0: .word 0x3F333333
var_80B45FF4: .word 0xBF4CCCCD
var_80B45FF8: .word 0xBF4CCCCD
var_80B45FFC: .word 0x460B6000
var_80B46000: .word 0x3DCCCCCD
var_80B46004: .word var_80B457FC
.word var_80B457D4
.word lbl_80B45818
.word lbl_80B45818
.word lbl_80B45818
.word var_80B457F4
.word lbl_80B45818
.word lbl_80B45818
.word lbl_80B45818
.word var_80B457E4
.word var_80B457EC
.word lbl_80B45818
.word lbl_80B45818
.word lbl_80B45818
.word var_80B457DC
.word lbl_80B45818
.word lbl_80B45818
.word var_80B4580C
.word lbl_80B45818
.word lbl_80B45818
.word var_80B45814
.word var_80B45804
.word 0x00000000
var_80B46060: .word 0x4082C000, 0x00000000, 0x00000000, 0x00000000

