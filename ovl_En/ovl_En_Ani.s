#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AD86C0:
    sw      a1, 0x02A0(a0)             ## 000002A0
    jr      $ra                        
    nop


func_80AD86CC:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a1, %hi(var_80AD92AC)      ## a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AD92AC)  ## a1 = 80AD92AC
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    lui     a1, 0xC52F                 ## a1 = C52F0000
    jal     func_8001EC20              
    lui     a3, 0x4210                 ## a3 = 42100000
    addiu   a1, s0, 0x0188             ## a1 = 00000188
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t6, s0, 0x01CC             ## t6 = 000001CC
    addiu   t7, s0, 0x022C             ## t7 = 0000022C
    addiu   t8, $zero, 0x0010          ## t8 = 00000010
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x76EC             ## a3 = 060076EC
    addiu   a2, a2, 0x00F0             ## a2 = 060000F0
    sw      a1, 0x0034($sp)            
    jal     func_8008C788              
    lw      a0, 0x0044($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x76EC             ## a1 = 060076EC
    jal     func_8008D1C4              
    lw      a0, 0x0034($sp)            
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    sw      a1, 0x0034($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_80AD9280)      ## a3 = 80AE0000
    lw      a1, 0x0034($sp)            
    addiu   a3, a3, %lo(var_80AD9280)  ## a3 = 80AD9280
    lw      a0, 0x0044($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              ## a2 = 00000000
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    sb      t9, 0x00AE(s0)             ## 000000AE
    lui     t0, 0x8012                 ## t0 = 80120000
    lw      t0, -0x5A2C(t0)            ## 8011A5D4
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_80AD8B68)     ## a1 = 80AE0000
    beq     t0, $zero, lbl_80AD87B0    
    nop
    lui     a1, %hi(func_80AD89BC)     ## a1 = 80AE0000
    addiu   a1, a1, %lo(func_80AD89BC) ## a1 = 80AD89BC
    jal     func_80AD86C0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AD87BC 
    lui     $at, 0xBF80                ## $at = BF800000
lbl_80AD87B0:
    jal     func_80AD86C0              
    addiu   a1, a1, %lo(func_80AD8B68) ## a1 = FFFF8B68
    lui     $at, 0xBF80                ## $at = BF800000
lbl_80AD87BC:
    mtc1    $at, $f0                   ## $f0 = -1.00
    sh      $zero, 0x029A(s0)          ## 0000029A
    sh      $zero, 0x0298(s0)          ## 00000298
    swc1    $f0, 0x0070(s0)            ## 00000070
    swc1    $f0, 0x0060(s0)            ## 00000060
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD87E4:
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


func_80AD8810:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0020($sp)            
    andi    a3, a2, 0xFFFF             ## a3 = 00000000
    lhu     t6, 0x0298(a0)             ## 00000298
    sh      a3, 0x010E(a0)             ## 0000010E
    lui     a2, 0x42C8                 ## a2 = 42C80000
    ori     t7, t6, 0x0001             ## t7 = 00000001
    jal     func_80022A68              
    sh      t7, 0x0298(a0)             ## 00000298
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD884C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80022AD0              
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AD8874    
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_80AD89BC)     ## a1 = 80AE0000
    jal     func_80AD86C0              
    addiu   a1, a1, %lo(func_80AD89BC) ## a1 = 80AD89BC
lbl_80AD8874:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD8884:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80022AD0              
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80AD88AC    
    lw      a0, 0x0018($sp)            
    lui     a1, %hi(func_80AD8B68)     ## a1 = 80AE0000
    jal     func_80AD86C0              
    addiu   a1, a1, %lo(func_80AD8B68) ## a1 = 80AD8B68
lbl_80AD88AC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD88BC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80022BB0              
    sw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80AD8928    
    lw      a0, 0x0020($sp)            
    sw      $zero, 0x0118(a0)          ## 00000118
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x5A2C(t6)            ## 8011A5D4
    lui     a1, %hi(func_80AD8884)     ## a1 = 80AE0000
    beq     t6, $zero, lbl_80AD8908    
    nop
    lui     a1, %hi(func_80AD884C)     ## a1 = 80AE0000
    jal     func_80AD86C0              
    addiu   a1, a1, %lo(func_80AD884C) ## a1 = 80AD884C
    beq     $zero, $zero, lbl_80AD8910 
    nop
lbl_80AD8908:
    jal     func_80AD86C0              
    addiu   a1, a1, %lo(func_80AD8884) ## a1 = FFFF8884
lbl_80AD8910:
    lui     t7, 0x8012                 ## t7 = 80120000
    lhu     t7, -0x4B3E(t7)            ## 8011B4C2
    lui     $at, 0x8012                ## $at = 80120000
    ori     t8, t7, 0x0020             ## t8 = 80120020
    beq     $zero, $zero, lbl_80AD8948 
    sh      t8, -0x4B3E($at)           ## 8011B4C2
lbl_80AD8928:
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f4                   ## $f4 = 200.00
    lui     a3, 0x461C                 ## a3 = 461C0000
    ori     a3, a3, 0x4000             ## a3 = 461C4000
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x003E          ## a2 = 0000003E
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
lbl_80AD8948:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD8958:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80022AD0              
    lw      a1, 0x0024($sp)            
    beq     v0, $zero, lbl_80AD8988    
    lw      a0, 0x0020($sp)            
    lui     a1, %hi(func_80AD88BC)     ## a1 = 80AE0000
    jal     func_80AD86C0              
    addiu   a1, a1, %lo(func_80AD88BC) ## a1 = 80AD88BC
lbl_80AD8988:
    lui     $at, 0x4348                ## $at = 43480000
    mtc1    $at, $f4                   ## $f4 = 200.00
    lui     a3, 0x461C                 ## a3 = 461C0000
    ori     a3, a3, 0x4000             ## a3 = 461C4000
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    addiu   a2, $zero, 0x003E          ## a2 = 0000003E
    jal     func_80022BD4              
    swc1    $f4, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD89BC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x000A          ## a1 = 0000000A
    jal     func_800597C0              
    sw      a3, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    lw      a3, 0x0020($sp)            
    bne     v0, $zero, lbl_80AD8A08    
    andi    a2, v0, 0xFFFF             ## a2 = 00000000
    lui     t6, 0x8012                 ## t6 = 80120000
    lw      t6, -0x5A20(t6)            ## 8011A5E0
    addiu   a2, $zero, 0x5050          ## a2 = 00005050
    beq     t6, $zero, lbl_80AD8A08    
    nop
    beq     $zero, $zero, lbl_80AD8A08 
    addiu   a2, $zero, 0x5051          ## a2 = 00005051
lbl_80AD8A08:
    lh      t7, 0x008A(a3)             ## 0000008A
    lh      t8, 0x00B6(a3)             ## 000000B6
    sw      a3, 0x0020($sp)            
    sh      a2, 0x001E($sp)            
    subu    v1, t7, t8                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    sh      v1, 0x001C($sp)            
    jal     func_80022930              
    or      a0, a3, $zero              ## a0 = 00000000
    lh      v1, 0x001C($sp)            
    lw      a1, 0x0024($sp)            
    lhu     a2, 0x001E($sp)            
    beq     v0, $zero, lbl_80AD8AA0    
    lw      a3, 0x0020($sp)            
    lhu     v0, 0x010E(a3)             ## 0000010E
    addiu   $at, $zero, 0x5056         ## $at = 00005056
    or      a0, a3, $zero              ## a0 = 00000000
    bne     v0, $at, lbl_80AD8A68      
    lui     a1, %hi(func_80AD884C)     ## a1 = 80AE0000
    jal     func_80AD86C0              
    addiu   a1, a1, %lo(func_80AD884C) ## a1 = 80AD884C
    beq     $zero, $zero, lbl_80AD8B5C 
    lw      $ra, 0x0014($sp)           
lbl_80AD8A68:
    addiu   $at, $zero, 0x5055         ## $at = 00005055
    bne     v0, $at, lbl_80AD8A8C      
    or      a0, a3, $zero              ## a0 = 00000000
    lui     a1, %hi(func_80AD8958)     ## a1 = 80AE0000
    addiu   a1, a1, %lo(func_80AD8958) ## a1 = 80AD8958
    jal     func_80AD86C0              
    or      a0, a3, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AD8B5C 
    lw      $ra, 0x0014($sp)           
lbl_80AD8A8C:
    lui     a1, %hi(func_80AD884C)     ## a1 = 80AE0000
    jal     func_80AD86C0              
    addiu   a1, a1, %lo(func_80AD884C) ## a1 = 80AD884C
    beq     $zero, $zero, lbl_80AD8B5C 
    lw      $ra, 0x0014($sp)           
lbl_80AD8AA0:
    slti    $at, v1, 0xC951            
    bnel    $at, $zero, lbl_80AD8B28   
    slti    $at, v1, 0xFC19            
    bgez    v1, lbl_80AD8B24           
    lui     $at, 0x4316                ## $at = 43160000
    lwc1    $f4, 0x0090(a3)            ## 00000090
    mtc1    $at, $f6                   ## $f6 = 150.00
    lui     $at, 0xC2A0                ## $at = C2A00000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80AD8B28               
    slti    $at, v1, 0xFC19            
    mtc1    $at, $f8                   ## $f8 = -80.00
    lwc1    $f10, 0x0094(a3)           ## 00000094
    lui     t9, 0x8012                 ## t9 = 80120000
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80AD8B28               
    slti    $at, v1, 0xFC19            
    lhu     t9, -0x4B3E(t9)            ## 8011B4C2
    addiu   a2, $zero, 0x5056          ## a2 = 00005056
    or      a0, a3, $zero              ## a0 = 00000000
    andi    t0, t9, 0x0020             ## t0 = 00000000
    beq     t0, $zero, lbl_80AD8B14    
    nop
    jal     func_80AD8810              
    or      a0, a3, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80AD8B5C 
    lw      $ra, 0x0014($sp)           
lbl_80AD8B14:
    jal     func_80AD8810              
    addiu   a2, $zero, 0x5055          ## a2 = 00005055
    beq     $zero, $zero, lbl_80AD8B5C 
    lw      $ra, 0x0014($sp)           
lbl_80AD8B24:
    slti    $at, v1, 0xFC19            
lbl_80AD8B28:
    bne     $at, $zero, lbl_80AD8B58   
    slti    $at, v1, 0x36B0            
    beq     $at, $zero, lbl_80AD8B58   
    lui     $at, 0x43AF                ## $at = 43AF0000
    mtc1    $at, $f18                  ## $f18 = 350.00
    lwc1    $f16, 0x0090(a3)           ## 00000090
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_80AD8B5C               
    lw      $ra, 0x0014($sp)           
    jal     func_80AD8810              
    or      a0, a3, $zero              ## a0 = 00000000
lbl_80AD8B58:
    lw      $ra, 0x0014($sp)           
lbl_80AD8B5C:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD8B68:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x008A(a0)             ## 0000008A
    lh      t7, 0x00B6(a0)             ## 000000B6
    sw      a1, 0x0024($sp)            
    sw      a0, 0x0020($sp)            
    subu    v1, t6, t7                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    jal     func_80022930              
    sh      v1, 0x001C($sp)            
    lh      v1, 0x001C($sp)            
    lw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80AD8BF8    
    lw      a1, 0x0024($sp)            
    lhu     v0, 0x010E(a0)             ## 0000010E
    addiu   $at, $zero, 0x5056         ## $at = 00005056
    lui     a1, %hi(func_80AD8884)     ## a1 = 80AE0000
    bnel    v0, $at, lbl_80AD8BCC      
    addiu   $at, $zero, 0x5055         ## $at = 00005055
    jal     func_80AD86C0              
    addiu   a1, a1, %lo(func_80AD8884) ## a1 = 80AD8884
    beq     $zero, $zero, lbl_80AD8CEC 
    lw      $ra, 0x0014($sp)           
    addiu   $at, $zero, 0x5055         ## $at = 00005055
lbl_80AD8BCC:
    bne     v0, $at, lbl_80AD8BE8      
    lui     a1, %hi(func_80AD8884)     ## a1 = 80AE0000
    lui     a1, %hi(func_80AD8958)     ## a1 = 80AE0000
    jal     func_80AD86C0              
    addiu   a1, a1, %lo(func_80AD8958) ## a1 = 80AD8958
    beq     $zero, $zero, lbl_80AD8CEC 
    lw      $ra, 0x0014($sp)           
lbl_80AD8BE8:
    jal     func_80AD86C0              
    addiu   a1, a1, %lo(func_80AD8884) ## a1 = FFFF8884
    beq     $zero, $zero, lbl_80AD8CEC 
    lw      $ra, 0x0014($sp)           
lbl_80AD8BF8:
    slti    $at, v1, 0xC951            
    bnel    $at, $zero, lbl_80AD8C7C   
    slti    $at, v1, 0xFC19            
    bgez    v1, lbl_80AD8C78           
    lui     $at, 0x4316                ## $at = 43160000
    lwc1    $f4, 0x0090(a0)            ## 00000090
    mtc1    $at, $f6                   ## $f6 = 150.00
    lui     $at, 0xC2A0                ## $at = C2A00000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80AD8C7C               
    slti    $at, v1, 0xFC19            
    mtc1    $at, $f8                   ## $f8 = -80.00
    lwc1    $f10, 0x0094(a0)           ## 00000094
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80AD8C7C               
    slti    $at, v1, 0xFC19            
    lhu     t8, 0x0EF2(v0)             ## 8011B4C2
    andi    t9, t8, 0x0020             ## t9 = 00000000
    beq     t9, $zero, lbl_80AD8C68    
    nop
    jal     func_80AD8810              
    addiu   a2, $zero, 0x5056          ## a2 = 00005056
    beq     $zero, $zero, lbl_80AD8CEC 
    lw      $ra, 0x0014($sp)           
lbl_80AD8C68:
    jal     func_80AD8810              
    addiu   a2, $zero, 0x5055          ## a2 = 00005055
    beq     $zero, $zero, lbl_80AD8CEC 
    lw      $ra, 0x0014($sp)           
lbl_80AD8C78:
    slti    $at, v1, 0xFC19            
lbl_80AD8C7C:
    bne     $at, $zero, lbl_80AD8CE8   
    slti    $at, v1, 0x36B0            
    beq     $at, $zero, lbl_80AD8CE8   
    lui     $at, 0x43AF                ## $at = 43AF0000
    mtc1    $at, $f18                  ## $f18 = 350.00
    lwc1    $f16, 0x0090(a0)           ## 00000090
    lui     v0, 0x8012                 ## v0 = 80120000
    addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_80AD8CEC               
    lw      $ra, 0x0014($sp)           
    lhu     t0, 0x0ED8(v0)             ## 8011B4A8
    andi    t1, t0, 0x8000             ## t1 = 00000000
    bnel    t1, $zero, lbl_80AD8CC8    
    lhu     t2, 0x0EF2(v0)             ## 8011B4C2
    beq     $zero, $zero, lbl_80AD8CE0 
    addiu   a2, $zero, 0x5052          ## a2 = 00005052
    lhu     t2, 0x0EF2(v0)             ## 8011B4C2
lbl_80AD8CC8:
    addiu   a2, $zero, 0x5053          ## a2 = 00005053
    andi    t3, t2, 0x0020             ## t3 = 00000000
    beq     t3, $zero, lbl_80AD8CE0    
    nop
    beq     $zero, $zero, lbl_80AD8CE0 
    addiu   a2, $zero, 0x5054          ## a2 = 00005054
lbl_80AD8CE0:
    jal     func_80AD8810              
    nop
lbl_80AD8CE8:
    lw      $ra, 0x0014($sp)           
lbl_80AD8CEC:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD8CF8:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80AD8D08:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lw      t6, 0x1D8C(a1)             ## 00001D8C
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    lui     a0, 0x0600                 ## a0 = 06000000
    lhu     t7, 0x0000(t6)             ## 00000000
    bnel    t7, $at, lbl_80AD8D90      
    lw      $ra, 0x0024($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x70F0             ## a0 = 060070F0
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC080                ## $at = C0800000
    mtc1    $at, $f8                   ## $f8 = -4.00
    cvt.s.w $f6, $f4                   
    lw      v1, 0x0028($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t8, $zero, 0x0002          ## t8 = 00000002
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x70F0             ## a1 = 060070F0
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    addiu   a3, $zero, 0x0000          ## a3 = 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, v1, 0x0188             ## a0 = 00000188
    lw      v1, 0x0028($sp)            
    lui     t1, 0x8002                 ## t1 = 80020000
    addiu   t1, t1, 0xEFF4             ## t1 = 8001EFF4
    lhu     t9, 0x029A(v1)             ## 0000029A
    sw      t1, 0x00C0(v1)             ## 000000C0
    addiu   t0, t9, 0x0001             ## t0 = 00000001
    sh      t0, 0x029A(v1)             ## 0000029A
    lw      $ra, 0x0024($sp)           
lbl_80AD8D90:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD8D9C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    addiu   a0, a1, 0x0188             ## a0 = 00000188
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    beq     v0, $zero, lbl_80AD8DD0    
    lw      a1, 0x0018($sp)            
    lhu     t6, 0x029A(a1)             ## 0000029A
    addiu   t7, t6, 0x0001             ## t7 = 00000001
    sh      t7, 0x029A(a1)             ## 0000029A
lbl_80AD8DD0:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD8DE0:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a0, s0, 0x0188             ## a0 = 00000188
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    beq     v0, $zero, lbl_80AD8E14    
    lui     a0, 0x0600                 ## a0 = 06000000
    mtc1    $zero, $f4                 ## $f4 = 0.00
    nop
    swc1    $f4, 0x01A0(s0)            ## 000001A0
lbl_80AD8E14:
    lw      t6, 0x003C($sp)            
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    lw      t7, 0x1D8C(t6)             ## 00001D8C
    lhu     t8, 0x0000(t7)             ## 00000000
    bnel    t8, $at, lbl_80AD8E7C      
    lw      $ra, 0x002C($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x67B8             ## a0 = 060067B8
    mtc1    v0, $f6                    ## $f6 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    cvt.s.w $f8, $f6                   
    addiu   t9, $zero, 0x0002          ## t9 = 00000002
    mfc1    a3, $f0                    
    sw      t9, 0x0014($sp)            
    addiu   a1, a1, 0x67B8             ## a1 = 060067B8
    lw      a0, 0x0030($sp)            
    swc1    $f8, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lhu     t0, 0x029A(s0)             ## 0000029A
    sw      $zero, 0x00C0(s0)          ## 000000C0
    addiu   t1, t0, 0x0001             ## t1 = 00000001
    sh      t1, 0x029A(s0)             ## 0000029A
    lw      $ra, 0x002C($sp)           
lbl_80AD8E7C:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD8E8C:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    addiu   a2, s0, 0x013C             ## a2 = 0000013C
    or      a1, a2, $zero              ## a1 = 0000013C
    sw      a2, 0x0034($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x0034($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              ## CollisionCheck_setOT
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t6, $zero, 0x0004          ## t6 = 00000004
    sw      t6, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lbu     t7, 0x1D6C(s1)             ## 00001D6C
    beq     t7, $zero, lbl_80AD8FB4    
    nop
    lw      t8, 0x1D8C(s1)             ## 00001D8C
    beq     t8, $zero, lbl_80AD8FB4    
    nop
    lhu     t9, 0x029A(s0)             ## 0000029A
    sltiu   $at, t9, 0x0005            
    beq     $at, $zero, lbl_80AD8F94   
    sll     t9, t9,  2                 
    lui     $at, %hi(var_80AD92D0)     ## $at = 80AE0000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80AD92D0)($at) 
    jr      t9                         
    nop
var_80AD8F38:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AD8DE0              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80AD8F98 
    lhu     t0, 0x1D74(s1)             ## 00001D74
var_80AD8F4C:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AD8D9C              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80AD8F98 
    lhu     t0, 0x1D74(s1)             ## 00001D74
var_80AD8F60:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AD8D08              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80AD8F98 
    lhu     t0, 0x1D74(s1)             ## 00001D74
var_80AD8F74:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AD8D9C              
    or      a1, s1, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_80AD8F98 
    lhu     t0, 0x1D74(s1)             ## 00001D74
var_80AD8F88:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80AD8CF8              
    or      a1, s1, $zero              ## a1 = 00000000
lbl_80AD8F94:
    lhu     t0, 0x1D74(s1)             ## 00001D74
lbl_80AD8F98:
    addiu   $at, $zero, 0x0064         ## $at = 00000064
    bnel    t0, $at, lbl_80AD8FE8      
    lhu     t1, 0x0298(s0)             ## 00000298
    jal     func_80064738              
    addiu   a0, $zero, 0x1845          ## a0 = 00001845
    beq     $zero, $zero, lbl_80AD8FE8 
    lhu     t1, 0x0298(s0)             ## 00000298
lbl_80AD8FB4:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0188             ## a0 = 00000188
    beql    v0, $zero, lbl_80AD8FD4    
    lw      t9, 0x02A0(s0)             ## 000002A0
    mtc1    $zero, $f4                 ## $f4 = 0.00
    nop
    swc1    $f4, 0x01A0(s0)            ## 000001A0
    lw      t9, 0x02A0(s0)             ## 000002A0
lbl_80AD8FD4:
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    lhu     t1, 0x0298(s0)             ## 00000298
lbl_80AD8FE8:
    addiu   a0, s0, 0x028C             ## a0 = 0000028C
    or      a1, $zero, $zero           ## a1 = 00000000
    andi    t2, t1, 0x0001             ## t2 = 00000000
    beq     t2, $zero, lbl_80AD903C    
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    lw      t4, 0x0038(s0)             ## 00000038
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    sw      t4, 0x0010($sp)            
    lw      t3, 0x003C(s0)             ## 0000003C
    addiu   a2, s0, 0x028C             ## a2 = 0000028C
    addiu   a3, s0, 0x0292             ## a3 = 00000292
    sw      t3, 0x0014($sp)            
    lw      t4, 0x0040(s0)             ## 00000040
    jal     func_8002B024              
    sw      t4, 0x0018($sp)            
    sh      $zero, 0x0296(s0)          ## 00000296
    lh      v1, 0x0296(s0)             ## 00000296
    sh      v1, 0x0294(s0)             ## 00000294
    beq     $zero, $zero, lbl_80AD90A0 
    sh      v1, 0x0292(s0)             ## 00000292
lbl_80AD903C:
    addiu   t5, $zero, 0x0064          ## t5 = 00000064
    sw      t5, 0x0010($sp)            
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    addiu   t6, $zero, 0x0064          ## t6 = 00000064
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x028E             ## a0 = 0000028E
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    addiu   t7, $zero, 0x0064          ## t7 = 00000064
    sw      t7, 0x0010($sp)            
    addiu   a0, s0, 0x0292             ## a0 = 00000292
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
    addiu   t8, $zero, 0x0064          ## t8 = 00000064
    sw      t8, 0x0010($sp)            
    addiu   a0, s0, 0x0294             ## a0 = 00000294
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0006          ## a2 = 00000006
    jal     func_80064508              
    addiu   a3, $zero, 0x1838          ## a3 = 00001838
lbl_80AD90A0:
    lh      v1, 0x029E(s0)             ## 0000029E
    addiu   a0, $zero, 0x003C          ## a0 = 0000003C
    bne     v1, $zero, lbl_80AD90B8    
    addiu   t0, v1, 0xFFFF             ## t0 = FFFFFFFF
    beq     $zero, $zero, lbl_80AD90C4 
    or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AD90B8:
    sh      t0, 0x029E(s0)             ## 0000029E
    lh      v1, 0x029E(s0)             ## 0000029E
    or      v0, v1, $zero              ## v0 = 00000000
lbl_80AD90C4:
    bnel    v0, $zero, lbl_80AD90E0    
    sh      v1, 0x029C(s0)             ## 0000029C
    jal     func_80063BF0              
    addiu   a1, $zero, 0x003C          ## a1 = 0000003C
    sh      v0, 0x029E(s0)             ## 0000029E
    lh      v1, 0x029E(s0)             ## 0000029E
    sh      v1, 0x029C(s0)             ## 0000029C
lbl_80AD90E0:
    lh      t9, 0x029C(s0)             ## 0000029C
    slti    $at, t9, 0x0003            
    bnel    $at, $zero, lbl_80AD90F8   
    lw      $ra, 0x002C($sp)           
    sh      $zero, 0x029C(s0)          ## 0000029C
    lw      $ra, 0x002C($sp)           
lbl_80AD90F8:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_80AD9108:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     a1, $at, lbl_80AD9144      
    lw      v0, 0x0014($sp)            
    lw      v1, 0x0010($sp)            
    lh      t7, 0x028E(v0)             ## 0000028E
    lh      t6, 0x0000(v1)             ## 00000000
    lh      t9, 0x0004(v1)             ## 00000004
    addu    t8, t6, t7                 
    sh      t8, 0x0000(v1)             ## 00000000
    lh      t0, 0x028C(v0)             ## 0000028C
    addu    t1, t9, t0                 
    sh      t1, 0x0004(v1)             ## 00000004
lbl_80AD9144:
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    nop


func_80AD9150:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bne     a1, $at, lbl_80AD9180      
    lui     a0, %hi(var_80AD92B4)      ## a0 = 80AE0000
    lw      a1, 0x0028($sp)            
    addiu   a0, a0, %lo(var_80AD92B4)  ## a0 = 80AD92B4
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             ## a1 = 00000038
lbl_80AD9180:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80AD9190:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E56C              
    sw      a0, 0x0034($sp)            
    lw      t1, 0x0034($sp)            
    lw      v1, 0x02C0(t1)             ## 000002C0
    lui     t8, 0xDB06                 ## t8 = DB060000
    ori     t8, t8, 0x0020             ## t8 = DB060020
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(t1)             ## 000002C0
    sw      t8, 0x0000(v1)             ## 00000000
    lh      t9, 0x029C(s0)             ## 0000029C
    lui     t0, %hi(var_80AD92C0)      ## t0 = 80AE0000
    lui     t7, 0x8012                 ## t7 = 80120000
    sll     t2, t9,  2                 
    addu    t0, t0, t2                 
    lw      t0, %lo(var_80AD92C0)(t0)  
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t4, t0,  4                 
    srl     t5, t4, 28                 
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, 0x0C38(t7)             ## 80120C38
    and     t3, t0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t8, t3, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x0004(v1)             ## 00000004
    lw      a1, 0x018C(s0)             ## 0000018C
    lw      a2, 0x01A8(s0)             ## 000001A8
    lbu     a3, 0x018A(s0)             ## 0000018A
    lui     t2, %hi(func_80AD9108)     ## t2 = 80AE0000
    lui     t4, %hi(func_80AD9150)     ## t4 = 80AE0000
    addiu   t4, t4, %lo(func_80AD9150) ## t4 = 80AD9150
    addiu   t2, t2, %lo(func_80AD9108) ## t2 = 80AD9108
    sw      t2, 0x0010($sp)            
    sw      t4, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x0044($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80AD9260: .word 0x01670400, 0x00000009, 0x00EC0000, 0x000002A4
.word func_80AD86CC
.word func_80AD87E4
.word func_80AD8E8C
.word func_80AD9190
var_80AD9280: .word \
0x0A001139, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x001E0028, 0x00000000, 0x00000000
var_80AD92AC: .word 0xC850000A, 0x30F40352
var_80AD92B4: .word 0x44480000, 0x43FA0000, 0x00000000
var_80AD92C0: .word 0x06000408, 0x06001518, 0x06001D18, 0x00000000

.section .rodata

var_80AD92D0: .word var_80AD8F38
.word var_80AD8F4C
.word var_80AD8F60
.word var_80AD8F74
.word var_80AD8F88
.word 0x00000000, 0x00000000, 0x00000000

