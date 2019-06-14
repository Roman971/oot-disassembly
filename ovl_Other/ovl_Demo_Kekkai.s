#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B530F0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              ## a1 = 00000000
    bltz    a1, lbl_80B5310C           
    slti    $at, a1, 0x0007            
    bne     $at, $zero, lbl_80B53114   
    sll     t6, a1,  2                 
lbl_80B5310C:
    beq     $zero, $zero, lbl_80B53124 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B53114:
    lui     a0, %hi(var_80B54170)      ## a0 = 80B50000
    addu    a0, a0, t6                 
    jal     func_800288B4              
    lw      a0, %lo(var_80B54170)(a0)  
lbl_80B53124:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B53134:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    lui     a1, 0x3DCC                 ## a1 = 3DCC0000
    sh      $zero, 0x01E6(s0)          ## 000001E6
    ori     a1, a1, 0xCCCD             ## a1 = 3DCCCCCD
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020F88              
    swc1    $f4, 0x01D4(s0)            ## 000001D4
    addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
    sb      t6, 0x00AE(s0)             ## 000000AE
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_80B54120)      ## a3 = 80B50000
    addiu   a3, a3, %lo(var_80B54120)  ## a3 = 80B54120
    lw      a0, 0x0034($sp)            
    lw      a1, 0x0020($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   a1, s0, 0x0188             ## a1 = 00000188
    sw      a1, 0x0024($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_80B54120)      ## a3 = 80B50000
    addiu   a3, a3, %lo(var_80B54120)  ## a3 = 80B54120
    lw      a0, 0x0034($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80050B00              
    lw      a1, 0x0020($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80050B00              
    lw      a1, 0x0024($sp)            
    lh      a0, 0x001C(s0)             ## 0000001C
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f0                   ## $f0 = 1.00
    mtc1    $zero, $f6                 ## $f6 = 0.00
    sltiu   $at, a0, 0x0007            
    sh      $zero, 0x01E4(s0)          ## 000001E4
    swc1    $f0, 0x01E0(s0)            ## 000001E0
    beq     $at, $zero, lbl_80B5331C   
    swc1    $f6, 0x01DC(s0)            ## 000001DC
    sll     t7, a0,  2                 
    lui     $at, %hi(var_80B5424C)     ## $at = 80B50000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80B5424C)($at) 
    jr      t7                         
    nop
var_80B53214:
    lui     t8, %hi(func_80B535F8)     ## t8 = 80B50000
    addiu   t8, t8, %lo(func_80B535F8) ## t8 = 80B535F8
    sw      t8, 0x01E8(s0)             ## 000001E8
    lui     $at, %hi(var_80B54268)     ## $at = 80B50000
    lwc1    $f10, %lo(var_80B54268)($at) 
    lwc1    $f8, 0x0050(s0)            ## 00000050
    lui     $at, %hi(var_80B5426C)     ## $at = 80B50000
    lwc1    $f4, 0x0054(s0)            ## 00000054
    mul.s   $f16, $f8, $f10            
    addiu   t3, $zero, 0x012C          ## t3 = 0000012C
    lh      a0, 0x001C(s0)             ## 0000001C
    trunc.w.s $f18, $f16                 
    mfc1    t0, $f18                   
    nop
    sh      t0, 0x01C8(s0)             ## 000001C8
    lwc1    $f6, %lo(var_80B5426C)($at) 
    sh      t3, 0x01CC(s0)             ## 000001CC
    mul.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t2, $f10                   
    beq     $zero, $zero, lbl_80B5331C 
    sh      t2, 0x01CA(s0)             ## 000001CA
var_80B5326C:
    lui     a1, 0x3DCC                 ## a1 = 3DCC0000
    swc1    $f0, 0x01D4(s0)            ## 000001D4
    swc1    $f0, 0x01D8(s0)            ## 000001D8
    ori     a1, a1, 0xCCCD             ## a1 = 3DCCCCCD
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x42F0                ## $at = 42F00000
    mtc1    $at, $f18                  ## $f18 = 120.00
    lwc1    $f16, 0x0050(s0)           ## 00000050
    lui     $at, 0x44FA                ## $at = 44FA0000
    mtc1    $at, $f10                  ## $f10 = 2000.00
    mul.s   $f4, $f16, $f18            
    lwc1    $f8, 0x0054(s0)            ## 00000054
    lui     $at, 0x43A0                ## $at = 43A00000
    lui     t4, %hi(func_80B539A0)     ## t4 = 80B50000
    mul.s   $f16, $f8, $f10            
    addiu   t4, t4, %lo(func_80B539A0) ## t4 = 80B539A0
    sw      t4, 0x0130(s0)             ## 00000130
    lui     t5, %hi(func_80B53AC4)     ## t5 = 80B50000
    addiu   t5, t5, %lo(func_80B53AC4) ## t5 = 80B53AC4
    addiu   t4, $zero, 0x005F          ## t4 = 0000005F
    trunc.w.s $f6, $f4                   
    lwc1    $f4, 0x0050(s0)            ## 00000050
    sw      t5, 0x0134(s0)             ## 00000134
    trunc.w.s $f18, $f16                 
    mfc1    t7, $f6                    
    mtc1    $at, $f6                   ## $f6 = 320.00
    lui     $at, 0x43FF                ## $at = 43FF0000
    mfc1    t9, $f18                   
    mul.s   $f8, $f4, $f6              
    mtc1    $at, $f18                  ## $f18 = 510.00
    lwc1    $f16, 0x0054(s0)           ## 00000054
    sh      $zero, 0x0180(s0)          ## 00000180
    sh      t4, 0x01CC(s0)             ## 000001CC
    mul.s   $f4, $f16, $f18            
    lh      a0, 0x001C(s0)             ## 0000001C
    sh      t7, 0x017C(s0)             ## 0000017C
    sh      t9, 0x017E(s0)             ## 0000017E
    trunc.w.s $f10, $f8                  
    trunc.w.s $f6, $f4                   
    mfc1    t1, $f10                   
    mfc1    t3, $f6                    
    sh      t1, 0x01C8(s0)             ## 000001C8
    sh      t3, 0x01CA(s0)             ## 000001CA
lbl_80B5331C:
    jal     func_80B530F0              
    nop
    beql    v0, $zero, lbl_80B53354    
    lw      $ra, 0x001C($sp)           
    lh      t5, 0x001C(s0)             ## 0000001C
    lw      t7, 0x0034($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    bne     t5, $zero, lbl_80B53348    
    addu    $at, $at, t7               
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    sb      t6, 0x0AE3($at)            ## 00010AE3
lbl_80B53348:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B53354:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B53364:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x013C             ## a1 = 0000013C
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0188             ## a1 = 00000188
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B533A4:
    addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
    sw      s3, 0x0064($sp)            
    or      s3, a0, $zero              ## s3 = 00000000
    sw      $ra, 0x007C($sp)           
    sw      s8, 0x0078($sp)            
    sw      s7, 0x0074($sp)            
    sw      s6, 0x0070($sp)            
    sw      s5, 0x006C($sp)            
    sw      s4, 0x0068($sp)            
    sw      s2, 0x0060($sp)            
    sw      s1, 0x005C($sp)            
    sw      s0, 0x0058($sp)            
    sdc1    $f30, 0x0050($sp)          
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a1, 0x00A4($sp)            
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f30                  ## $f30 = 3.00
    lui     $at, 0x40E0                ## $at = 40E00000
    mtc1    $at, $f28                  ## $f28 = 7.00
    lui     $at, 0x4100                ## $at = 41000000
    mtc1    $at, $f26                  ## $f26 = 8.00
    lui     $at, %hi(var_80B54270)     ## $at = 80B50000
    lui     s8, %hi(var_80B541A8)      ## s8 = 80B50000
    lui     s7, %hi(var_80B541A4)      ## s7 = 80B50000
    lui     s6, %hi(var_80B54198)      ## s6 = 80B50000
    lui     s5, %hi(var_80B5418C)      ## s5 = 80B50000
    addiu   s5, s5, %lo(var_80B5418C)  ## s5 = 80B5418C
    addiu   s6, s6, %lo(var_80B54198)  ## s6 = 80B54198
    addiu   s7, s7, %lo(var_80B541A4)  ## s7 = 80B541A4
    addiu   s8, s8, %lo(var_80B541A8)  ## s8 = 80B541A8
    lwc1    $f24, %lo(var_80B54270)($at) 
    or      s2, $zero, $zero           ## s2 = 00000000
    addiu   s4, $sp, 0x0094            ## s4 = FFFFFFF4
lbl_80B53438:
    jal     func_80026D64              
    mov.s   $f12, $f24                 
    trunc.w.s $f4, $f0                   
    mov.s   $f12, $f24                 
    mfc1    s1, $f4                    
    nop
    sll     s1, s1, 16                 
    jal     func_80026D64              
    sra     s1, s1, 16                 
    trunc.w.s $f6, $f0                   
    sll     a0, s1, 16                 
    sra     a0, a0, 16                 
    mfc1    s0, $f6                    
    nop
    sll     s0, s0, 16                 
    jal     func_80063684              ## coss?
    sra     s0, s0, 16                 
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    mov.s   $f22, $f0                  
    mov.s   $f20, $f0                  
    jal     func_80026D64              
    mov.s   $f12, $f26                 
    mul.s   $f8, $f20, $f22            
    lui     $at, %hi(var_80B5418C)     ## $at = 80B50000
    sll     a0, s1, 16                 
    sra     a0, a0, 16                 
    mul.s   $f10, $f0, $f8             
    jal     func_80063684              ## coss?
    swc1    $f10, %lo(var_80B5418C)($at) 
    sll     a0, s0, 16                 
    sra     a0, a0, 16                 
    jal     func_80063684              ## coss?
    mov.s   $f22, $f0                  
    mov.s   $f20, $f0                  
    jal     func_80026D64              
    mov.s   $f12, $f26                 
    mul.s   $f16, $f20, $f22           
    lui     $at, %hi(var_80B54194)     ## $at = 80B50000
    sll     a0, s1, 16                 
    sra     a0, a0, 16                 
    mul.s   $f18, $f0, $f16            
    jal     func_800636C4              ## sins?
    swc1    $f18, %lo(var_80B54194)($at) 
    mov.s   $f20, $f0                  
    jal     func_80026D64              
    mov.s   $f12, $f30                 
    mul.s   $f4, $f0, $f20             
    lui     $at, %hi(var_80B54190)     ## $at = 80B50000
    swc1    $f4, %lo(var_80B54190)($at) 
    lui     $at, %hi(var_80B5418C)     ## $at = 80B50000
    lwc1    $f6, %lo(var_80B5418C)($at) 
    lui     $at, %hi(var_80B54190)     ## $at = 80B50000
    lwc1    $f18, %lo(var_80B54190)($at) 
    mul.s   $f8, $f6, $f28             
    lwc1    $f10, 0x0024(s3)           ## 00000024
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f4                   ## $f4 = 20.00
    lui     $at, 0x42F0                ## $at = 42F00000
    mul.s   $f6, $f18, $f4             
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0094($sp)          
    lwc1    $f8, 0x0028(s3)            ## 00000028
    mtc1    $at, $f16                  ## $f16 = 120.00
    lui     $at, %hi(var_80B54194)     ## $at = 80B50000
    add.s   $f10, $f6, $f8             
    lwc1    $f4, %lo(var_80B54194)($at) 
    lui     $at, 0x4220                ## $at = 42200000
    mtc1    $at, $f12                  ## $f12 = 40.00
    add.s   $f18, $f10, $f16           
    mul.s   $f6, $f4, $f28             
    swc1    $f18, 0x0098($sp)          
    lwc1    $f8, 0x002C(s3)            ## 0000002C
    add.s   $f10, $f6, $f8             
    jal     func_80026D64              
    swc1    $f10, 0x009C($sp)          
    trunc.w.s $f16, $f0                  
    addiu   t8, $zero, 0x0BB8          ## t8 = 00000BB8
    sw      t8, 0x0018($sp)            
    lw      a0, 0x00A4($sp)            
    mfc1    t0, $f16                   
    or      a1, s4, $zero              ## a1 = FFFFFFF4
    or      a2, s5, $zero              ## a2 = 80B5418C
    addiu   t1, t0, 0x002D             ## t1 = 0000002D
    sw      t1, 0x001C($sp)            
    or      a3, s6, $zero              ## a3 = 80B54198
    sw      s7, 0x0010($sp)            
    jal     func_8001C7E4              
    sw      s8, 0x0014($sp)            
    addiu   s2, s2, 0x0001             ## s2 = 00000001
    addiu   $at, $zero, 0x0055         ## $at = 00000055
    bne     s2, $at, lbl_80B53438      
    nop
    lw      $ra, 0x007C($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    ldc1    $f28, 0x0048($sp)          
    ldc1    $f30, 0x0050($sp)          
    lw      s0, 0x0058($sp)            
    lw      s1, 0x005C($sp)            
    lw      s2, 0x0060($sp)            
    lw      s3, 0x0064($sp)            
    lw      s4, 0x0068($sp)            
    lw      s5, 0x006C($sp)            
    lw      s6, 0x0070($sp)            
    lw      s7, 0x0074($sp)            
    lw      s8, 0x0078($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A0           ## $sp = 00000000


func_80B535F8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lbu     t6, 0x1D6C(a1)             ## 00001D6C
    beql    t6, $zero, lbl_80B536EC    
    lhu     t3, 0x01E6(a2)             ## 000001E6
    lw      v0, 0x1D8C(a1)             ## 00001D8C
    beql    v0, $zero, lbl_80B536EC    
    lhu     t3, 0x01E6(a2)             ## 000001E6
    lhu     v1, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v1, $at, lbl_80B536E8      
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    bnel    v1, $at, lbl_80B536EC      
    lhu     t3, 0x01E6(a2)             ## 000001E6
    lhu     t7, 0x01E6(a2)             ## 000001E6
    addiu   a0, $zero, 0x000C          ## a0 = 0000000C
    andi    t8, t7, 0x0001             ## t8 = 00000000
    bnel    t8, $zero, lbl_80B53664    
    lui     $at, 0x40E0                ## $at = 40E00000
    jal     func_800C4C84              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lhu     t9, 0x01E6(a2)             ## 000001E6
    ori     t0, t9, 0x0001             ## t0 = 00000001
    sh      t0, 0x01E6(a2)             ## 000001E6
    lui     $at, 0x40E0                ## $at = 40E00000
lbl_80B53664:
    mtc1    $at, $f4                   ## $f4 = 7.00
    lwc1    $f0, 0x01E0(a2)            ## 000001E0
    lui     $at, %hi(var_80B54274)     ## $at = 80B50000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80B53694               
    lhu     t1, 0x01E4(a2)             ## 000001E4
    lwc1    $f6, %lo(var_80B54274)($at) 
    add.s   $f8, $f0, $f6              
    beq     $zero, $zero, lbl_80B536E8 
    swc1    $f8, 0x01E0(a2)            ## 000001E0
    lhu     t1, 0x01E4(a2)             ## 000001E4
lbl_80B53694:
    addiu   a0, $zero, 0x00C3          ## a0 = 000000C3
    addiu   t2, t1, 0x0001             ## t2 = 00000001
    andi    v0, t2, 0xFFFF             ## v0 = 00000001
    slti    $at, v0, 0x0065            
    bne     $at, $zero, lbl_80B536C4   
    sh      t2, 0x01E4(a2)             ## 000001E4
    jal     func_800288E0              
    sw      a2, 0x0018($sp)            
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    beq     $zero, $zero, lbl_80B53708 
    lw      $ra, 0x0014($sp)           
lbl_80B536C4:
    slti    $at, v0, 0x0029            
    bne     $at, $zero, lbl_80B536E8   
    lui     $at, %hi(var_80B54278)     ## $at = 80B50000
    lwc1    $f16, %lo(var_80B54278)($at) 
    lwc1    $f10, 0x0050(a2)           ## 00000050
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0050(a2)           ## 00000050
    lwc1    $f4, 0x0050(a2)            ## 00000050
    swc1    $f4, 0x0058(a2)            ## 00000058
lbl_80B536E8:
    lhu     t3, 0x01E6(a2)             ## 000001E6
lbl_80B536EC:
    or      a0, a2, $zero              ## a0 = 00000000
    andi    t4, t3, 0x0001             ## t4 = 00000000
    bnel    t4, $zero, lbl_80B53708    
    lw      $ra, 0x0014($sp)           
    jal     func_8002313C              
    addiu   a1, $zero, 0x20EE          ## a1 = 000020EE
    lw      $ra, 0x0014($sp)           
lbl_80B53708:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B53714:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s2, 0x0028($sp)            
    lui     $at, %hi(var_80B5427C)     ## $at = 80B50000
    lwc1    $f4, %lo(var_80B5427C)($at) 
    lwc1    $f6, 0x01D4(s0)            ## 000001D4
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80B537E4               
    lw      t9, 0x01E8(s0)             ## 000001E8
    lbu     t6, 0x014C(s0)             ## 0000014C
    lui     $at, 0x40C0                ## $at = 40C00000
    or      a0, s1, $zero              ## a0 = 00000000
    andi    t7, t6, 0x0002             ## t7 = 00000000
    bnel    t7, $zero, lbl_80B53778    
    mtc1    $at, $f0                   ## $f0 = 6.00
    lbu     t8, 0x0198(s0)             ## 00000198
    andi    t9, t8, 0x0002             ## t9 = 00000000
    beql    t9, $zero, lbl_80B53790    
    lui     $at, 0x0001                ## $at = 00010000
    mtc1    $at, $f0                   ## $f0 = 0.00
lbl_80B53778:
    lh      a3, 0x008A(s0)             ## 0000008A
    or      a1, s0, $zero              ## a1 = 00000000
    mfc1    a2, $f0                    
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    lui     $at, 0x0001                ## $at = 00010000
lbl_80B53790:
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    s2, s1, $at                
    addiu   a2, s0, 0x013C             ## a2 = 0000013C
    sw      a2, 0x0030($sp)            
    or      a1, s2, $zero              ## a1 = 00000000
    jal     func_8004BD50              ## CollisionCheck_setAT
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a2, 0x0030($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004C130              ## CollisionCheck_setOT
    or      a1, s2, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x0188             ## a2 = 00000188
    sw      a2, 0x0030($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004BD50              ## CollisionCheck_setAT
    or      a1, s2, $zero              ## a1 = 00000000
    lw      a2, 0x0030($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004C130              ## CollisionCheck_setOT
    or      a1, s2, $zero              ## a1 = 00000000
    lw      t9, 0x01E8(s0)             ## 000001E8
lbl_80B537E4:
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    lwc1    $f8, 0x01DC(s0)            ## 000001DC
    lwc1    $f10, 0x01E0(s0)           ## 000001E0
    lui     $at, 0x4780                ## $at = 47800000
    mtc1    $at, $f2                   ## $f2 = 65536.00
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x01DC(s0)           ## 000001DC
    lwc1    $f0, 0x01DC(s0)            ## 000001DC
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80B5382C               
    lw      $ra, 0x002C($sp)           
    sub.s   $f18, $f0, $f2             
    swc1    $f18, 0x01DC(s0)           ## 000001DC
    lw      $ra, 0x002C($sp)           
lbl_80B5382C:
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80B53840:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t8, 0x001C(s0)             ## 0000001C
    lw      t6, 0x0024($sp)            
    lui     t0, %hi(var_80B541AC)      ## t0 = 80B50000
    sll     t9, t8,  1                 
    addu    t0, t0, t9                 
    lhu     t0, %lo(var_80B541AC)(t0)  
    lhu     t7, 0x1D74(t6)             ## 00001D74
    bne     t7, t0, lbl_80B53880       
    nop
    jal     func_800C4C84              
    addiu   a0, $zero, 0x000A          ## a0 = 0000000A
lbl_80B53880:
    lui     $at, %hi(var_80B54280)     ## $at = 80B50000
    lwc1    $f2, %lo(var_80B54280)($at) 
    lwc1    $f0, 0x01D4(s0)            ## 000001D4
    addiu   t1, $zero, 0x0050          ## t1 = 00000050
    c.le.s  $f2, $f0                   
    nop
    bc1fl   lbl_80B538B0               
    mtc1    $zero, $f6                 ## $f6 = 0.00
    sub.s   $f4, $f0, $f2              
    beq     $zero, $zero, lbl_80B538B8 
    swc1    $f4, 0x01D4(s0)            ## 000001D4
    mtc1    $zero, $f6                 ## $f6 = 0.00
lbl_80B538B0:
    nop
    swc1    $f6, 0x01D4(s0)            ## 000001D4
lbl_80B538B8:
    lhu     v1, 0x01E4(s0)             ## 000001E4
    slti    $at, v1, 0x0028            
    beq     $at, $zero, lbl_80B53914   
    or      v0, v1, $zero              ## v0 = 00000000
    subu    t2, t1, v1                 
    mtc1    t2, $f8                    ## $f8 = 0.00
    mtc1    v1, $f16                   ## $f16 = 0.00
    lui     $at, 0x4F80                ## $at = 4F800000
    cvt.s.w $f10, $f8                  
    bgez    v1, lbl_80B538F0           
    cvt.s.w $f18, $f16                 
    mtc1    $at, $f4                   ## $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4            
lbl_80B538F0:
    mul.s   $f6, $f10, $f18            
    lui     $at, %hi(var_80B54284)     ## $at = 80B50000
    lwc1    $f8, %lo(var_80B54284)($at) 
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    mul.s   $f16, $f6, $f8             
    add.s   $f10, $f16, $f4            
    beq     $zero, $zero, lbl_80B53960 
    swc1    $f10, 0x01D8(s0)           ## 000001D8
lbl_80B53914:
    slti    $at, v0, 0x0032            
    beq     $at, $zero, lbl_80B5392C   
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f18                  ## $f18 = 2.00
    beq     $zero, $zero, lbl_80B53960 
    swc1    $f18, 0x01D8(s0)           ## 000001D8
lbl_80B5392C:
    addiu   $at, $zero, 0x0032         ## $at = 00000032
    bne     v0, $at, lbl_80B53954      
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x1842          ## a1 = 00001842
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80B533A4              
    lw      a1, 0x0024($sp)            
    beq     $zero, $zero, lbl_80B53964 
    mtc1    $zero, $f8                 ## $f8 = 0.00
lbl_80B53954:
    mtc1    $zero, $f6                 ## $f6 = 0.00
    nop
    swc1    $f6, 0x01D8(s0)            ## 000001D8
lbl_80B53960:
    mtc1    $zero, $f8                 ## $f8 = 0.00
lbl_80B53964:
    lwc1    $f16, 0x01D8(s0)           ## 000001D8
    or      a0, s0, $zero              ## a0 = 00000000
    c.eq.s  $f8, $f16                  
    nop
    bc1tl   lbl_80B53988               
    lhu     t3, 0x01E4(s0)             ## 000001E4
    jal     func_8002313C              
    addiu   a1, $zero, 0x20ED          ## a1 = 000020ED
    lhu     t3, 0x01E4(s0)             ## 000001E4
lbl_80B53988:
    addiu   t4, t3, 0x0001             ## t4 = 00000001
    sh      t4, 0x01E4(s0)             ## 000001E4
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80B539A0:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lbu     t6, 0x014C(s0)             ## 0000014C
    lui     $at, 0x40A0                ## $at = 40A00000
    or      a0, s1, $zero              ## a0 = 00000000
    andi    t7, t6, 0x0002             ## t7 = 00000000
    beql    t7, $zero, lbl_80B539EC    
    lui     $at, 0x0001                ## $at = 00010000
    mtc1    $at, $f0                   ## $f0 = 0.00
    lh      a3, 0x008A(s0)             ## 0000008A
    or      a1, s0, $zero              ## a1 = 00000000
    mfc1    a2, $f0                    
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
    lui     $at, 0x0001                ## $at = 00010000
lbl_80B539EC:
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, s1, $at                
    addiu   a2, s0, 0x013C             ## a2 = 0000013C
    sw      a2, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    jal     func_8004BD50              ## CollisionCheck_setAT
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a2, 0x0028($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8004C130              ## CollisionCheck_setOT
    lw      a1, 0x002C($sp)            
    lbu     t8, 0x0199(s0)             ## 00000199
    andi    t9, t8, 0x0002             ## t9 = 00000000
    beql    t9, $zero, lbl_80B53A98    
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          ## a0 = 00004802
    lh      t1, 0x001C(s0)             ## 0000001C
    lui     t0, %hi(func_80B53840)     ## t0 = 80B50000
    addiu   t0, t0, %lo(func_80B53840) ## t0 = 80B53840
    lui     v0, %hi(var_80B541BC)      ## v0 = 80B50000
    sll     t2, t1,  2                 
    sw      t0, 0x0130(s0)             ## 00000130
    sh      $zero, 0x01E4(s0)          ## 000001E4
    addu    v0, v0, t2                 
    lw      v0, %lo(var_80B541BC)(v0)  
    lui     t7, 0x8012                 ## t7 = 80120000
    lui     $at, 0x00FF                ## $at = 00FF0000
    sll     t4, v0,  4                 
    srl     t5, t4, 28                 
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, 0x0C38(t7)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t3, v0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t8, t3, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x1D68(s1)             ## 00001D68
    lui     $at, 0x8012                ## $at = 80120000
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    sb      t0, -0x461C($at)           ## 8011B9E4
    or      a0, s1, $zero              ## a0 = 00000000
lbl_80B53A98:
    lw      a1, 0x002C($sp)            
    jal     func_8004BF40              ## CollisionCheck_setAC
    addiu   a2, s0, 0x0188             ## a2 = 00000188
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x20ED          ## a1 = 000020ED
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80B53AC4:
    addiu   $sp, $sp, 0xFEE8           ## $sp = FFFFFEE8
    sw      s2, 0x0040($sp)            
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s2, a1, $zero              ## s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s1, 0x003C($sp)            
    lui     t6, 0x0001                 ## t6 = 00010000
    addu    t6, t6, s2                 
    lw      t6, 0x1DE4(t6)             ## 00011DE4
    lui     t9, %hi(var_80B541D8)      ## t9 = 80B50000
    addiu   t9, t9, %lo(var_80B541D8)  ## t9 = 80B541D8
    andi    t7, t6, 0xFFFF             ## t7 = 00000000
    sw      t7, 0x0110($sp)            
    addiu   t5, t9, 0x0060             ## t5 = 80B54238
    addiu   t8, $sp, 0x00A8            ## t8 = FFFFFF90
lbl_80B53B04:
    lw      t4, 0x0000(t9)             ## 80B541D8
    addiu   t9, t9, 0x000C             ## t9 = 80B541E4
    addiu   t8, t8, 0x000C             ## t8 = FFFFFF9C
    sw      t4, -0x000C(t8)            ## FFFFFF90
    lw      t3, -0x0008(t9)            ## 80B541DC
    sw      t3, -0x0008(t8)            ## FFFFFF94
    lw      t4, -0x0004(t9)            ## 80B541E0
    bne     t9, t5, lbl_80B53B04       
    sw      t4, -0x0004(t8)            ## FFFFFF98
    lw      t4, 0x0000(t9)             ## 80B541E4
    lui     v0, 0x0600                 ## v0 = 06000000
    addiu   v0, v0, 0x4FD0             ## v0 = 06004FD0
    sw      t4, 0x0000(t8)             ## FFFFFF9C
    lhu     t4, 0x0004(t9)             ## 80B541E8
    sll     t6, v0,  4                 
    mtc1    $zero, $f4                 ## $f4 = 0.00
    sh      t4, 0x0004(t8)             ## FFFFFFA0
    lwc1    $f6, 0x01D8(s0)            ## 000001D8
    srl     t7, t6, 28                 
    sll     t5, t7,  2                 
    lui     t9, 0x8012                 ## t9 = 80120000
    addu    t9, t9, t5                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    c.eq.s  $f4, $f6                   
    lw      t9, 0x0C38(t9)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t8, v0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    a2, t9, t8                 
    bc1t    lbl_80B53FA8               
    addu    a2, a2, $at                
    lui     $at, 0x434A                ## $at = 434A0000
    mtc1    $at, $f10                  ## $f10 = 202.00
    lwc1    $f8, 0x01D4(s0)            ## 000001D4
    lui     $at, 0x42FC                ## $at = 42FC0000
    mtc1    $at, $f6                   ## $f6 = 126.00
    mul.s   $f16, $f8, $f10            
    lbu     t5, 0x00A8($sp)            
    addiu   a0, $sp, 0x009C            ## a0 = FFFFFF84
    addiu   v1, a2, 0x0020             ## v1 = 00000020
    addu    t9, a0, t5                 
    addiu   v0, $sp, 0x00AA            ## v0 = FFFFFF92
    addiu   a1, $sp, 0x010E            ## a1 = FFFFFFF6
    trunc.w.s $f18, $f16                 
    mfc1    t4, $f18                   
    nop
    sb      t4, 0x009E($sp)            
    lwc1    $f4, 0x01D4(s0)            ## 000001D4
    sb      $zero, 0x009C($sp)         
    mul.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t7, $f10                   
    nop
    sb      t7, 0x009D($sp)            
    lbu     t8, 0x0000(t9)             ## 80120000
    sb      t8, 0x000F(a2)             ## 0000000F
    lbu     t3, 0x00A9($sp)            
    addu    t4, a0, t3                 
    lbu     t6, 0x0000(t4)             ## 00000000
    sb      t6, 0x001F(a2)             ## 0000001F
lbl_80B53BF4:
    lbu     t7, 0x0000(v0)             ## FFFFFF92
    addiu   v0, v0, 0x0004             ## v0 = FFFFFF96
    addiu   v1, v1, 0x0040             ## v1 = 00000060
    addu    t5, a0, t7                 
    lbu     t9, 0x0000(t5)             ## 80B54238
    sb      t9, -0x0031(v1)            ## 0000002F
    lbu     t8, -0x0003(v0)            ## FFFFFF93
    addu    t3, a0, t8                 
    lbu     t4, 0x0000(t3)             ## 00000000
    sb      t4, -0x0021(v1)            ## 0000003F
    lbu     t6, -0x0002(v0)            ## FFFFFF94
    addu    t7, a0, t6                 
    lbu     t5, 0x0000(t7)             ## 00000000
    sb      t5, -0x0011(v1)            ## 0000004F
    lbu     t9, -0x0001(v0)            ## FFFFFF95
    addu    t8, a0, t9                 
    lbu     t3, 0x0000(t8)             ## FFFFFF9C
    bne     v0, a1, lbl_80B53BF4       
    sb      t3, -0x0001(v1)            ## 0000005F
    lh      t4, 0x001C(s0)             ## 0000001C
    sll     t6, t4,  2                 
    subu    t6, t6, t4                 
    sll     t6, t6,  1                 
    addiu   t7, t6, 0xFFFA             ## t7 = 0000FFFA
    sw      t7, 0x00A4($sp)            
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_8007E2C0              
    or      s1, a0, $zero              ## s1 = FFFFFF84
    jal     func_800AA6EC              
    nop
    mtc1    $zero, $f12                ## $f12 = 0.00
    lui     $at, 0x4496                ## $at = 44960000
    mtc1    $at, $f14                  ## $f14 = 1200.00
    mfc1    a2, $f12                   
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lwc1    $f12, 0x01D8(s0)           ## 000001D8
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lui     $at, 0xC496                ## $at = C4960000
    mtc1    $at, $f14                  ## $f14 = -1200.00
    mtc1    $zero, $f12                ## $f12 = 0.00
    addiu   a2, $zero, 0x0000          ## a2 = 00000000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lw      s0, 0x02D0(s1)             ## 00000254
    lui     t9, 0xDA38                 ## t9 = DA380000
    ori     t9, t9, 0x0003             ## t9 = DA380003
    addiu   t5, s0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s1)             ## 00000254
    sw      t9, 0x0000(s0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_800AB900              
    sw      s0, 0x0088($sp)            
    lw      v1, 0x0088($sp)            
    lw      t1, 0x0110($sp)            
    lui     t3, 0xDB06                 ## t3 = DB060000
    sw      v0, 0x0004(v1)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 00000254
    ori     t3, t3, 0x0024             ## t3 = DB060024
    subu    $at, $zero, t1             
    addiu   t8, s0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 00000254
    sw      t3, 0x0000(s0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    sll     a3, $at,  2                
    addu    a3, a3, $at                
    sll     a2, t1,  2                 
    addu    a2, a2, t1                 
    sll     a3, a3,  1                 
    addiu   t4, $zero, 0x0020          ## t4 = 00000020
    addiu   t6, $zero, 0x0020          ## t6 = 00000020
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    addiu   t5, $zero, 0x0020          ## t5 = 00000020
    addiu   t9, $zero, 0x0020          ## t9 = 00000020
    sw      t9, 0x0028($sp)            
    sw      t5, 0x0024($sp)            
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    sw      t4, 0x0010($sp)            
    sw      a3, 0x0020($sp)            
    sw      a3, 0x0050($sp)            
    sw      a2, 0x001C($sp)            
    sw      a2, 0x0054($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    jal     func_8007EB84              
    sw      s0, 0x0084($sp)            
    lw      t0, 0x0084($sp)            
    lui     t3, 0xDE00                 ## t3 = DE000000
    sw      v0, 0x0004(t0)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 00000254
    lui     t4, 0x0600                 ## t4 = 06000000
    addiu   t4, t4, 0x5CB0             ## t4 = 06005CB0
    addiu   t8, s0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 00000254
    sw      t4, 0x0004(s0)             ## 00000004
    sw      t3, 0x0000(s0)             ## 00000000
    jal     func_800AA724              
    nop
    lw      s0, 0x02D0(s1)             ## 00000254
    lui     t7, 0xDA38                 ## t7 = DA380000
    ori     t7, t7, 0x0003             ## t7 = DA380003
    addiu   t6, s0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s1)             ## 00000254
    sw      t7, 0x0000(s0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_800AB900              
    sw      s0, 0x007C($sp)            
    lw      t1, 0x007C($sp)            
    lui     t3, 0xFA00                 ## t3 = FA000000
    ori     t3, t3, 0x0080             ## t3 = FA000080
    sw      v0, 0x0004(t1)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 00000254
    lui     t9, 0xE700                 ## t9 = E7000000
    lui     t7, 0xDB06                 ## t7 = DB060000
    addiu   t5, s0, 0x0008             ## t5 = 00000008
    sw      t5, 0x02D0(s1)             ## 00000254
    sw      $zero, 0x0004(s0)          ## 00000004
    sw      t9, 0x0000(s0)             ## 00000000
    lw      s0, 0x02D0(s1)             ## 00000254
    lui     t4, 0x3200                 ## t4 = 32000000
    ori     t4, t4, 0x64FF             ## t4 = 320064FF
    addiu   t8, s0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 00000254
    sw      t4, 0x0004(s0)             ## 00000004
    sw      t3, 0x0000(s0)             ## 00000000
    lw      s0, 0x02D0(s1)             ## 00000254
    ori     t7, t7, 0x0028             ## t7 = DB060028
    addiu   t5, $zero, 0x0020          ## t5 = 00000020
    addiu   t6, s0, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s1)             ## 00000254
    sw      t7, 0x0000(s0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    lw      t3, 0x0110($sp)            
    addiu   t6, $zero, 0x0020          ## t6 = 00000020
    addiu   t9, $zero, 0x0020          ## t9 = 00000020
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   t4, $zero, 0x0020          ## t4 = 00000020
    sw      t4, 0x0024($sp)            
    sw      t8, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t6, 0x0028($sp)            
    sw      t5, 0x0010($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      s0, 0x0070($sp)            
    sw      t3, 0x001C($sp)            
    jal     func_8007EB84              
    sw      t3, 0x0020($sp)            
    lw      t2, 0x0070($sp)            
    lui     t5, 0xDE00                 ## t5 = DE000000
    or      a1, $zero, $zero           ## a1 = 00000000
    sw      v0, 0x0004(t2)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 00000254
    lui     t9, 0x0600                 ## t9 = 06000000
    addiu   t9, t9, 0x4F00             ## t9 = 06004F00
    addiu   t7, s0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s1)             ## 00000254
    sw      t9, 0x0004(s0)             ## 00000004
    sw      t5, 0x0000(s0)             ## 00000000
    lw      s0, 0x02D0(s1)             ## 00000254
    lui     t3, 0xE700                 ## t3 = E7000000
    addiu   t8, s0, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 00000254
    sw      $zero, 0x0004(s0)          ## 00000004
    sw      t3, 0x0000(s0)             ## 00000000
    lw      s0, 0x02D0(s1)             ## 00000254
    lui     t6, 0xFA00                 ## t6 = FA000000
    ori     t6, t6, 0x0080             ## t6 = FA000080
    addiu   t4, s0, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s1)             ## 00000254
    sw      t6, 0x0000(s0)             ## 00000000
    lw      t7, 0x00A4($sp)            
    lui     t5, %hi(var_80B5414C)      ## t5 = 80B50000
    addiu   t5, t5, %lo(var_80B5414C)  ## t5 = 80B5414C
    addu    v1, t7, t5                 
    lbu     t8, 0x0002(v1)             ## 00000002
    lbu     t6, 0x0000(v1)             ## 00000000
    sll     t3, t8,  8                 
    lbu     t8, 0x0001(v1)             ## 00000001
    sll     t7, t6, 24                 
    or      t5, t3, t7                 ## t5 = E7000008
    sll     t4, t8, 16                 
    or      t6, t5, t4                 ## t6 = E7000008
    ori     t3, t6, 0x00FF             ## t3 = E70000FF
    sw      t3, 0x0004(s0)             ## 00000004
    lw      a3, 0x0050($sp)            
    lw      a2, 0x0054($sp)            
    lw      s0, 0x02D0(s1)             ## 00000254
    lui     t9, 0xFB00                 ## t9 = FB000000
    lui     t8, 0xDB06                 ## t8 = DB060000
    addiu   t7, s0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s1)             ## 00000254
    sw      t9, 0x0000(s0)             ## 00000000
    lbu     t5, 0x0005(v1)             ## 00000005
    lbu     t3, 0x0003(v1)             ## 00000003
    ori     t8, t8, 0x0020             ## t8 = DB060020
    sll     t4, t5,  8                 
    lbu     t5, 0x0004(v1)             ## 00000004
    sll     t7, t3, 24                 
    or      t9, t4, t7                 ## t9 = 00000008
    sll     t6, t5, 16                 
    or      t3, t9, t6                 ## t3 = E7000008
    ori     t4, t3, 0x0080             ## t4 = E7000088
    sw      t4, 0x0004(s0)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 00000254
    addiu   t5, $zero, 0x0020          ## t5 = 00000020
    addiu   t9, $zero, 0x0020          ## t9 = 00000020
    addiu   t7, s0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s1)             ## 00000254
    sw      t8, 0x0000(s0)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    addiu   t3, $zero, 0x0020          ## t3 = 00000020
    addiu   t4, $zero, 0x0040          ## t4 = 00000040
    sw      t4, 0x0028($sp)            
    sw      t3, 0x0024($sp)            
    sw      t6, 0x0018($sp)            
    sw      a3, 0x0020($sp)            
    sw      a2, 0x001C($sp)            
    sw      t9, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    jal     func_8007EB84              
    sw      s0, 0x005C($sp)            
    lw      t0, 0x005C($sp)            
    lui     t8, 0xDE00                 ## t8 = DE000000
    sw      v0, 0x0004(t0)             ## 00000004
    lw      s0, 0x02D0(s1)             ## 00000254
    lui     t5, 0x0600                 ## t5 = 06000000
    addiu   t5, t5, 0x5A30             ## t5 = 06005A30
    addiu   t7, s0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s1)             ## 00000254
    sw      t5, 0x0004(s0)             ## 00000004
    sw      t8, 0x0000(s0)             ## 00000000
lbl_80B53FA8:
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0118           ## $sp = 00000000


func_80B53FC0:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0038($sp)            
    sw      a1, 0x0064($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    lwc1    $f4, 0x01DC(a2)            ## 000001DC
    lw      t9, 0x0064($sp)            
    trunc.w.s $f6, $f4                   
    mfc1    t7, $f6                    
    nop
    andi    t8, t7, 0xFFFF             ## t8 = 00000000
    sw      t8, 0x0054($sp)            
    lw      a0, 0x0000(t9)             ## 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              ## s0 = 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t5, 0xDA38                 ## t5 = DA380000
    ori     t5, t5, 0x0003             ## t5 = DA380003
    addiu   t4, v1, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s0)             ## 000002D0
    sw      t5, 0x0000(v1)             ## 00000000
    lw      t6, 0x0064($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0048($sp)            
    lw      t1, 0x0048($sp)            
    lw      t3, 0x0054($sp)            
    lui     t8, 0xFA00                 ## t8 = FA000000
    sw      v0, 0x0004(t1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t9, 0xFFAA                 ## t9 = FFAA0000
    ori     t9, t9, 0xFFFF             ## t9 = FFAAFFFF
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s0)             ## 000002D0
    ori     t8, t8, 0x0080             ## t8 = FA000080
    sw      t8, 0x0000(v1)             ## 00000000
    sw      t9, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t5, 0xDB06                 ## t5 = DB060000
    ori     t5, t5, 0x0020             ## t5 = DB060020
    addiu   t4, v1, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s0)             ## 000002D0
    sw      t5, 0x0000(v1)             ## 00000000
    lw      t6, 0x0064($sp)            
    subu    $at, $zero, t3             
    sll     a3, $at,  2                
    lw      a0, 0x0000(t6)             ## 00000000
    addiu   t5, $zero, 0x0040          ## t5 = 00000040
    addiu   t4, $zero, 0x0020          ## t4 = 00000020
    sll     a2, t3,  1                 
    addiu   t7, $zero, 0x0020          ## t7 = 00000020
    addiu   t8, $zero, 0x0040          ## t8 = 00000040
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    sw      a2, 0x001C($sp)            
    sw      t4, 0x0024($sp)            
    sw      t5, 0x0028($sp)            
    sw      a3, 0x0020($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0040($sp)            
    lw      t2, 0x0040($sp)            
    lui     t7, 0xDE00                 ## t7 = DE000000
    sw      v0, 0x0004(t2)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t8, 0x0600                 ## t8 = 06000000
    addiu   t8, t8, 0x4930             ## t8 = 06004930
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    sw      t8, 0x0004(v1)             ## 00000004
    sw      t7, 0x0000(v1)             ## 00000000
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80B54100: .word 0x01A70700, 0x00000030, 0x01790000, 0x000001EC
.word func_80B53134
.word func_80B53364
.word func_80B53714
.word func_80B53FC0
var_80B54120: .word \
0x0A110939, 0x10010000, 0x00000000, 0x20000000, \
0x07040000, 0x00002000, 0x00000000, 0x01010100, \
0x02A800DC, 0x00780000, 0x00000000
var_80B5414C: .word \
0xAAFFFF00, 0x32FFFFFF, 0xAAC8FF00, 0xFFFFAAC8, \
0x0000FFAA, 0xFF6400C8, 0xFFFFAAFF, 0x7800FFFF, \
0xAA00C800
var_80B54170: .word \
0x000000C3, 0x000000BC, 0x000000BF, 0x000000BE, \
0x000000BD, 0x000000AD, 0x000000BB
var_80B5418C: .word 0x00000000
var_80B54190: .word 0x00000000
var_80B54194: .word 0x00000000
var_80B54198: .word 0x00000000, 0x00000000, 0x00000000
var_80B541A4: .word 0xFFFFAA00
var_80B541A8: .word 0xC8000000
var_80B541AC: .word 0x00000118, 0x01180118, 0x01180118, 0x01180000
var_80B541BC: .word \
0x00000000, 0x0201A8D0, 0x0201C6A0, 0x0201BC70, \
0x0201B2A0, 0x0201D070, 0x02019ED0
var_80B541D8: .word \
0x01010000, 0x02020202, 0x02020202, 0x02020202, \
0x01010000, 0x00010202, 0x02020202, 0x01000001, \
0x02020101, 0x02020202, 0x02020202, 0x02020101, \
0x00000001, 0x01000202, 0x02020202, 0x02020202, \
0x02020202, 0x01010000, 0x00010100, 0x02020202, \
0x02020202, 0x02020100, 0x01000202, 0x02020202, \
0x02010102, 0x00000000

.section .rodata

.word 0xC5F6A4C3, 0xA4BFA4E8, 0x00000000
var_80B5424C: .word var_80B53214
.word var_80B5326C
.word var_80B5326C
.word var_80B5326C
.word var_80B5326C
.word var_80B5326C
.word var_80B5326C
var_80B54268: .word 0x45BEA000
var_80B5426C: .word 0x459C4000
var_80B54270: .word 0x477FFF00
var_80B54274: .word 0x3E4CCCCD
var_80B54278: .word 0x3B449BA6
var_80B5427C: .word 0x3F7D70A4
var_80B54280: .word 0x3D4CCCCD
var_80B54284: .word 0x3A23D70A, 0x00000000, 0x00000000

