#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A5AE70:
    lwc1    $f4, 0x0000(a0)            ## 00000000
    lwc1    $f6, 0x0000(a1)            ## 00000000
    lwc1    $f8, 0x0008(a0)            ## 00000008
    lwc1    $f10, 0x0008(a1)           ## 00000008
    sub.s   $f2, $f4, $f6              
    sub.s   $f12, $f8, $f10            
    mul.s   $f16, $f2, $f2             
    nop
    mul.s   $f18, $f12, $f12           
    add.s   $f0, $f16, $f18            
    jr      $ra                        
    nop


func_80A5AEA0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0402                 ## a0 = 04020000
    jal     func_8008A194              
    addiu   a0, a0, 0x953C             ## a0 = 0401953C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f8                   ## $f8 = 2.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0402                 ## a1 = 04020000
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x953C             ## a1 = 0401953C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x019C             ## a0 = 0000019C
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5AF04:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0402                 ## a0 = 04020000
    jal     func_8008A194              
    addiu   a0, a0, 0x8A9C             ## a0 = 04018A9C
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f8                   ## $f8 = 2.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0402                 ## a1 = 04020000
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x8A9C             ## a1 = 04018A9C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x019C             ## a0 = 0000019C
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5AF68:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   t6, $zero, 0x0190          ## t6 = 00000190
    sh      t6, 0x023A(a0)             ## 0000023A
    lui     a1, 0x3A83                 ## a1 = 3A830000
    ori     a1, a1, 0x126F             ## a1 = 3A83126F
    jal     func_80020F88              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    sw      $zero, 0x0134(a0)          ## 00000134
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80A5AF9C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(var_80A5CBC0)      ## t6 = 80A60000
    lw      t6, %lo(var_80A5CBC0)(t6)  
    lui     a1, 0x3C23                 ## a1 = 3C230000
    lui     $at, %hi(var_80A5CBC0)     ## $at = 80A60000
    bne     t6, $zero, lbl_80A5B024    
    ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
    sw      a0, %lo(var_80A5CBC0)($at) 
    jal     func_80020F88              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0x4416                ## $at = 44160000
    mtc1    $at, $f4                   ## $f4 = 600.00
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f6                   ## $f6 = 10.00
    lui     t7, %hi(func_80A5CB54)     ## t7 = 80A60000
    addiu   t7, t7, %lo(func_80A5CB54) ## t7 = 80A5CB54
    addiu   t8, $zero, 0x9BF0          ## t8 = FFFF9BF0
    addiu   t9, $zero, 0x4000          ## t9 = 00004000
    mtc1    $zero, $f8                 ## $f8 = 0.00
    lui     $at, %hi(var_80A5CBC4)     ## $at = 80A60000
    sw      t7, 0x0134(a0)             ## 00000134
    sh      $zero, 0x00B4(a0)          ## 000000B4
    sh      t8, 0x00B6(a0)             ## 000000B6
    sh      t9, 0x00B8(a0)             ## 000000B8
    swc1    $f4, 0x00BC(a0)            ## 000000BC
    swc1    $f6, %lo(var_80A5CBC4)($at) 
    lui     $at, %hi(var_80A5CBC8)     ## $at = 80A60000
    swc1    $f8, %lo(var_80A5CBC8)($at) 
    lw      t0, 0x0004(a0)             ## 00000004
    ori     t1, t0, 0x0010             ## t1 = 00000010
    jal     func_80A5AF04              
    sw      t1, 0x0004(a0)             ## 00000004
lbl_80A5B024:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B034:
    mtc1    $zero, $f0                 ## $f0 = 0.00
    sw      a0, 0x0000($sp)            
    lui     $at, %hi(var_80A5CBC0)     ## $at = 80A60000
    sw      $zero, %lo(var_80A5CBC0)($at) 
    lui     $at, %hi(var_80A5CBC4)     ## $at = 80A60000
    swc1    $f0, %lo(var_80A5CBC4)($at) 
    lui     $at, %hi(var_80A5CBC8)     ## $at = 80A60000
    swc1    $f0, %lo(var_80A5CBC8)($at) 
    jr      $ra                        
    nop


func_80A5B05C:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lh      t6, 0x001C(s0)             ## 0000001C
    lui     a1, %hi(var_80A5CC20)      ## a1 = 80A60000
    addiu   a1, a1, %lo(var_80A5CC20)  ## a1 = 80A5CC20
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80063F7C              
    sh      t6, 0x003A($sp)            
    lui     a2, 0x0402                 ## a2 = 04020000
    lui     a3, 0x0402                 ## a3 = 04020000
    addiu   t7, s0, 0x01E0             ## t7 = 000001E0
    addiu   t8, s0, 0x020A             ## t8 = 0000020A
    addiu   t9, $zero, 0x0007          ## t9 = 00000007
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a3, a3, 0x953C             ## a3 = 0401953C
    addiu   a2, a2, 0x9480             ## a2 = 04019480
    lw      a0, 0x0044($sp)            
    jal     func_8008C788              
    addiu   a1, s0, 0x019C             ## a1 = 0000019C
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    sw      a1, 0x0034($sp)            
    jal     func_8004A484              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_80A5CBF0)      ## a3 = 80A60000
    addiu   t0, s0, 0x015C             ## t0 = 0000015C
    lw      a1, 0x0034($sp)            
    sw      t0, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80A5CBF0)  ## a3 = 80A5CBF0
    lw      a0, 0x0044($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   t1, $zero, 0x0032          ## t1 = 00000032
    jal     func_800CDCCC              ## Rand.Next() float
    sb      t1, 0x00AE(s0)             ## 000000AE
    lui     $at, %hi(var_80A5CC50)     ## $at = 80A60000
    lwc1    $f4, %lo(var_80A5CC50)($at) 
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t3, $f8                    
    jal     func_800CDCCC              ## Rand.Next() float
    sh      t3, 0x023C(s0)             ## 0000023C
    lui     $at, %hi(var_80A5CC54)     ## $at = 80A60000
    lwc1    $f10, %lo(var_80A5CC54)($at) 
    lh      v0, 0x003A($sp)            
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    mul.s   $f16, $f0, $f10            
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    trunc.w.s $f18, $f16                 
    mfc1    t5, $f18                   
    bne     v0, $zero, lbl_80A5B16C    
    sh      t5, 0x023E(s0)             ## 0000023E
    lw      t6, 0x0004(s0)             ## 00000004
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    lui     a3, 0x4100                 ## a3 = 41000000
    ori     t7, t6, 0x0010             ## t7 = 00000010
    jal     func_8001EC20              
    sw      t7, 0x0004(s0)             ## 00000004
    jal     func_80A5BB40              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5B190 
    lw      $ra, 0x002C($sp)           
lbl_80A5B16C:
    bne     v0, $at, lbl_80A5B184      
    nop
    jal     func_80A5C204              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5B190 
    lw      $ra, 0x002C($sp)           
lbl_80A5B184:
    jal     func_80A5B3A4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_80A5B190:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B1A0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              ## a3 = 00000000
    or      a2, a1, $zero              ## a2 = 00000000
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_8004A550              
    addiu   a1, a3, 0x013C             ## a1 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B1CC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              ## a1 = 00000000
    lh      a0, 0x023E(a1)             ## 0000023E
    jal     func_800636C4              ## sins?
    sw      a1, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    swc1    $f0, 0x0018($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x023C(a1)             ## 0000023C
    lui     $at, 0xC348                ## $at = C3480000
    mtc1    $at, $f12                  ## $f12 = -200.00
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f6                   ## $f6 = 5.00
    lwc1    $f4, 0x0018($sp)           
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f10                  ## $f10 = 10.00
    mul.s   $f8, $f4, $f6              
    lw      a1, 0x0020($sp)            
    lui     $at, 0x4348                ## $at = 43480000
    mul.s   $f16, $f0, $f10            
    lwc1    $f4, 0x00BC(a1)            ## 000000BC
    add.s   $f18, $f16, $f8            
    add.s   $f6, $f4, $f18             
    swc1    $f6, 0x00BC(a1)            ## 000000BC
    lwc1    $f2, 0x00BC(a1)            ## 000000BC
    c.lt.s  $f2, $f12                  
    nop
    bc1fl   lbl_80A5B250               
    mtc1    $at, $f12                  ## $f12 = 200.00
    beq     $zero, $zero, lbl_80A5B274 
    swc1    $f12, 0x00BC(a1)           ## 000000BC
    mtc1    $at, $f12                  ## $f12 = 200.00
lbl_80A5B250:
    nop
    c.lt.s  $f12, $f2                  
    nop
    bc1fl   lbl_80A5B270               
    mov.s   $f0, $f2                   
    beq     $zero, $zero, lbl_80A5B270 
    mov.s   $f0, $f12                  
    mov.s   $f0, $f2                   
lbl_80A5B270:
    swc1    $f0, 0x00BC(a1)            ## 000000BC
lbl_80A5B274:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B284:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lui     $at, 0x4200                ## $at = 42000000
    mtc1    $at, $f6                   ## $f6 = 32.00
    lwc1    $f4, 0x0090(a2)            ## 00000090
    lw      v0, 0x1C44(a1)             ## 00001C44
    ori     $at, $zero, 0x8000         ## $at = 00008000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A5B364               
    or      v0, $zero, $zero           ## v0 = 00000000
    lh      a0, 0x008A(a2)             ## 0000008A
    sw      a2, 0x0030($sp)            
    sw      v0, 0x0028($sp)            
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    jal     func_800636C4              ## sins?
    sra     a0, a0, 16                 
    lui     $at, 0x4180                ## $at = 41800000
    mtc1    $at, $f8                   ## $f8 = 16.00
    lw      v0, 0x0028($sp)            
    lw      t6, 0x0030($sp)            
    mul.s   $f10, $f0, $f8             
    lwc1    $f16, 0x0024(v0)           ## 00000024
    ori     $at, $zero, 0x8000         ## $at = 00008000
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x001C($sp)          
    lwc1    $f4, 0x0028(v0)            ## 00000028
    swc1    $f4, 0x0020($sp)           
    lh      a0, 0x008A(t6)             ## 0000008A
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    jal     func_80063684              ## coss?
    sra     a0, a0, 16                 
    lui     $at, 0x4180                ## $at = 41800000
    mtc1    $at, $f6                   ## $f6 = 16.00
    lw      v0, 0x0028($sp)            
    lw      a1, 0x0030($sp)            
    mul.s   $f8, $f0, $f6              
    lwc1    $f10, 0x002C(v0)           ## 0000002C
    addiu   a0, $sp, 0x001C            ## a0 = FFFFFFEC
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    add.s   $f16, $f8, $f10            
    jal     func_80A5AE70              
    swc1    $f16, 0x0024($sp)          
    lui     $at, 0x43C8                ## $at = 43C80000
    mtc1    $at, $f18                  ## $f18 = 400.00
    nop
    c.le.s  $f0, $f18                  
    nop
    bc1fl   lbl_80A5B364               
    or      v0, $zero, $zero           ## v0 = 00000000
    beq     $zero, $zero, lbl_80A5B364 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A5B364:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B374:
    sw      a1, 0x0004($sp)            
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f6                   ## $f6 = 60.00
    lwc1    $f4, 0x0090(a0)            ## 00000090
    or      v0, $zero, $zero           ## v0 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80A5B39C               
    nop
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80A5B39C:
    jr      $ra                        
    nop


func_80A5B3A4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    mtc1    $zero, $f0                 ## $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    swc1    $f0, 0x006C(a2)            ## 0000006C
    swc1    $f0, 0x0070(a2)            ## 00000070
    sw      a2, 0x0018($sp)            
    addiu   a0, $zero, 0x0005          ## a0 = 00000005
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0023          ## a1 = 00000023
    lw      a0, 0x0018($sp)            
    sh      v0, 0x0238(a0)             ## 00000238
    jal     func_80A5AEA0              
    sw      $zero, 0x0240(a0)          ## 00000240
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_80A5B3FC)     ## t6 = 80A60000
    addiu   t6, t6, %lo(func_80A5B3FC) ## t6 = 80A5B3FC
    sw      t6, 0x0234(a2)             ## 00000234
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B3FC:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_80A5B1CC              
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a2, 0x3D4C                 ## a2 = 3D4C0000
    lui     a3, 0x3E99                 ## a3 = 3E990000
    mfc1    a1, $f0                    
    ori     a3, a3, 0x999A             ## a3 = 3E99999A
    ori     a2, a2, 0xCCCD             ## a2 = 3D4CCCCD
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f2                   ## $f2 = 2.00
    lui     $at, %hi(var_80A5CC58)     ## $at = 80A60000
    lwc1    $f6, %lo(var_80A5CC58)($at) 
    lwc1    $f4, 0x0068(s0)            ## 00000068
    lui     $at, %hi(var_80A5CC5C)     ## $at = 80A60000
    lwc1    $f10, %lo(var_80A5CC5C)($at) 
    mul.s   $f8, $f4, $f6              
    add.s   $f0, $f8, $f10             
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A5B47C               
    swc1    $f0, 0x01B8(s0)            ## 000001B8
    beq     $zero, $zero, lbl_80A5B47C 
    swc1    $f2, 0x01B8(s0)            ## 000001B8
    swc1    $f0, 0x01B8(s0)            ## 000001B8
lbl_80A5B47C:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             ## a0 = 0000019C
    lh      t7, 0x0238(s0)             ## 00000238
    lh      t6, 0x0032(s0)             ## 00000032
    bgtz    t7, lbl_80A5B4A4           
    sh      t6, 0x00B6(s0)             ## 000000B6
    jal     func_80A5B4F0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5B4E0 
    lw      $ra, 0x0024($sp)           
lbl_80A5B4A4:
    lw      t8, 0x011C(s0)             ## 0000011C
    or      a0, s0, $zero              ## a0 = 00000000
    bne     s0, t8, lbl_80A5B4C4       
    nop
    jal     func_80A5B924              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5B4E0 
    lw      $ra, 0x0024($sp)           
lbl_80A5B4C4:
    jal     func_80A5B374              
    lw      a1, 0x002C($sp)            
    beql    v0, $zero, lbl_80A5B4E0    
    lw      $ra, 0x0024($sp)           
    jal     func_80A5B6DC              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A5B4E0:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B4F0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    mtc1    $zero, $f0                 ## $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    swc1    $f0, 0x006C(a2)            ## 0000006C
    swc1    $f0, 0x0070(a2)            ## 00000070
    sw      a2, 0x0018($sp)            
    addiu   a0, $zero, 0x000F          ## a0 = 0000000F
    jal     func_80063BF0              
    addiu   a1, $zero, 0x002D          ## a1 = 0000002D
    lw      a0, 0x0018($sp)            
    sh      v0, 0x0238(a0)             ## 00000238
    jal     func_80A5AEA0              
    sw      $zero, 0x0240(a0)          ## 00000240
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_80A5B548)     ## t6 = 80A60000
    addiu   t6, t6, %lo(func_80A5B548) ## t6 = 80A5B548
    sw      t6, 0x0234(a2)             ## 00000234
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B548:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    jal     func_80A5B1CC              
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     a1, 0x3FE6                 ## a1 = 3FE60000
    lui     a2, 0x3DA3                 ## a2 = 3DA30000
    lui     a3, 0x3ECC                 ## a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             ## a3 = 3ECCCCCD
    ori     a2, a2, 0xD70A             ## a2 = 3DA3D70A
    ori     a1, a1, 0x6666             ## a1 = 3FE66666
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    sw      a1, 0x0028($sp)            
    jal     func_80A5AE70              
    sw      a0, 0x002C($sp)            
    lui     $at, 0x45C8                ## $at = 45C80000
    mtc1    $at, $f6                   ## $f6 = 6400.00
    lw      a0, 0x002C($sp)            
    lw      a1, 0x0028($sp)            
    c.lt.s  $f6, $f0                   
    nop
    bc1t    lbl_80A5B5D0               
    nop
    lh      t6, 0x0238(s0)             ## 00000238
    slti    $at, t6, 0x0004            
    beql    $at, $zero, lbl_80A5B5F8   
    lw      v0, 0x011C(s0)             ## 0000011C
lbl_80A5B5D0:
    jal     func_80063F00              
    nop
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    jal     func_800639B8              
    addiu   a2, $zero, 0x0BB8          ## a2 = 00000BB8
    beq     $zero, $zero, lbl_80A5B628 
    lui     $at, 0x4080                ## $at = 40800000
    lw      v0, 0x011C(s0)             ## 0000011C
lbl_80A5B5F8:
    beql    v0, $zero, lbl_80A5B628    
    lui     $at, 0x4080                ## $at = 40800000
    beql    s0, v0, lbl_80A5B628       
    lui     $at, 0x4080                ## $at = 40800000
    jal     func_80063F00              
    addiu   a1, v0, 0x0024             ## a1 = 00000024
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    jal     func_800639B8              
    addiu   a2, $zero, 0x0BB8          ## a2 = 00000BB8
    lui     $at, 0x4080                ## $at = 40800000
lbl_80A5B628:
    mtc1    $at, $f2                   ## $f2 = 4.00
    lui     $at, 0x3FC0                ## $at = 3FC00000
    mtc1    $at, $f10                  ## $f10 = 1.50
    lwc1    $f8, 0x0068(s0)            ## 00000068
    lh      t7, 0x0032(s0)             ## 00000032
    lui     $at, %hi(var_80A5CC60)     ## $at = 80A60000
    mul.s   $f16, $f8, $f10            
    sh      t7, 0x00B6(s0)             ## 000000B6
    lwc1    $f18, %lo(var_80A5CC60)($at) 
    add.s   $f0, $f16, $f18            
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A5B66C               
    swc1    $f0, 0x01B8(s0)            ## 000001B8
    beq     $zero, $zero, lbl_80A5B66C 
    swc1    $f2, 0x01B8(s0)            ## 000001B8
    swc1    $f0, 0x01B8(s0)            ## 000001B8
lbl_80A5B66C:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             ## a0 = 0000019C
    lh      t8, 0x0238(s0)             ## 00000238
    bgtzl   t8, lbl_80A5B694           
    lw      t9, 0x011C(s0)             ## 0000011C
    jal     func_80A5B3A4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5B6CC 
    lw      $ra, 0x0024($sp)           
    lw      t9, 0x011C(s0)             ## 0000011C
lbl_80A5B694:
    or      a0, s0, $zero              ## a0 = 00000000
    bne     s0, t9, lbl_80A5B6B0       
    nop
    jal     func_80A5B924              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5B6CC 
    lw      $ra, 0x0024($sp)           
lbl_80A5B6B0:
    jal     func_80A5B374              
    lw      a1, 0x003C($sp)            
    beql    v0, $zero, lbl_80A5B6CC    
    lw      $ra, 0x0024($sp)           
    jal     func_80A5B6DC              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A5B6CC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B6DC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    mtc1    $zero, $f0                 ## $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    swc1    $f0, 0x006C(a2)            ## 0000006C
    swc1    $f0, 0x0070(a2)            ## 00000070
    sw      a2, 0x0018($sp)            
    addiu   a0, $zero, 0x000A          ## a0 = 0000000A
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0028          ## a1 = 00000028
    lw      a0, 0x0018($sp)            
    sh      v0, 0x0238(a0)             ## 00000238
    jal     func_80A5AEA0              
    sw      $zero, 0x0240(a0)          ## 00000240
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_80A5B734)     ## t6 = 80A60000
    addiu   t6, t6, %lo(func_80A5B734) ## t6 = 80A5B734
    sw      t6, 0x0234(a2)             ## 00000234
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B734:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    jal     func_80A5B1CC              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80A5B374              
    lw      a1, 0x0044($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     a1, 0x4086                 ## a1 = 40860000
    lui     a2, 0x3DA3                 ## a2 = 3DA30000
    lui     a3, 0x3FB3                 ## a3 = 3FB30000
    sh      v0, 0x0034($sp)            
    ori     a3, a3, 0x3333             ## a3 = 3FB33333
    ori     a2, a2, 0xD70A             ## a2 = 3DA3D70A
    ori     a1, a1, 0x6666             ## a1 = 40866666
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    sw      a1, 0x002C($sp)            
    jal     func_80A5AE70              
    sw      a0, 0x0030($sp)            
    lui     $at, 0x46C8                ## $at = 46C80000
    mtc1    $at, $f6                   ## $f6 = 25600.00
    lw      a0, 0x0030($sp)            
    lw      a1, 0x002C($sp)            
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A5B7E4               
    lw      v0, 0x011C(s0)             ## 0000011C
    jal     func_80063F00              
    nop
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    jal     func_800639B8              
    addiu   a2, $zero, 0x0BB8          ## a2 = 00000BB8
    beq     $zero, $zero, lbl_80A5B888 
    lui     $at, 0x4080                ## $at = 40800000
    lw      v0, 0x011C(s0)             ## 0000011C
lbl_80A5B7E4:
    lh      t6, 0x0034($sp)            
    beq     v0, $zero, lbl_80A5B81C    
    nop
    beq     s0, v0, lbl_80A5B81C       
    nop
    jal     func_80063F00              
    addiu   a1, v0, 0x0024             ## a1 = 00000024
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    jal     func_800639B8              
    addiu   a2, $zero, 0x07D0          ## a2 = 000007D0
    beq     $zero, $zero, lbl_80A5B888 
    lui     $at, 0x4080                ## $at = 40800000
lbl_80A5B81C:
    beq     t6, $zero, lbl_80A5B884    
    lw      v1, 0x0044($sp)            
    lh      a1, 0x008A(s0)             ## 0000008A
    lh      v0, 0x009E(v1)             ## 0000009E
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addu    a1, a1, $at                
    sll     a1, a1, 16                 
    andi    t7, v0, 0x0010             ## t7 = 00000000
    beq     t7, $zero, lbl_80A5B860    
    sra     a1, a1, 16                 
    andi    t8, v0, 0x0020             ## t8 = 00000000
    beql    t8, $zero, lbl_80A5B87C    
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a1, a1, 0x2000             ## a1 = 00002000
    sll     a1, a1, 16                 
    beq     $zero, $zero, lbl_80A5B878 
    sra     a1, a1, 16                 
lbl_80A5B860:
    andi    t9, v0, 0x0020             ## t9 = 00000000
    beql    t9, $zero, lbl_80A5B87C    
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    addiu   a1, a1, 0xE000             ## a1 = 00000000
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
lbl_80A5B878:
    addiu   a0, s0, 0x0032             ## a0 = 00000032
lbl_80A5B87C:
    jal     func_800639B8              
    addiu   a2, $zero, 0x07D0          ## a2 = 000007D0
lbl_80A5B884:
    lui     $at, 0x4080                ## $at = 40800000
lbl_80A5B888:
    mtc1    $at, $f2                   ## $f2 = 4.00
    lui     $at, 0x3FC0                ## $at = 3FC00000
    mtc1    $at, $f10                  ## $f10 = 1.50
    lwc1    $f8, 0x0068(s0)            ## 00000068
    lh      t0, 0x0032(s0)             ## 00000032
    lui     $at, %hi(var_80A5CC64)     ## $at = 80A60000
    mul.s   $f16, $f8, $f10            
    sh      t0, 0x00B6(s0)             ## 000000B6
    lwc1    $f18, %lo(var_80A5CC64)($at) 
    add.s   $f0, $f16, $f18            
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A5B8CC               
    swc1    $f0, 0x01B8(s0)            ## 000001B8
    beq     $zero, $zero, lbl_80A5B8CC 
    swc1    $f2, 0x01B8(s0)            ## 000001B8
    swc1    $f0, 0x01B8(s0)            ## 000001B8
lbl_80A5B8CC:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             ## a0 = 0000019C
    lh      t1, 0x0238(s0)             ## 00000238
    lh      t2, 0x0034($sp)            
    blez    t1, lbl_80A5B8EC           
    nop
    bnel    t2, $zero, lbl_80A5B900    
    lw      t3, 0x011C(s0)             ## 0000011C
lbl_80A5B8EC:
    jal     func_80A5B3A4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5B914 
    lw      $ra, 0x0024($sp)           
    lw      t3, 0x011C(s0)             ## 0000011C
lbl_80A5B900:
    bnel    s0, t3, lbl_80A5B914       
    lw      $ra, 0x0024($sp)           
    jal     func_80A5B924              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A5B914:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B924:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    mtc1    $zero, $f0                 ## $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    swc1    $f0, 0x006C(a2)            ## 0000006C
    swc1    $f0, 0x0070(a2)            ## 00000070
    sw      a2, 0x0018($sp)            
    jal     func_80A5AEA0              
    or      a0, a2, $zero              ## a0 = 00000000
    addiu   a0, $zero, 0x000A          ## a0 = 0000000A
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0028          ## a1 = 00000028
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_80A5B97C)     ## t6 = 80A60000
    addiu   t6, t6, %lo(func_80A5B97C) ## t6 = 80A5B97C
    sh      v0, 0x0238(a2)             ## 00000238
    sw      $zero, 0x0240(a2)          ## 00000240
    sw      t6, 0x0234(a2)             ## 00000234
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5B97C:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0054($sp)            
    lw      t6, 0x0054($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t7, 0x1C44(t6)             ## 00001C44
    jal     func_80A5B1CC              
    sw      t7, 0x0048($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     a1, 0x3FE6                 ## a1 = 3FE60000
    lui     a2, 0x3DCC                 ## a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
    ori     a1, a1, 0x6666             ## a1 = 3FE66666
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    lui     a3, 0x3F00                 ## a3 = 3F000000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    sw      a1, 0x002C($sp)            
    jal     func_80A5AE70              
    sw      a0, 0x0030($sp)            
    lui     $at, 0x45C8                ## $at = 45C80000
    mtc1    $at, $f6                   ## $f6 = 6400.00
    lw      a1, 0x002C($sp)            
    lw      t8, 0x0054($sp)            
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80A5BA24               
    lh      t9, 0x009E(t8)             ## 0000009E
    jal     func_80063F00              
    lw      a0, 0x0030($sp)            
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    jal     func_800639B8              
    addiu   a2, $zero, 0x0BB8          ## a2 = 00000BB8
    beq     $zero, $zero, lbl_80A5BACC 
    lui     $at, 0x4080                ## $at = 40800000
    lh      t9, 0x009E(t8)             ## 0000009E
lbl_80A5BA24:
    andi    t0, t9, 0x0040             ## t0 = 00000000
    beql    t0, $zero, lbl_80A5BA4C    
    lh      a0, 0x008A(s0)             ## 0000008A
    lh      a0, 0x008A(s0)             ## 0000008A
    ori     $at, $zero, 0x9000         ## $at = 00009000
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    beq     $zero, $zero, lbl_80A5BA58 
    sra     a0, a0, 16                 
    lh      a0, 0x008A(s0)             ## 0000008A
lbl_80A5BA4C:
    addiu   a0, a0, 0x7000             ## a0 = 00007000
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
lbl_80A5BA58:
    jal     func_800636C4              ## sins?
    sh      a0, 0x0034($sp)            
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f8                   ## $f8 = 20.00
    lw      v0, 0x0048($sp)            
    lh      a0, 0x0034($sp)            
    mul.s   $f10, $f0, $f8             
    lwc1    $f16, 0x0024(v0)           ## 00000024
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0038($sp)          
    lwc1    $f4, 0x0028(v0)            ## 00000028
    jal     func_80063684              ## coss?
    swc1    $f4, 0x003C($sp)           
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f6                   ## $f6 = 20.00
    lw      t1, 0x0048($sp)            
    lw      a0, 0x0030($sp)            
    mul.s   $f8, $f0, $f6              
    lwc1    $f10, 0x002C(t1)           ## 0000002C
    addiu   a1, $sp, 0x0038            ## a1 = FFFFFFE8
    add.s   $f16, $f8, $f10            
    jal     func_80063F00              
    swc1    $f16, 0x0040($sp)          
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    jal     func_800639B8              
    addiu   a2, $zero, 0x0BB8          ## a2 = 00000BB8
    lui     $at, 0x4080                ## $at = 40800000
lbl_80A5BACC:
    mtc1    $at, $f2                   ## $f2 = 4.00
    lui     $at, 0x3FC0                ## $at = 3FC00000
    mtc1    $at, $f4                   ## $f4 = 1.50
    lwc1    $f18, 0x0068(s0)           ## 00000068
    lh      t2, 0x0032(s0)             ## 00000032
    lui     $at, %hi(var_80A5CC68)     ## $at = 80A60000
    mul.s   $f6, $f18, $f4             
    sh      t2, 0x00B6(s0)             ## 000000B6
    lwc1    $f8, %lo(var_80A5CC68)($at) 
    add.s   $f0, $f6, $f8              
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A5BB10               
    swc1    $f0, 0x01B8(s0)            ## 000001B8
    beq     $zero, $zero, lbl_80A5BB10 
    swc1    $f2, 0x01B8(s0)            ## 000001B8
    swc1    $f0, 0x01B8(s0)            ## 000001B8
lbl_80A5BB10:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             ## a0 = 0000019C
    lh      t3, 0x0238(s0)             ## 00000238
    bgtzl   t3, lbl_80A5BB30           
    lw      $ra, 0x0024($sp)           
    jal     func_80A5B3A4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A5BB30:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5BB40:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f4                   ## $f4 = -1.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f6                   ## $f6 = -10.00
    mtc1    $zero, $f8                 ## $f8 = 0.00
    swc1    $f4, 0x006C(a0)            ## 0000006C
    swc1    $f6, 0x0070(a0)            ## 00000070
    swc1    $f8, 0x00BC(a0)            ## 000000BC
    jal     func_80A5AF04              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     t7, %hi(func_80A5BBA0)     ## t7 = 80A60000
    addiu   t6, $zero, 0x0005          ## t6 = 00000005
    addiu   t7, t7, %lo(func_80A5BBA0) ## t7 = 80A5BBA0
    addiu   t8, $zero, 0x012C          ## t8 = 0000012C
    sw      t6, 0x0240(a0)             ## 00000240
    sw      t7, 0x0234(a0)             ## 00000234
    sh      t8, 0x0238(a0)             ## 00000238
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5BBA0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    lui     $at, %hi(var_80A5CC6C)     ## $at = 80A60000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lwc1    $f2, %lo(var_80A5CC6C)($at) 
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    mfc1    a1, $f0                    
    mfc1    a2, $f2                    
    mfc1    a3, $f2                    
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    addiu   a0, s0, 0x0030             ## a0 = 00000030
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    jal     func_800639B8              
    addiu   a2, $zero, 0x0064          ## a2 = 00000064
    addiu   a0, s0, 0x0034             ## a0 = 00000034
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    jal     func_800639B8              
    addiu   a2, $zero, 0x0064          ## a2 = 00000064
    lh      t6, 0x0030(s0)             ## 00000030
    lh      t7, 0x0032(s0)             ## 00000032
    lh      t8, 0x0034(s0)             ## 00000034
    addiu   a0, s0, 0x019C             ## a0 = 0000019C
    sh      t6, 0x00B4(s0)             ## 000000B4
    sh      t7, 0x00B6(s0)             ## 000000B6
    jal     func_8008C9C0              
    sh      t8, 0x00B8(s0)             ## 000000B8
    lhu     v0, 0x0088(s0)             ## 00000088
    addiu   t0, $zero, 0x0190          ## t0 = 00000190
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t9, v0, 0x0001             ## t9 = 00000000
    beq     t9, $zero, lbl_80A5BC40    
    andi    t1, v0, 0x0020             ## t1 = 00000000
    jal     func_80A5BCA8              
    sh      t0, 0x0238(s0)             ## 00000238
    beq     $zero, $zero, lbl_80A5BC98 
    lw      $ra, 0x0024($sp)           
lbl_80A5BC40:
    beql    t1, $zero, lbl_80A5BC5C    
    lh      t2, 0x0238(s0)             ## 00000238
    jal     func_80A5BFC8              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5BC98 
    lw      $ra, 0x0024($sp)           
    lh      t2, 0x0238(s0)             ## 00000238
lbl_80A5BC5C:
    bgtzl   t2, lbl_80A5BC98           
    lw      $ra, 0x0024($sp)           
    lh      t3, 0x001C(s0)             ## 0000001C
    lui     $at, %hi(var_80A5CC70)     ## $at = 80A60000
    bnel    t3, $zero, lbl_80A5BC98    
    lw      $ra, 0x0024($sp)           
    lwc1    $f4, 0x0080(s0)            ## 00000080
    lwc1    $f6, %lo(var_80A5CC70)($at) 
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A5BC98               
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A5BC98:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5BCA8:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f4                   ## $f4 = -1.00
    lui     $at, 0xC120                ## $at = C1200000
    mtc1    $at, $f6                   ## $f6 = -10.00
    swc1    $f4, 0x006C(s0)            ## 0000006C
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f6, 0x0070(s0)            ## 00000070
    lui     $at, %hi(var_80A5CC74)     ## $at = 80A60000
    lwc1    $f8, %lo(var_80A5CC74)($at) 
    lui     $at, %hi(var_80A5CC78)     ## $at = 80A60000
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80A5BD1C               
    nop
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f10                  ## $f10 = 3.00
    lui     $at, 0x4020                ## $at = 40200000
    mtc1    $at, $f18                  ## $f18 = 2.50
    mul.s   $f16, $f0, $f10            
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    add.s   $f4, $f16, $f18            
    beq     $zero, $zero, lbl_80A5BD8C 
    swc1    $f4, 0x0060(s0)            ## 00000060
lbl_80A5BD1C:
    lwc1    $f6, %lo(var_80A5CC78)($at) 
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A5BD60               
    mtc1    $zero, $f4                 ## $f4 = 0.00
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, %hi(var_80A5CC7C)     ## $at = 80A60000
    lwc1    $f8, %lo(var_80A5CC7C)($at) 
    lui     $at, %hi(var_80A5CC80)     ## $at = 80A60000
    lwc1    $f16, %lo(var_80A5CC80)($at) 
    mul.s   $f10, $f0, $f8             
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    add.s   $f18, $f10, $f16           
    beq     $zero, $zero, lbl_80A5BD8C 
    swc1    $f18, 0x0060(s0)           ## 00000060
    mtc1    $zero, $f4                 ## $f4 = 0.00
lbl_80A5BD60:
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f4, 0x0060(s0)            ## 00000060
    lui     $at, %hi(var_80A5CC84)     ## $at = 80A60000
    lwc1    $f6, %lo(var_80A5CC84)($at) 
    or      v0, $zero, $zero           ## v0 = 00000000
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_80A5BD8C               
    nop
    beq     $zero, $zero, lbl_80A5BD8C 
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80A5BD8C:
    lui     $at, 0x4396                ## $at = 43960000
    mtc1    $at, $f8                   ## $f8 = 300.00
    or      a0, s0, $zero              ## a0 = 00000000
    swc1    $f8, 0x00BC(s0)            ## 000000BC
    jal     func_80A5AF04              
    sw      v0, 0x0024($sp)            
    lw      v0, 0x0024($sp)            
    lui     t6, %hi(func_80A5BDEC)     ## t6 = 80A60000
    addiu   t6, t6, %lo(func_80A5BDEC) ## t6 = 80A5BDEC
    addiu   t7, $zero, 0x0005          ## t7 = 00000005
    sw      t6, 0x0234(s0)             ## 00000234
    beq     v0, $zero, lbl_80A5BDD8    
    sw      t7, 0x0240(s0)             ## 00000240
    lw      t8, 0x0134(s0)             ## 00000134
    or      a0, s0, $zero              ## a0 = 00000000
    beql    t8, $zero, lbl_80A5BDDC    
    lw      $ra, 0x001C($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2869          ## a1 = 00002869
lbl_80A5BDD8:
    lw      $ra, 0x001C($sp)           
lbl_80A5BDDC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5BDEC:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      v0, 0x009E(a1)             ## 0000009E
    jal     func_800CDCCC              ## Rand.Next() float
    sh      v0, 0x0042($sp)            
    lui     $at, %hi(var_80A5CC88)     ## $at = 80A60000
    lwc1    $f2, %lo(var_80A5CC88)($at) 
    lui     $at, %hi(var_80A5CC8C)     ## $at = 80A60000
    lwc1    $f4, %lo(var_80A5CC8C)($at) 
    mtc1    $zero, $f8                 ## $f8 = 0.00
    mfc1    a2, $f2                    
    mul.s   $f6, $f0, $f4              
    mfc1    a3, $f2                    
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    swc1    $f8, 0x0010($sp)           
    mfc1    a1, $f6                    
    jal     func_80064178              
    nop
    lh      v0, 0x0042($sp)            
    lui     $at, %hi(var_80A5CC90)     ## $at = 80A60000
    lwc1    $f18, %lo(var_80A5CC90)($at) 
    sra     t6, v0,  5                 
    sra     t8, v0,  2                 
    andi    t9, t8, 0x0001             ## t9 = 00000000
    andi    t7, t6, 0x0002             ## t7 = 00000000
    or      t1, t7, t9                 ## t1 = 00000000
    sll     t2, t1, 27                 
    sra     t3, t2, 16                 
    mtc1    t3, $f10                   ## $f10 = 0.00
    andi    a3, v0, 0x0004             ## a3 = 00000000
    addiu   a0, s0, 0x0030             ## a0 = 00000030
    cvt.s.w $f16, $f10                 
    addiu   a2, $zero, 0x0FA0          ## a2 = 00000FA0
    mul.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    v1, $f6                    
    nop
    sll     a1, v1, 16                 
    beq     a3, $zero, lbl_80A5BEA4    
    sra     a1, a1, 16                 
    or      a1, v1, $zero              ## a1 = 00000000
    subu    a1, $zero, a1              
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
lbl_80A5BEA4:
    sw      a0, 0x0030($sp)            
    jal     func_800639B8              
    sw      a3, 0x002C($sp)            
    addiu   a0, s0, 0x0034             ## a0 = 00000034
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    jal     func_800639B8              
    addiu   a2, $zero, 0x03E8          ## a2 = 000003E8
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    swc1    $f0, 0x0034($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x023E(s0)             ## 0000023E
    swc1    $f0, 0x0038($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x023C(s0)             ## 0000023C
    lui     $at, 0x447A                ## $at = 447A0000
    mtc1    $at, $f10                  ## $f10 = 1000.00
    lwc1    $f8, 0x0038($sp)           
    lui     $at, 0x44FA                ## $at = 44FA0000
    mtc1    $at, $f18                  ## $f18 = 2000.00
    mul.s   $f16, $f8, $f10            
    lwc1    $f8, 0x0034($sp)           
    lh      t9, 0x0032(s0)             ## 00000032
    mul.s   $f4, $f0, $f18             
    addiu   a0, s0, 0x019C             ## a0 = 0000019C
    add.s   $f6, $f4, $f16             
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f18, $f10                 
    mfc1    t7, $f18                   
    nop
    addu    t0, t9, t7                 
    sh      t0, 0x0032(s0)             ## 00000032
    lw      t1, 0x0030($sp)            
    lwl     t3, 0x0000(t1)             ## 00000000
    lwr     t3, 0x0003(t1)             ## 00000003
    swl     t3, 0x00B4(s0)             ## 000000B4
    swr     t3, 0x00B7(s0)             ## 000000B7
    lhu     t3, 0x0004(t1)             ## 00000004
    jal     func_8008C9C0              
    sh      t3, 0x00B8(s0)             ## 000000B8
    lh      v0, 0x0238(s0)             ## 00000238
    bgtz    v0, lbl_80A5BF60           
    slti    $at, v0, 0x003D            
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5BFB8 
    lw      $ra, 0x0024($sp)           
lbl_80A5BF60:
    beq     $at, $zero, lbl_80A5BF84   
    lw      t4, 0x002C($sp)            
    beq     t4, $zero, lbl_80A5BF7C    
    lui     t5, %hi(func_80A5CB54)     ## t5 = 80A60000
    addiu   t5, t5, %lo(func_80A5CB54) ## t5 = 80A5CB54
    beq     $zero, $zero, lbl_80A5BFB4 
    sw      t5, 0x0134(s0)             ## 00000134
lbl_80A5BF7C:
    beq     $zero, $zero, lbl_80A5BFB4 
    sw      $zero, 0x0134(s0)          ## 00000134
lbl_80A5BF84:
    lhu     v0, 0x0088(s0)             ## 00000088
    andi    t6, v0, 0x0020             ## t6 = 00000000
    beq     t6, $zero, lbl_80A5BFA4    
    andi    t8, v0, 0x0001             ## t8 = 00000000
    jal     func_80A5BFC8              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5BFB8 
    lw      $ra, 0x0024($sp)           
lbl_80A5BFA4:
    beql    t8, $zero, lbl_80A5BFB8    
    lw      $ra, 0x0024($sp)           
    jal     func_80A5BCA8              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80A5BFB4:
    lw      $ra, 0x0024($sp)           
lbl_80A5BFB8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5BFC8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    mtc1    $zero, $f0                 ## $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    lw      t7, 0x0024(a0)             ## 00000024
    lw      t8, 0x0004(a0)             ## 00000004
    lw      t6, 0x0028(a0)             ## 00000028
    sw      t7, 0x0008(a0)             ## 00000008
    lw      t7, 0x002C(a0)             ## 0000002C
    addiu   t0, $zero, 0x00C8          ## t0 = 000000C8
    ori     t9, t8, 0x0010             ## t9 = 00000010
    swc1    $f0, 0x006C(a0)            ## 0000006C
    swc1    $f0, 0x0070(a0)            ## 00000070
    swc1    $f0, 0x00BC(a0)            ## 000000BC
    sw      t9, 0x0004(a0)             ## 00000004
    sh      t0, 0x0238(a0)             ## 00000238
    sw      t6, 0x000C(a0)             ## 0000000C
    sw      t7, 0x0010(a0)             ## 00000010
    jal     func_80A5AEA0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     t1, %hi(func_80A5C03C)     ## t1 = 80A60000
    addiu   t1, t1, %lo(func_80A5C03C) ## t1 = 80A5C03C
    addiu   t2, $zero, 0x0005          ## t2 = 00000005
    sw      t1, 0x0234(a0)             ## 00000234
    sw      t2, 0x0240(a0)             ## 00000240
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5C03C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     a1, 0x4033                 ## a1 = 40330000
    lui     a2, 0x3DCC                 ## a2 = 3DCC0000
    lui     a3, 0x3ECC                 ## a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             ## a3 = 3ECCCCCD
    ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
    ori     a1, a1, 0x3333             ## a1 = 40333333
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lhu     v0, 0x0088(s0)             ## 00000088
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    andi    t6, v0, 0x0008             ## t6 = 00000000
    bne     t6, $zero, lbl_80A5C094    
    andi    t7, v0, 0x0020             ## t7 = 00000000
    bnel    t7, $zero, lbl_80A5C0B8    
    addiu   a0, s0, 0x0030             ## a0 = 00000030
lbl_80A5C094:
    jal     func_80063F00              
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f8                   ## $f8 = 0.50
    lwc1    $f6, 0x0068(s0)            ## 00000068
    sh      v0, 0x0016(s0)             ## 00000016
    mul.s   $f10, $f6, $f8             
    swc1    $f10, 0x0068(s0)           ## 00000068
    addiu   a0, s0, 0x0030             ## a0 = 00000030
lbl_80A5C0B8:
    sw      a0, 0x0028($sp)            
    or      a1, $zero, $zero           ## a1 = 00000000
    jal     func_800639B8              
    addiu   a2, $zero, 0x05DC          ## a2 = 000005DC
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    lh      a1, 0x0016(s0)             ## 00000016
    jal     func_800639B8              
    addiu   a2, $zero, 0x0BB8          ## a2 = 00000BB8
    addiu   a0, s0, 0x0034             ## a0 = 00000034
    or      a1, $zero, $zero           ## a1 = 00000000
    jal     func_800639B8              
    addiu   a2, $zero, 0x03E8          ## a2 = 000003E8
    lw      t8, 0x0028($sp)            
    lhu     t1, 0x0088(s0)             ## 00000088
    lui     $at, 0x4120                ## $at = 41200000
    lwl     t0, 0x0000(t8)             ## 00000000
    lwr     t0, 0x0003(t8)             ## 00000003
    andi    t2, t1, 0x0001             ## t2 = 00000000
    swl     t0, 0x00B4(s0)             ## 000000B4
    swr     t0, 0x00B7(s0)             ## 000000B7
    lhu     t0, 0x0004(t8)             ## 00000004
    beq     t2, $zero, lbl_80A5C140    
    sh      t0, 0x00B8(s0)             ## 000000B8
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f18                  ## $f18 = 4.00
    lwc1    $f16, 0x000C(s0)           ## 0000000C
    addiu   a0, s0, 0x0028             ## a0 = 00000028
    lui     a2, 0x4000                 ## a2 = 40000000
    sub.s   $f4, $f16, $f18            
    mfc1    a1, $f4                    
    jal     func_8006385C              
    nop
    beq     $zero, $zero, lbl_80A5C164 
    lh      t3, 0x0238(s0)             ## 00000238
lbl_80A5C140:
    lwc1    $f6, 0x000C(s0)            ## 0000000C
    mtc1    $at, $f8                   ## $f8 = 0.00
    addiu   a0, s0, 0x0028             ## a0 = 00000028
    lui     a2, 0x4000                 ## a2 = 40000000
    sub.s   $f10, $f6, $f8             
    mfc1    a1, $f10                   
    jal     func_8006385C              
    nop
    lh      t3, 0x0238(s0)             ## 00000238
lbl_80A5C164:
    slti    $at, t3, 0x0064            
    beq     $at, $zero, lbl_80A5C18C   
    lui     $at, %hi(var_80A5CC94)     ## $at = 80A60000
    lwc1    $f18, %lo(var_80A5CC94)($at) 
    lwc1    $f16, 0x0050(s0)           ## 00000050
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f4, $f16, $f18            
    mfc1    a1, $f4                    
    jal     func_80020F88              
    nop
lbl_80A5C18C:
    lui     $at, 0x3FC0                ## $at = 3FC00000
    mtc1    $at, $f8                   ## $f8 = 1.50
    lwc1    $f6, 0x0068(s0)            ## 00000068
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f16                  ## $f16 = 1.00
    mul.s   $f10, $f6, $f8             
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f18                  ## $f18 = 4.00
    lui     $at, 0x4080                ## $at = 40800000
    add.s   $f0, $f10, $f16            
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_80A5C1D4               
    swc1    $f0, 0x01B8(s0)            ## 000001B8
    mtc1    $at, $f4                   ## $f4 = 4.00
    beq     $zero, $zero, lbl_80A5C1D4 
    swc1    $f4, 0x01B8(s0)            ## 000001B8
    swc1    $f0, 0x01B8(s0)            ## 000001B8
lbl_80A5C1D4:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             ## a0 = 0000019C
    lh      t4, 0x0238(s0)             ## 00000238
    bgtzl   t4, lbl_80A5C1F4           
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A5C1F4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5C204:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    mtc1    $zero, $f0                 ## $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    swc1    $f0, 0x006C(a2)            ## 0000006C
    swc1    $f0, 0x0070(a2)            ## 00000070
    sw      a2, 0x0018($sp)            
    addiu   a0, $zero, 0x0005          ## a0 = 00000005
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0023          ## a1 = 00000023
    lw      a0, 0x0018($sp)            
    sh      v0, 0x0238(a0)             ## 00000238
    jal     func_80A5AEA0              
    sw      $zero, 0x0240(a0)          ## 00000240
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_80A5C25C)     ## t6 = 80A60000
    addiu   t6, t6, %lo(func_80A5C25C) ## t6 = 80A5C25C
    sw      t6, 0x0234(a2)             ## 00000234
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5C25C:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     t6, 0x0001                 ## t6 = 00010000
    addu    t6, t6, a1                 
    lw      t6, 0x1DE4(t6)             ## 00011DE4
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f6                   ## $f6 = 60.00
    sw      t6, 0x0050($sp)            
    lwc1    $f4, 0x0090(s0)            ## 00000090
    or      a0, s0, $zero              ## a0 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A5C2C8               
    lh      t8, 0x0238(s0)             ## 00000238
    lh      t7, 0x0238(s0)             ## 00000238
    lui     v0, %hi(var_80A5CC30)      ## v0 = 80A60000
    slti    $at, t7, 0x000C            
    beq     $at, $zero, lbl_80A5C2BC   
    nop
    lui     v0, %hi(var_80A5CC3C)      ## v0 = 80A60000
    beq     $zero, $zero, lbl_80A5C2E8 
    addiu   v0, v0, %lo(var_80A5CC3C)  ## v0 = 80A5CC3C
lbl_80A5C2BC:
    beq     $zero, $zero, lbl_80A5C2E8 
    addiu   v0, v0, %lo(var_80A5CC30)  ## v0 = 80A5986C
    lh      t8, 0x0238(s0)             ## 00000238
lbl_80A5C2C8:
    lui     v0, %hi(var_80A5CC30)      ## v0 = 80A60000
    addiu   v0, v0, %lo(var_80A5CC30)  ## v0 = 80A5CC30
    slti    $at, t8, 0x0004            
    beq     $at, $zero, lbl_80A5C2E8   
    nop
    lui     v0, %hi(var_80A5CC3C)      ## v0 = 80A60000
    beq     $zero, $zero, lbl_80A5C2E8 
    addiu   v0, v0, %lo(var_80A5CC3C)  ## v0 = 80A5CC3C
lbl_80A5C2E8:
    jal     func_80A5B1CC              
    sw      v0, 0x004C($sp)            
    lw      v0, 0x004C($sp)            
    mtc1    $zero, $f8                 ## $f8 = 0.00
    addiu   a0, s0, 0x0068             ## a0 = 00000068
    lw      a1, 0x0000(v0)             ## 00000000
    lw      a2, 0x0004(v0)             ## 00000004
    lw      a3, 0x0008(v0)             ## 00000008
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    mtc1    $zero, $f10                ## $f10 = 0.00
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    sw      a1, 0x0028($sp)            
    sw      a0, 0x002C($sp)            
    jal     func_80A5AE70              
    swc1    $f10, 0x0044($sp)          
    lui     $at, 0x4361                ## $at = 43610000
    mtc1    $at, $f16                  ## $f16 = 225.00
    lw      a0, 0x002C($sp)            
    lw      a1, 0x0028($sp)            
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_80A5C380               
    lh      t9, 0x0238(s0)             ## 00000238
    jal     func_80063F00              
    nop
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    jal     func_80063704              
    addiu   a2, $zero, 0x00C8          ## a2 = 000000C8
    bne     v0, $zero, lbl_80A5C3B8    
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f18                  ## $f18 = 0.50
    beq     $zero, $zero, lbl_80A5C3B8 
    swc1    $f18, 0x0044($sp)          
    lh      t9, 0x0238(s0)             ## 00000238
lbl_80A5C380:
    lw      a1, 0x0050($sp)            
    addiu   a2, $zero, 0x0064          ## a2 = 00000064
    slti    $at, t9, 0x0004            
    beq     $at, $zero, lbl_80A5C3B8   
    sll     a1, a1,  7                 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    jal     func_80063704              
    addiu   a0, s0, 0x0032             ## a0 = 00000032
    bne     v0, $zero, lbl_80A5C3B8    
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f4                   ## $f4 = 0.50
    nop
    swc1    $f4, 0x0044($sp)           
lbl_80A5C3B8:
    lh      t0, 0x0032(s0)             ## 00000032
    lui     $at, %hi(var_80A5CC98)     ## $at = 80A60000
    lwc1    $f6, 0x0068(s0)            ## 00000068
    sh      t0, 0x00B6(s0)             ## 000000B6
    lwc1    $f8, %lo(var_80A5CC98)($at) 
    lui     $at, %hi(var_80A5CC9C)     ## $at = 80A60000
    lwc1    $f16, %lo(var_80A5CC9C)($at) 
    mul.s   $f10, $f6, $f8             
    lwc1    $f4, 0x0044($sp)           
    lui     $at, 0x3FC0                ## $at = 3FC00000
    mtc1    $at, $f6                   ## $f6 = 1.50
    lui     $at, 0x3FE0                ## $at = 3FE00000
    add.s   $f18, $f10, $f16           
    add.s   $f2, $f18, $f4             
    c.lt.s  $f2, $f6                   
    nop
    bc1fl   lbl_80A5C420               
    mtc1    $at, $f13                  ## $f13 = 1.75
    lui     $at, 0x3FF8                ## $at = 3FF80000
    mtc1    $at, $f9                   ## $f9 = 1.94
    mtc1    $zero, $f8                 ## $f8 = 0.00
    nop
    cvt.s.d $f10, $f8                  
    beq     $zero, $zero, lbl_80A5C44C 
    swc1    $f10, 0x01B8(s0)           ## 000001B8
    mtc1    $at, $f13                  ## $f13 = 1.94
lbl_80A5C420:
    mtc1    $zero, $f12                ## $f12 = 0.00
    cvt.d.s $f0, $f2                   
    c.lt.d  $f12, $f0                  
    nop
    bc1fl   lbl_80A5C444               
    mov.d   $f2, $f0                   
    beq     $zero, $zero, lbl_80A5C444 
    mov.d   $f2, $f12                  
    mov.d   $f2, $f0                   
lbl_80A5C444:
    cvt.s.d $f16, $f2                  
    swc1    $f16, 0x01B8(s0)           ## 000001B8
lbl_80A5C44C:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             ## a0 = 0000019C
    lh      t1, 0x0238(s0)             ## 00000238
    addiu   a0, $zero, 0x0005          ## a0 = 00000005
    bgtzl   t1, lbl_80A5C474           
    lw      $ra, 0x0024($sp)           
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0050          ## a1 = 00000050
    sh      v0, 0x0238(s0)             ## 00000238
    lw      $ra, 0x0024($sp)           
lbl_80A5C474:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5C484:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_800636C4              ## sins?
    lh      a0, 0x023C(s0)             ## 0000023C
    swc1    $f0, 0x0024($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x023E(s0)             ## 0000023E
    lui     v0, %hi(var_80A5CBC4)      ## v0 = 80A60000
    lui     v1, %hi(var_80A5CBC8)      ## v1 = 80A60000
    addiu   v1, v1, %lo(var_80A5CBC8)  ## v1 = 80A5CBC8
    addiu   v0, v0, %lo(var_80A5CBC4)  ## v0 = 80A5CBC4
    lwc1    $f4, 0x0000(v0)            ## 80A5CBC4
    lwc1    $f2, 0x0000(v1)            ## 80A5CBC8
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f12                  ## $f12 = 1.00
    add.s   $f6, $f4, $f2              
    swc1    $f0, 0x0020($sp)           
    lui     $at, %hi(var_80A5CCA4)     ## $at = 80A60000
    swc1    $f6, 0x0000(v0)            ## 80A5CBC4
    lwc1    $f8, 0x0000(v0)            ## 80A5CBC4
    c.le.s  $f8, $f12                  
    nop
    bc1f    lbl_80A5C564               
    nop
    jal     func_800CDCCC              ## Rand.Next() float
    swc1    $f12, 0x0000(v0)           ## 80A5CBC4
    lui     $at, %hi(var_80A5CCA0)     ## $at = 80A60000
    lwc1    $f10, %lo(var_80A5CCA0)($at) 
    lui     v1, %hi(var_80A5CBC8)      ## v1 = 80A60000
    addiu   v1, v1, %lo(var_80A5CBC8)  ## v1 = 80A5CBC8
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80A5C55C               
    mtc1    $zero, $f8                 ## $f8 = 0.00
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f16                  ## $f16 = 3.00
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f4                   ## $f4 = 2.00
    mul.s   $f18, $f0, $f16            
    lui     v1, %hi(var_80A5CBC8)      ## v1 = 80A60000
    addiu   v1, v1, %lo(var_80A5CBC8)  ## v1 = 80A5CBC8
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x2869          ## a1 = 00002869
    add.s   $f6, $f18, $f4             
    jal     func_80022FD0              
    swc1    $f6, 0x0000(v1)            ## 80A5CBC8
    beq     $zero, $zero, lbl_80A5C574 
    lwc1    $f18, 0x0024($sp)          
    mtc1    $zero, $f8                 ## $f8 = 0.00
lbl_80A5C55C:
    beq     $zero, $zero, lbl_80A5C570 
    swc1    $f8, 0x0000(v1)            ## 00000000
lbl_80A5C564:
    lwc1    $f10, %lo(var_80A5CCA4)($at) 
    sub.s   $f16, $f2, $f10            
    swc1    $f16, 0x0000(v1)           ## 00000000
lbl_80A5C570:
    lwc1    $f18, 0x0024($sp)          
lbl_80A5C574:
    lwc1    $f4, 0x0020($sp)           
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f8                   ## $f8 = 0.50
    add.s   $f6, $f18, $f4             
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f16                  ## $f16 = 2.00
    addiu   a0, s0, 0x019C             ## a0 = 0000019C
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    jal     func_8008C9C0              
    swc1    $f18, 0x01B8(s0)           ## 000001B8
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5C5B4:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_800636C4              ## sins?
    lh      a0, 0x023C(s0)             ## 0000023C
    swc1    $f0, 0x0028($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x023E(s0)             ## 0000023E
    swc1    $f0, 0x0024($sp)           
    lh      t6, 0x00B4(s0)             ## 000000B4
    lh      t8, 0x00B8(s0)             ## 000000B8
    lui     a0, %hi(var_80A5CBC4)      ## a0 = 80A60000
    addiu   t7, t6, 0xFE0C             ## t7 = FFFFFE0C
    addiu   t9, t8, 0x0064             ## t9 = 00000064
    sh      t7, 0x00B4(s0)             ## 000000B4
    sh      t9, 0x00B8(s0)             ## 000000B8
    addiu   a0, a0, %lo(var_80A5CBC4)  ## a0 = 80A5CBC4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8006385C              
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lwc1    $f4, 0x0028($sp)           
    lwc1    $f6, 0x0024($sp)           
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f10                  ## $f10 = 0.50
    add.s   $f8, $f4, $f6              
    lui     $at, 0x4000                ## $at = 40000000
    mtc1    $at, $f18                  ## $f18 = 2.00
    addiu   a0, s0, 0x019C             ## a0 = 0000019C
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    jal     func_8008C9C0              
    swc1    $f4, 0x01B8(s0)            ## 000001B8
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5C650:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      v0, 0x1D90(s1)             ## 00001D90
    bnel    v0, $zero, lbl_80A5C690    
    lh      t6, 0x023C(s0)             ## 0000023C
    jal     func_80A5B034              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5C800 
    lw      $ra, 0x0024($sp)           
    lh      t6, 0x023C(s0)             ## 0000023C
lbl_80A5C690:
    lh      t8, 0x023E(s0)             ## 0000023E
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   t7, t6, 0x0111             ## t7 = 00000111
    addiu   t9, t8, 0x0500             ## t9 = 00000500
    sh      t7, 0x023C(s0)             ## 0000023C
    sh      t9, 0x023E(s0)             ## 0000023E
    lhu     v1, 0x0000(v0)             ## 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    beq     v1, $at, lbl_80A5C6D8      
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     v1, $at, lbl_80A5C6E8      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     v1, $at, lbl_80A5C6FC      
    nop
    beq     $zero, $zero, lbl_80A5C718 
    lw      t3, 0x0018(v0)             ## 00000018
lbl_80A5C6D8:
    jal     func_80A5C484              
    sw      v0, 0x004C($sp)            
    beq     $zero, $zero, lbl_80A5C714 
    lw      v0, 0x004C($sp)            
lbl_80A5C6E8:
    or      a1, s1, $zero              ## a1 = 00000000
    jal     func_80A5C5B4              
    sw      v0, 0x004C($sp)            
    beq     $zero, $zero, lbl_80A5C714 
    lw      v0, 0x004C($sp)            
lbl_80A5C6FC:
    jal     func_80A5B034              
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5C800 
    lw      $ra, 0x0024($sp)           
lbl_80A5C714:
    lw      t3, 0x0018(v0)             ## 00000018
lbl_80A5C718:
    lw      t0, 0x000C(v0)             ## 0000000C
    lw      t1, 0x0010(v0)             ## 00000010
    mtc1    t3, $f10                   ## $f10 = 0.00
    lw      t2, 0x0014(v0)             ## 00000014
    mtc1    t0, $f4                    ## $f4 = 0.00
    cvt.s.w $f16, $f10                 
    mtc1    t1, $f6                    ## $f6 = 0.00
    mtc1    t2, $f8                    ## $f8 = 0.00
    cvt.s.w $f2, $f4                   
    swc1    $f16, 0x0034($sp)          
    lw      t4, 0x001C(v0)             ## 0000001C
    mtc1    t4, $f18                   ## $f18 = 0.00
    cvt.s.w $f12, $f6                  
    cvt.s.w $f4, $f18                  
    cvt.s.w $f14, $f8                  
    swc1    $f4, 0x0038($sp)           
    lw      t5, 0x0020(v0)             ## 00000020
    mtc1    t5, $f6                    ## $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    swc1    $f8, 0x003C($sp)           
    lhu     a2, 0x1D74(s1)             ## 00001D74
    lhu     a1, 0x0002(v0)             ## 00000002
    lhu     a0, 0x0004(v0)             ## 00000004
    swc1    $f14, 0x0048($sp)          
    swc1    $f12, 0x0044($sp)          
    jal     func_8005C690              
    swc1    $f2, 0x0040($sp)           
    lwc1    $f2, 0x0040($sp)           
    lwc1    $f10, 0x0034($sp)          
    lwc1    $f12, 0x0044($sp)          
    lwc1    $f14, 0x0048($sp)          
    sub.s   $f16, $f10, $f2            
    lui     $at, %hi(var_80A5CBC4)     ## $at = 80A60000
    addiu   t6, s0, 0x0024             ## t6 = 00000024
    addiu   a0, s1, 0x07C0             ## a0 = 000007C0
    mul.s   $f18, $f16, $f0            
    addiu   a1, s0, 0x0078             ## a1 = 00000078
    addiu   a2, $sp, 0x002C            ## a2 = FFFFFFD4
    or      a3, s0, $zero              ## a3 = 00000000
    add.s   $f4, $f18, $f2             
    swc1    $f4, 0x0024(s0)            ## 00000024
    lwc1    $f6, 0x0038($sp)           
    lwc1    $f18, %lo(var_80A5CBC4)($at) 
    sub.s   $f8, $f6, $f12             
    mul.s   $f10, $f8, $f0             
    add.s   $f16, $f10, $f12           
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0028(s0)            ## 00000028
    lwc1    $f6, 0x003C($sp)           
    sub.s   $f8, $f6, $f14             
    mul.s   $f10, $f8, $f0             
    add.s   $f16, $f10, $f14           
    swc1    $f16, 0x002C(s0)           ## 0000002C
    jal     func_8002F4B8              ## Raycast
    sw      t6, 0x0010($sp)            
    swc1    $f0, 0x0080(s0)            ## 00000080
    lw      $ra, 0x0024($sp)           
lbl_80A5C800:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_80A5C810:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      v0, 0x0238(s0)             ## 00000238
    or      a0, s0, $zero              ## a0 = 00000000
    blez    v0, lbl_80A5C838           
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x0238(s0)             ## 00000238
lbl_80A5C838:
    lh      t7, 0x023C(s0)             ## 0000023C
    lh      t9, 0x023E(s0)             ## 0000023E
    lw      v0, 0x011C(s0)             ## 0000011C
    addiu   t8, t7, 0x0111             ## t8 = 00000111
    addiu   t0, t9, 0x0500             ## t0 = 00000500
    sh      t8, 0x023C(s0)             ## 0000023C
    beq     v0, $zero, lbl_80A5C870    
    sh      t0, 0x023E(s0)             ## 0000023E
    lw      t1, 0x0130(v0)             ## 00000130
    bnel    t1, $zero, lbl_80A5C874    
    lw      v0, 0x0234(s0)             ## 00000234
    beql    s0, v0, lbl_80A5C874       
    lw      v0, 0x0234(s0)             ## 00000234
    sw      $zero, 0x011C(s0)          ## 0000011C
lbl_80A5C870:
    lw      v0, 0x0234(s0)             ## 00000234
lbl_80A5C874:
    beq     v0, $zero, lbl_80A5C890    
    nop
    jalr    $ra, v0                    
    lw      a1, 0x002C($sp)            
    lw      t2, 0x0130(s0)             ## 00000130
    beql    t2, $zero, lbl_80A5C984    
    lw      $ra, 0x0024($sp)           
lbl_80A5C890:
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      v0, 0x0240(s0)             ## 00000240
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    beq     v0, $zero, lbl_80A5C8C0    
    lui     a2, 0x418C                 ## a2 = 418C0000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     a3, 0x4080                 ## a3 = 40800000
    sw      v0, 0x0014($sp)            
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
lbl_80A5C8C0:
    lui     $at, 0x428C                ## $at = 428C0000
    mtc1    $at, $f8                   ## $f8 = 70.00
    lwc1    $f6, 0x0090(s0)            ## 00000090
    lw      a0, 0x002C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    c.lt.s  $f6, $f8                   
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, a0, $at                
    bc1f    lbl_80A5C8F0               
    nop
    jal     func_8004C130              ## CollisionCheck_setOT
    addiu   a2, s0, 0x013C             ## a2 = 0000013C
lbl_80A5C8F0:
    lui     $at, %hi(var_80A5CCA8)     ## $at = 80A60000
    lwc1    $f16, %lo(var_80A5CCA8)($at) 
    lwc1    $f10, 0x00BC(s0)           ## 000000BC
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f18, $f10, $f16           
    mfc1    a1, $f18                   
    jal     func_80020F04              
    nop
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022BB0              
    lw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80A5C954    
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t3, 0x001C(s0)             ## 0000001C
    sw      $zero, 0x0118(s0)          ## 00000118
    bne     t3, $zero, lbl_80A5C944    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5C984 
    lw      $ra, 0x0024($sp)           
lbl_80A5C944:
    jal     func_80A5AF68              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A5C984 
    lw      $ra, 0x0024($sp)           
lbl_80A5C954:
    jal     func_80A5B284              
    lw      a1, 0x002C($sp)            
    beq     v0, $zero, lbl_80A5C980    
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f4                   ## $f4 = 20.00
    lw      a1, 0x002C($sp)            
    addiu   a2, $zero, 0x007E          ## a2 = 0000007E
    lui     a3, 0x42A0                 ## a3 = 42A00000
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_80A5C980:
    lw      $ra, 0x0024($sp)           
lbl_80A5C984:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5C994:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bnel    t6, $at, lbl_80A5C9C0      
    lw      v0, 0x011C(a0)             ## 0000011C
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_80A5CA9C 
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x011C(a0)             ## 0000011C
lbl_80A5C9C0:
    beql    v0, $zero, lbl_80A5C9E4    
    lw      v0, 0x0234(a0)             ## 00000234
    lw      t7, 0x0130(v0)             ## 00000130
    bnel    t7, $zero, lbl_80A5C9E4    
    lw      v0, 0x0234(a0)             ## 00000234
    beql    a0, v0, lbl_80A5C9E4       
    lw      v0, 0x0234(a0)             ## 00000234
    sw      $zero, 0x011C(a0)          ## 0000011C
    lw      v0, 0x0234(a0)             ## 00000234
lbl_80A5C9E4:
    beq     v0, $zero, lbl_80A5CA04    
    nop
    jalr    $ra, v0                    
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lw      t8, 0x0130(a0)             ## 00000130
    beql    t8, $zero, lbl_80A5CA9C    
    lw      $ra, 0x0014($sp)           
lbl_80A5CA04:
    jal     func_8002121C              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0x0014         ## $at = 00000014
    lui     t9, %hi(func_80A5CB54)     ## t9 = 80A60000
    lh      v0, 0x023A(a0)             ## 0000023A
    addiu   t9, t9, %lo(func_80A5CB54) ## t9 = 80A5CB54
    bne     v0, $at, lbl_80A5CA30      
    nop
    beq     $zero, $zero, lbl_80A5CA98 
    sw      t9, 0x0134(a0)             ## 00000134
lbl_80A5CA30:
    bne     v0, $zero, lbl_80A5CA54    
    slti    $at, v0, 0x0014            
    lui     $at, %hi(var_80A5CCAC)     ## $at = 80A60000
    lwc1    $f12, %lo(var_80A5CCAC)($at) 
    mfc1    a1, $f12                   
    jal     func_80020F88              
    nop
    beq     $zero, $zero, lbl_80A5CA9C 
    lw      $ra, 0x0014($sp)           
lbl_80A5CA54:
    beq     $at, $zero, lbl_80A5CA98   
    lui     $at, %hi(var_80A5CCB0)     ## $at = 80A60000
    lwc1    $f12, %lo(var_80A5CCB0)($at) 
    lui     $at, %hi(var_80A5CCB4)     ## $at = 80A60000
    lwc1    $f6, %lo(var_80A5CCB4)($at) 
    lwc1    $f4, 0x0050(a0)            ## 00000050
    add.s   $f0, $f4, $f6              
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_80A5CA8C               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_80A5CA8C 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_80A5CA8C:
    mfc1    a1, $f2                    
    jal     func_80020F88              
    nop
lbl_80A5CA98:
    lw      $ra, 0x0014($sp)           
lbl_80A5CA9C:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5CAA8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     v0, %hi(var_80A5CBC0)      ## v0 = 80A60000
    lw      v0, %lo(var_80A5CBC0)(v0)  
    bne     v0, $zero, lbl_80A5CB00    
    nop
    lh      t6, 0x001C(a0)             ## 0000001C
    bne     t6, $zero, lbl_80A5CB00    
    nop
    lbu     t7, 0x1D6C(a1)             ## 00001D6C
    beq     t7, $zero, lbl_80A5CB00    
    nop
    lw      t8, 0x1D90(a1)             ## 00001D90
    beq     t8, $zero, lbl_80A5CB00    
    nop
    sw      a0, 0x0018($sp)            
    jal     func_80A5AF9C              
    sw      a1, 0x001C($sp)            
    lui     v0, %hi(var_80A5CBC0)      ## v0 = 80A60000
    lw      v0, %lo(var_80A5CBC0)(v0)  
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
lbl_80A5CB00:
    beql    v0, $zero, lbl_80A5CB24    
    lh      v0, 0x023A(a0)             ## 0000023A
    bnel    a0, v0, lbl_80A5CB24       
    lh      v0, 0x023A(a0)             ## 0000023A
    jal     func_80A5C650              
    nop
    beq     $zero, $zero, lbl_80A5CB48 
    lw      $ra, 0x0014($sp)           
    lh      v0, 0x023A(a0)             ## 0000023A
lbl_80A5CB24:
    blez    v0, lbl_80A5CB3C           
    addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
    jal     func_80A5C994              
    sh      t9, 0x023A(a0)             ## 0000023A
    beq     $zero, $zero, lbl_80A5CB48 
    lw      $ra, 0x0014($sp)           
lbl_80A5CB3C:
    jal     func_80A5C810              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A5CB48:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A5CB54:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             ## 00000000
    lw      v0, 0x0028($sp)            
    lw      a0, 0x002C($sp)            
    lw      a1, 0x01A0(v0)             ## 000001A0
    lw      a2, 0x01BC(v0)             ## 000001BC
    lbu     a3, 0x019E(v0)             ## 0000019E
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_80089D8C              
    sw      $zero, 0x0010($sp)         
    lw      v0, 0x0028($sp)            
    or      a0, $zero, $zero           ## a0 = 00000000
    jal     func_80050CE4              
    addiu   a1, v0, 0x013C             ## a1 = 0000013C
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80A5CBC0: .word 0x00000000
var_80A5CBC4: .word 0x00000000
var_80A5CBC8: .word 0x00000000
var_80A5CBCC: .word \
0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00000100, 0x00000000, 0x00000000, \
0x00050064
var_80A5CBF0: .word 0x0A000039, 0x10000000, 0x00000001
.word var_80A5CBCC
var_80A5CC00: .word 0x00210700, 0x00000000, 0x00010000, 0x00000244
.word func_80A5B05C
.word func_80A5B1A0
.word func_80A5CAA8
.word func_80A5CB54
var_80A5CC20: .word 0xC850000A, 0xB0F40384, 0xB0F80028, 0x30FC02BC
var_80A5CC30: .word 0x00000000, 0x3D23D70A, 0x3DB851EC
var_80A5CC3C: .word \
0x3F000000, 0x3DCCCCCD, 0x3E19999A, 0x00000000, \
0x00000000

.section .rodata

var_80A5CC50: .word 0x477FFF80
var_80A5CC54: .word 0x477FFF80
var_80A5CC58: .word 0x3FB33333
var_80A5CC5C: .word 0x3F4CCCCD
var_80A5CC60: .word 0x3F4CCCCD
var_80A5CC64: .word 0x3F4CCCCD
var_80A5CC68: .word 0x3F4CCCCD
var_80A5CC6C: .word 0x3DCCCCCD
var_80A5CC70: .word 0xC6F9EC00
var_80A5CC74: .word 0x3DCCCCCD
var_80A5CC78: .word 0x3E4CCCCD
var_80A5CC7C: .word 0x3F99999A
var_80A5CC80: .word 0x3E4CCCCD
var_80A5CC84: .word 0x3E4CCCCD
var_80A5CC88: .word 0x3DCCCCCD
var_80A5CC8C: .word 0x3E4CCCCD
var_80A5CC90: .word 0x3E99999A
var_80A5CC94: .word 0x3F7B645A
var_80A5CC98: .word 0x3F99999A
var_80A5CC9C: .word 0x3E4CCCCD
var_80A5CCA0: .word 0x3DCCCCCD
var_80A5CCA4: .word 0x3ECCCCCD
var_80A5CCA8: .word 0x3C23D70A
var_80A5CCAC: .word 0x3C23D70A
var_80A5CCB0: .word 0x3C23D70A
var_80A5CCB4: .word 0x3A83126F, 0x00000000, 0x00000000

