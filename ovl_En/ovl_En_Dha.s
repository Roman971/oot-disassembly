#include <mips.h>
.set noreorder
.set noat

.section .text
func_8096D610:
    sw      a1, 0x01B4(a0)             ## 000001B4
    jr      $ra                        
    nop


func_8096D61C:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lui     a1, %hi(var_8096E4A4)      ## a1 = 80970000
    addiu   a1, a1, %lo(var_8096E4A4)  ## a1 = 8096E4A4
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     t6, %hi(var_8096E3C0)      ## t6 = 80970000
    addiu   t6, t6, %lo(var_8096E3C0)  ## t6 = 8096E3C0
    sw      t6, 0x0098(s0)             ## 00000098
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t7, s0, 0x0180             ## t7 = 00000180
    addiu   t8, s0, 0x0198             ## t8 = 00000198
    addiu   t9, $zero, 0x0004          ## t9 = 00000004
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a3, a3, 0x15B0             ## a3 = 060015B0
    addiu   a2, a2, 0x0BD8             ## a2 = 06000BD8
    lw      a0, 0x003C($sp)            
    jal     func_8008C788              
    addiu   a1, s0, 0x013C             ## a1 = 0000013C
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xF280             ## a2 = 8001F280
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x42B4                 ## a3 = 42B40000
    lw      t0, 0x0028(s0)             ## 00000028
    lui     $at, 0x4248                ## $at = 42480000
    lw      t1, 0x0024(s0)             ## 00000024
    sw      t0, 0x003C(s0)             ## 0000003C
    lwc1    $f4, 0x003C(s0)            ## 0000003C
    mtc1    $at, $f6                   ## $f6 = 50.00
    sw      t1, 0x0038(s0)             ## 00000038
    lw      t1, 0x002C(s0)             ## 0000002C
    add.s   $f8, $f4, $f6              
    addiu   t2, $zero, 0x00FE          ## t2 = 000000FE
    addiu   t3, $zero, 0x0008          ## t3 = 00000008
    addiu   t4, $zero, 0xC000          ## t4 = FFFFC000
    swc1    $f8, 0x003C(s0)            ## 0000003C
    sb      t2, 0x00AE(s0)             ## 000000AE
    sb      t3, 0x00AF(s0)             ## 000000AF
    sh      t4, 0x01BE(s0)             ## 000001BE
    addiu   a1, s0, 0x01F0             ## a1 = 000001F0
    sw      t1, 0x0040(s0)             ## 00000040
    sw      a1, 0x0030($sp)            
    jal     func_8004A484              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_8096E494)      ## a3 = 80970000
    addiu   t5, s0, 0x0210             ## t5 = 00000210
    lw      a1, 0x0030($sp)            
    sw      t5, 0x0010($sp)            
    addiu   a3, a3, %lo(var_8096E494)  ## a3 = 8096E494
    lw      a0, 0x003C($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              ## a2 = 00000000
    lw      t6, 0x0004(s0)             ## 00000004
    addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
    or      a0, s0, $zero              ## a0 = 00000000
    and     t7, t6, $at                
    jal     func_8096D764              
    sw      t7, 0x0004(s0)             ## 00000004
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096D738:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_8004A550              
    addiu   a1, a2, 0x01F0             ## a1 = 000001F0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096D764:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x15B0             ## a1 = 060015B0
    addiu   a0, a2, 0x013C             ## a0 = 0000013C
    jal     func_8008D2D4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    jal     func_800CDCCC              ## Rand.Next() float
    sb      $zero, 0x01B0(a2)          ## 000001B0
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f4                   ## $f4 = 10.00
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f8                   ## $f8 = 5.00
    mul.s   $f6, $f0, $f4              
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f18                ## $f18 = 0.00
    addiu   t9, $zero, 0x0001          ## t9 = 00000001
    lh      t8, 0x00B6(a0)             ## 000000B6
    lui     a1, %hi(func_8096D7EC)     ## a1 = 80970000
    addiu   a1, a1, %lo(func_8096D7EC) ## a1 = 8096D7EC
    add.s   $f10, $f6, $f8             
    sh      t9, 0x0018(a0)             ## 00000018
    swc1    $f18, 0x0068(a0)           ## 00000068
    sh      t8, 0x0032(a0)             ## 00000032
    trunc.w.s $f16, $f10                 
    mfc1    t7, $f16                   
    jal     func_8096D610              
    sh      t7, 0x01B8(a0)             ## 000001B8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096D7EC:
    addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x008C($sp)            
    lui     t7, %hi(var_8096E4B0)      ## t7 = 80970000
    addiu   t7, t7, %lo(var_8096E4B0)  ## t7 = 8096E4B0
    lw      t9, 0x0000(t7)             ## 8096E4B0
    addiu   t6, $sp, 0x007C            ## t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             ## 8096E4B4
    sw      t9, 0x0000(t6)             ## FFFFFFF4
    lw      t9, 0x0008(t7)             ## 8096E4B8
    lui     t1, %hi(var_8096E4BC)      ## t1 = 80970000
    addiu   t1, t1, %lo(var_8096E4BC)  ## t1 = 8096E4BC
    sw      t8, 0x0004(t6)             ## FFFFFFF8
    sw      t9, 0x0008(t6)             ## FFFFFFFC
    lw      t3, 0x0000(t1)             ## 8096E4BC
    addiu   t0, $sp, 0x0070            ## t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             ## 8096E4C0
    sw      t3, 0x0000(t0)             ## FFFFFFE8
    lw      t3, 0x0008(t1)             ## 8096E4C4
    lui     t5, %hi(var_8096E4C8)      ## t5 = 80970000
    addiu   t5, t5, %lo(var_8096E4C8)  ## t5 = 8096E4C8
    sw      t2, 0x0004(t0)             ## FFFFFFEC
    sw      t3, 0x0008(t0)             ## FFFFFFF0
    lw      t7, 0x0000(t5)             ## 8096E4C8
    addiu   t4, $sp, 0x0064            ## t4 = FFFFFFDC
    lw      t6, 0x0004(t5)             ## 8096E4CC
    sw      t7, 0x0000(t4)             ## FFFFFFDC
    lw      t7, 0x0008(t5)             ## 8096E4D0
    sw      t6, 0x0004(t4)             ## FFFFFFE0
    addiu   t9, $sp, 0x004C            ## t9 = FFFFFFC4
    sw      t7, 0x0008(t4)             ## FFFFFFE4
    lw      t8, 0x008C($sp)            
    lw      a2, 0x1C44(t8)             ## 00001C44
    lw      t1, 0x0024(a2)             ## 00000024
    sw      t1, 0x0000(t9)             ## FFFFFFC4
    lw      t0, 0x0028(a2)             ## 00000028
    sw      t0, 0x0004(t9)             ## FFFFFFC8
    lw      t1, 0x002C(a2)             ## 0000002C
    sw      t1, 0x0008(t9)             ## FFFFFFCC
    lh      a0, 0x00B6(a2)             ## 000000B6
    jal     func_800636C4              ## sins?
    sw      a2, 0x0060($sp)            
    lui     $at, 0xC0A0                ## $at = C0A00000
    mtc1    $at, $f6                   ## $f6 = -5.00
    lwc1    $f4, 0x004C($sp)           
    lw      a2, 0x0060($sp)            
    mul.s   $f8, $f0, $f6              
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x004C($sp)          
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(a2)             ## 000000B6
    lui     $at, 0xC0A0                ## $at = C0A00000
    mtc1    $at, $f18                  ## $f18 = -5.00
    lwc1    $f16, 0x0054($sp)          
    lui     t2, 0x8012                 ## t2 = 80120000
    mul.s   $f6, $f0, $f18             
    lw      t2, -0x5A2C(t2)            ## 8011A5D4
    lw      a2, 0x0060($sp)            
    lwc1    $f8, 0x0050($sp)           
    lui     $at, 0x4260                ## $at = 42600000
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    addiu   a0, s0, 0x01C0             ## a0 = 000001C0
    add.s   $f4, $f16, $f6             
    lwc1    $f16, 0x0050($sp)          
    or      a1, $zero, $zero           ## a1 = 00000000
    beq     t2, $zero, lbl_8096D918    
    swc1    $f4, 0x0054($sp)           
    lui     $at, 0x4218                ## $at = 42180000
    mtc1    $at, $f10                  ## $f10 = 38.00
    nop
    add.s   $f18, $f8, $f10            
    beq     $zero, $zero, lbl_8096D928 
    swc1    $f18, 0x0050($sp)          
lbl_8096D918:
    mtc1    $at, $f6                   ## $f6 = 38.00
    nop
    add.s   $f4, $f16, $f6             
    swc1    $f4, 0x0050($sp)           
lbl_8096D928:
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f8                   ## $f8 = 100.00
    lwc1    $f10, 0x0090(s0)           ## 00000090
    addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
    c.le.s  $f10, $f8                  
    nop
    bc1fl   lbl_8096DC5C               
    lw      v0, 0x0670(a2)             ## 00000670
    sh      $zero, 0x01C2(s0)          ## 000001C2
    lh      v0, 0x01C2(s0)             ## 000001C2
    addiu   a1, s0, 0x01CC             ## a1 = 000001CC
    addiu   a0, $sp, 0x004C            ## a0 = FFFFFFC4
    sh      v0, 0x01C4(s0)             ## 000001C4
    sh      v0, 0x01C6(s0)             ## 000001C6
    sw      a2, 0x0060($sp)            
    jal     func_80063E18              
    sw      a1, 0x0030($sp)            
    lui     $at, 0x4140                ## $at = 41400000
    mtc1    $at, $f18                  ## $f18 = 12.00
    lw      a2, 0x0060($sp)            
    c.le.s  $f0, $f18                  
    nop
    bc1fl   lbl_8096DAB0               
    lh      t6, 0x0018(s0)             ## 00000018
    lbu     t3, 0x01BC(s0)             ## 000001BC
    lw      a0, 0x008C($sp)            
    lui     t9, 0x0001                 ## t9 = 00010000
    bne     t3, $zero, lbl_8096D9E4    
    addu    t9, t9, a0                 
    lw      t9, 0x1D4C(t9)             ## 00011D4C
    or      a1, a2, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    beq     v0, $zero, lbl_8096DA5C    
    or      a0, s0, $zero              ## a0 = 00000000
    lbu     t4, 0x01BC(s0)             ## 000001BC
    lw      v0, 0x0118(s0)             ## 00000118
    sh      $zero, 0x01BA(s0)          ## 000001BA
    addiu   t5, t4, 0x0001             ## t5 = 00000001
    beq     v0, $zero, lbl_8096D9D4    
    sb      t5, 0x01BC(s0)             ## 000001BC
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    sh      t6, 0x001C(v0)             ## 0000001C
lbl_8096D9D4:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3902          ## a1 = 00003902
    beq     $zero, $zero, lbl_8096DA60 
    addiu   a0, s0, 0x01D8             ## a0 = 000001D8
lbl_8096D9E4:
    lh      t7, 0x01BA(s0)             ## 000001BA
    addiu   t8, t7, 0x1194             ## t8 = 00001194
    sh      t8, 0x01BA(s0)             ## 000001BA
    lh      a0, 0x01BA(s0)             ## 000001BA
    jal     func_800636C4              ## sins?
    sw      a2, 0x0060($sp)            
    lui     $at, %hi(var_8096E4F0)     ## $at = 80970000
    lwc1    $f16, %lo(var_8096E4F0)($at) 
    lw      a2, 0x0060($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f6, $f0, $f16             
    trunc.w.s $f4, $f6                   
    mfc1    t1, $f4                    
    nop
    sh      t1, 0x01C2(s0)             ## 000001C2
    lw      t2, 0x0670(a2)             ## 00000670
    andi    t3, t2, 0x0080             ## t3 = 00000000
    bnel    t3, $zero, lbl_8096DA44    
    lh      t9, 0x01BA(s0)             ## 000001BA
    jal     func_8096DCC8              
    sb      $zero, 0x01BC(s0)          ## 000001BC
    beq     $zero, $zero, lbl_8096DCB8 
    lw      $ra, 0x0024($sp)           
    lh      t9, 0x01BA(s0)             ## 000001BA
lbl_8096DA44:
    or      a0, s0, $zero              ## a0 = 00000000
    slti    $at, t9, 0x9195            
    beql    $at, $zero, lbl_8096DA60   
    addiu   a0, s0, 0x01D8             ## a0 = 000001D8
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3902          ## a1 = 00003902
lbl_8096DA5C:
    addiu   a0, s0, 0x01D8             ## a0 = 000001D8
lbl_8096DA60:
    addiu   a1, $sp, 0x004C            ## a1 = FFFFFFC4
    addiu   a2, s0, 0x01C4             ## a2 = 000001C4
    jal     func_800285B0              
    or      a3, $zero, $zero           ## a3 = 00000000
    lh      t4, 0x01C6(s0)             ## 000001C6
    lh      t5, 0x00B6(s0)             ## 000000B6
    lh      t0, 0x01C4(s0)             ## 000001C4
    lh      t1, 0x00B4(s0)             ## 000000B4
    lh      t3, 0x01BE(s0)             ## 000001BE
    subu    t6, t4, t5                 
    lh      t7, 0x01C2(s0)             ## 000001C2
    lh      t4, 0x01C0(s0)             ## 000001C0
    subu    t2, t0, t1                 
    subu    t9, t2, t3                 
    subu    t8, t6, t7                 
    subu    t5, t9, t4                 
    sh      t8, 0x01C6(s0)             ## 000001C6
    beq     $zero, $zero, lbl_8096DAC8 
    sh      t5, 0x01C4(s0)             ## 000001C4
    lh      t6, 0x0018(s0)             ## 00000018
lbl_8096DAB0:
    or      a0, s0, $zero              ## a0 = 00000000
    beql    t6, $zero, lbl_8096DACC    
    addiu   a0, s0, 0x0024             ## a0 = 00000024
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3903          ## a1 = 00003903
    sh      $zero, 0x0018(s0)          ## 00000018
lbl_8096DAC8:
    addiu   a0, s0, 0x0024             ## a0 = 00000024
lbl_8096DACC:
    sw      a0, 0x002C($sp)            
    jal     func_80063F00              
    addiu   a1, $sp, 0x004C            ## a1 = FFFFFFC4
    mtc1    $zero, $f8                 ## $f8 = 0.00
    sh      v0, 0x00B6(s0)             ## 000000B6
    lw      a1, 0x004C($sp)            
    lw      a0, 0x0030($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4180                 ## a3 = 41800000
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    mtc1    $zero, $f10                ## $f10 = 0.00
    addiu   a0, s0, 0x01D0             ## a0 = 000001D0
    lw      a1, 0x0050($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4180                 ## a3 = 41800000
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    mtc1    $zero, $f18                ## $f18 = 0.00
    addiu   a0, s0, 0x01D4             ## a0 = 000001D4
    lw      a1, 0x0054($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4180                 ## a3 = 41800000
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    addiu   a0, s0, 0x01E4             ## a0 = 000001E4
    sw      a0, 0x0028($sp)            
    lw      a1, 0x0030($sp)            
    addiu   a2, $sp, 0x0044            ## a2 = FFFFFFBC
    jal     func_800285B0              
    or      a3, $zero, $zero           ## a3 = 00000000
    lwc1    $f12, 0x01CC(s0)           ## 000001CC
    lwc1    $f14, 0x01D0(s0)           ## 000001D0
    lw      a2, 0x01D4(s0)             ## 000001D4
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    lh      a0, 0x0044($sp)            
    lh      a1, 0x0046($sp)            
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    addiu   a0, $sp, 0x0064            ## a0 = FFFFFFDC
    jal     func_800AB958              
    lw      a1, 0x0028($sp)            
    lwc1    $f12, 0x0024(s0)           ## 00000024
    lwc1    $f14, 0x0028(s0)           ## 00000028
    lw      a2, 0x002C(s0)             ## 0000002C
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      a0, 0x002C($sp)            
    lw      a1, 0x0028($sp)            
    addiu   a2, $sp, 0x0044            ## a2 = FFFFFFBC
    jal     func_800285B0              
    or      a3, $zero, $zero           ## a3 = 00000000
    lh      a0, 0x0044($sp)            
    lh      a1, 0x0046($sp)            
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    addiu   a0, $sp, 0x0070            ## a0 = FFFFFFE8
    jal     func_800AB958              
    lw      a1, 0x0028($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80063F34              
    lw      a1, 0x0028($sp)            
    sh      v0, 0x01BE(s0)             ## 000001BE
    lw      a1, 0x0028($sp)            
    jal     func_80063F00              
    lw      a0, 0x002C($sp)            
    lh      t7, 0x00B6(s0)             ## 000000B6
    subu    v1, v0, t7                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    bltz    v1, lbl_8096DC00           
    subu    v0, $zero, v1              
    beq     $zero, $zero, lbl_8096DC00 
    or      v0, v1, $zero              ## v0 = 00000000
lbl_8096DC00:
    slti    $at, v0, 0x4000            
    bnel    $at, $zero, lbl_8096DC20   
    lw      a0, 0x0028($sp)            
    lh      t8, 0x01BE(s0)             ## 000001BE
    addiu   t0, $zero, 0x8000          ## t0 = FFFF8000
    subu    t1, t0, t8                 
    sh      t1, 0x01BE(s0)             ## 000001BE
    lw      a0, 0x0028($sp)            
lbl_8096DC20:
    jal     func_80063F34              
    lw      a1, 0x0030($sp)            
    lh      a0, 0x01BE(s0)             ## 000001BE
    subu    t2, v0, a0                 
    sh      t2, 0x01C0(s0)             ## 000001C0
    lh      v1, 0x01C0(s0)             ## 000001C0
    bgez    v1, lbl_8096DCB4           
    sll     t3, v1,  1                 
    subu    $at, $zero, v1             
    addu    t9, a0, t3                 
    sll     t4, $at,  1                
    sh      t9, 0x01BE(s0)             ## 000001BE
    beq     $zero, $zero, lbl_8096DCB4 
    sh      t4, 0x01C0(s0)             ## 000001C0
    lw      v0, 0x0670(a2)             ## 00000670
lbl_8096DC5C:
    andi    t5, v0, 0x0080             ## t5 = 00000000
    beql    t5, $zero, lbl_8096DC88    
    sh      t0, 0x0018(s0)             ## 00000018
    lw      t6, 0x0118(a2)             ## 00000118
    addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
    and     t7, v0, $at                
    bnel    s0, t6, lbl_8096DC88       
    sh      t0, 0x0018(s0)             ## 00000018
    sw      t7, 0x0670(a2)             ## 00000670
    sw      $zero, 0x0118(a2)          ## 00000118
    sh      t0, 0x0018(s0)             ## 00000018
lbl_8096DC88:
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a0, s0, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
lbl_8096DCB4:
    lw      $ra, 0x0024($sp)           
lbl_8096DCB8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0088           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096DCC8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   t6, $zero, 0x000F          ## t6 = 0000000F
    lui     a1, %hi(func_8096DCF4)     ## a1 = 80970000
    sh      t6, 0x01B8(a0)             ## 000001B8
    jal     func_8096D610              
    addiu   a1, a1, %lo(func_8096DCF4) ## a1 = 8096DCF4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096DCF4:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      v0, 0x1C44(a1)             ## 00001C44
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a0, s0, 0x01C0             ## a0 = 000001C0
    lw      v1, 0x0670(v0)             ## 00000670
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x07D0          ## a3 = 000007D0
    andi    t6, v1, 0x0080             ## t6 = 00000000
    beq     t6, $zero, lbl_8096DD44    
    nop
    lw      t7, 0x0118(v0)             ## 00000118
    addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
    and     t8, v1, $at                
    bne     s0, t7, lbl_8096DD44       
    nop
    sw      t8, 0x0670(v0)             ## 00000670
    sw      $zero, 0x0118(v0)          ## 00000118
lbl_8096DD44:
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01C2             ## a0 = 000001C2
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x0258          ## a3 = 00000258
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x07D0          ## a3 = 000007D0
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lh      t9, 0x01B8(s0)             ## 000001B8
    addiu   t0, t9, 0xFFFF             ## t0 = FFFFFFFF
    sh      t0, 0x01B8(s0)             ## 000001B8
    lh      t1, 0x01B8(s0)             ## 000001B8
    bnel    t1, $zero, lbl_8096DDA8    
    lw      $ra, 0x0024($sp)           
    jal     func_8096D764              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_8096DDA8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096DDB8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0118(a0)             ## 00000118
    addiu   t6, $zero, 0x0008          ## t6 = 00000008
    addiu   t7, $zero, 0x012C          ## t7 = 0000012C
    sb      t6, 0x01B0(a0)             ## 000001B0
    beq     v0, $zero, lbl_8096DE0C    
    sh      t7, 0x01B8(a0)             ## 000001B8
    lh      v1, 0x001C(v0)             ## 0000001C
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    addiu   a1, $zero, 0x39AA          ## a1 = 000039AA
    beq     v1, $at, lbl_8096DE00      
    nop
    jal     func_80022FD0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lw      v0, 0x0118(a0)             ## 00000118
    lh      v1, 0x001C(v0)             ## 0000001C
lbl_8096DE00:
    bgtz    v1, lbl_8096DE0C           
    addiu   t8, v1, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x001C(v0)             ## 0000001C
lbl_8096DE0C:
    lui     a1, %hi(func_8096DE28)     ## a1 = 80970000
    jal     func_8096D610              
    addiu   a1, a1, %lo(func_8096DE28) ## a1 = 8096DE28
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096DE28:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0054($sp)            
    lw      t6, 0x0054($sp)            
    addiu   a0, s0, 0x01C0             ## a0 = 000001C0
    or      a1, $zero, $zero           ## a1 = 00000000
    lw      v0, 0x1C44(t6)             ## 00001C44
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x07D0          ## a3 = 000007D0
    lw      v1, 0x0670(v0)             ## 00000670
    andi    t7, v1, 0x0080             ## t7 = 00000000
    beq     t7, $zero, lbl_8096DE80    
    nop
    lw      t8, 0x0118(v0)             ## 00000118
    addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
    and     t9, v1, $at                
    bne     s0, t8, lbl_8096DE80       
    nop
    sw      t9, 0x0670(v0)             ## 00000670
    sw      $zero, 0x0118(v0)          ## 00000118
lbl_8096DE80:
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    addiu   a0, s0, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   a3, $zero, 0x07D0          ## a3 = 000007D0
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    sh      v0, 0x004E($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             ## a0 = 0000013C
    lh      t0, 0x004E($sp)            
    bnel    t0, $zero, lbl_8096DFD0    
    lw      $ra, 0x002C($sp)           
    lw      t2, 0x0024(s0)             ## 00000024
    addiu   a1, $sp, 0x0040            ## a1 = FFFFFFF0
    lui     $at, 0x43FA                ## $at = 43FA0000
    sw      t2, 0x0000(a1)             ## FFFFFFF0
    lw      t1, 0x0028(s0)             ## 00000028
    sw      t1, 0x0004(a1)             ## FFFFFFF4
    lw      t2, 0x002C(s0)             ## 0000002C
    sw      t2, 0x0008(a1)             ## FFFFFFF8
    lh      v0, 0x01B8(s0)             ## 000001B8
    beql    v0, $zero, lbl_8096DF78    
    lwc1    $f10, 0x00BC(s0)           ## 000000BC
    lui     $at, %hi(var_8096E4F4)     ## $at = 80970000
    lwc1    $f4, %lo(var_8096E4F4)($at) 
    lwc1    $f0, 0x00BC(s0)            ## 000000BC
    lui     $at, 0x447A                ## $at = 447A0000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_8096DF44               
    lw      v1, 0x0118(s0)             ## 00000118
    mtc1    $at, $f6                   ## $f6 = 1000.00
    addiu   t3, $zero, 0x005A          ## t3 = 0000005A
    addiu   t4, $zero, 0x0014          ## t4 = 00000014
    sub.s   $f8, $f0, $f6              
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    lui     a2, 0x40E0                 ## a2 = 40E00000
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    swc1    $f8, 0x00BC(s0)            ## 000000BC
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    jal     func_80026308              
    lw      a0, 0x0054($sp)            
    beq     $zero, $zero, lbl_8096DFD0 
    lw      $ra, 0x002C($sp)           
    lw      v1, 0x0118(s0)             ## 00000118
lbl_8096DF44:
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x01B8(s0)             ## 000001B8
    beql    v1, $zero, lbl_8096DFD0    
    lw      $ra, 0x002C($sp)           
    lh      t7, 0x001C(v1)             ## 0000001C
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    bnel    t7, $at, lbl_8096DFD0      
    lw      $ra, 0x002C($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_8096DFD0 
    lw      $ra, 0x002C($sp)           
    lwc1    $f10, 0x00BC(s0)           ## 000000BC
lbl_8096DF78:
    mtc1    $at, $f16                  ## $f16 = 0.00
    addiu   t8, $zero, 0x005A          ## t8 = 0000005A
    addiu   t9, $zero, 0x0014          ## t9 = 00000014
    add.s   $f18, $f10, $f16           
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    lui     a2, 0x40E0                 ## a2 = 40E00000
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    swc1    $f18, 0x00BC(s0)           ## 000000BC
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    jal     func_80026308              
    lw      a0, 0x0054($sp)            
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lwc1    $f6, 0x00BC(s0)            ## 000000BC
    c.eq.s  $f4, $f6                   
    nop
    bc1fl   lbl_8096DFD0               
    lw      $ra, 0x002C($sp)           
    jal     func_8096D764              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_8096DFD0:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096DFE0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     t6, 0x01B0(s0)             ## 000001B0
    slti    $at, t6, 0x0008            
    beql    $at, $zero, lbl_8096E0A0   
    lw      v0, 0x0118(s0)             ## 00000118
    lbu     v0, 0x0201(s0)             ## 00000201
    andi    t7, v0, 0x0002             ## t7 = 00000000
    beql    t7, $zero, lbl_8096E0A0    
    lw      v0, 0x0118(s0)             ## 00000118
    lbu     v1, 0x00B1(s0)             ## 000000B1
    andi    t8, v0, 0xFFFD             ## t8 = 00000000
    sb      t8, 0x0201(s0)             ## 00000201
    beq     v1, $zero, lbl_8096E0C0    
    addiu   $at, $zero, 0x0006         ## $at = 00000006
    beq     v1, $at, lbl_8096E0C0      
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t9, $zero, 0x0008          ## t9 = 00000008
    sw      t9, 0x0010($sp)            
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    jal     func_80028390              
    or      a0, s0, $zero              ## a0 = 00000000
    bne     v0, $zero, lbl_8096E084    
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096DDB8              
    or      a0, s0, $zero              ## a0 = 00000000
    addiu   t0, $zero, 0x0008          ## t0 = 00000008
    sb      t0, 0x00AF(s0)             ## 000000AF
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    jal     func_80013A84              
    addiu   a3, $zero, 0x00E0          ## a3 = 000000E0
    beq     $zero, $zero, lbl_8096E0A0 
    lw      v0, 0x0118(s0)             ## 00000118
lbl_8096E084:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39A9          ## a1 = 000039A9
    addiu   t1, $zero, 0x0009          ## t1 = 00000009
    sb      t1, 0x01B0(s0)             ## 000001B0
    jal     func_8096DCC8              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      v0, 0x0118(s0)             ## 00000118
lbl_8096E0A0:
    beql    v0, $zero, lbl_8096E0C4    
    lw      $ra, 0x0024($sp)           
    lh      t2, 0x001C(v0)             ## 0000001C
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    bnel    t2, $at, lbl_8096E0C4      
    lw      $ra, 0x0024($sp)           
    jal     func_8096DDB8              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_8096E0C0:
    lw      $ra, 0x0024($sp)           
lbl_8096E0C4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096E0D4:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x0118(s0)             ## 00000118
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    bne     t6, $zero, lbl_8096E118    
    addiu   a2, $zero, 0x00A4          ## a2 = 000000A4
    lui     $at, %hi(var_8096E4F8)     ## $at = 80970000
    lwc1    $f4, %lo(var_8096E4F8)($at) 
    addiu   a3, $zero, 0x0005          ## a3 = 00000005
    jal     func_80028158              
    swc1    $f4, 0x0010($sp)           
    sw      v0, 0x0118(s0)             ## 00000118
lbl_8096E118:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_8096DFE0              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      t9, 0x01B4(s0)             ## 000001B4
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, s1, $at                
    addiu   a2, s0, 0x01F0             ## a2 = 000001F0
    sw      a2, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    jal     func_8004BF40              ## CollisionCheck_setAC
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x002C($sp)            
    lw      a2, 0x0028($sp)            
    jal     func_8004C130              ## CollisionCheck_setOT
    or      a0, s1, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_8096E17C:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     a1, $at, lbl_8096E1BC      
    lw      v0, 0x0014($sp)            
    lh      t6, 0x01BE(v0)             ## 000001BE
    lw      v1, 0x0010($sp)            
    addiu   t9, t6, 0x4000             ## t9 = 00004000
    subu    t0, $zero, t9              
    sh      t0, 0x0002(v1)             ## 00000002
    lh      t2, 0x01C2(v0)             ## 000001C2
    lh      t1, 0x0004(v1)             ## 00000004
    addu    t3, t1, t2                 
    beq     $zero, $zero, lbl_8096E210 
    sh      t3, 0x0004(v1)             ## 00000004
lbl_8096E1BC:
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    bne     a1, $at, lbl_8096E1E8      
    lw      v0, 0x0014($sp)            
    lw      v1, 0x0010($sp)            
    lh      t4, 0x01C0(v0)             ## 000001C0
    lh      t5, 0x0002(v1)             ## 00000002
    sh      t4, 0x0004(v1)             ## 00000004
    lh      t6, 0x01C2(v0)             ## 000001C2
    subu    t7, t5, t6                 
    beq     $zero, $zero, lbl_8096E210 
    sh      t7, 0x0002(v1)             ## 00000002
lbl_8096E1E8:
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    bne     a1, $at, lbl_8096E210      
    lw      v0, 0x0014($sp)            
    lh      t8, 0x01C6(v0)             ## 000001C6
    lw      v1, 0x0010($sp)            
    subu    t9, $zero, t8              
    sh      t9, 0x0002(v1)             ## 00000002
    lh      t0, 0x01C4(v0)             ## 000001C4
    subu    t1, $zero, t0              
    sh      t1, 0x0004(v1)             ## 00000004
lbl_8096E210:
    or      v0, $zero, $zero           ## v0 = 00000000
    jr      $ra                        
    nop


func_8096E21C:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0048($sp)            
    sw      a2, 0x0050($sp)            
    sw      a3, 0x0054($sp)            
    lui     t7, %hi(var_8096E4D4)      ## t7 = 80970000
    addiu   t7, t7, %lo(var_8096E4D4)  ## t7 = 8096E4D4
    lw      t9, 0x0000(t7)             ## 8096E4D4
    addiu   t6, $sp, 0x003C            ## t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             ## 8096E4D8
    sw      t9, 0x0000(t6)             ## FFFFFFF4
    lw      t9, 0x0008(t7)             ## 8096E4DC
    lui     t1, %hi(var_8096E4E0)      ## t1 = 80970000
    addiu   t1, t1, %lo(var_8096E4E0)  ## t1 = 8096E4E0
    sw      t8, 0x0004(t6)             ## FFFFFFF8
    sw      t9, 0x0008(t6)             ## FFFFFFFC
    lw      t3, 0x0000(t1)             ## 8096E4E0
    addiu   t0, $sp, 0x0030            ## t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             ## 8096E4E4
    sw      t3, 0x0000(t0)             ## FFFFFFE8
    lw      t3, 0x0008(t1)             ## 8096E4E8
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    sw      t2, 0x0004(t0)             ## FFFFFFEC
    beq     a1, $at, lbl_8096E2A4      
    sw      t3, 0x0008(t0)             ## FFFFFFF0
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     a1, $at, lbl_8096E2CC      
    lw      s0, 0x0058($sp)            
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    beq     a1, $at, lbl_8096E2FC      
    lw      s0, 0x0058($sp)            
    beq     $zero, $zero, lbl_8096E324 
    lw      $ra, 0x001C($sp)           
lbl_8096E2A4:
    lw      s0, 0x0058($sp)            
    addiu   a0, $zero, 0x0002          ## a0 = 00000002
    addiu   a1, s0, 0x01F0             ## a1 = 000001F0
    jal     func_80050CE4              
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_80050CE4              
    addiu   a0, $zero, 0x0003          ## a0 = 00000003
    beq     $zero, $zero, lbl_8096E324 
    lw      $ra, 0x001C($sp)           
lbl_8096E2CC:
    addiu   a1, s0, 0x01F0             ## a1 = 000001F0
    sw      a1, 0x0024($sp)            
    jal     func_80050CE4              
    addiu   a0, $zero, 0x0004          ## a0 = 00000004
    lw      a1, 0x0024($sp)            
    jal     func_80050CE4              
    addiu   a0, $zero, 0x0005          ## a0 = 00000005
    addiu   a0, $sp, 0x0030            ## a0 = FFFFFFE8
    jal     func_800AB958              
    addiu   a1, s0, 0x01E4             ## a1 = 000001E4
    beq     $zero, $zero, lbl_8096E324 
    lw      $ra, 0x001C($sp)           
lbl_8096E2FC:
    addiu   a0, $zero, 0x0001          ## a0 = 00000001
    jal     func_80050CE4              
    addiu   a1, s0, 0x01F0             ## a1 = 000001F0
    addiu   a0, $sp, 0x003C            ## a0 = FFFFFFF4
    jal     func_800AB958              
    addiu   a1, s0, 0x01CC             ## a1 = 000001CC
    addiu   a0, $sp, 0x0030            ## a0 = FFFFFFE8
    jal     func_800AB958              
    addiu   a1, s0, 0x01D8             ## a1 = 000001D8
    lw      $ra, 0x001C($sp)           
lbl_8096E324:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_8096E334:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             ## 00000000
    lw      v0, 0x0028($sp)            
    lui     t7, %hi(func_8096E17C)     ## t7 = 80970000
    lui     t8, %hi(func_8096E21C)     ## t8 = 80970000
    lw      a1, 0x0140(v0)             ## 00000140
    lw      a2, 0x015C(v0)             ## 0000015C
    lbu     a3, 0x013E(v0)             ## 0000013E
    addiu   t8, t8, %lo(func_8096E21C) ## t8 = 8096E21C
    addiu   t7, t7, %lo(func_8096E17C) ## t7 = 8096E17C
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80089D8C              
    sw      v0, 0x0018($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_8096E3A0: .word 0x00A50500, 0x00000015, 0x00A60000, 0x00000350
.word func_8096D61C
.word func_8096D738
.word func_8096E0D4
.word func_8096E334
var_8096E3C0: .word \
0x00F20000, 0x00000000, 0xF2F2F400, 0x00000000, \
0x00000000, 0x0000F2F4, 0xF2F4F8F4, 0x0000F400
var_8096E3E0: .word \
0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00010000, 0x01000000, 0x00000000, \
0x000C0064, 0x00000000, 0x00000000, 0x00000000, \
0xFFCFFFFF, 0x00000000, 0x00010100, 0x02000C80, \
0x00000000, 0x000A0064, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x030004B0, 0x00000000, 0x000A0064, 0x00000000, \
0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, \
0x00010000, 0x04000A8C, 0x00000000, 0x000A0064, \
0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00010100, 0x050004B0, 0x00000000, \
0x000A0064
var_8096E494: .word 0x06000919, 0x10000000, 0x00000005
.word var_8096E3E0
var_8096E4A4: .word 0x8917002E, 0xB04C07D0, 0x4850000A
var_8096E4B0: .word 0x00000000, 0x00000000, 0x00000000
var_8096E4BC: .word 0x00000000, 0x00000000, 0x425C0000
var_8096E4C8: .word 0x00000000, 0x00000000, 0xC2580000
var_8096E4D4: .word 0x44898000, 0x00000000, 0x00000000
var_8096E4E0: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_8096E4F0: .word 0x44E38000
var_8096E4F4: .word 0xC63B8000
var_8096E4F8: .word 0x461C4000, 0x00000000

