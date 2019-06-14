#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A2B240:
    sw      a1, 0x013C(a0)             ## 0000013C
    jr      $ra                        
    nop


func_80A2B24C:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0030($sp)            
    mtc1    $zero, $f0                 ## $f0 = 0.00
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0044($sp)            
    lh      v0, 0x001C(s0)             ## 0000001C
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_8001EC20              
    sw      v0, 0x0038($sp)            
    lui     a1, 0x3DCC                 ## a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             ## a1 = 3DCCCCCD
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      v0, 0x0038($sp)            
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, s0, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80A2B2CC    
    lui     a1, %hi(func_80A2B590)     ## a1 = 80A30000
    beq     v0, $at, lbl_80A2B2DC      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     v0, $at, lbl_80A2B2F0      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     v0, $at, lbl_80A2B304      
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A2B3A8 
    nop
lbl_80A2B2CC:
    jal     func_80A2B240              
    addiu   a1, a1, %lo(func_80A2B590) ## a1 = 80A2B590
    beq     $zero, $zero, lbl_80A2B3BC 
    addiu   t3, $zero, 0x0400          ## t3 = 00000400
lbl_80A2B2DC:
    lui     a1, %hi(func_80A2B6DC)     ## a1 = 80A30000
    jal     func_80A2B240              
    addiu   a1, a1, %lo(func_80A2B6DC) ## a1 = 80A2B6DC
    beq     $zero, $zero, lbl_80A2B3BC 
    addiu   t3, $zero, 0x0400          ## t3 = 00000400
lbl_80A2B2F0:
    lui     a1, %hi(func_80A2B73C)     ## a1 = 80A30000
    jal     func_80A2B240              
    addiu   a1, a1, %lo(func_80A2B73C) ## a1 = 80A2B73C
    beq     $zero, $zero, lbl_80A2B3BC 
    addiu   t3, $zero, 0x0400          ## t3 = 00000400
lbl_80A2B304:
    lui     a1, %hi(func_80A2B7C0)     ## a1 = 80A30000
    jal     func_80A2B240              
    addiu   a1, a1, %lo(func_80A2B7C0) ## a1 = 80A2B7C0
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t6, 0x0EE4(v0)             ## 8011B4B4
    andi    t7, t6, 0x0001             ## t7 = 00000000
    beq     t7, $zero, lbl_80A2B340    
    nop
    lhu     t8, 0x0EDC(v0)             ## 8011B4AC
    lw      a1, 0x0044($sp)            
    addiu   a2, $zero, 0x0173          ## a2 = 00000173
    andi    t9, t8, 0x0008             ## t9 = 00000000
    beq     t9, $zero, lbl_80A2B350    
    addiu   a0, a1, 0x1C24             ## a0 = 00001C24
lbl_80A2B340:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A2B3C4 
    lw      $ra, 0x0034($sp)           
lbl_80A2B350:
    lui     $at, 0xC30C                ## $at = C30C0000
    mtc1    $at, $f4                   ## $f4 = -140.00
    lui     $at, 0x445D                ## $at = 445D0000
    mtc1    $at, $f6                   ## $f6 = 884.00
    lui     a3, 0x4395                 ## a3 = 43950000
    addiu   t0, $zero, 0x0004          ## t0 = 00000004
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    addiu   t2, $zero, 0x3800          ## t2 = 00003800
    sw      t2, 0x0024($sp)            
    sw      t1, 0x0020($sp)            
    sw      t0, 0x001C($sp)            
    ori     a3, a3, 0x8000             ## a3 = 43958000
    sw      $zero, 0x0018($sp)         
    swc1    $f4, 0x0010($sp)           
    jal     func_80025110              ## ActorSpawn
    swc1    $f6, 0x0014($sp)           
    lui     a1, 0x3E4C                 ## a1 = 3E4C0000
    ori     a1, a1, 0xCCCD             ## a1 = 3E4CCCCD
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A2B3BC 
    addiu   t3, $zero, 0x0400          ## t3 = 00000400
lbl_80A2B3A8:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A2B3C4 
    lw      $ra, 0x0034($sp)           
    addiu   t3, $zero, 0x0400          ## t3 = 00000400
lbl_80A2B3BC:
    sh      t3, 0x0140(s0)             ## 00000140
    lw      $ra, 0x0034($sp)           
lbl_80A2B3C4:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A2B3D4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A2B3E4:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    jal     func_80021124              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      v0, 0x0140(s0)             ## 00000140
    lwc1    $f0, 0x0070(s0)            ## 00000070
    lwc1    $f2, 0x0060(s0)            ## 00000060
    lh      t6, 0x00B4(s0)             ## 000000B4
    lh      t9, 0x00B6(s0)             ## 000000B6
    c.lt.s  $f0, $f2                   
    sll     t0, v0,  2                 
    sll     t7, v0,  1                 
    subu    t0, t0, v0                 
    addu    t8, t6, t7                 
    addu    t1, t9, t0                 
    sh      t8, 0x00B4(s0)             ## 000000B4
    bc1f    lbl_80A2B460               
    sh      t1, 0x00B6(s0)             ## 000000B6
    lwc1    $f4, 0x006C(s0)            ## 0000006C
    add.s   $f6, $f2, $f4              
    swc1    $f6, 0x0060(s0)            ## 00000060
    lwc1    $f8, 0x0060(s0)            ## 00000060
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_80A2B464               
    lhu     v0, 0x1D74(s1)             ## 00001D74
    swc1    $f0, 0x0060(s0)            ## 00000060
lbl_80A2B460:
    lhu     v0, 0x1D74(s1)             ## 00001D74
lbl_80A2B464:
    addiu   $at, $zero, 0x0371         ## $at = 00000371
    or      a0, s1, $zero              ## a0 = 00000000
    bne     v0, $at, lbl_80A2B4C0      
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    lui     $at, 0x437A                ## $at = 437A0000
    mtc1    $at, $f10                  ## $f10 = 250.00
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f16                  ## $f16 = 60.00
    lui     $at, %hi(var_80A2B930)     ## $at = 80A30000
    swc1    $f10, 0x0024(s0)           ## 00000024
    swc1    $f16, 0x0028(s0)           ## 00000028
    lwc1    $f18, %lo(var_80A2B930)($at) 
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    lui     $at, 0xC0A0                ## $at = C0A00000
    mtc1    $at, $f6                   ## $f6 = -5.00
    lui     $at, 0xC0E0                ## $at = C0E00000
    mtc1    $at, $f8                   ## $f8 = -7.00
    swc1    $f18, 0x002C(s0)           ## 0000002C
    swc1    $f4, 0x005C(s0)            ## 0000005C
    swc1    $f6, 0x0060(s0)            ## 00000060
    swc1    $f8, 0x0064(s0)            ## 00000064
    lhu     v0, 0x1D74(s1)             ## 00001D74
lbl_80A2B4C0:
    addiu   $at, $zero, 0x0381         ## $at = 00000381
    bne     v0, $at, lbl_80A2B538      
    addiu   a2, $zero, 0x0064          ## a2 = 00000064
    addiu   a3, $zero, 0x01F4          ## a3 = 000001F4
    sw      $zero, 0x0010($sp)         
    jal     func_8001CF3C              
    sw      a1, 0x0030($sp)            
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    lw      a1, 0x0030($sp)            
    sw      t2, 0x0010($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_8001CF94              
    sw      $zero, 0x0014($sp)         
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, %hi(var_80A2B934)     ## $at = 80A30000
    or      a0, s0, $zero              ## a0 = 00000000
    swc1    $f0, 0x005C(s0)            ## 0000005C
    swc1    $f0, 0x0060(s0)            ## 00000060
    swc1    $f0, 0x0064(s0)            ## 00000064
    lwc1    $f10, %lo(var_80A2B934)($at) 
    lui     $at, 0xBF00                ## $at = BF000000
    mtc1    $at, $f16                  ## $f16 = -0.50
    sh      $zero, 0x0140(s0)          ## 00000140
    addiu   a1, $zero, 0x2817          ## a1 = 00002817
    swc1    $f10, 0x006C(s0)           ## 0000006C
    jal     func_80022FD0              
    swc1    $f16, 0x0070(s0)           ## 00000070
    lhu     v0, 0x1D74(s1)             ## 00001D74
lbl_80A2B538:
    addiu   $at, $zero, 0x038A         ## $at = 0000038A
    bne     v0, $at, lbl_80A2B57C      
    or      a0, s1, $zero              ## a0 = 00000000
    lui     $at, 0x4389                ## $at = 43890000
    mtc1    $at, $f18                  ## $f18 = 274.00
    lui     $at, 0xC270                ## $at = C2700000
    mtc1    $at, $f4                   ## $f4 = -60.00
    lui     $at, %hi(var_80A2B938)     ## $at = 80A30000
    lwc1    $f6, %lo(var_80A2B938)($at) 
    addiu   a1, $sp, 0x0034            ## a1 = FFFFFFF4
    addiu   a2, $zero, 0x0064          ## a2 = 00000064
    addiu   a3, $zero, 0x01F4          ## a3 = 000001F4
    sw      $zero, 0x0010($sp)         
    swc1    $f18, 0x0034($sp)          
    swc1    $f4, 0x0038($sp)           
    jal     func_8001CF3C              
    swc1    $f6, 0x003C($sp)           
lbl_80A2B57C:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80A2B590:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    mtc1    $zero, $f0                 ## $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     $at, %hi(var_80A2B93C)     ## $at = 80A30000
    lwc1    $f4, %lo(var_80A2B93C)($at) 
    lui     $at, 0xC0A0                ## $at = C0A00000
    mtc1    $at, $f6                   ## $f6 = -5.00
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $at, $f8                   ## $f8 = 6.00
    lui     a1, %hi(func_80A2B3E4)     ## a1 = 80A30000
    swc1    $f0, 0x005C(a0)            ## 0000005C
    swc1    $f0, 0x0064(a0)            ## 00000064
    addiu   a1, a1, %lo(func_80A2B3E4) ## a1 = 80A2B3E4
    swc1    $f4, 0x006C(a0)            ## 0000006C
    swc1    $f6, 0x0070(a0)            ## 00000070
    jal     func_80A2B240              
    swc1    $f8, 0x0060(a0)            ## 00000060
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A2B5E8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_80021124              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      v0, 0x0140(a0)             ## 00000140
    lwc1    $f0, 0x0070(a0)            ## 00000070
    lwc1    $f2, 0x0060(a0)            ## 00000060
    lh      t6, 0x00B4(a0)             ## 000000B4
    lh      t9, 0x00B6(a0)             ## 000000B6
    c.lt.s  $f0, $f2                   
    sll     t0, v0,  2                 
    sll     t7, v0,  1                 
    subu    t0, t0, v0                 
    addu    t8, t6, t7                 
    addu    t1, t9, t0                 
    sh      t8, 0x00B4(a0)             ## 000000B4
    bc1f    lbl_80A2B65C               
    sh      t1, 0x00B6(a0)             ## 000000B6
    lwc1    $f4, 0x006C(a0)            ## 0000006C
    add.s   $f6, $f2, $f4              
    swc1    $f6, 0x0060(a0)            ## 00000060
    lwc1    $f8, 0x0060(a0)            ## 00000060
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_80A2B660               
    lw      t2, 0x001C($sp)            
    swc1    $f0, 0x0060(a0)            ## 00000060
lbl_80A2B65C:
    lw      t2, 0x001C($sp)            
lbl_80A2B660:
    addiu   $at, $zero, 0x00DC         ## $at = 000000DC
    lhu     t3, 0x1D74(t2)             ## 00001D74
    bne     t3, $at, lbl_80A2B6CC      
    lui     $at, 0x4310                ## $at = 43100000
    mtc1    $at, $f10                  ## $f10 = 144.00
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f16                  ## $f16 = 80.00
    lui     $at, %hi(var_80A2B940)     ## $at = 80A30000
    swc1    $f10, 0x0024(a0)           ## 00000024
    swc1    $f16, 0x0028(a0)           ## 00000028
    lwc1    $f18, %lo(var_80A2B940)($at) 
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f4                   ## $f4 = 1.00
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f6                   ## $f6 = 2.00
    lui     $at, 0xC0E0                ## $at = C0E00000
    mtc1    $at, $f8                   ## $f8 = -7.00
    lui     $at, %hi(var_80A2B944)     ## $at = 80A30000
    swc1    $f18, 0x002C(a0)           ## 0000002C
    swc1    $f4, 0x005C(a0)            ## 0000005C
    swc1    $f6, 0x0060(a0)            ## 00000060
    swc1    $f8, 0x0064(a0)            ## 00000064
    lwc1    $f10, %lo(var_80A2B944)($at) 
    lui     $at, 0xC0A0                ## $at = C0A00000
    mtc1    $at, $f16                  ## $f16 = -5.00
    swc1    $f10, 0x006C(a0)           ## 0000006C
    swc1    $f16, 0x0070(a0)           ## 00000070
lbl_80A2B6CC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A2B6DC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     $at, %hi(var_80A2B948)     ## $at = 80A30000
    lwc1    $f4, %lo(var_80A2B948)($at) 
    lui     $at, 0xC0A0                ## $at = C0A00000
    mtc1    $at, $f6                   ## $f6 = -5.00
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f10                  ## $f10 = 4.00
    lui     $at, 0x40C0                ## $at = 40C00000
    mtc1    $zero, $f8                 ## $f8 = 0.00
    mtc1    $at, $f16                  ## $f16 = 6.00
    lui     a1, %hi(func_80A2B5E8)     ## a1 = 80A30000
    addiu   a1, a1, %lo(func_80A2B5E8) ## a1 = 80A2B5E8
    swc1    $f4, 0x006C(a0)            ## 0000006C
    swc1    $f6, 0x0070(a0)            ## 00000070
    swc1    $f10, 0x0060(a0)           ## 00000060
    swc1    $f8, 0x005C(a0)            ## 0000005C
    jal     func_80A2B240              
    swc1    $f16, 0x0064(a0)           ## 00000064
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A2B73C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A2B74C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_80022AD0              
    lw      a1, 0x001C($sp)            
    beq     v0, $zero, lbl_80A2B7B0    
    lui     t9, 0x8012                 ## t9 = 80120000
    lui     v0, 0x0201                 ## v0 = 02010000
    addiu   v0, v0, 0xF870             ## v0 = 0200F870
    sll     t6, v0,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lui     $at, 0x00FF                ## $at = 00FF0000
    lw      t9, 0x0C38(t9)             ## 80120C38
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    and     t0, v0, $at                
    lw      t3, 0x001C($sp)            
    lui     $at, 0x8000                ## $at = 80000000
    addu    t1, t9, t0                 
    addu    t2, t1, $at                
    lui     $at, 0x8012                ## $at = 80120000
    addiu   t4, $zero, 0x0001          ## t4 = 00000001
    sw      t2, 0x1D68(t3)             ## 00001D68
    sb      t4, -0x461C($at)           ## 8011B9E4
lbl_80A2B7B0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A2B7C0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022BB0              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_80A2B820    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    lhu     t6, 0x0EDC(v0)             ## 8011B4AC
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    ori     t7, t6, 0x0008             ## t7 = 00000008
    jal     func_800204D0              
    sh      t7, 0x0EDC(v0)             ## 8011B4AC
    lui     t8, %hi(func_80A2B74C)     ## t8 = 80A30000
    addiu   t8, t8, %lo(func_80A2B74C) ## t8 = 80A2B74C
    sw      t8, 0x013C(s0)             ## 0000013C
    beq     $zero, $zero, lbl_80A2B880 
    sw      $zero, 0x0134(s0)          ## 00000134
lbl_80A2B820:
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f4                   ## $f4 = 50.00
    or      a1, s1, $zero              ## a1 = 00000000
    addiu   a2, $zero, 0x000C          ## a2 = 0000000C
    lui     a3, 0x41F0                 ## a3 = 41F00000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lui     t9, 0x0001                 ## t9 = 00010000
    addu    t9, t9, s1                 
    lw      t9, 0x1DE4(t9)             ## 00011DE4
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    andi    t0, t9, 0x000D             ## t0 = 00000000
    bne     t0, $zero, lbl_80A2B880    
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    mtc1    $at, $f6                   ## $f6 = 10.00
    lui     $at, %hi(var_80A2B94C)     ## $at = 80A30000
    lwc1    $f8, %lo(var_80A2B94C)($at) 
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    swc1    $f6, 0x0010($sp)           
    jal     func_8001CEDC              
    swc1    $f8, 0x0014($sp)           
lbl_80A2B880:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80A2B894:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x013C(a0)             ## 0000013C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A2B8B8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022438              
    or      a2, $zero, $zero           ## a2 = 00000000
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022554              
    or      a2, $zero, $zero           ## a2 = 00000000
    lw      a0, 0x001C($sp)            
    jal     func_800570C0              
    addiu   a1, $zero, 0x002E          ## a1 = 0000002E
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80A2B910: .word 0x00F10700, 0x00000010, 0x00DE0000, 0x00000144
.word func_80A2B24C
.word func_80A2B3D4
.word func_80A2B894
.word func_80A2B8B8

.section .rodata

var_80A2B930: .word 0x44866000
var_80A2B934: .word 0xBDCCCCCD
var_80A2B938: .word 0x4462C000
var_80A2B93C: .word 0xBE99999A
var_80A2B940: .word 0x44D2C000
var_80A2B944: .word 0xBE19999A
var_80A2B948: .word 0xBE99999A
var_80A2B94C: .word 0x3E051EB8

