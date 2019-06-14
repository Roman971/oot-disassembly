#include <mips.h>
.set noreorder
.set noat

.section .text
func_808FB480:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a1, %hi(var_808FEBA0)      ## a1 = 80900000
    addiu   a1, a1, %lo(var_808FEBA0)  ## a1 = 808FEBA0
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41B0                 ## a3 = 41B00000
    lui     a2, 0x0600                 ## a2 = 06000000
    lui     a3, 0x0600                 ## a3 = 06000000
    addiu   t6, s0, 0x01C0             ## t6 = 000001C0
    addiu   t7, s0, 0x01F0             ## t7 = 000001F0
    addiu   t8, $zero, 0x0008          ## t8 = 00000008
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, 0x02B8             ## a3 = 060002B8
    addiu   a2, a2, 0x2A40             ## a2 = 06002A40
    lw      a0, 0x0044($sp)            
    jal     func_8008C684              
    addiu   a1, s0, 0x016C             ## a1 = 0000016C
    addiu   a1, s0, 0x0228             ## a1 = 00000228
    sw      a1, 0x0030($sp)            
    jal     func_8004A484              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_808FEB48)      ## a3 = 80900000
    addiu   t9, s0, 0x0248             ## t9 = 00000248
    addiu   a3, a3, %lo(var_808FEB48)  ## a3 = 808FEB48
    lw      a1, 0x0030($sp)            
    sw      t9, 0x0010($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              ## a2 = 00000000
    lh      t0, 0x001C(s0)             ## 0000001C
    lui     a3, %hi(var_808FEB48)      ## a3 = 80900000
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     t0, $at, lbl_808FB604      
    addiu   a3, a3, %lo(var_808FEB48)  ## a3 = 808FEB48
    lui     $at, 0x4020                ## $at = 40200000
    mtc1    $at, $f4                   ## $f4 = 2.50
    lui     a2, %hi(var_808FEB58)      ## a2 = 80900000
    or      a0, $zero, $zero           ## a0 = 00000000
    swc1    $f4, 0x0220(s0)            ## 00000220
    lw      t1, 0x0008(a3)             ## 808FEB50
    lui     a1, %hi(var_808FEA4C)      ## a1 = 80900000
    lui     t9, 0x8012                 ## t9 = 80120000
    blez    t1, lbl_808FB5C4           
    addiu   a2, a2, %lo(var_808FEB58)  ## a2 = 808FEB58
    lui     $at, 0x4020                ## $at = 40200000
    mtc1    $at, $f0                   ## $f0 = 2.50
    addiu   a1, a1, %lo(var_808FEA4C)  ## a1 = 808FEA4C
    or      v0, $zero, $zero           ## v0 = 00000000
    lh      t2, 0x0020(a1)             ## 808FEA6C
lbl_808FB570:
    lw      t4, 0x0244(s0)             ## 00000244
    addiu   a0, a0, 0x0001             ## a0 = 00000001
    mtc1    t2, $f6                    ## $f6 = 0.00
    addu    t5, t4, v0                 
    addiu   a1, a1, 0x0024             ## a1 = 808FEA70
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f8, $f0             
    trunc.w.s $f16, $f10                 
    mfc1    v1, $f16                   
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    sh      v1, 0x002E(t5)             ## 0000002E
    lw      t6, 0x0244(s0)             ## 00000244
    addu    t7, t6, v0                 
    sh      v1, 0x0036(t7)             ## 00000036
    lw      t8, 0x0008(a3)             ## 808FEB50
    addiu   v0, v0, 0x0040             ## v0 = 00000040
    slt     $at, a0, t8                
    bnel    $at, $zero, lbl_808FB570   
    lh      t2, 0x0020(a1)             ## 808FEA90
lbl_808FB5C4:
    lw      t9, -0x5A2C(t9)            ## 8011A5D4
    addiu   t0, $zero, 0x0004          ## t0 = 00000004
    addiu   a0, s0, 0x0098             ## a0 = 00000098
    beq     t9, $zero, lbl_808FB5E0    
    lui     a1, %hi(var_808FEB80)      ## a1 = 80900000
    lui     $at, %hi(var_808FEB9B)     ## $at = 80900000
    sb      t0, %lo(var_808FEB9B)($at) 
lbl_808FB5E0:
    jal     func_80050344              
    addiu   a1, a1, %lo(var_808FEB80)  ## a1 = 808FEB80
    addiu   t1, $zero, 0x0004          ## t1 = 00000004
    addiu   t2, $zero, 0x0008          ## t2 = 00000008
    addiu   t3, $zero, 0x0002          ## t3 = 00000002
    sb      t1, 0x00AF(s0)             ## 000000AF
    sb      t2, 0x0117(s0)             ## 00000117
    beq     $zero, $zero, lbl_808FB688 
    sb      t3, 0x001F(s0)             ## 0000001F
lbl_808FB604:
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f18                  ## $f18 = 1.00
    lui     a1, %hi(var_808FEB60)      ## a1 = 80900000
    or      a0, $zero, $zero           ## a0 = 00000000
    swc1    $f18, 0x0220(s0)           ## 00000220
    lw      t4, 0x0008(a3)             ## 00000008
    lui     t8, 0x8012                 ## t8 = 80120000
    addiu   a1, a1, %lo(var_808FEB60)  ## a1 = 808FEB60
    blez    t4, lbl_808FB658           
    lui     a2, %hi(var_808FEB58)      ## a2 = 80900000
    or      v0, $zero, $zero           ## v0 = 00000000
    lw      t5, 0x0244(s0)             ## 00000244
lbl_808FB634:
    addiu   a0, a0, 0x0001             ## a0 = 00000001
    addu    v1, t5, v0                 
    lh      t6, 0x002E(v1)             ## 0000002E
    addiu   v0, v0, 0x0040             ## v0 = 00000040
    sh      t6, 0x0036(v1)             ## 00000036
    lw      t7, 0x0008(a3)             ## 00000008
    slt     $at, a0, t7                
    bnel    $at, $zero, lbl_808FB634   
    lw      t5, 0x0244(s0)             ## 00000244
lbl_808FB658:
    lw      t8, -0x5A2C(t8)            ## 8011A5D4
    addiu   t9, $zero, 0x0004          ## t9 = 00000004
    lui     $at, %hi(var_808FEB7B)     ## $at = 80900000
    beq     t8, $zero, lbl_808FB670    
    addiu   a0, s0, 0x0098             ## a0 = 00000098
    sb      t9, %lo(var_808FEB7B)($at) 
lbl_808FB670:
    jal     func_80050344              
    addiu   a2, a2, %lo(var_808FEB58)  ## a2 = 808FEB58
    addiu   t0, $zero, 0x0007          ## t0 = 00000007
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    sb      t0, 0x0117(s0)             ## 00000117
    sb      t1, 0x001F(s0)             ## 0000001F
lbl_808FB688:
    jal     func_808FB778              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      t3, 0x0008(s0)             ## 00000008
    lw      t2, 0x000C(s0)             ## 0000000C
    sh      $zero, 0x01B6(s0)          ## 000001B6
    sw      t3, 0x0160(s0)             ## 00000160
    lw      t3, 0x0010(s0)             ## 00000010
    sw      $zero, 0x0224(s0)          ## 00000224
    sw      t2, 0x0164(s0)             ## 00000164
    sw      t3, 0x0168(s0)             ## 00000168
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FB6C4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_8004A550              
    addiu   a1, a2, 0x0228             ## a1 = 00000228
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FB6F0:
    lw      v1, 0x0244(a0)             ## 00000244
    addiu   v0, $zero, 0x0003          ## v0 = 00000003
    lbu     t6, 0x0056(v1)             ## 00000056
    addiu   v1, v1, 0x0040             ## v1 = 00000040
    andi    t7, t6, 0xFFFE             ## t7 = 00000000
    sb      t7, 0x0016(v1)             ## 00000056
    lw      v1, 0x0244(a0)             ## 00000244
    lbu     t8, 0x0096(v1)             ## 000000D6
    addiu   v1, v1, 0x0040             ## v1 = 00000080
    andi    t9, t8, 0xFFFE             ## t9 = 00000000
    sb      t9, 0x0056(v1)             ## 000000D6
    lw      t0, 0x0244(a0)             ## 00000244
    sll     v1, v0,  6                 
    addu    a1, t0, v1                 
    lbu     t1, 0x0016(a1)             ## 00000016
    andi    t2, t1, 0xFFFE             ## t2 = 00000000
    sb      t2, 0x0016(a1)             ## 00000016
    lw      t3, 0x0244(a0)             ## 00000244
    addu    a1, t3, v1                 
    lbu     t4, 0x0056(a1)             ## 00000056
    andi    t5, t4, 0xFFFE             ## t5 = 00000000
    sb      t5, 0x0056(a1)             ## 00000056
    lw      t6, 0x0244(a0)             ## 00000244
    addu    a1, t6, v1                 
    lbu     t7, 0x0096(a1)             ## 00000096
    andi    t8, t7, 0xFFFE             ## t8 = 00000000
    sb      t8, 0x0096(a1)             ## 00000096
    lw      t9, 0x0244(a0)             ## 00000244
    addu    a1, t9, v1                 
    lbu     t0, 0x00D6(a1)             ## 000000D6
    andi    t1, t0, 0xFFFE             ## t1 = 00000000
    sb      t1, 0x00D6(a1)             ## 000000D6
    jr      $ra                        
    nop


func_808FB778:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x4160                ## $at = 41600000
    mtc1    $at, $f10                  ## $f10 = 14.00
    lwc1    $f0, 0x0220(a0)            ## 00000220
    lwc1    $f8, 0x000C(a0)            ## 0000000C
    addiu   t6, $zero, 0xC000          ## t6 = FFFFC000
    mul.s   $f16, $f10, $f0            
    sh      t6, 0x00B4(a0)             ## 000000B4
    lh      v0, 0x00B4(a0)             ## 000000B4
    lwc1    $f4, 0x0008(a0)            ## 00000008
    lwc1    $f6, 0x0010(a0)            ## 00000010
    lui     $at, %hi(var_808FEBC0)     ## $at = 80900000
    sh      v0, 0x01BE(a0)             ## 000001BE
    add.s   $f18, $f8, $f16            
    sh      v0, 0x01BC(a0)             ## 000001BC
    sh      v0, 0x01BA(a0)             ## 000001BA
    swc1    $f4, 0x0024(a0)            ## 00000024
    swc1    $f18, 0x0028(a0)           ## 00000028
    swc1    $f6, 0x002C(a0)            ## 0000002C
    lwc1    $f4, %lo(var_808FEBC0)($at) 
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f10                  ## $f10 = 0.50
    mul.s   $f6, $f0, $f4              
    sw      a0, 0x0018($sp)            
    mul.s   $f8, $f6, $f10             
    mfc1    a1, $f8                    
    jal     func_80020F88              
    nop
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x000C          ## t7 = 0000000C
    addiu   t0, $zero, 0x002D          ## t0 = 0000002D
    lwc1    $f16, 0x0024(a0)           ## 00000024
    lbu     t8, 0x0239(a0)             ## 00000239
    lw      v0, 0x0244(a0)             ## 00000244
    trunc.w.s $f18, $f16                 
    ori     t9, t8, 0x0004             ## t9 = 00000004
    sb      t7, 0x023C(a0)             ## 0000023C
    sb      t9, 0x0239(a0)             ## 00000239
    mfc1    t2, $f18                   
    sh      t0, 0x01B6(a0)             ## 000001B6
    addiu   v0, v0, 0x0040             ## v0 = 00000040
    sh      t2, 0x0030(v0)             ## 00000070
    lwc1    $f4, 0x0028(a0)            ## 00000028
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    sll     v1, a1,  6                 
    trunc.w.s $f6, $f4                   
    mfc1    t6, $f6                    
    nop
    addiu   t7, t6, 0xFFF9             ## t7 = FFFFFFF9
    sh      t7, 0x0032(v0)             ## 00000072
    lwc1    $f10, 0x002C(a0)           ## 0000002C
    trunc.w.s $f8, $f10                  
    mfc1    t9, $f8                    
    nop
    sh      t9, 0x0034(v0)             ## 00000074
    lwc1    $f16, 0x0024(a0)           ## 00000024
    lw      v0, 0x0244(a0)             ## 00000244
    trunc.w.s $f18, $f16                 
    addiu   v0, v0, 0x0080             ## v0 = 000000C0
    mfc1    t1, $f18                   
    nop
    sh      t1, 0x0030(v0)             ## 000000F0
    lwc1    $f4, 0x0028(a0)            ## 00000028
    trunc.w.s $f6, $f4                   
    mfc1    t5, $f6                    
    nop
    addiu   t6, t5, 0xFFF9             ## t6 = FFFFFFF9
    sh      t6, 0x0032(v0)             ## 000000F2
    lwc1    $f10, 0x002C(a0)           ## 0000002C
    trunc.w.s $f8, $f10                  
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x0034(v0)             ## 000000F4
    lwc1    $f16, 0x0024(a0)           ## 00000024
    lw      t9, 0x0244(a0)             ## 00000244
    trunc.w.s $f18, $f16                 
    addu    v0, t9, v1                 
    mfc1    t1, $f18                   
    nop
    sh      t1, 0x0030(v0)             ## 000000F0
    lwc1    $f4, 0x0028(a0)            ## 00000028
    trunc.w.s $f6, $f4                   
    mfc1    t5, $f6                    
    nop
    addiu   t6, t5, 0xFFF9             ## t6 = FFFFFFF9
    sh      t6, 0x0032(v0)             ## 000000F2
    lwc1    $f10, 0x002C(a0)           ## 0000002C
    trunc.w.s $f8, $f10                  
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x0034(v0)             ## 000000F4
    lwc1    $f16, 0x0024(a0)           ## 00000024
    lw      t9, 0x0244(a0)             ## 00000244
    trunc.w.s $f18, $f16                 
    addu    v0, t9, v1                 
    addiu   v0, v0, 0x0040             ## v0 = 00000100
    mfc1    t1, $f18                   
    nop
    sh      t1, 0x0030(v0)             ## 00000130
    lwc1    $f4, 0x0028(a0)            ## 00000028
    trunc.w.s $f6, $f4                   
    mfc1    t5, $f6                    
    nop
    addiu   t6, t5, 0xFFF9             ## t6 = FFFFFFF9
    sh      t6, 0x0032(v0)             ## 00000132
    lwc1    $f10, 0x002C(a0)           ## 0000002C
    trunc.w.s $f8, $f10                  
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x0034(v0)             ## 00000134
    lwc1    $f16, 0x0024(a0)           ## 00000024
    lw      t9, 0x0244(a0)             ## 00000244
    trunc.w.s $f18, $f16                 
    addu    v0, t9, v1                 
    addiu   v0, v0, 0x0080             ## v0 = 00000180
    mfc1    t1, $f18                   
    nop
    sh      t1, 0x0030(v0)             ## 000001B0
    lwc1    $f4, 0x0028(a0)            ## 00000028
    trunc.w.s $f6, $f4                   
    mfc1    t5, $f6                    
    nop
    addiu   t6, t5, 0xFFF9             ## t6 = FFFFFFF9
    sh      t6, 0x0032(v0)             ## 000001B2
    lwc1    $f10, 0x002C(a0)           ## 0000002C
    trunc.w.s $f8, $f10                  
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x0034(v0)             ## 000001B4
    lwc1    $f16, 0x0024(a0)           ## 00000024
    lw      t9, 0x0244(a0)             ## 00000244
    trunc.w.s $f18, $f16                 
    addu    v0, t9, v1                 
    lui     t9, %hi(func_808FC1B0)     ## t9 = 80900000
    addiu   t9, t9, %lo(func_808FC1B0) ## t9 = 808FC1B0
    mfc1    t1, $f18                   
    addiu   v0, v0, 0x00C0             ## v0 = 00000240
    sh      t1, 0x0030(v0)             ## 00000270
    lwc1    $f4, 0x0028(a0)            ## 00000028
    trunc.w.s $f6, $f4                   
    mfc1    t5, $f6                    
    nop
    addiu   t6, t5, 0xFFF9             ## t6 = FFFFFFF9
    sh      t6, 0x0032(v0)             ## 00000272
    lwc1    $f10, 0x002C(a0)           ## 0000002C
    trunc.w.s $f8, $f10                  
    mfc1    t8, $f8                    
    nop
    sh      t8, 0x0034(v0)             ## 00000274
    sw      t9, 0x01B0(a0)             ## 000001B0
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_808FB9E0:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x02B8             ## a0 = 060002B8
    lui     a0, 0x0600                 ## a0 = 06000000
    addiu   a0, a0, 0x02B8             ## a0 = 060002B8
    jal     func_8008A194              
    sh      v0, 0x0030($sp)            
    lh      t6, 0x0030($sp)            
    lui     $at, %hi(var_808FEBC4)     ## $at = 80900000
    lwc1    $f8, %lo(var_808FEBC4)($at) 
    mtc1    t6, $f4                    ## $f4 = 0.00
    mtc1    v0, $f16                   ## $f16 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t7, $zero, 0x0002          ## t7 = 00000002
    mfc1    a3, $f0                    
    sw      t7, 0x0014($sp)            
    cvt.s.w $f18, $f16                 
    mul.s   $f10, $f6, $f8             
    addiu   a1, a1, 0x02B8             ## a1 = 060002B8
    addiu   a0, s0, 0x016C             ## a0 = 0000016C
    swc1    $f0, 0x0018($sp)           
    swc1    $f18, 0x0010($sp)          
    mfc1    a2, $f10                   
    jal     func_8008D17C              
    nop
    lw      v0, 0x0244(s0)             ## 00000244
    addiu   t8, $zero, 0x000F          ## t8 = 0000000F
    sh      t8, 0x01B6(s0)             ## 000001B6
    lbu     t9, 0x0097(v0)             ## 00000097
    addiu   a0, $zero, 0x0003          ## a0 = 00000003
    sll     v1, a0,  6                 
    ori     t0, t9, 0x0001             ## t0 = 00000001
    sb      t0, 0x0097(v0)             ## 00000097
    lw      t1, 0x0244(s0)             ## 00000244
    addiu   v0, v0, 0x0080             ## v0 = 00000080
    or      a0, s0, $zero              ## a0 = 00000000
    addu    v0, t1, v1                 
    lbu     t2, 0x0017(v0)             ## 00000097
    addiu   a1, $zero, 0x39E2          ## a1 = 000039E2
    ori     t3, t2, 0x0001             ## t3 = 00000001
    sb      t3, 0x0017(v0)             ## 00000097
    lw      t4, 0x0244(s0)             ## 00000244
    addiu   t3, $zero, 0x0006          ## t3 = 00000006
    addu    v0, t4, v1                 
    lbu     t5, 0x0057(v0)             ## 000000D7
    ori     t6, t5, 0x0001             ## t6 = 00000001
    sb      t6, 0x0057(v0)             ## 000000D7
    lw      t7, 0x0244(s0)             ## 00000244
    addu    v0, t7, v1                 
    lbu     t8, 0x0097(v0)             ## 00000117
    ori     t9, t8, 0x0001             ## t9 = 0000000F
    sb      t9, 0x0097(v0)             ## 00000117
    lw      t0, 0x0244(s0)             ## 00000244
    addu    v0, t0, v1                 
    lbu     t1, 0x00D7(v0)             ## 00000157
    ori     t2, t1, 0x0001             ## t2 = 00000001
    sb      t2, 0x00D7(v0)             ## 00000157
    lbu     t4, 0x0239(s0)             ## 00000239
    sb      t3, 0x023C(s0)             ## 0000023C
    andi    t5, t4, 0xFFFB             ## t5 = 00000000
    jal     func_80022FD0              
    sb      t5, 0x0239(s0)             ## 00000239
    lui     t6, %hi(func_808FC25C)     ## t6 = 80900000
    addiu   t6, t6, %lo(func_808FC25C) ## t6 = 808FC25C
    sw      t6, 0x01B0(s0)             ## 000001B0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FBB10:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x02B8             ## a0 = 060002B8
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC040                ## $at = C0400000
    mtc1    $at, $f8                   ## $f8 = -3.00
    cvt.s.w $f4, $f4                   
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x02B8             ## a1 = 060002B8
    mfc1    a3, $f4                    
    addiu   a0, s0, 0x016C             ## a0 = 0000016C
    lui     a2, 0xBFC0                 ## a2 = BFC00000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0010($sp)           
    lw      v0, 0x0244(s0)             ## 00000244
    addiu   t7, $zero, 0x000F          ## t7 = 0000000F
    sh      t7, 0x01B6(s0)             ## 000001B6
    lbu     t8, 0x0097(v0)             ## 00000097
    addiu   a1, $zero, 0x0003          ## a1 = 00000003
    sll     v1, a1,  6                 
    andi    t9, t8, 0xFFFE             ## t9 = 00000000
    sb      t9, 0x0097(v0)             ## 00000097
    lw      t0, 0x0244(s0)             ## 00000244
    addiu   v0, v0, 0x0080             ## v0 = 00000080
    addu    v0, t0, v1                 
    lbu     t1, 0x0017(v0)             ## 00000097
    andi    t2, t1, 0xFFFE             ## t2 = 00000000
    sb      t2, 0x0017(v0)             ## 00000097
    lw      t3, 0x0244(s0)             ## 00000244
    lui     t2, %hi(func_808FC6C4)     ## t2 = 80900000
    addiu   t2, t2, %lo(func_808FC6C4) ## t2 = 808FC6C4
    addu    v0, t3, v1                 
    lbu     t4, 0x0057(v0)             ## 000000D7
    andi    t5, t4, 0xFFFE             ## t5 = 00000000
    sb      t5, 0x0057(v0)             ## 000000D7
    lw      t6, 0x0244(s0)             ## 00000244
    addu    v0, t6, v1                 
    lbu     t7, 0x0097(v0)             ## 00000117
    andi    t8, t7, 0xFFFE             ## t8 = 0000000E
    sb      t8, 0x0097(v0)             ## 00000117
    lw      t9, 0x0244(s0)             ## 00000244
    addu    v0, t9, v1                 
    lbu     t0, 0x00D7(v0)             ## 00000157
    andi    t1, t0, 0xFFFE             ## t1 = 00000000
    sb      t1, 0x00D7(v0)             ## 00000157
    sw      t2, 0x01B0(s0)             ## 000001B0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_808FBBF8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x02B8             ## a0 = 060002B8
    lw      v1, 0x0018($sp)            
    sll     t6, v0,  1                 
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x02B8             ## a1 = 060002B8
    lui     a2, 0xC040                 ## a2 = C0400000
    sh      t6, 0x01B6(v1)             ## 000001B6
    jal     func_8008D328              
    addiu   a0, v1, 0x016C             ## a0 = 0000016C
    lw      t8, 0x0018($sp)            
    lui     t7, %hi(func_808FCB90)     ## t7 = 80900000
    addiu   t7, t7, %lo(func_808FCB90) ## t7 = 808FCB90
    sw      t7, 0x01B0(t8)             ## 000001B0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FBC50:
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lui     t7, %hi(func_808FD048)     ## t7 = 80900000
    addiu   t6, $zero, 0x0008          ## t6 = 00000008
    addiu   t7, t7, %lo(func_808FD048) ## t7 = 808FD048
    sh      t6, 0x01B6(a0)             ## 000001B6
    sw      t7, 0x01B0(a0)             ## 000001B0
    swc1    $f4, 0x0188(a0)            ## 00000188
    jr      $ra                        
    nop


func_808FBC74:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0208             ## a1 = 06000208
    addiu   a0, a2, 0x016C             ## a0 = 0000016C
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_808FCDC0)     ## t6 = 80900000
    addiu   t6, t6, %lo(func_808FCDC0) ## t6 = 808FCDC0
    sh      $zero, 0x01B6(a2)          ## 000001B6
    sw      t6, 0x01B0(a2)             ## 000001B0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FBCB8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0208             ## a0 = 06000208
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC040                ## $at = C0400000
    mtc1    $at, $f8                   ## $f8 = -3.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x0208             ## a1 = 06000208
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4170                 ## a3 = 41700000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x016C             ## a0 = 0000016C
    lw      v0, 0x0028($sp)            
    lui     t7, %hi(func_808FD114)     ## t7 = 80900000
    addiu   t7, t7, %lo(func_808FD114) ## t7 = 808FD114
    sh      $zero, 0x01B6(v0)          ## 000001B6
    sw      t7, 0x01B0(v0)             ## 000001B0
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FBD30:
    lbu     t7, 0x0239(a0)             ## 00000239
    lui     $at, 0xBF80                ## $at = BF800000
    mtc1    $at, $f4                   ## $f4 = -1.00
    lui     t9, %hi(func_808FD4A0)     ## t9 = 80900000
    addiu   t6, $zero, 0x0009          ## t6 = 00000009
    addiu   t9, t9, %lo(func_808FD4A0) ## t9 = 808FD4A0
    ori     t8, t7, 0x0001             ## t8 = 00000001
    sh      t6, 0x01B6(a0)             ## 000001B6
    sb      t8, 0x0239(a0)             ## 00000239
    sw      t9, 0x01B0(a0)             ## 000001B0
    swc1    $f4, 0x0188(a0)            ## 00000188
    jr      $ra                        
    nop


func_808FBD64:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0208             ## a1 = 06000208
    addiu   a0, s0, 0x016C             ## a0 = 0000016C
    jal     func_8008D21C              
    lui     a2, 0xC0A0                 ## a2 = C0A00000
    lbu     t7, 0x0239(s0)             ## 00000239
    lw      t6, 0x002C($sp)            
    lui     $at, %hi(var_808FEBC8)     ## $at = 80900000
    andi    t8, t7, 0xFFFE             ## t8 = 00000000
    sb      t8, 0x0239(s0)             ## 00000239
    sh      t6, 0x01B6(s0)             ## 000001B6
    lwc1    $f6, %lo(var_808FEBC8)($at) 
    lwc1    $f4, 0x0220(s0)            ## 00000220
    or      a0, s0, $zero              ## a0 = 00000000
    mul.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_80020F88              
    nop
    lw      t9, 0x002C($sp)            
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    or      a0, s0, $zero              ## a0 = 00000000
    bne     t9, $at, lbl_808FBDF8      
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   t0, $zero, 0x003E          ## t0 = 0000003E
    sw      t0, 0x0010($sp)            
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, $zero, $zero           ## a1 = 00000000
    addiu   a2, $zero, 0x009B          ## a2 = 0000009B
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    beq     $zero, $zero, lbl_808FBE0C 
    nop
lbl_808FBDF8:
    addiu   t1, $zero, 0x002A          ## t1 = 0000002A
    sw      t1, 0x0010($sp)            
    addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
lbl_808FBE0C:
    lui     t2, %hi(func_808FD598)     ## t2 = 80900000
    addiu   t2, t2, %lo(func_808FD598) ## t2 = 808FD598
    sw      t2, 0x01B0(s0)             ## 000001B0
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FBE2C:
    mtc1    $zero, $f4                 ## $f4 = 0.00
    sh      $zero, 0x01B6(a0)          ## 000001B6
    lui     $at, %hi(var_808FEBCC)     ## $at = 80900000
    swc1    $f4, 0x0188(a0)            ## 00000188
    lwc1    $f6, %lo(var_808FEBCC)($at) 
    lh      t6, 0x00B6(a0)             ## 000000B6
    lui     $at, 0x4080                ## $at = 40800000
    mtc1    $at, $f8                   ## $f8 = 4.00
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addu    t7, t6, $at                
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f16                  ## $f16 = 3.00
    lwc1    $f10, 0x0220(a0)           ## 00000220
    lbu     t8, 0x0239(a0)             ## 00000239
    lw      t0, 0x0004(a0)             ## 00000004
    mul.s   $f18, $f10, $f16           
    lui     t2, %hi(func_808FD86C)     ## t2 = 80900000
    addiu   t2, t2, %lo(func_808FD86C) ## t2 = 808FD86C
    andi    t9, t8, 0xFFFE             ## t9 = 00000000
    ori     t1, t0, 0x0030             ## t1 = 00000030
    sh      t7, 0x0032(a0)             ## 00000032
    sb      t9, 0x0239(a0)             ## 00000239
    swc1    $f18, 0x0068(a0)           ## 00000068
    sw      t1, 0x0004(a0)             ## 00000004
    sw      t2, 0x01B0(a0)             ## 000001B0
    swc1    $f6, 0x006C(a0)            ## 0000006C
    swc1    $f8, 0x0060(a0)            ## 00000060
    jr      $ra                        
    nop


func_808FBEA0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x02B8             ## a0 = 060002B8
    mtc1    v0, $f4                    ## $f4 = 0.00
    lui     $at, 0xC040                ## $at = C0400000
    mtc1    $at, $f8                   ## $f8 = -3.00
    cvt.s.w $f4, $f4                   
    lw      v1, 0x0028($sp)            
    mtc1    $zero, $f6                 ## $f6 = 0.00
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   t6, $zero, 0x0002          ## t6 = 00000002
    sw      t6, 0x0014($sp)            
    mfc1    a3, $f4                    
    addiu   a1, a1, 0x02B8             ## a1 = 060002B8
    lui     a2, 0xBFC0                 ## a2 = BFC00000
    swc1    $f8, 0x0018($sp)           
    addiu   a0, v1, 0x016C             ## a0 = 0000016C
    jal     func_8008D17C              
    swc1    $f6, 0x0010($sp)           
    lw      v1, 0x0028($sp)            
    lui     t9, %hi(func_808FDBD0)     ## t9 = 80900000
    addiu   t9, t9, %lo(func_808FDBD0) ## t9 = 808FDBD0
    lbu     t7, 0x0239(v1)             ## 00000239
    sw      t9, 0x01B0(v1)             ## 000001B0
    andi    t8, t7, 0xFFFE             ## t8 = 00000000
    sb      t8, 0x0239(v1)             ## 00000239
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_808FBF20:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      v0, 0x0244(s0)             ## 00000244
    addiu   a0, $zero, 0x0003          ## a0 = 00000003
    sll     v1, a0,  6                 
    lbu     t6, 0x0056(v0)             ## 00000056
    addiu   v0, v0, 0x0040             ## v0 = 00000040
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    ori     t7, t6, 0x0001             ## t7 = 00000001
    sb      t7, 0x0016(v0)             ## 00000056
    lw      v0, 0x0244(s0)             ## 00000244
    lui     a0, 0x0600                 ## a0 = 06000000
    lbu     t8, 0x0096(v0)             ## 000000D6
    addiu   v0, v0, 0x0040             ## v0 = 00000080
    ori     t9, t8, 0x0001             ## t9 = 00000001
    sb      t9, 0x0056(v0)             ## 000000D6
    lw      t0, 0x0244(s0)             ## 00000244
    addu    v0, t0, v1                 
    lbu     t1, 0x0016(v0)             ## 00000096
    ori     t2, t1, 0x0001             ## t2 = 00000001
    sb      t2, 0x0016(v0)             ## 00000096
    lw      t3, 0x0244(s0)             ## 00000244
    addu    v0, t3, v1                 
    lbu     t4, 0x0056(v0)             ## 000000D6
    ori     t5, t4, 0x0001             ## t5 = 00000001
    sb      t5, 0x0056(v0)             ## 000000D6
    lw      t6, 0x0244(s0)             ## 00000244
    addu    v0, t6, v1                 
    lbu     t7, 0x0096(v0)             ## 00000116
    ori     t8, t7, 0x0001             ## t8 = 00000001
    sb      t8, 0x0096(v0)             ## 00000116
    lw      t9, 0x0244(s0)             ## 00000244
    addu    v0, t9, v1                 
    lbu     t0, 0x00D6(v0)             ## 00000156
    ori     t1, t0, 0x0001             ## t1 = 00000001
    sb      t1, 0x00D6(v0)             ## 00000156
    lh      t2, 0x01B6(s0)             ## 000001B6
    bne     t2, $at, lbl_808FC014      
    nop
    lui     a0, 0x0600                 ## a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x02B8             ## a0 = 060002B8
    mtc1    v0, $f4                    ## $f4 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0xC040                ## $at = C0400000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   ## $f8 = -3.00
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x02B8             ## a1 = 060002B8
    addiu   a0, s0, 0x016C             ## a0 = 0000016C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x4080                 ## a2 = 40800000
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    addiu   t3, $zero, 0x0028          ## t3 = 00000028
    beq     $zero, $zero, lbl_808FC05C 
    sh      t3, 0x01B6(s0)             ## 000001B6
lbl_808FC014:
    jal     func_8008A194              
    addiu   a0, a0, 0x02B8             ## a0 = 000002B8
    mtc1    v0, $f10                   ## $f10 = 0.00
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0xC040                ## $at = C0400000
    cvt.s.w $f16, $f10                 
    mtc1    $at, $f18                  ## $f18 = -3.00
    lui     a1, 0x0600                 ## a1 = 06000000
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x02B8             ## a1 = 060002B8
    swc1    $f16, 0x0010($sp)          
    addiu   a0, s0, 0x016C             ## a0 = 0000016C
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    addiu   t4, $zero, 0x003C          ## t4 = 0000003C
    sh      t4, 0x01B6(s0)             ## 000001B6
lbl_808FC05C:
    lui     $at, 0x4270                ## $at = 42700000
    mtc1    $at, $f6                   ## $f6 = 60.00
    lwc1    $f8, 0x0220(s0)            ## 00000220
    lwc1    $f4, 0x0008(s0)            ## 00000008
    lwc1    $f16, 0x000C(s0)           ## 0000000C
    mul.s   $f10, $f6, $f8             
    swc1    $f4, 0x0024(s0)            ## 00000024
    lwc1    $f4, 0x0010(s0)            ## 00000010
    lui     t5, %hi(func_808FD6A8)     ## t5 = 80900000
    addiu   t5, t5, %lo(func_808FD6A8) ## t5 = 808FD6A8
    sw      t5, 0x01B0(s0)             ## 000001B0
    swc1    $f4, 0x002C(s0)            ## 0000002C
    add.s   $f18, $f16, $f10           
    swc1    $f18, 0x0028(s0)           ## 00000028
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_808FC0A4:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    addiu   t6, $zero, 0xA000          ## t6 = FFFFA000
    addiu   t7, $zero, 0xB000          ## t7 = FFFFB000
    addiu   t8, $zero, 0xB800          ## t8 = FFFFB800
    sh      t6, 0x01B8(a0)             ## 000001B8
    sh      t7, 0x01BE(a0)             ## 000001BE
    sh      t8, 0x01BC(a0)             ## 000001BC
    jal     func_808FB6F0              
    sw      a0, 0x0020($sp)            
    addiu   t9, $zero, 0x0023          ## t9 = 00000023
    lw      a0, 0x0020($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a1, $zero, 0x4000          ## a1 = 00004000
    addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      a0, 0x0020($sp)            
    lui     t2, %hi(func_808FD744)     ## t2 = 80900000
    addiu   t2, t2, %lo(func_808FD744) ## t2 = 808FD744
    lbu     t0, 0x0239(a0)             ## 00000239
    sw      t2, 0x01B0(a0)             ## 000001B0
    andi    t1, t0, 0xFFFE             ## t1 = 00000000
    sb      t1, 0x0239(a0)             ## 00000239
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_808FC110:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    lui     a1, 0x3CF5                 ## a1 = 3CF50000
    ori     a1, a1, 0xC28F             ## a1 = 3CF5C28F
    or      a0, a2, $zero              ## a0 = 00000000
    jal     func_80020F88              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    lui     $at, 0x447A                ## $at = 447A0000
    mtc1    $at, $f4                   ## $f4 = 1000.00
    lh      t6, 0x00B4(a2)             ## 000000B4
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f6                   ## $f6 = 3.00
    addiu   t7, t6, 0xC000             ## t7 = FFFFC000
    addiu   a3, $zero, 0x0008          ## a3 = 00000008
    sh      t7, 0x00B4(a2)             ## 000000B4
    addiu   a1, a0, 0x1C24             ## a1 = 00001C24
    swc1    $f4, 0x00BC(a2)            ## 000000BC
    swc1    $f0, 0x006C(a2)            ## 0000006C
    swc1    $f0, 0x0060(a2)            ## 00000060
    jal     func_800265D4              
    swc1    $f6, 0x00C4(a2)            ## 000000C4
    lw      a2, 0x0018($sp)            
    addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
    lui     t1, %hi(func_808FDD94)     ## t1 = 80900000
    lw      t8, 0x0004(a2)             ## 00000004
    addiu   t0, $zero, 0x00C8          ## t0 = 000000C8
    addiu   t1, t1, %lo(func_808FDD94) ## t1 = 808FDD94
    and     t9, t8, $at                
    sw      t9, 0x0004(a2)             ## 00000004
    sh      t0, 0x01B6(a2)             ## 000001B6
    sw      t1, 0x01B0(a2)             ## 000001B0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FC1B0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x01B6(a0)             ## 000001B6
    lui     $at, 0x4160                ## $at = 41600000
    mtc1    $at, $f10                  ## $f10 = 14.00
    beq     v0, $zero, lbl_808FC1D8    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x01B6(a0)             ## 000001B6
    lh      v0, 0x01B6(a0)             ## 000001B6
lbl_808FC1D8:
    lwc1    $f2, 0x0220(a0)            ## 00000220
    lwc1    $f8, 0x000C(a0)            ## 0000000C
    lwc1    $f4, 0x0008(a0)            ## 00000008
    mul.s   $f16, $f10, $f2            
    lwc1    $f6, 0x0010(a0)            ## 00000010
    lui     $at, 0x4348                ## $at = 43480000
    swc1    $f4, 0x0024(a0)            ## 00000024
    swc1    $f6, 0x002C(a0)            ## 0000002C
    add.s   $f18, $f8, $f16            
    bne     v0, $zero, lbl_808FC24C    
    swc1    $f18, 0x0028(a0)           ## 00000028
    mtc1    $at, $f6                   ## $f6 = 200.00
    lwc1    $f4, 0x0090(a0)            ## 00000090
    lui     $at, 0x41F0                ## $at = 41F00000
    mul.s   $f10, $f6, $f2             
    c.lt.s  $f4, $f10                  
    nop
    bc1fl   lbl_808FC250               
    lw      $ra, 0x0014($sp)           
    mtc1    $at, $f8                   ## $f8 = 30.00
    lwc1    $f0, 0x0094(a0)            ## 00000094
    mul.s   $f16, $f8, $f2             
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_808FC250               
    lw      $ra, 0x0014($sp)           
    jal     func_808FB9E0              
    nop
lbl_808FC24C:
    lw      $ra, 0x0014($sp)           
lbl_808FC250:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FC25C:
    addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x006C($sp)            
    lw      t6, 0x006C($sp)            
    lw      t7, 0x1C44(t6)             ## 00001C44
    sw      t7, 0x0064($sp)            
    lh      v0, 0x01B6(s0)             ## 000001B6
    beq     v0, $zero, lbl_808FC28C    
    addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x01B6(s0)             ## 000001B6
lbl_808FC28C:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x016C             ## a0 = 0000016C
    lh      t9, 0x01B6(s0)             ## 000001B6
    addiu   t0, $zero, 0x000F          ## t0 = 0000000F
    lui     $at, 0x3F00                ## $at = 3F000000
    subu    t1, t0, t9                 
    mtc1    t1, $f10                   ## $f10 = 0.00
    mtc1    $at, $f0                   ## $f0 = 0.50
    lui     $at, %hi(var_808FEBD0)     ## $at = 80900000
    cvt.s.w $f18, $f10                 
    lwc1    $f6, %lo(var_808FEBD0)($at) 
    lwc1    $f4, 0x0220(s0)            ## 00000220
    lui     $at, 0x4170                ## $at = 41700000
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    mul.s   $f8, $f4, $f6              
    mtc1    $at, $f6                   ## $f6 = 15.00
    addiu   a1, $zero, 0x1800          ## a1 = 00001800
    mul.s   $f4, $f18, $f0             
    addiu   a2, $zero, 0x0800          ## a2 = 00000800
    div.s   $f10, $f4, $f6             
    add.s   $f18, $f0, $f10            
    mul.s   $f2, $f8, $f18             
    swc1    $f2, 0x0058(s0)            ## 00000058
    swc1    $f2, 0x0054(s0)            ## 00000054
    jal     func_80063704              
    swc1    $f2, 0x0050(s0)            ## 00000050
    lh      t2, 0x01B6(s0)             ## 000001B6
    addiu   t3, $zero, 0x000F          ## t3 = 0000000F
    lui     $at, %hi(var_808FEBD4)     ## $at = 80900000
    subu    t4, t3, t2                 
    mtc1    t4, $f4                    ## $f4 = 0.00
    lwc1    $f2, %lo(var_808FEBD4)($at) 
    lui     $at, %hi(var_808FEBD8)     ## $at = 80900000
    cvt.s.w $f6, $f4                   
    lwc1    $f10, %lo(var_808FEBD8)($at) 
    lui     $at, %hi(var_808FEBDC)     ## $at = 80900000
    mul.s   $f0, $f6, $f10             
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_808FC33C               
    mov.s   $f14, $f0                  
    beq     $zero, $zero, lbl_808FC33C 
    mov.s   $f14, $f2                  
    mov.s   $f14, $f0                  
lbl_808FC33C:
    lwc1    $f8, %lo(var_808FEBDC)($at) 
    mul.s   $f12, $f14, $f8            
    jal     func_800CF470              
    nop
    lui     $at, 0x4200                ## $at = 42000000
    mtc1    $at, $f18                  ## $f18 = 32.00
    lui     $at, 0x4160                ## $at = 41600000
    mtc1    $at, $f6                   ## $f6 = 14.00
    mul.s   $f4, $f0, $f18             
    add.s   $f10, $f4, $f6             
    swc1    $f10, 0x005C($sp)          
    lh      v0, 0x00B4(s0)             ## 000000B4
    slti    $at, v0, 0xC71D            
    beql    $at, $zero, lbl_808FC388   
    slti    $at, v0, 0xDC72            
    mtc1    $zero, $f12                ## $f12 = 0.00
    beq     $zero, $zero, lbl_808FC544 
    lh      t5, 0x01B6(s0)             ## 000001B6
    slti    $at, v0, 0xDC72            
lbl_808FC388:
    beq     $at, $zero, lbl_808FC3BC   
    addiu   a0, s0, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0xAAAB          ## a1 = FFFFAAAB
    jal     func_80063704              
    addiu   a2, $zero, 0x038E          ## a2 = 0000038E
    jal     func_80063684              ## coss?
    lh      a0, 0x01BA(s0)             ## 000001BA
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f16                  ## $f16 = 20.00
    nop
    mul.s   $f12, $f0, $f16            
    beq     $zero, $zero, lbl_808FC544 
    lh      t5, 0x01B6(s0)             ## 000001B6
lbl_808FC3BC:
    slti    $at, v0, 0xF1C8            
    beq     $at, $zero, lbl_808FC488   
    addiu   a0, s0, 0x01BA             ## a0 = 000001BA
    addiu   a0, s0, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0xF556          ## a1 = FFFFF556
    jal     func_80063704              
    addiu   a2, $zero, 0x038E          ## a2 = 0000038E
    addiu   a0, s0, 0x01BC             ## a0 = 000001BC
    addiu   a1, $zero, 0xAAAB          ## a1 = FFFFAAAB
    jal     func_80063704              
    addiu   a2, $zero, 0x038E          ## a2 = 0000038E
    addiu   a0, s0, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xAAAB          ## a1 = FFFFAAAB
    jal     func_80063704              
    addiu   a2, $zero, 0x0222          ## a2 = 00000222
    jal     func_80063684              ## coss?
    lh      a0, 0x01BC(s0)             ## 000001BC
    swc1    $f0, 0x0040($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x01BA(s0)             ## 000001BA
    swc1    $f0, 0x0044($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x01BE(s0)             ## 000001BE
    swc1    $f0, 0x0048($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x01BC(s0)             ## 000001BC
    lh      a0, 0x01BA(s0)             ## 000001BA
    jal     func_800636C4              ## sins?
    swc1    $f0, 0x004C($sp)           
    lh      a0, 0x01BE(s0)             ## 000001BE
    jal     func_800636C4              ## sins?
    swc1    $f0, 0x0050($sp)           
    lwc1    $f14, 0x0050($sp)          
    lwc1    $f2, 0x004C($sp)           
    lui     $at, 0x41A0                ## $at = 41A00000
    neg.s   $f18, $f14                 
    mtc1    $at, $f16                  ## $f16 = 20.00
    sub.s   $f4, $f18, $f2             
    lwc1    $f8, 0x005C($sp)           
    lwc1    $f18, 0x0048($sp)          
    mul.s   $f6, $f16, $f4             
    sub.s   $f10, $f8, $f6             
    neg.s   $f8, $f0                   
    mul.s   $f4, $f10, $f18            
    lwc1    $f18, 0x0040($sp)          
    lwc1    $f10, 0x0044($sp)          
    div.s   $f6, $f4, $f8              
    add.s   $f4, $f10, $f18            
    mul.s   $f8, $f16, $f4             
    beq     $zero, $zero, lbl_808FC540 
    add.s   $f12, $f6, $f8             
lbl_808FC488:
    addiu   a1, $zero, 0xF556          ## a1 = FFFFF556
    jal     func_80063704              
    addiu   a2, $zero, 0x038E          ## a2 = 0000038E
    addiu   a0, s0, 0x01BC             ## a0 = 000001BC
    addiu   a1, $zero, 0xCE39          ## a1 = FFFFCE39
    jal     func_80063704              
    addiu   a2, $zero, 0x0222          ## a2 = 00000222
    addiu   a0, s0, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xAAAB          ## a1 = FFFFAAAB
    jal     func_80063704              
    addiu   a2, $zero, 0x0222          ## a2 = 00000222
    jal     func_80063684              ## coss?
    lh      a0, 0x01BC(s0)             ## 000001BC
    swc1    $f0, 0x0040($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x01BA(s0)             ## 000001BA
    swc1    $f0, 0x0044($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x01BE(s0)             ## 000001BE
    swc1    $f0, 0x0048($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x01BC(s0)             ## 000001BC
    lh      a0, 0x01BA(s0)             ## 000001BA
    jal     func_800636C4              ## sins?
    swc1    $f0, 0x004C($sp)           
    lh      a0, 0x01BE(s0)             ## 000001BE
    jal     func_800636C4              ## sins?
    swc1    $f0, 0x0050($sp)           
    lwc1    $f14, 0x0050($sp)          
    lwc1    $f2, 0x004C($sp)           
    lui     $at, 0x41A0                ## $at = 41A00000
    neg.s   $f18, $f14                 
    mtc1    $at, $f16                  ## $f16 = 20.00
    sub.s   $f4, $f18, $f2             
    lwc1    $f10, 0x005C($sp)          
    lwc1    $f18, 0x0048($sp)          
    mul.s   $f6, $f16, $f4             
    sub.s   $f8, $f10, $f6             
    neg.s   $f10, $f0                  
    mul.s   $f4, $f8, $f18             
    lwc1    $f18, 0x0040($sp)          
    lwc1    $f8, 0x0044($sp)           
    div.s   $f6, $f4, $f10             
    add.s   $f4, $f8, $f18             
    mul.s   $f10, $f16, $f4            
    add.s   $f12, $f6, $f10            
lbl_808FC540:
    lh      t5, 0x01B6(s0)             ## 000001B6
lbl_808FC544:
    lw      a1, 0x0064($sp)            
    addiu   a0, s0, 0x0008             ## a0 = 00000008
    slti    $at, t5, 0x000A            
    beq     $at, $zero, lbl_808FC57C   
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    jal     func_80063F00              
    swc1    $f12, 0x0060($sp)          
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x0E38          ## a3 = 00000E38
    lwc1    $f12, 0x0060($sp)          
lbl_808FC57C:
    lwc1    $f8, 0x005C($sp)           
    lwc1    $f18, 0x0220(s0)           ## 00000220
    lwc1    $f6, 0x000C(s0)            ## 0000000C
    lh      a0, 0x00B6(s0)             ## 000000B6
    mul.s   $f4, $f8, $f18             
    addiu   t6, s0, 0x0008             ## t6 = 00000008
    add.s   $f10, $f6, $f4             
    swc1    $f10, 0x0028(s0)           ## 00000028
    swc1    $f12, 0x0060($sp)          
    jal     func_800636C4              ## sins?
    sw      t6, 0x0038($sp)            
    lwc1    $f12, 0x0060($sp)          
    lwc1    $f8, 0x0220(s0)            ## 00000220
    mul.s   $f18, $f12, $f8            
    nop
    mul.s   $f6, $f0, $f18             
    swc1    $f6, 0x0058($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lwc1    $f18, 0x0060($sp)          
    lwc1    $f16, 0x0220(s0)           ## 00000220
    lwc1    $f14, 0x0008(s0)           ## 00000008
    lwc1    $f12, 0x0058($sp)          
    mul.s   $f18, $f18, $f16           
    lwc1    $f10, 0x0010(s0)           ## 00000010
    add.s   $f12, $f14, $f12           
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f14                  ## $f14 = 3.00
    lui     $at, 0x4140                ## $at = 41400000
    mtc1    $at, $f8                   ## $f8 = 12.00
    mul.s   $f18, $f0, $f18            
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f6                   ## $f6 = 5.00
    mul.s   $f14, $f16, $f14           
    swc1    $f12, 0x0024(s0)           ## 00000024
    addiu   t1, $zero, 0x0001          ## t1 = 00000001
    mul.s   $f8, $f16, $f8             
    addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
    add.s   $f18, $f10, $f18           
    mul.s   $f6, $f16, $f6             
    mfc1    a2, $f14                   
    addiu   t2, $zero, 0x000A          ## t2 = 0000000A
    swc1    $f18, 0x002C(s0)           ## 0000002C
    lw      a0, 0x006C($sp)            
    lw      a1, 0x0038($sp)            
    trunc.w.s $f8, $f8                   
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      t1, 0x0018($sp)            
    trunc.w.s $f6, $f6                   
    mfc1    t8, $f8                    
    sw      t3, 0x001C($sp)            
    sw      t2, 0x0020($sp)            
    mfc1    t9, $f6                    
    sw      t8, 0x0010($sp)            
    sw      $zero, 0x0024($sp)         
    jal     func_8001D29C              
    sw      t9, 0x0014($sp)            
    lh      t4, 0x01B6(s0)             ## 000001B6
    lw      a1, 0x0064($sp)            
    bne     t4, $zero, lbl_808FC6B0    
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    jal     func_80063EB8              
    lw      a0, 0x0038($sp)            
    lui     $at, 0x4370                ## $at = 43700000
    mtc1    $at, $f6                   ## $f6 = 240.00
    lwc1    $f4, 0x0220(s0)            ## 00000220
    mul.s   $f10, $f6, $f4             
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_808FC6A8               
    nop
    jal     func_808FBC50              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FC6B4 
    lw      $ra, 0x0034($sp)           
lbl_808FC6A8:
    jal     func_808FBB10              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808FC6B0:
    lw      $ra, 0x0034($sp)           
lbl_808FC6B4:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0068           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FC6C4:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0064($sp)            
    lh      v0, 0x01B6(s0)             ## 000001B6
    beq     v0, $zero, lbl_808FC6E8    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x01B6(s0)             ## 000001B6
lbl_808FC6E8:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x016C             ## a0 = 0000016C
    lh      t7, 0x01B6(s0)             ## 000001B6
    lui     $at, %hi(var_808FEBE0)     ## $at = 80900000
    lwc1    $f6, %lo(var_808FEBE0)($at) 
    mtc1    t7, $f10                   ## $f10 = 0.00
    lwc1    $f4, 0x0220(s0)            ## 00000220
    lui     $at, %hi(var_808FEBE4)     ## $at = 80900000
    cvt.s.w $f18, $f10                 
    mul.s   $f8, $f4, $f6              
    lwc1    $f4, %lo(var_808FEBE4)($at) 
    lui     $at, 0x3F00                ## $at = 3F000000
    mtc1    $at, $f10                  ## $f10 = 0.50
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    mul.s   $f6, $f18, $f4             
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    addiu   a2, $zero, 0x0300          ## a2 = 00000300
    add.s   $f18, $f10, $f6            
    mul.s   $f2, $f8, $f18             
    swc1    $f2, 0x0058(s0)            ## 00000058
    swc1    $f2, 0x0054(s0)            ## 00000054
    jal     func_80063704              
    swc1    $f2, 0x0050(s0)            ## 00000050
    lh      t8, 0x01B6(s0)             ## 000001B6
    lui     $at, %hi(var_808FEBE8)     ## $at = 80900000
    lwc1    $f2, %lo(var_808FEBE8)($at) 
    mtc1    t8, $f4                    ## $f4 = 0.00
    lui     $at, %hi(var_808FEBEC)     ## $at = 80900000
    lwc1    $f6, %lo(var_808FEBEC)($at) 
    cvt.s.w $f10, $f4                  
    lui     $at, %hi(var_808FEBF0)     ## $at = 80900000
    mul.s   $f0, $f10, $f6             
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_808FC784               
    mov.s   $f14, $f0                  
    beq     $zero, $zero, lbl_808FC784 
    mov.s   $f14, $f2                  
    mov.s   $f14, $f0                  
lbl_808FC784:
    lwc1    $f8, %lo(var_808FEBF0)($at) 
    mul.s   $f12, $f14, $f8            
    jal     func_800CF470              
    nop
    lui     $at, 0x4200                ## $at = 42000000
    mtc1    $at, $f18                  ## $f18 = 32.00
    lui     $at, 0x4160                ## $at = 41600000
    mtc1    $at, $f10                  ## $f10 = 14.00
    mul.s   $f4, $f0, $f18             
    add.s   $f6, $f4, $f10             
    swc1    $f6, 0x0058($sp)           
    lh      v0, 0x00B4(s0)             ## 000000B4
    slti    $at, v0, 0xC71D            
    beql    $at, $zero, lbl_808FC7D0   
    slti    $at, v0, 0xDC72            
    mtc1    $zero, $f12                ## $f12 = 0.00
    beq     $zero, $zero, lbl_808FC98C 
    lwc1    $f8, 0x0058($sp)           
    slti    $at, v0, 0xDC72            
lbl_808FC7D0:
    beq     $at, $zero, lbl_808FC804   
    addiu   a0, s0, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    jal     func_80063704              
    addiu   a2, $zero, 0x0555          ## a2 = 00000555
    jal     func_80063684              ## coss?
    lh      a0, 0x01BA(s0)             ## 000001BA
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f16                  ## $f16 = 20.00
    nop
    mul.s   $f12, $f0, $f16            
    beq     $zero, $zero, lbl_808FC98C 
    lwc1    $f8, 0x0058($sp)           
lbl_808FC804:
    slti    $at, v0, 0xF1C8            
    beq     $at, $zero, lbl_808FC8D0   
    addiu   a0, s0, 0x01BA             ## a0 = 000001BA
    addiu   a0, s0, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0xAAAB          ## a1 = FFFFAAAB
    jal     func_80063704              
    addiu   a2, $zero, 0x0555          ## a2 = 00000555
    addiu   a0, s0, 0x01BC             ## a0 = 000001BC
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    jal     func_80063704              
    addiu   a2, $zero, 0x0555          ## a2 = 00000555
    addiu   a0, s0, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    jal     func_80063704              
    addiu   a2, $zero, 0x0333          ## a2 = 00000333
    jal     func_80063684              ## coss?
    lh      a0, 0x01BC(s0)             ## 000001BC
    swc1    $f0, 0x003C($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x01BA(s0)             ## 000001BA
    swc1    $f0, 0x0040($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x01BE(s0)             ## 000001BE
    swc1    $f0, 0x0044($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x01BC(s0)             ## 000001BC
    lh      a0, 0x01BA(s0)             ## 000001BA
    jal     func_800636C4              ## sins?
    swc1    $f0, 0x0048($sp)           
    lh      a0, 0x01BE(s0)             ## 000001BE
    jal     func_800636C4              ## sins?
    swc1    $f0, 0x004C($sp)           
    lwc1    $f14, 0x004C($sp)          
    lwc1    $f2, 0x0048($sp)           
    lui     $at, 0x41A0                ## $at = 41A00000
    neg.s   $f18, $f14                 
    mtc1    $at, $f16                  ## $f16 = 20.00
    sub.s   $f4, $f18, $f2             
    lwc1    $f8, 0x0058($sp)           
    lwc1    $f18, 0x0044($sp)          
    mul.s   $f10, $f16, $f4            
    sub.s   $f6, $f8, $f10             
    neg.s   $f8, $f0                   
    mul.s   $f4, $f6, $f18             
    lwc1    $f18, 0x003C($sp)          
    lwc1    $f6, 0x0040($sp)           
    div.s   $f10, $f4, $f8             
    add.s   $f4, $f6, $f18             
    mul.s   $f8, $f16, $f4             
    beq     $zero, $zero, lbl_808FC988 
    add.s   $f12, $f10, $f8            
lbl_808FC8D0:
    addiu   a1, $zero, 0xAAAB          ## a1 = FFFFAAAB
    jal     func_80063704              
    addiu   a2, $zero, 0x0555          ## a2 = 00000555
    addiu   a0, s0, 0x01BC             ## a0 = 000001BC
    addiu   a1, $zero, 0xAAAB          ## a1 = FFFFAAAB
    jal     func_80063704              
    addiu   a2, $zero, 0x0333          ## a2 = 00000333
    addiu   a0, s0, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    jal     func_80063704              
    addiu   a2, $zero, 0x0333          ## a2 = 00000333
    jal     func_80063684              ## coss?
    lh      a0, 0x01BC(s0)             ## 000001BC
    swc1    $f0, 0x003C($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x01BA(s0)             ## 000001BA
    swc1    $f0, 0x0040($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x01BE(s0)             ## 000001BE
    swc1    $f0, 0x0044($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x01BC(s0)             ## 000001BC
    lh      a0, 0x01BA(s0)             ## 000001BA
    jal     func_800636C4              ## sins?
    swc1    $f0, 0x0048($sp)           
    lh      a0, 0x01BE(s0)             ## 000001BE
    jal     func_800636C4              ## sins?
    swc1    $f0, 0x004C($sp)           
    lwc1    $f14, 0x004C($sp)          
    lwc1    $f2, 0x0048($sp)           
    lui     $at, 0x41A0                ## $at = 41A00000
    neg.s   $f18, $f14                 
    mtc1    $at, $f16                  ## $f16 = 20.00
    sub.s   $f4, $f18, $f2             
    lwc1    $f6, 0x0058($sp)           
    lwc1    $f18, 0x0044($sp)          
    mul.s   $f10, $f16, $f4            
    sub.s   $f8, $f6, $f10             
    neg.s   $f6, $f0                   
    mul.s   $f4, $f8, $f18             
    lwc1    $f18, 0x003C($sp)          
    lwc1    $f8, 0x0040($sp)           
    div.s   $f10, $f4, $f6             
    add.s   $f4, $f8, $f18             
    mul.s   $f6, $f16, $f4             
    add.s   $f12, $f10, $f6            
lbl_808FC988:
    lwc1    $f8, 0x0058($sp)           
lbl_808FC98C:
    lwc1    $f18, 0x0220(s0)           ## 00000220
    lwc1    $f10, 0x000C(s0)           ## 0000000C
    lh      a0, 0x00B6(s0)             ## 000000B6
    mul.s   $f4, $f8, $f18             
    add.s   $f6, $f10, $f4             
    swc1    $f6, 0x0028(s0)            ## 00000028
    jal     func_800636C4              ## sins?
    swc1    $f12, 0x005C($sp)          
    lwc1    $f12, 0x005C($sp)          
    lwc1    $f8, 0x0220(s0)            ## 00000220
    mul.s   $f18, $f12, $f8            
    nop
    mul.s   $f10, $f0, $f18            
    swc1    $f10, 0x0054($sp)          
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lwc1    $f18, 0x005C($sp)          
    lwc1    $f16, 0x0220(s0)           ## 00000220
    lwc1    $f14, 0x0008(s0)           ## 00000008
    lwc1    $f12, 0x0054($sp)          
    mul.s   $f18, $f18, $f16           
    lwc1    $f10, 0x0010(s0)           ## 00000010
    add.s   $f12, $f14, $f12           
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f14                  ## $f14 = 3.00
    lui     $at, 0x4140                ## $at = 41400000
    mtc1    $at, $f8                   ## $f8 = 12.00
    mul.s   $f18, $f0, $f18            
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f6                   ## $f6 = 5.00
    mul.s   $f14, $f16, $f14           
    swc1    $f12, 0x0024(s0)           ## 00000024
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    mul.s   $f8, $f16, $f8             
    addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
    add.s   $f18, $f10, $f18           
    mul.s   $f6, $f16, $f6             
    mfc1    a2, $f14                   
    addiu   t5, $zero, 0x000A          ## t5 = 0000000A
    swc1    $f18, 0x002C(s0)           ## 0000002C
    lw      a0, 0x0064($sp)            
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    trunc.w.s $f8, $f8                   
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      t3, 0x0018($sp)            
    trunc.w.s $f6, $f6                   
    mfc1    t0, $f8                    
    sw      t4, 0x001C($sp)            
    sw      t5, 0x0020($sp)            
    mfc1    t2, $f6                    
    sw      t0, 0x0010($sp)            
    sw      $zero, 0x0024($sp)         
    jal     func_8001D29C              
    sw      t2, 0x0014($sp)            
    lh      t6, 0x01B6(s0)             ## 000001B6
    bnel    t6, $zero, lbl_808FCA7C    
    lw      $ra, 0x0034($sp)           
    jal     func_808FB778              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0034($sp)           
lbl_808FCA7C:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FCA8C:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x01BC(s0)             ## 000001BC
    swc1    $f0, 0x0024($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x01BA(s0)             ## 000001BA
    swc1    $f0, 0x0028($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x01BE(s0)             ## 000001BE
    lwc1    $f4, 0x0028($sp)           
    lwc1    $f6, 0x0024($sp)           
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f16                  ## $f16 = 20.00
    add.s   $f8, $f4, $f6              
    add.s   $f10, $f0, $f8             
    mul.s   $f18, $f10, $f16           
    swc1    $f18, 0x002C($sp)          
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lwc1    $f4, 0x002C($sp)           
    lwc1    $f6, 0x0220(s0)            ## 00000220
    lwc1    $f16, 0x0008(s0)           ## 00000008
    lh      a0, 0x01BC(s0)             ## 000001BC
    mul.s   $f8, $f4, $f6              
    nop
    mul.s   $f10, $f0, $f8             
    add.s   $f18, $f10, $f16           
    jal     func_800636C4              ## sins?
    swc1    $f18, 0x0024(s0)           ## 00000024
    swc1    $f0, 0x0024($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x01BA(s0)             ## 000001BA
    swc1    $f0, 0x0028($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x01BE(s0)             ## 000001BE
    lwc1    $f4, 0x0028($sp)           
    lwc1    $f6, 0x0024($sp)           
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f16                  ## $f16 = 20.00
    add.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0220(s0)            ## 00000220
    lh      a0, 0x00B6(s0)             ## 000000B6
    add.s   $f10, $f0, $f8             
    lwc1    $f8, 0x000C(s0)            ## 0000000C
    mul.s   $f18, $f10, $f16           
    nop
    mul.s   $f6, $f18, $f4             
    sub.s   $f10, $f8, $f6             
    jal     func_80063684              ## coss?
    swc1    $f10, 0x0028(s0)           ## 00000028
    lwc1    $f16, 0x002C($sp)          
    lwc1    $f18, 0x0220(s0)           ## 00000220
    lwc1    $f6, 0x0010(s0)            ## 00000010
    mul.s   $f4, $f16, $f18            
    nop
    mul.s   $f8, $f0, $f4              
    add.s   $f10, $f8, $f6             
    swc1    $f10, 0x002C(s0)           ## 0000002C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_808FCB90:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      t6, 0x1C44(a1)             ## 00001C44
    addiu   a0, s0, 0x016C             ## a0 = 0000016C
    sw      a0, 0x002C($sp)            
    jal     func_8008C9C0              
    sw      t6, 0x0034($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    bne     v0, $zero, lbl_808FCBD8    
    lw      a0, 0x002C($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4140                 ## a1 = 41400000
    beql    v0, $zero, lbl_808FCC08    
    lh      v0, 0x01B6(s0)             ## 000001B6
lbl_808FCBD8:
    lh      t7, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   a1, $zero, 0x385C          ## a1 = 0000385C
    bne     t7, $at, lbl_808FCBFC      
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FCC08 
    lh      v0, 0x01B6(s0)             ## 000001B6
lbl_808FCBFC:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3860          ## a1 = 00003860
    lh      v0, 0x01B6(s0)             ## 000001B6
lbl_808FCC08:
    beq     v0, $zero, lbl_808FCC14    
    addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
    sh      t8, 0x01B6(s0)             ## 000001B6
lbl_808FCC14:
    lw      a1, 0x0034($sp)            
    addiu   a0, s0, 0x0008             ## a0 = 00000008
    sw      a0, 0x0028($sp)            
    addiu   a1, a1, 0x0024             ## a1 = 00000024
    jal     func_80063F00              
    sw      a1, 0x0024($sp)            
    lh      a3, 0x01B6(s0)             ## 000001B6
    addiu   $at, $zero, 0x0005         ## $at = 00000005
    sll     a1, v0, 16                 
    div     $zero, a3, $at             
    mfhi    a3                         
    addu    $at, a3, $zero             
    sll     a3, a3,  4                 
    addu    a3, a3, $at                
    sll     a3, a3,  4                 
    addu    a3, a3, $at                
    sll     a3, a3,  1                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    jal     func_80064624              
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    lh      v0, 0x01B6(s0)             ## 000001B6
    slti    $at, v0, 0x000A            
    beql    $at, $zero, lbl_808FCCB8   
    slti    $at, v0, 0x0014            
    lh      t9, 0x01BA(s0)             ## 000001BA
    lh      t1, 0x01BC(s0)             ## 000001BC
    lh      t3, 0x01BE(s0)             ## 000001BE
    lh      t5, 0x00B4(s0)             ## 000000B4
    addiu   t0, t9, 0x016C             ## t0 = 0000016C
    addiu   t2, t1, 0x016C             ## t2 = 0000016C
    addiu   t4, t3, 0x00B6             ## t4 = 000000B6
    addiu   t6, t5, 0x0222             ## t6 = 00000222
    sh      t0, 0x01BA(s0)             ## 000001BA
    sh      t2, 0x01BC(s0)             ## 000001BC
    sh      t4, 0x01BE(s0)             ## 000001BE
    beq     $zero, $zero, lbl_808FCD34 
    sh      t6, 0x00B4(s0)             ## 000000B4
    slti    $at, v0, 0x0014            
lbl_808FCCB8:
    beql    $at, $zero, lbl_808FCCEC   
    slti    $at, v0, 0x001E            
    lh      t7, 0x01BA(s0)             ## 000001BA
    lh      t9, 0x01BC(s0)             ## 000001BC
    lh      t1, 0x00B4(s0)             ## 000000B4
    addiu   t8, t7, 0xFE94             ## t8 = FFFFFE94
    addiu   t0, t9, 0x0111             ## t0 = 00000111
    addiu   t2, t1, 0x016C             ## t2 = 0000016C
    sh      t8, 0x01BA(s0)             ## 000001BA
    sh      t0, 0x01BC(s0)             ## 000001BC
    beq     $zero, $zero, lbl_808FCD34 
    sh      t2, 0x00B4(s0)             ## 000000B4
    slti    $at, v0, 0x001E            
lbl_808FCCEC:
    beql    $at, $zero, lbl_808FCD14   
    lh      t7, 0x01BC(s0)             ## 000001BC
    lh      t3, 0x01BC(s0)             ## 000001BC
    lh      t5, 0x00B4(s0)             ## 000000B4
    addiu   t4, t3, 0xFEEF             ## t4 = FFFFFEEF
    addiu   t6, t5, 0xFF4A             ## t6 = FFFFFF4A
    sh      t4, 0x01BC(s0)             ## 000001BC
    beq     $zero, $zero, lbl_808FCD34 
    sh      t6, 0x00B4(s0)             ## 000000B4
    lh      t7, 0x01BC(s0)             ## 000001BC
lbl_808FCD14:
    lh      t9, 0x01BE(s0)             ## 000001BE
    lh      t1, 0x00B4(s0)             ## 000000B4
    addiu   t8, t7, 0xFF4A             ## t8 = FFFFFF4A
    addiu   t0, t9, 0x00B6             ## t0 = 000000B6
    addiu   t2, t1, 0xFE94             ## t2 = FFFFFE94
    sh      t8, 0x01BC(s0)             ## 000001BC
    sh      t0, 0x01BE(s0)             ## 000001BE
    sh      t2, 0x00B4(s0)             ## 000000B4
lbl_808FCD34:
    jal     func_808FCA8C              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      a0, 0x0028($sp)            
    jal     func_80063EB8              
    lw      a1, 0x0024($sp)            
    lui     $at, 0x4370                ## $at = 43700000
    mtc1    $at, $f4                   ## $f4 = 240.00
    lwc1    $f2, 0x0220(s0)            ## 00000220
    mul.s   $f6, $f4, $f2              
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_808FCD7C               
    lh      t3, 0x01B6(s0)             ## 000001B6
    jal     func_808FBB10              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FCDB0 
    lw      $ra, 0x001C($sp)           
    lh      t3, 0x01B6(s0)             ## 000001B6
lbl_808FCD7C:
    lui     $at, 0x42A0                ## $at = 42A00000
    beq     t3, $zero, lbl_808FCDA4    
    nop
    mtc1    $at, $f10                  ## $f10 = 80.00
    lwc1    $f8, 0x0090(s0)            ## 00000090
    mul.s   $f16, $f10, $f2            
    c.lt.s  $f8, $f16                  
    nop
    bc1fl   lbl_808FCDB0               
    lw      $ra, 0x001C($sp)           
lbl_808FCDA4:
    jal     func_808FBC50              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_808FCDB0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FCDC0:
    addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0054($sp)            
    addiu   a0, s0, 0x016C             ## a0 = 0000016C
    jal     func_8008C9C0              
    sw      a0, 0x0034($sp)            
    lh      v1, 0x01B6(s0)             ## 000001B6
    lw      a0, 0x0034($sp)            
    bne     v1, $zero, lbl_808FCF8C    
    slti    $at, v1, 0x000B            
    jal     func_8008D6A8              
    lui     a1, 0x3F80                 ## a1 = 3F800000
    beql    v0, $zero, lbl_808FCE30    
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    lh      t6, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   a1, $zero, 0x385D          ## a1 = 0000385D
    bne     t6, $at, lbl_808FCE24      
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FCE30 
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
lbl_808FCE24:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3861          ## a1 = 00003861
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
lbl_808FCE30:
    or      a1, $zero, $zero           ## a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0222          ## a2 = 00000222
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f6                   ## $f6 = 10.00
    lwc1    $f4, 0x0184(s0)            ## 00000184
    addiu   a0, s0, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0xF1C8          ## a1 = FFFFF1C8
    mul.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    v1, $f10                   
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    addiu   a2, v1, 0x038E             ## a2 = 0000038E
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    jal     func_80063704              
    sh      v1, 0x004A($sp)            
    lh      a2, 0x004A($sp)            
    andi    v1, v0, 0x0001             ## v1 = 00000000
    sw      v1, 0x004C($sp)            
    addiu   a2, a2, 0x071C             ## a2 = 0000071C
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    addiu   a0, s0, 0x01BC             ## a0 = 000001BC
    jal     func_80063704              
    addiu   a1, $zero, 0xF1C8          ## a1 = FFFFF1C8
    lh      a2, 0x004A($sp)            
    lw      v1, 0x004C($sp)            
    addiu   a0, s0, 0x01BE             ## a0 = 000001BE
    addiu   a2, a2, 0x0E38             ## a2 = 00000E38
    sll     a2, a2, 16                 
    and     v1, v1, v0                 
    sw      v1, 0x004C($sp)            
    sra     a2, a2, 16                 
    jal     func_80063704              
    addiu   a1, $zero, 0xF1C8          ## a1 = FFFFF1C8
    lw      v1, 0x004C($sp)            
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x02B8             ## a1 = 060002B8
    and     v1, v1, v0                 
    beq     v1, $zero, lbl_808FD02C    
    lw      a0, 0x0034($sp)            
    jal     func_8008D360              
    lui     a2, 0x4080                 ## a2 = 40800000
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f16                  ## $f16 = 5.00
    mtc1    $zero, $f4                 ## $f4 = 0.00
    mul.s   $f18, $f0, $f16            
    swc1    $f4, 0x0040($sp)           
    swc1    $f18, 0x003C($sp)          
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(s0)             ## 000000B6
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f6                   ## $f6 = 5.00
    lui     t8, %hi(var_808FEBA4)      ## t8 = 80900000
    lui     t9, %hi(var_808FEBA8)      ## t9 = 80900000
    mul.s   $f8, $f0, $f6              
    addiu   t9, t9, %lo(var_808FEBA8)  ## t9 = 808FEBA8
    addiu   t8, t8, %lo(var_808FEBA4)  ## t8 = 808FEBA4
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    sw      t0, 0x0018($sp)            
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    swc1    $f8, 0x0044($sp)           
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f16                  ## $f16 = 100.00
    lwc1    $f10, 0x0220(s0)           ## 00000220
    lui     a3, %hi(var_808FEA20)      ## a3 = 80900000
    addiu   a3, a3, %lo(var_808FEA20)  ## a3 = 808FEA20
    mul.s   $f18, $f10, $f16           
    lw      a0, 0x0054($sp)            
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    addiu   a2, $sp, 0x003C            ## a2 = FFFFFFEC
    trunc.w.s $f4, $f18                  
    mfc1    t2, $f4                    
    jal     func_8001BD94              
    sw      t2, 0x001C($sp)            
    lbu     t4, 0x0239(s0)             ## 00000239
    addiu   t3, $zero, 0x0001          ## t3 = 00000001
    sh      t3, 0x01B6(s0)             ## 000001B6
    ori     t5, t4, 0x0001             ## t5 = 00000001
    beq     $zero, $zero, lbl_808FD02C 
    sb      t5, 0x0239(s0)             ## 00000239
lbl_808FCF8C:
    bne     $at, $zero, lbl_808FCFA4   
    addiu   t6, v1, 0x0001             ## t6 = 00000001
    jal     func_808FBCB8              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FD02C 
    nop
lbl_808FCFA4:
    sh      t6, 0x01B6(s0)             ## 000001B6
    lh      t7, 0x01B6(s0)             ## 000001B6
    or      a0, s0, $zero              ## a0 = 00000000
    slti    $at, t7, 0x0004            
    bnel    $at, $zero, lbl_808FCFE0   
    lw      a0, 0x0034($sp)            
    jal     func_80021A28              
    addiu   a1, $zero, 0x016C          ## a1 = 0000016C
    bne     v0, $zero, lbl_808FCFDC    
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    lh      a1, 0x008A(s0)             ## 0000008A
    addiu   a2, $zero, 0x000F          ## a2 = 0000000F
    jal     func_80064624              
    addiu   a3, $zero, 0x071C          ## a3 = 0000071C
lbl_808FCFDC:
    lw      a0, 0x0034($sp)            
lbl_808FCFE0:
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    bne     v0, $zero, lbl_808FD000    
    lw      a0, 0x0034($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4140                 ## a1 = 41400000
    beq     v0, $zero, lbl_808FD02C    
    nop
lbl_808FD000:
    lh      t8, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   a1, $zero, 0x385C          ## a1 = 0000385C
    bne     t8, $at, lbl_808FD024      
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FD02C 
    nop
lbl_808FD024:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3860          ## a1 = 00003860
lbl_808FD02C:
    jal     func_808FCA8C              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0050           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FD048:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      v0, 0x01B6(s0)             ## 000001B6
    lw      v1, 0x1C44(a1)             ## 00001C44
    addiu   a1, $zero, 0x1800          ## a1 = 00001800
    beq     v0, $zero, lbl_808FD074    
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x01B6(s0)             ## 000001B6
lbl_808FD074:
    addiu   t7, $zero, 0x071C          ## t7 = 0000071C
    sw      t7, 0x0010($sp)            
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    addiu   a3, $zero, 0x0E38          ## a3 = 00000E38
    jal     func_80064508              
    sw      v1, 0x002C($sp)            
    lw      v1, 0x002C($sp)            
    addiu   a0, s0, 0x0008             ## a0 = 00000008
    jal     func_80063F00              
    addiu   a1, v1, 0x0024             ## a1 = 00000024
    sll     a1, v0, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x00B6             ## a0 = 000000B6
    addiu   a2, $zero, 0x0002          ## a2 = 00000002
    jal     func_80064624              
    addiu   a3, $zero, 0x0E38          ## a3 = 00000E38
    addiu   a0, s0, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0x0AAA          ## a1 = 00000AAA
    jal     func_80063704              
    addiu   a2, $zero, 0x0444          ## a2 = 00000444
    addiu   a0, s0, 0x01BC             ## a0 = 000001BC
    addiu   a1, $zero, 0xB8E8          ## a1 = FFFFB8E8
    jal     func_80063704              
    addiu   a2, $zero, 0x0888          ## a2 = 00000888
    addiu   a0, s0, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0x955C          ## a1 = FFFF955C
    jal     func_80063704              
    addiu   a2, $zero, 0x0888          ## a2 = 00000888
    lh      t8, 0x01B6(s0)             ## 000001B6
    bne     t8, $zero, lbl_808FD0F8    
    nop
    jal     func_808FBC74              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808FD0F8:
    jal     func_808FCA8C              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FD114:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s1, 0x0020($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s0, 0x001C($sp)            
    sw      a1, 0x004C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s1, 0x016C             ## a0 = 0000016C
    lh      v1, 0x01B6(s1)             ## 000001B6
    addiu   a0, s1, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0xF6C2          ## a1 = FFFFF6C2
    bne     v1, $zero, lbl_808FD27C    
    addiu   $at, $zero, 0x000B         ## $at = 0000000B
    jal     func_80063704              
    addiu   a2, $zero, 0x038E          ## a2 = 0000038E
    addiu   a0, s1, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0xF778          ## a1 = FFFFF778
    jal     func_80063704              
    addiu   a2, $zero, 0x016C          ## a2 = 0000016C
    addiu   a0, s1, 0x01BC             ## a0 = 000001BC
    addiu   a1, $zero, 0xF778          ## a1 = FFFFF778
    jal     func_80063704              
    addiu   a2, $zero, 0x016C          ## a2 = 0000016C
    addiu   a0, s1, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xF778          ## a1 = FFFFF778
    jal     func_80063704              
    addiu   a2, $zero, 0x016C          ## a2 = 0000016C
    beq     v0, $zero, lbl_808FD484    
    nop
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s1)             ## 000000B6
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f4                   ## $f4 = 30.00
    lwc1    $f8, 0x0220(s1)            ## 00000220
    mul.s   $f6, $f0, $f4              
    nop
    mul.s   $f10, $f6, $f8             
    swc1    $f10, 0x0038($sp)          
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(s1)             ## 000000B6
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f16                  ## $f16 = 30.00
    lw      t7, 0x0008(s1)             ## 00000008
    lwc1    $f4, 0x0220(s1)            ## 00000220
    addiu   a1, $sp, 0x003C            ## a1 = FFFFFFF4
    mul.s   $f18, $f0, $f16            
    sw      t7, 0x0000(a1)             ## FFFFFFF4
    lw      t6, 0x000C(s1)             ## 0000000C
    lui     s0, %hi(var_808FEA20)      ## s0 = 80900000
    addiu   s0, s0, %lo(var_808FEA20)  ## s0 = 808FEA20
    sw      t6, 0x0004(a1)             ## FFFFFFF8
    lw      t7, 0x0010(s1)             ## 00000010
    mul.s   $f2, $f18, $f4             
    or      v0, $zero, $zero           ## v0 = 00000000
    sw      t7, 0x0008(a1)             ## FFFFFFFC
lbl_808FD1F0:
    lui     $at, 0x43FA                ## $at = 43FA0000
    mtc1    $at, $f6                   ## $f6 = 500.00
    lwc1    $f0, 0x0220(s1)            ## 00000220
    lui     $at, 0x4248                ## $at = 42480000
    mtc1    $at, $f16                  ## $f16 = 50.00
    mul.s   $f8, $f0, $f6              
    addiu   a1, $sp, 0x003C            ## a1 = FFFFFFF4
    swc1    $f2, 0x0034($sp)           
    mul.s   $f18, $f0, $f16            
    sw      v0, 0x0030($sp)            
    lw      a0, 0x004C($sp)            
    or      a2, s0, $zero              ## a2 = 808FEA20
    or      a3, s0, $zero              ## a3 = 808FEA20
    trunc.w.s $f10, $f8                  
    trunc.w.s $f4, $f18                  
    mfc1    t9, $f10                   
    mfc1    t1, $f4                    
    sw      t9, 0x0010($sp)            
    jal     func_8001C1C4              
    sw      t1, 0x0014($sp)            
    lwc1    $f2, 0x0034($sp)           
    lwc1    $f6, 0x003C($sp)           
    lwc1    $f8, 0x0038($sp)           
    lwc1    $f16, 0x0044($sp)          
    lw      v0, 0x0030($sp)            
    add.s   $f10, $f6, $f8             
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    addiu   v0, v0, 0x0001             ## v0 = 00000001
    add.s   $f18, $f16, $f2            
    swc1    $f10, 0x003C($sp)          
    bne     v0, $at, lbl_808FD1F0      
    swc1    $f18, 0x0044($sp)          
    addiu   t2, $zero, 0x0001          ## t2 = 00000001
    beq     $zero, $zero, lbl_808FD484 
    sh      t2, 0x01B6(s1)             ## 000001B6
lbl_808FD27C:
    bne     v1, $at, lbl_808FD2D0      
    addiu   a0, s1, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0xF6C2          ## a1 = FFFFF6C2
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          ## a2 = 00000200
    addiu   a0, s1, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0xF556          ## a1 = FFFFF556
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          ## a2 = 00000200
    addiu   a0, s1, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xA38F          ## a1 = FFFFA38F
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          ## a2 = 00000200
    addiu   a0, s1, 0x01BC             ## a0 = 000001BC
    addiu   a1, $zero, 0x238C          ## a1 = 0000238C
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          ## a2 = 00000200
    beq     v0, $zero, lbl_808FD484    
    addiu   t3, $zero, 0x000C          ## t3 = 0000000C
    beq     $zero, $zero, lbl_808FD484 
    sh      t3, 0x01B6(s1)             ## 000001B6
lbl_808FD2D0:
    addiu   $at, $zero, 0x0012         ## $at = 00000012
    bne     v1, $at, lbl_808FD32C      
    addiu   a0, s1, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x2AA8          ## a1 = 00002AA8
    jal     func_80063704              
    addiu   a2, $zero, 0x0AAA          ## a2 = 00000AAA
    addiu   a0, s1, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0x1554          ## a1 = 00001554
    jal     func_80063704              
    addiu   a2, $zero, 0x05B0          ## a2 = 000005B0
    beq     v0, $zero, lbl_808FD308    
    addiu   a0, s1, 0x01BC             ## a0 = 000001BC
    addiu   t4, $zero, 0x0019          ## t4 = 00000019
    sh      t4, 0x01B6(s1)             ## 000001B6
lbl_808FD308:
    addiu   a1, $zero, 0xC71D          ## a1 = FFFFC71D
    jal     func_80063704              
    addiu   a2, $zero, 0x0AAA          ## a2 = 00000AAA
    addiu   a0, s1, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xA38F          ## a1 = FFFFA38F
    jal     func_80063704              
    addiu   a2, $zero, 0x02D8          ## a2 = 000002D8
    beq     $zero, $zero, lbl_808FD484 
    nop
lbl_808FD32C:
    addiu   $at, $zero, 0x0019         ## $at = 00000019
    bne     v1, $at, lbl_808FD388      
    addiu   a0, s1, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0xAAB0          ## a1 = FFFFAAB0
    jal     func_80063704              
    addiu   a2, $zero, 0x0AAA          ## a2 = 00000AAA
    addiu   a0, s1, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0x9C78          ## a1 = FFFF9C78
    jal     func_80063704              
    addiu   a2, $zero, 0x093E          ## a2 = 0000093E
    beq     v0, $zero, lbl_808FD364    
    addiu   a0, s1, 0x01BC             ## a0 = 000001BC
    addiu   t5, $zero, 0x001A          ## t5 = 0000001A
    sh      t5, 0x01B6(s1)             ## 000001B6
lbl_808FD364:
    addiu   a1, $zero, 0xC004          ## a1 = FFFFC004
    jal     func_80063704              
    addiu   a2, $zero, 0x04FA          ## a2 = 000004FA
    addiu   a0, s1, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xDC74          ## a1 = FFFFDC74
    jal     func_80063704              
    addiu   a2, $zero, 0x0444          ## a2 = 00000444
    beq     $zero, $zero, lbl_808FD484 
    nop
lbl_808FD388:
    addiu   $at, $zero, 0x001A         ## $at = 0000001A
    bne     v1, $at, lbl_808FD3E4      
    addiu   a0, s1, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x1800          ## a1 = 00001800
    jal     func_80063704              
    addiu   a2, $zero, 0x093E          ## a2 = 0000093E
    addiu   a0, s1, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0xEAAB          ## a1 = FFFFEAAB
    jal     func_80063704              
    addiu   a2, $zero, 0x071C          ## a2 = 0000071C
    beq     v0, $zero, lbl_808FD3C0    
    addiu   a0, s1, 0x01BC             ## a0 = 000001BC
    addiu   t6, $zero, 0x001B          ## t6 = 0000001B
    sh      t6, 0x01B6(s1)             ## 000001B6
lbl_808FD3C0:
    addiu   a1, $zero, 0xC71D          ## a1 = FFFFC71D
    jal     func_80063704              
    addiu   a2, $zero, 0x02D8          ## a2 = 000002D8
    addiu   a0, s1, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xA38F          ## a1 = FFFFA38F
    jal     func_80063704              
    addiu   a2, $zero, 0x05B0          ## a2 = 000005B0
    beq     $zero, $zero, lbl_808FD484 
    nop
lbl_808FD3E4:
    slti    $at, v1, 0x001B            
    bne     $at, $zero, lbl_808FD448   
    addiu   t9, v1, 0x0001             ## t9 = 00000001
    addiu   t7, v1, 0x0001             ## t7 = 00000001
    sh      t7, 0x01B6(s1)             ## 000001B6
    lh      t8, 0x01B6(s1)             ## 000001B6
    slti    $at, t8, 0x001F            
    bne     $at, $zero, lbl_808FD484   
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f6                   ## $f6 = 80.00
    lwc1    $f8, 0x0220(s1)            ## 00000220
    lwc1    $f4, 0x0090(s1)            ## 00000090
    mul.s   $f10, $f6, $f8             
    c.lt.s  $f4, $f10                  
    nop
    bc1f    lbl_808FD438               
    nop
    jal     func_808FBC50              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FD484 
    nop
lbl_808FD438:
    jal     func_808FBBF8              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FD484 
    nop
lbl_808FD448:
    sh      t9, 0x01B6(s1)             ## 000001B6
    lh      v1, 0x01B6(s1)             ## 000001B6
    addiu   $at, $zero, 0x000A         ## $at = 0000000A
    or      a0, s1, $zero              ## a0 = 00000000
    bnel    v1, $at, lbl_808FD470      
    slti    $at, v1, 0x000C            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3863          ## a1 = 00003863
    lh      v1, 0x01B6(s1)             ## 000001B6
    slti    $at, v1, 0x000C            
lbl_808FD470:
    bne     $at, $zero, lbl_808FD484   
    addiu   a0, s1, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xA38F          ## a1 = FFFFA38F
    jal     func_80063704              
    addiu   a2, $zero, 0x0088          ## a2 = 00000088
lbl_808FD484:
    jal     func_808FCA8C              
    or      a0, s1, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_808FD4A0:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s0, 0x001C($sp)            
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s1, 0x016C             ## a0 = 0000016C
    lh      v1, 0x01B6(s1)             ## 000001B6
    addiu   a0, s1, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x1800          ## a1 = 00001800
    slti    $at, v1, 0x0009            
    bne     $at, $zero, lbl_808FD55C   
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    addiu   t6, $zero, 0x071C          ## t6 = 0000071C
    sw      t6, 0x0010($sp)            
    jal     func_80064508              
    addiu   a3, $zero, 0x11C6          ## a3 = 000011C6
    addiu   t7, $zero, 0x071C          ## t7 = 0000071C
    or      s0, v0, $zero              ## s0 = 00000000
    sw      t7, 0x0010($sp)            
    addiu   a0, s1, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0xEAAB          ## a1 = FFFFEAAB
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0AAA          ## a3 = 00000AAA
    addiu   t8, $zero, 0x071C          ## t8 = 0000071C
    or      s0, s0, v0                 ## s0 = 00000000
    sw      t8, 0x0010($sp)            
    addiu   a0, s1, 0x01BC             ## a0 = 000001BC
    addiu   a1, $zero, 0xC71D          ## a1 = FFFFC71D
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x0E38          ## a3 = 00000E38
    addiu   t9, $zero, 0x071C          ## t9 = 0000071C
    or      s0, s0, v0                 ## s0 = 00000000
    sw      t9, 0x0010($sp)            
    addiu   a0, s1, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xA38F          ## a1 = FFFFA38F
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x11C6          ## a3 = 000011C6
    or      s0, s0, v0                 ## s0 = 00000000
    bne     s0, $zero, lbl_808FD57C    
    addiu   t0, $zero, 0x0008          ## t0 = 00000008
    beq     $zero, $zero, lbl_808FD57C 
    sh      t0, 0x01B6(s1)             ## 000001B6
lbl_808FD55C:
    beq     v1, $zero, lbl_808FD56C    
    addiu   t1, v1, 0xFFFF             ## t1 = FFFFFFFF
    sh      t1, 0x01B6(s1)             ## 000001B6
    lh      v1, 0x01B6(s1)             ## 000001B6
lbl_808FD56C:
    bne     v1, $zero, lbl_808FD57C    
    nop
    jal     func_808FBBF8              
    or      a0, s1, $zero              ## a0 = 00000000
lbl_808FD57C:
    jal     func_808FCA8C              
    or      a0, s1, $zero              ## a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_808FD598:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s1, 0x016C             ## a0 = 0000016C
    addiu   a0, s1, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    jal     func_80063704              
    addiu   a2, $zero, 0x0E38          ## a2 = 00000E38
    andi    s0, v0, 0x0001             ## s0 = 00000000
    addiu   a0, s1, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    jal     func_80063704              
    addiu   a2, $zero, 0x0E38          ## a2 = 00000E38
    and     s0, s0, v0                 
    addiu   a0, s1, 0x01BC             ## a0 = 000001BC
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    jal     func_80063704              
    addiu   a2, $zero, 0x0E38          ## a2 = 00000E38
    and     s0, s0, v0                 
    addiu   a0, s1, 0x01BE             ## a0 = 000001BE
    addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
    jal     func_80063704              
    addiu   a2, $zero, 0x0E38          ## a2 = 00000E38
    and     s0, s0, v0                 
    beq     s0, $zero, lbl_808FD68C    
    nop
    lbu     t6, 0x00AF(s1)             ## 000000AF
    bnel    t6, $zero, lbl_808FD630    
    lbu     t7, 0x0239(s1)             ## 00000239
    jal     func_808FBEA0              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FD68C 
    nop
    lbu     t7, 0x0239(s1)             ## 00000239
lbl_808FD630:
    lh      t9, 0x01B6(s1)             ## 000001B6
    lui     $at, 0x42A0                ## $at = 42A00000
    ori     t8, t7, 0x0001             ## t8 = 00000001
    bne     t9, $zero, lbl_808FD684    
    sb      t8, 0x0239(s1)             ## 00000239
    mtc1    $at, $f6                   ## $f6 = 80.00
    lwc1    $f8, 0x0220(s1)            ## 00000220
    lwc1    $f4, 0x0090(s1)            ## 00000090
    mul.s   $f10, $f6, $f8             
    c.lt.s  $f4, $f10                  
    nop
    bc1f    lbl_808FD674               
    nop
    jal     func_808FBC50              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FD68C 
    nop
lbl_808FD674:
    jal     func_808FBD30              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FD68C 
    nop
lbl_808FD684:
    jal     func_808FBF20              
    or      a0, s1, $zero              ## a0 = 00000000
lbl_808FD68C:
    jal     func_808FCA8C              
    or      a0, s1, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_808FD6A8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              ## a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    addiu   a0, a1, 0x016C             ## a0 = 0000016C
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    lh      v0, 0x01B6(a1)             ## 000001B6
    or      a0, a1, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_808FD6E4    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x01B6(a1)             ## 000001B6
    lh      v0, 0x01B6(a1)             ## 000001B6
lbl_808FD6E4:
    bnel    v0, $zero, lbl_808FD738    
    lw      $ra, 0x0014($sp)           
    jal     func_808FB6F0              
    sw      a1, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f6                   ## $f6 = 80.00
    lwc1    $f8, 0x0220(a1)            ## 00000220
    lwc1    $f4, 0x0090(a1)            ## 00000090
    mul.s   $f10, $f6, $f8             
    c.lt.s  $f4, $f10                  
    nop
    bc1f    lbl_808FD72C               
    nop
    jal     func_808FBC50              
    or      a0, a1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FD738 
    lw      $ra, 0x0014($sp)           
lbl_808FD72C:
    jal     func_808FBD30              
    or      a0, a1, $zero              ## a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_808FD738:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FD744:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x016C             ## a0 = 0000016C
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    lh      a1, 0x01BA(s0)             ## 000001BA
    jal     func_80063704              
    addiu   a2, $zero, 0x071C          ## a2 = 0000071C
    addiu   a0, s0, 0x01BA             ## a0 = 000001BA
    lh      a1, 0x01BC(s0)             ## 000001BC
    jal     func_80063704              
    addiu   a2, $zero, 0x071C          ## a2 = 0000071C
    addiu   a0, s0, 0x01BC             ## a0 = 000001BC
    lh      a1, 0x01BE(s0)             ## 000001BE
    jal     func_80063704              
    addiu   a2, $zero, 0x071C          ## a2 = 0000071C
    addiu   a0, s0, 0x01BE             ## a0 = 000001BE
    lh      a1, 0x01B8(s0)             ## 000001B8
    jal     func_80063704              
    addiu   a2, $zero, 0x071C          ## a2 = 0000071C
    beql    v0, $zero, lbl_808FD7E4    
    lh      v0, 0x01B8(s0)             ## 000001B8
    lh      t6, 0x01B8(s0)             ## 000001B8
    lui     $at, %hi(var_808FEBF4)     ## $at = 80900000
    lwc1    $f8, %lo(var_808FEBF4)($at) 
    addiu   t7, t6, 0x4000             ## t7 = 00004000
    mtc1    t7, $f4                    ## $f4 = 0.00
    lui     $at, 0xC680                ## $at = C6800000
    mtc1    $at, $f16                  ## $f16 = -16384.00
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    sub.s   $f18, $f16, $f10           
    trunc.w.s $f4, $f18                  
    mfc1    t9, $f4                    
    nop
    sh      t9, 0x01B8(s0)             ## 000001B8
    lh      v0, 0x01B8(s0)             ## 000001B8
lbl_808FD7E4:
    addiu   v0, v0, 0x4000             ## v0 = 00004000
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_808FD800           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_808FD800 
    or      v1, v0, $zero              ## v1 = 00004000
lbl_808FD800:
    slti    $at, v1, 0x0100            
    beq     $at, $zero, lbl_808FD850   
    lui     $at, 0x42A0                ## $at = 42A00000
    mtc1    $at, $f8                   ## $f8 = 80.00
    lwc1    $f16, 0x0220(s0)           ## 00000220
    lwc1    $f6, 0x0090(s0)            ## 00000090
    lbu     t0, 0x0239(s0)             ## 00000239
    mul.s   $f10, $f8, $f16            
    ori     t1, t0, 0x0001             ## t1 = 00000001
    sb      t1, 0x0239(s0)             ## 00000239
    c.lt.s  $f6, $f10                  
    nop
    bc1f    lbl_808FD848               
    nop
    jal     func_808FBC50              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FD850 
    nop
lbl_808FD848:
    jal     func_808FBD30              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808FD850:
    jal     func_808FCA8C              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FD86C:
    addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
    sdc1    $f20, 0x0028($sp)          
    sw      s5, 0x0058($sp)            
    sw      s3, 0x0050($sp)            
    mtc1    $zero, $f20                ## $f20 = 0.00
    or      s3, a0, $zero              ## s3 = 00000000
    or      s5, a1, $zero              ## s5 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s4, 0x0054($sp)            
    sw      s2, 0x004C($sp)            
    sw      s1, 0x0048($sp)            
    sw      s0, 0x0044($sp)            
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    lui     $at, %hi(var_808FEBF8)     ## $at = 80900000
    lwc1    $f6, %lo(var_808FEBF8)($at) 
    lwc1    $f4, 0x0220(s3)            ## 00000220
    mfc1    a1, $f20                   
    addiu   a0, s3, 0x0068             ## a0 = 00000068
    mul.s   $f8, $f4, $f6              
    mfc1    a2, $f8                    
    jal     func_8006385C              
    nop
    lh      v0, 0x01B6(s3)             ## 000001B6
    addiu   a0, s3, 0x00B4             ## a0 = 000000B4
    addiu   a1, $zero, 0x4800          ## a1 = 00004800
    bne     v0, $zero, lbl_808FDA54    
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    jal     func_80063704              
    addiu   a2, $zero, 0x071C          ## a2 = 0000071C
    addiu   a0, s3, 0x01BA             ## a0 = 000001BA
    addiu   a1, $zero, 0x4800          ## a1 = 00004800
    jal     func_80063704              
    addiu   a2, $zero, 0x071C          ## a2 = 0000071C
    addiu   a0, s3, 0x01BC             ## a0 = 000001BC
    addiu   a1, $zero, 0x4800          ## a1 = 00004800
    jal     func_80063704              
    addiu   a2, $zero, 0x071C          ## a2 = 0000071C
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f22                  ## $f22 = 3.00
    lwc1    $f0, 0x0220(s3)            ## 00000220
    lui     $at, 0x4140                ## $at = 41400000
    mtc1    $at, $f24                  ## $f24 = 12.00
    mul.s   $f10, $f0, $f22            
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f4                   ## $f4 = 5.00
    mul.s   $f16, $f0, $f24            
    addiu   s0, s3, 0x0024             ## s0 = 00000024
    addiu   t0, $zero, 0x0001          ## t0 = 00000001
    mul.s   $f6, $f0, $f4              
    mfc1    a2, $f10                   
    addiu   t1, $zero, 0xFFFF          ## t1 = FFFFFFFF
    addiu   t2, $zero, 0x000A          ## t2 = 0000000A
    sw      t2, 0x0020($sp)            
    sw      t1, 0x001C($sp)            
    trunc.w.s $f18, $f16                 
    sw      t0, 0x0018($sp)            
    or      a1, s0, $zero              ## a1 = 00000024
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f18                   
    sw      $zero, 0x0024($sp)         
    or      a0, s5, $zero              ## a0 = 00000000
    mfc1    t9, $f8                    
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      t7, 0x0010($sp)            
    jal     func_8001D29C              
    sw      t9, 0x0014($sp)            
    lui     $at, %hi(var_808FEBFC)     ## $at = 80900000
    lwc1    $f10, %lo(var_808FEBFC)($at) 
    lwc1    $f16, 0x0050(s3)           ## 00000050
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_808FDA30               
    lhu     t4, 0x0088(s3)             ## 00000088
    lhu     v0, 0x0088(s3)             ## 00000088
    addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
    or      a0, s5, $zero              ## a0 = 00000000
    andi    t3, v0, 0x0002             ## t3 = 00000000
    bne     t3, $zero, lbl_808FD9B4    
    andi    t4, v0, 0x0008             ## t4 = 00000000
    beql    t4, $zero, lbl_808FDA30    
    lhu     t4, 0x0088(s3)             ## 00000088
lbl_808FD9B4:
    lwc1    $f0, 0x0220(s3)            ## 00000220
    lw      t5, 0x0004(s3)             ## 00000004
    swc1    $f20, 0x0058(s3)           ## 00000058
    mul.s   $f18, $f0, $f22            
    and     t6, t5, $at                
    lui     $at, 0x40A0                ## $at = 40A00000
    mul.s   $f4, $f0, $f24             
    mtc1    $at, $f8                   ## $f8 = 5.00
    swc1    $f20, 0x0054(s3)           ## 00000054
    swc1    $f20, 0x0050(s3)           ## 00000050
    mul.s   $f10, $f0, $f8             
    swc1    $f20, 0x0068(s3)           ## 00000068
    sw      t6, 0x0004(s3)             ## 00000004
    mfc1    a2, $f18                   
    addiu   t1, $zero, 0x000F          ## t1 = 0000000F
    addiu   t2, $zero, 0xFFFF          ## t2 = FFFFFFFF
    trunc.w.s $f6, $f4                   
    addiu   t3, $zero, 0x000A          ## t3 = 0000000A
    sw      t3, 0x0020($sp)            
    trunc.w.s $f16, $f10                 
    mfc1    t8, $f6                    
    sw      t2, 0x001C($sp)            
    sw      t1, 0x0018($sp)            
    mfc1    t0, $f16                   
    sw      $zero, 0x0024($sp)         
    or      a1, s0, $zero              ## a1 = 00000024
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      t8, 0x0010($sp)            
    jal     func_8001D29C              
    sw      t0, 0x0014($sp)            
    lhu     t4, 0x0088(s3)             ## 00000088
lbl_808FDA30:
    or      a0, s3, $zero              ## a0 = 00000000
    andi    t5, t4, 0x0002             ## t5 = 00000000
    beql    t5, $zero, lbl_808FDBA4    
    lw      $ra, 0x005C($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x387B          ## a1 = 0000387B
    addiu   t6, $zero, 0x0001          ## t6 = 00000001
    beq     $zero, $zero, lbl_808FDBA0 
    sh      t6, 0x01B6(s3)             ## 000001B6
lbl_808FDA54:
    bnel    v0, $at, lbl_808FDBA4      
    lw      $ra, 0x005C($sp)           
    lw      t8, 0x0024(s3)             ## 00000024
    addiu   s4, $sp, 0x0078            ## s4 = FFFFFFF0
    sw      t8, 0x0000(s4)             ## FFFFFFF0
    lw      t7, 0x0028(s3)             ## 00000028
    sw      t7, 0x0004(s4)             ## FFFFFFF4
    lw      t8, 0x002C(s3)             ## 0000002C
    sw      t8, 0x0008(s4)             ## FFFFFFF8
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B4(s3)             ## 000000B4
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f18                  ## $f18 = 20.00
    lh      a0, 0x00B4(s3)             ## 000000B4
    mul.s   $f24, $f0, $f18            
    jal     func_80063684              ## coss?
    nop
    swc1    $f0, 0x0068($sp)           
    jal     func_800636C4              ## sins?
    lh      a0, 0x00B6(s3)             ## 000000B6
    lui     $at, 0xC1A0                ## $at = C1A00000
    mtc1    $at, $f4                   ## $f4 = -20.00
    lwc1    $f6, 0x0068($sp)           
    lh      a0, 0x00B4(s3)             ## 000000B4
    mul.s   $f8, $f4, $f6              
    nop
    mul.s   $f20, $f0, $f8             
    jal     func_80063684              ## coss?
    nop
    swc1    $f0, 0x0068($sp)           
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(s3)             ## 000000B6
    lui     $at, 0xC1A0                ## $at = C1A00000
    mtc1    $at, $f10                  ## $f10 = -20.00
    lwc1    $f16, 0x0068($sp)          
    lui     s1, %hi(var_808FEA20)      ## s1 = 80900000
    addiu   s1, s1, %lo(var_808FEA20)  ## s1 = 808FEA20
    mul.s   $f18, $f10, $f16           
    or      s0, $zero, $zero           ## s0 = 00000000
    addiu   s2, $zero, 0x0004          ## s2 = 00000004
    mul.s   $f22, $f0, $f18            
    nop
lbl_808FDAFC:
    addiu   t9, $zero, 0x01F4          ## t9 = 000001F4
    addiu   t0, $zero, 0x0032          ## t0 = 00000032
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    or      a0, s5, $zero              ## a0 = 00000000
    or      a1, s4, $zero              ## a1 = FFFFFFF0
    or      a2, s1, $zero              ## a2 = 808FEA20
    jal     func_8001C1C4              
    or      a3, s1, $zero              ## a3 = 808FEA20
    lwc1    $f4, 0x0078($sp)           
    lwc1    $f8, 0x007C($sp)           
    lwc1    $f16, 0x0080($sp)          
    add.s   $f6, $f4, $f20             
    addiu   s0, s0, 0x0001             ## s0 = 00000001
    add.s   $f10, $f8, $f24            
    swc1    $f6, 0x0078($sp)           
    add.s   $f18, $f16, $f22           
    swc1    $f10, 0x007C($sp)          
    bne     s0, s2, lbl_808FDAFC       
    swc1    $f18, 0x0080($sp)          
    lui     $at, 0x43FA                ## $at = 43FA0000
    mtc1    $at, $f4                   ## $f4 = 500.00
    lwc1    $f0, 0x0220(s3)            ## 00000220
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f10                  ## $f10 = 100.00
    mul.s   $f6, $f0, $f4              
    or      a0, s5, $zero              ## a0 = 00000000
    addiu   a1, s3, 0x0008             ## a1 = 00000008
    mul.s   $f16, $f0, $f10            
    or      a2, s1, $zero              ## a2 = 808FEA20
    or      a3, s1, $zero              ## a3 = 808FEA20
    trunc.w.s $f8, $f6                   
    trunc.w.s $f18, $f16                 
    mfc1    t2, $f8                    
    mfc1    t4, $f18                   
    sw      t2, 0x0010($sp)            
    jal     func_8001C1C4              
    sw      t4, 0x0014($sp)            
    or      a0, s3, $zero              ## a0 = 00000000
    jal     func_808FC110              
    or      a1, s5, $zero              ## a1 = 00000000
lbl_808FDBA0:
    lw      $ra, 0x005C($sp)           
lbl_808FDBA4:
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    lw      s0, 0x0044($sp)            
    lw      s1, 0x0048($sp)            
    lw      s2, 0x004C($sp)            
    lw      s3, 0x0050($sp)            
    lw      s4, 0x0054($sp)            
    lw      s5, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           ## $sp = 00000000


func_808FDBD0:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0034($sp)           
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f6                   ## $f6 = 5.00
    lwc1    $f4, 0x0220(s0)            ## 00000220
    addiu   a0, s0, 0x0028             ## a0 = 00000028
    lw      a1, 0x000C(s0)             ## 0000000C
    mul.s   $f8, $f4, $f6              
    mfc1    a2, $f8                    
    jal     func_8006385C              
    nop
    lui     $at, %hi(var_808FEC00)     ## $at = 80900000
    lwc1    $f16, %lo(var_808FEC00)($at) 
    lwc1    $f10, 0x0220(s0)           ## 00000220
    lui     $at, %hi(var_808FEC04)     ## $at = 80900000
    lwc1    $f4, %lo(var_808FEC04)($at) 
    mul.s   $f18, $f10, $f16           
    addiu   a0, s0, 0x0050             ## a0 = 00000050
    mul.s   $f0, $f18, $f4             
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_808FDCF8    
    lui     $at, 0x43FA                ## $at = 43FA0000
    lwc1    $f0, 0x0220(s0)            ## 00000220
    mtc1    $at, $f6                   ## $f6 = 500.00
    lui     $at, 0x42C8                ## $at = 42C80000
    mtc1    $at, $f16                  ## $f16 = 100.00
    mul.s   $f8, $f0, $f6              
    lui     a2, %hi(var_808FEA20)      ## a2 = 80900000
    addiu   a2, a2, %lo(var_808FEA20)  ## a2 = 808FEA20
    mul.s   $f18, $f0, $f16            
    or      a3, a2, $zero              ## a3 = 808FEA20
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    trunc.w.s $f10, $f8                  
    trunc.w.s $f4, $f18                  
    mfc1    t7, $f10                   
    mfc1    t9, $f4                    
    sw      t7, 0x0010($sp)            
    jal     func_8001C1C4              
    sw      t9, 0x0014($sp)            
    lbu     t0, 0x0116(s0)             ## 00000116
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    bne     t0, $zero, lbl_808FDCE8    
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    addiu   a1, s0, 0x0024             ## a1 = 00000024
    sw      a1, 0x0038($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80013678              
    addiu   a2, $zero, 0x000C          ## a2 = 0000000C
    lh      t1, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, s1, $zero              ## a0 = 00000000
    bne     t1, $at, lbl_808FDCF0      
    lw      a1, 0x0038($sp)            
    jal     func_80013678              
    addiu   a2, $zero, 0x000C          ## a2 = 0000000C
    or      a0, s1, $zero              ## a0 = 00000000
    lw      a1, 0x0038($sp)            
    jal     func_80013678              
    addiu   a2, $zero, 0x000C          ## a2 = 0000000C
    beq     $zero, $zero, lbl_808FDCF0 
    nop
lbl_808FDCE8:
    jal     func_80013A84              
    addiu   a3, $zero, 0x0030          ## a3 = 00000030
lbl_808FDCF0:
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808FDCF8:
    lui     $at, 0x4040                ## $at = 40400000
    mtc1    $at, $f6                   ## $f6 = 3.00
    lwc1    $f0, 0x0220(s0)            ## 00000220
    lui     $at, 0x4140                ## $at = 41400000
    mtc1    $at, $f10                  ## $f10 = 12.00
    mul.s   $f8, $f0, $f6              
    lui     $at, 0x40A0                ## $at = 40A00000
    mtc1    $at, $f4                   ## $f4 = 5.00
    mul.s   $f16, $f0, $f10            
    lwc1    $f2, 0x0050(s0)            ## 00000050
    lh      t2, 0x00B8(s0)             ## 000000B8
    mul.s   $f6, $f0, $f4              
    mfc1    a2, $f8                    
    addiu   t3, t2, 0x1C70             ## t3 = 00001C70
    sh      t3, 0x00B8(s0)             ## 000000B8
    swc1    $f2, 0x0058(s0)            ## 00000058
    swc1    $f2, 0x0054(s0)            ## 00000054
    trunc.w.s $f18, $f16                 
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
    trunc.w.s $f8, $f6                   
    mfc1    t5, $f18                   
    addiu   t0, $zero, 0x000A          ## t0 = 0000000A
    sw      t0, 0x0020($sp)            
    mfc1    t7, $f8                    
    sw      t9, 0x001C($sp)            
    sw      t8, 0x0018($sp)            
    sw      $zero, 0x0024($sp)         
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    or      a3, $zero, $zero           ## a3 = 00000000
    sw      t5, 0x0010($sp)            
    jal     func_8001D29C              
    sw      t7, 0x0014($sp)            
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_808FDD94:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x01B6(a0)             ## 000001B6
    beq     v0, $zero, lbl_808FDDB0    
    addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x01B6(a0)             ## 000001B6
lbl_808FDDB0:
    lw      a1, 0x001C($sp)            
    jal     func_80022BB0              
    sw      a0, 0x0018($sp)            
    bne     v0, $zero, lbl_808FDDD4    
    lw      a0, 0x0018($sp)            
    lh      t7, 0x01B6(a0)             ## 000001B6
    lw      a1, 0x001C($sp)            
    bne     t7, $zero, lbl_808FDDE4    
    nop
lbl_808FDDD4:
    jal     func_80020EB4              
    nop
    beq     $zero, $zero, lbl_808FDDF0 
    lw      $ra, 0x0014($sp)           
lbl_808FDDE4:
    jal     func_80022CF4              
    addiu   a2, $zero, 0x0007          ## a2 = 00000007
    lw      $ra, 0x0014($sp)           
lbl_808FDDF0:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FDDFC:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s1, 0x0028($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s0, 0x0024($sp)            
    sw      a1, 0x004C($sp)            
    lbu     v0, 0x0239(s1)             ## 00000239
    or      a0, s1, $zero              ## a0 = 00000000
    lw      t5, 0x004C($sp)            
    andi    t6, v0, 0x0002             ## t6 = 00000000
    beq     t6, $zero, lbl_808FDFC8    
    andi    t7, v0, 0xFFFD             ## t7 = 00000000
    sb      t7, 0x0239(s1)             ## 00000239
    addiu   a1, s1, 0x0228             ## a1 = 00000228
    jal     func_800284A8              
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    lbu     t8, 0x023C(s1)             ## 0000023C
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    beql    t8, $at, lbl_808FE0A0      
    lw      $ra, 0x002C($sp)           
    lbu     v0, 0x00B1(s1)             ## 000000B1
    lui     t1, %hi(func_808FD6A8)     ## t1 = 80900000
    bnel    v0, $zero, lbl_808FDE6C    
    lw      v1, 0x01B0(s1)             ## 000001B0
    lbu     t9, 0x00B0(s1)             ## 000000B0
    beql    t9, $zero, lbl_808FE0A0    
    lw      $ra, 0x002C($sp)           
    lw      v1, 0x01B0(s1)             ## 000001B0
lbl_808FDE6C:
    lbu     a0, 0x00AF(s1)             ## 000000AF
    lbu     t0, 0x00B0(s1)             ## 000000B0
    addiu   t1, t1, %lo(func_808FD6A8) ## t1 = 808FD6A8
    beq     t1, v1, lbl_808FDEEC       
    subu    s0, a0, t0                 
    addiu   a1, $zero, 0x000E          ## a1 = 0000000E
    beq     a1, v0, lbl_808FDE94       
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     v0, $at, lbl_808FDEB4      
    lui     t2, %hi(func_808FD114)     ## t2 = 80900000
lbl_808FDE94:
    bnel    a1, v0, lbl_808FDEA4       
    or      a0, s1, $zero              ## a0 = 00000000
    or      s0, a0, $zero              ## s0 = 00000000
    or      a0, s1, $zero              ## a0 = 00000000
lbl_808FDEA4:
    jal     func_808FBD64              
    addiu   a1, $zero, 0x0002          ## a1 = 00000002
    beq     $zero, $zero, lbl_808FDF3C 
    nop
lbl_808FDEB4:
    addiu   t2, t2, %lo(func_808FD114) ## t2 = FFFFD114
    bne     t2, v1, lbl_808FDEDC       
    or      a0, s1, $zero              ## a0 = 00000000
    bgtz    s0, lbl_808FDECC           
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   s0, $zero, 0x0001          ## s0 = 00000001
lbl_808FDECC:
    jal     func_808FBD64              
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    beq     $zero, $zero, lbl_808FDF3C 
    nop
lbl_808FDEDC:
    jal     func_808FBD64              
    or      a1, $zero, $zero           ## a1 = 00000000
    beq     $zero, $zero, lbl_808FDF3C 
    nop
lbl_808FDEEC:
    addiu   a1, $zero, 0x000E          ## a1 = 0000000E
    beq     a1, v0, lbl_808FDF00       
    addiu   $at, $zero, 0x000F         ## $at = 0000000F
    bnel    v0, $at, lbl_808FDF2C      
    addiu   $at, $zero, 0x0001         ## $at = 00000001
lbl_808FDF00:
    blez    s0, lbl_808FDF18           
    nop
    jal     func_808FC0A4              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FDF3C 
    nop
lbl_808FDF18:
    jal     func_808FBE2C              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FDF3C 
    nop
    addiu   $at, $zero, 0x0001         ## $at = 00000001
lbl_808FDF2C:
    beq     v0, $at, lbl_808FE09C      
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_808FBD64              
    or      a1, $zero, $zero           ## a1 = 00000000
lbl_808FDF3C:
    bgezl   s0, lbl_808FDF50           
    sb      s0, 0x00AF(s1)             ## 000000AF
    beq     $zero, $zero, lbl_808FDF50 
    sb      $zero, 0x00AF(s1)          ## 000000AF
    sb      s0, 0x00AF(s1)             ## 000000AF
lbl_808FDF50:
    lbu     t3, 0x00B1(s1)             ## 000000B1
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    bne     t3, $at, lbl_808FE024      
    lui     $at, 0x428C                ## $at = 428C0000
    mtc1    $at, $f6                   ## $f6 = 70.00
    lwc1    $f4, 0x0220(s1)            ## 00000220
    addiu   a2, s1, 0x0024             ## a2 = 00000024
    sw      a2, 0x0038($sp)            
    mul.s   $f0, $f4, $f6              
    or      s0, $zero, $zero           ## s0 = 00000000
    trunc.w.s $f8, $f0                   
    mfc1    a3, $f8                    
    nop
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      a3, 0x0034($sp)            
    lw      a2, 0x0038($sp)            
lbl_808FDF94:
    lw      a3, 0x0034($sp)            
    lw      a0, 0x004C($sp)            
    or      a1, s1, $zero              ## a1 = 00000000
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8001DFEC              
    sw      s0, 0x0018($sp)            
    addiu   s0, s0, 0x0001             ## s0 = 00000001
    addiu   $at, $zero, 0x0004         ## $at = 00000004
    bnel    s0, $at, lbl_808FDF94      
    lw      a2, 0x0038($sp)            
    beq     $zero, $zero, lbl_808FE028 
    lbu     t1, 0x00AF(s1)             ## 000000AF
lbl_808FDFC8:
    lbu     t6, 0x1C26(t5)             ## 00001C26
    beql    t6, $zero, lbl_808FE0A0    
    lw      $ra, 0x002C($sp)           
    lbu     t7, 0x023C(s1)             ## 0000023C
    addiu   $at, $zero, 0x000C         ## $at = 0000000C
    beql    t7, $at, lbl_808FE0A0      
    lw      $ra, 0x002C($sp)           
    lw      v1, 0x01B0(s1)             ## 000001B0
    lui     t8, %hi(func_808FD6A8)     ## t8 = 80900000
    addiu   t8, t8, %lo(func_808FD6A8) ## t8 = 808FD6A8
    beq     t8, v1, lbl_808FE09C       
    lui     t9, %hi(func_808FD598)     ## t9 = 80900000
    addiu   t9, t9, %lo(func_808FD598) ## t9 = 808FD598
    beql    t9, v1, lbl_808FE0A0       
    lw      $ra, 0x002C($sp)           
    lbu     v0, 0x00AF(s1)             ## 000000AF
    or      a0, s1, $zero              ## a0 = 00000000
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    beq     v0, $zero, lbl_808FE09C    
    addiu   t0, v0, 0xFFFF             ## t0 = FFFFFFFF
    sb      t0, 0x00AF(s1)             ## 000000AF
    jal     func_808FBD64              
    sb      $zero, 0x0116(s1)          ## 00000116
lbl_808FE024:
    lbu     t1, 0x00AF(s1)             ## 000000AF
lbl_808FE028:
    lw      a0, 0x004C($sp)            
    beq     t1, $zero, lbl_808FE068    
    nop
    lh      t2, 0x01B6(s1)             ## 000001B6
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    addiu   a1, $zero, 0x389E          ## a1 = 0000389E
    bne     t2, $at, lbl_808FE058      
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FE0A0 
    lw      $ra, 0x002C($sp)           
lbl_808FE058:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x385E          ## a1 = 0000385E
    beq     $zero, $zero, lbl_808FE0A0 
    lw      $ra, 0x002C($sp)           
lbl_808FE068:
    jal     func_80025B4C              
    or      a1, s1, $zero              ## a1 = 00000000
    lh      t3, 0x001C(s1)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    addiu   a1, $zero, 0x385F          ## a1 = 0000385F
    bne     t3, $at, lbl_808FE094      
    or      a0, s1, $zero              ## a0 = 00000000
    jal     func_80022FD0              
    or      a0, s1, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FE0A0 
    lw      $ra, 0x002C($sp)           
lbl_808FE094:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3862          ## a1 = 00003862
lbl_808FE09C:
    lw      $ra, 0x002C($sp)           
lbl_808FE0A0:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_808FE0B0:
    addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s1, a1, $zero              ## s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lbu     v0, 0x0238(s0)             ## 00000238
    or      a0, s0, $zero              ## a0 = 00000000
    andi    t6, v0, 0x0002             ## t6 = 00000000
    beq     t6, $zero, lbl_808FE0E4    
    andi    t7, v0, 0xFFFD             ## t7 = 00000000
    jal     func_808FBD30              
    sb      t7, 0x0238(s0)             ## 00000238
lbl_808FE0E4:
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808FDDFC              
    or      a1, s1, $zero              ## a1 = 00000000
    lw      t9, 0x01B0(s0)             ## 000001B0
    or      a0, s0, $zero              ## a0 = 00000000
    or      a1, s1, $zero              ## a1 = 00000000
    jalr    $ra, t9                    
    nop
    lw      v0, 0x01B0(s0)             ## 000001B0
    lui     t8, %hi(func_808FD86C)     ## t8 = 80900000
    addiu   t8, t8, %lo(func_808FD86C) ## t8 = 808FD86C
    bne     t8, v0, lbl_808FE168       
    lui     v1, %hi(func_808FDD94)     ## v1 = 80900000
    jal     func_8002121C              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f0                   ## $f0 = 10.00
    lui     $at, 0x4170                ## $at = 41700000
    mtc1    $at, $f6                   ## $f6 = 15.00
    lwc1    $f4, 0x0220(s0)            ## 00000220
    addiu   t0, $zero, 0x0005          ## t0 = 00000005
    mfc1    a2, $f0                    
    mul.s   $f8, $f4, $f6              
    sw      t0, 0x0014($sp)            
    or      a0, s1, $zero              ## a0 = 00000000
    or      a1, s0, $zero              ## a1 = 00000000
    swc1    $f0, 0x0010($sp)           
    mfc1    a3, $f8                    
    jal     func_80021E6C              
    nop
    lui     v1, %hi(func_808FDD94)     ## v1 = 80900000
    beq     $zero, $zero, lbl_808FE1B0 
    addiu   v1, v1, %lo(func_808FDD94) ## v1 = 808FDD94
lbl_808FE168:
    addiu   v1, v1, %lo(func_808FDD94) ## v1 = 808FBB28
    beq     v1, v0, lbl_808FE1B0       
    or      a0, s1, $zero              ## a0 = 00000000
    mtc1    $zero, $f0                 ## $f0 = 0.00
    addiu   t1, $zero, 0x0004          ## t1 = 00000004
    sw      t1, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    or      a1, s0, $zero              ## a1 = 00000000
    sw      v1, 0x002C($sp)            
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      t2, 0x0224(s0)             ## 00000224
    lw      v1, 0x002C($sp)            
    bnel    t2, $zero, lbl_808FE1B4    
    lw      t5, 0x01B0(s0)             ## 000001B0
    lw      t3, 0x0078(s0)             ## 00000078
    sw      t3, 0x0224(s0)             ## 00000224
lbl_808FE1B0:
    lw      t5, 0x01B0(s0)             ## 000001B0
lbl_808FE1B4:
    lui     t4, %hi(func_808FCDC0)     ## t4 = 80900000
    addiu   t4, t4, %lo(func_808FCDC0) ## t4 = 808FCDC0
    bne     t4, t5, lbl_808FE1F0       
    or      a0, s1, $zero              ## a0 = 00000000
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    addu    a1, s1, $at                
    addiu   a2, s0, 0x0228             ## a2 = 00000228
    jal     func_8004BD50              ## CollisionCheck_setAT
    sw      v1, 0x002C($sp)            
    lw      t6, 0x0004(s0)             ## 00000004
    lui     $at, 0x0100                ## $at = 01000000
    lw      v1, 0x002C($sp)            
    or      t7, t6, $at                ## t7 = 01000000
    sw      t7, 0x0004(s0)             ## 00000004
lbl_808FE1F0:
    lbu     t9, 0x0239(s0)             ## 00000239
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    andi    t8, t9, 0x0001             ## t8 = 00000000
    beq     t8, $zero, lbl_808FE21C    
    or      a0, s1, $zero              ## a0 = 00000000
    addu    a1, s1, $at                
    addiu   a2, s0, 0x0228             ## a2 = 00000228
    jal     func_8004BF40              ## CollisionCheck_setAC
    sw      v1, 0x002C($sp)            
    lw      v1, 0x002C($sp)            
lbl_808FE21C:
    lw      t0, 0x01B0(s0)             ## 000001B0
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    beq     v1, t0, lbl_808FE23C       
    or      a0, s1, $zero              ## a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004C130              ## CollisionCheck_setOT
    addiu   a2, s0, 0x0228             ## a2 = 00000228
lbl_808FE23C:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_808FE250:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s1, 0x0018($sp)            
    sw      a1, 0x0034($sp)            
    lui     $at, %hi(var_808FEC08)     ## $at = 80900000
    lwc1    $f4, %lo(var_808FEC08)($at) 
    lwc1    $f0, 0x0220(s0)            ## 00000220
    lui     $at, 0xC0C0                ## $at = C0C00000
    mtc1    $at, $f10                  ## $f10 = -6.00
    mul.s   $f6, $f0, $f4              
    lw      t6, 0x0034($sp)            
    or      a3, $zero, $zero           ## a3 = 00000000
    mul.s   $f16, $f10, $f0            
    lw      s1, 0x0000(t6)             ## 00000000
    swc1    $f6, 0x002C($sp)           
    lwc1    $f8, 0x000C(s0)            ## 0000000C
    lw      a2, 0x0010(s0)             ## 00000010
    lwc1    $f12, 0x0008(s0)           ## 00000008
    jal     func_800AA7F4              
    add.s   $f14, $f8, $f16            
    lh      a0, 0x01BA(s0)             ## 000001BA
    lh      a1, 0x00B6(s0)             ## 000000B6
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lwc1    $f12, 0x002C($sp)          
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      v1, 0x02C0(s1)             ## 000002C0
    lui     t8, 0xDA38                 ## t8 = DA380000
    ori     t8, t8, 0x0003             ## t8 = DA380003
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(s1)             ## 000002C0
    sw      t8, 0x0000(v1)             ## 00000000
    lw      t9, 0x0034($sp)            
    lw      a0, 0x0000(t9)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0020($sp)            
    lw      a3, 0x0020($sp)            
    lui     t1, 0xDE00                 ## t1 = DE000000
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0004(a3)             ## 00000004
    lw      v1, 0x02C0(s1)             ## 000002C0
    lui     t2, 0x0600                 ## t2 = 06000000
    addiu   t2, t2, 0x1330             ## t2 = 06001330
    addiu   t0, v1, 0x0008             ## t0 = 00000008
    sw      t0, 0x02C0(s1)             ## 000002C0
    sw      t2, 0x0004(v1)             ## 00000004
    sw      t1, 0x0000(v1)             ## 00000000
    jal     func_80020F04              
    addiu   a1, $zero, 0x0000          ## a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_808FE340:
    addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
    sw      s1, 0x003C($sp)            
    or      s1, a0, $zero              ## s1 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s8, 0x0058($sp)            
    sw      s7, 0x0054($sp)            
    sw      s6, 0x0050($sp)            
    sw      s5, 0x004C($sp)            
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    sw      s2, 0x0040($sp)            
    sw      s0, 0x0038($sp)            
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x00E4($sp)            
    lw      t8, 0x01B0(s1)             ## 000001B0
    lw      t6, 0x00E4($sp)            
    lui     t7, %hi(func_808FD86C)     ## t7 = 80900000
    addiu   t7, t7, %lo(func_808FD86C) ## t7 = 808FD86C
    bne     t7, t8, lbl_808FE3A8       
    lw      s8, 0x0000(t6)             ## 00000000
    addiu   t9, $zero, 0x0002          ## t9 = 00000002
    beq     $zero, $zero, lbl_808FE3B0 
    sw      t9, 0x008C($sp)            
lbl_808FE3A8:
    addiu   t0, $zero, 0x0003          ## t0 = 00000003
    sw      t0, 0x008C($sp)            
lbl_808FE3B0:
    lui     $at, %hi(var_808FEC0C)     ## $at = 80900000
    lwc1    $f6, %lo(var_808FEC0C)($at) 
    lwc1    $f4, 0x0220(s1)            ## 00000220
    lwc1    $f12, 0x0024(s1)           ## 00000024
    lwc1    $f14, 0x0028(s1)           ## 00000028
    mul.s   $f20, $f4, $f6             
    lw      a2, 0x002C(s1)             ## 0000002C
    jal     func_800AA7F4              
    or      a3, $zero, $zero           ## a3 = 00000000
    mfc1    a2, $f20                   
    mov.s   $f12, $f20                 
    mov.s   $f14, $f20                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    jal     func_800AA740              
    addiu   a0, $sp, 0x00A0            ## a0 = FFFFFFC0
    lbu     t1, 0x0114(s1)             ## 00000114
    lui     $at, 0x41A0                ## $at = 41A00000
    or      s3, $zero, $zero           ## s3 = 00000000
    beq     t1, $zero, lbl_808FE430    
    or      s4, s1, $zero              ## s4 = 00000000
    mtc1    $at, $f22                  ## $f22 = 20.00
    lwc1    $f8, 0x0220(s1)            ## 00000220
    lwc1    $f16, 0x0028(s1)           ## 00000028
    lwc1    $f10, 0x0024(s1)           ## 00000024
    mul.s   $f26, $f8, $f22            
    lwc1    $f4, 0x002C(s1)            ## 0000002C
    swc1    $f10, 0x0154(s1)           ## 00000154
    swc1    $f4, 0x015C(s1)            ## 0000015C
    sub.s   $f18, $f16, $f26           
    swc1    $f18, 0x0158(s1)           ## 00000158
    swc1    $f26, 0x0094($sp)          
lbl_808FE430:
    lw      t2, 0x008C($sp)            
    lui     $at, 0x41A0                ## $at = 41A00000
    mtc1    $at, $f22                  ## $f22 = 20.00
    blez    t2, lbl_808FE5F0           
    lwc1    $f26, 0x0094($sp)          
    lui     $at, 0x4220                ## $at = 42200000
    lui     s5, %hi(var_808FEBAC)      ## s5 = 80900000
    addiu   t3, s1, 0x0228             ## t3 = 00000228
    mtc1    $at, $f24                  ## $f24 = 40.00
    sw      t3, 0x0068($sp)            
    addiu   s5, s5, %lo(var_808FEBAC)  ## s5 = 808FEBAC
    addiu   s6, $zero, 0x0033          ## s6 = 00000033
    addiu   s7, $zero, 0x0034          ## s7 = 00000034
lbl_808FE464:
    jal     func_800636C4              ## sins?
    lh      a0, 0x01BA(s4)             ## 000001BA
    mul.s   $f6, $f22, $f0             
    lwc1    $f8, 0x0220(s1)            ## 00000220
    lwc1    $f16, 0x00D4($sp)          
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f16, $f10           
    swc1    $f18, 0x00D4($sp)          
    jal     func_80063684              ## coss?
    lh      a0, 0x01BA(s4)             ## 000001BA
    mul.s   $f4, $f0, $f22             
    lwc1    $f6, 0x0220(s1)            ## 00000220
    lh      a0, 0x00B6(s1)             ## 000000B6
    mul.s   $f20, $f4, $f6             
    jal     func_800636C4              ## sins?
    nop
    mul.s   $f16, $f20, $f0            
    lwc1    $f8, 0x00D0($sp)           
    sub.s   $f10, $f8, $f16            
    swc1    $f10, 0x00D0($sp)          
    jal     func_80063684              ## coss?
    lh      a0, 0x00B6(s1)             ## 000000B6
    mul.s   $f4, $f20, $f0             
    lwc1    $f18, 0x00D8($sp)          
    addiu   a0, $sp, 0x00A0            ## a0 = FFFFFFC0
    sub.s   $f6, $f18, $f4             
    jal     func_800AA764              
    swc1    $f6, 0x00D8($sp)           
    lh      a0, 0x01BA(s4)             ## 000001BA
    lh      a1, 0x00B6(s1)             ## 000000B6
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lw      s2, 0x02C0(s8)             ## 000002C0
    lui     t5, 0xDA38                 ## t5 = DA380000
    ori     t5, t5, 0x0003             ## t5 = DA380003
    addiu   t4, s2, 0x0008             ## t4 = 00000008
    sw      t4, 0x02C0(s8)             ## 000002C0
    sw      t5, 0x0000(s2)             ## 00000000
    lw      t6, 0x00E4($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t6)             ## 00000000
    sw      v0, 0x0004(s2)             ## 00000004
    lw      s0, 0x02C0(s8)             ## 000002C0
    lui     t8, 0xDE00                 ## t8 = DE000000
    or      a0, s6, $zero              ## a0 = 00000033
    addiu   t7, s0, 0x0008             ## t7 = 00000008
    sw      t7, 0x02C0(s8)             ## 000002C0
    sw      t8, 0x0000(s0)             ## 00000000
    lw      t9, 0x0000(s5)             ## 808FEBAC
    sw      t9, 0x0004(s0)             ## 00000004
    jal     func_80050CE4              
    lw      a1, 0x0068($sp)            
    or      a0, s7, $zero              ## a0 = 00000034
    jal     func_80050CE4              
    lw      a1, 0x0068($sp)            
    bne     s3, $zero, lbl_808FE59C    
    slti    $at, s3, 0x0002            
    lw      t1, 0x01B0(s1)             ## 000001B0
    lui     t0, %hi(func_808FD744)     ## t0 = 80900000
    addiu   t0, t0, %lo(func_808FD744) ## t0 = 808FD744
    beq     t0, t1, lbl_808FE578       
    lwc1    $f8, 0x00D0($sp)           
    swc1    $f8, 0x0038(s1)            ## 00000038
    lwc1    $f16, 0x00D4($sp)          
    swc1    $f16, 0x003C(s1)           ## 0000003C
    lwc1    $f10, 0x00D8($sp)          
    beq     $zero, $zero, lbl_808FE59C 
    swc1    $f10, 0x0040(s1)           ## 00000040
lbl_808FE578:
    lwc1    $f6, 0x0220(s1)            ## 00000220
    lwc1    $f4, 0x000C(s1)            ## 0000000C
    lwc1    $f18, 0x0008(s1)           ## 00000008
    mul.s   $f8, $f24, $f6             
    lwc1    $f10, 0x0010(s1)           ## 00000010
    swc1    $f18, 0x0038(s1)           ## 00000038
    swc1    $f10, 0x0040(s1)           ## 00000040
    add.s   $f16, $f4, $f8             
    swc1    $f16, 0x003C(s1)           ## 0000003C
lbl_808FE59C:
    beq     $at, $zero, lbl_808FE5D8   
    addiu   s4, s4, 0x0002             ## s4 = 00000002
    lbu     t2, 0x0114(s1)             ## 00000114
    sll     t3, s3,  2                 
    subu    t3, t3, s3                 
    beq     t2, $zero, lbl_808FE5D8    
    lwc1    $f18, 0x00D0($sp)          
    sll     t3, t3,  2                 
    addu    v0, s1, t3                 
    swc1    $f18, 0x013C(v0)           ## 0000013C
    lwc1    $f6, 0x00D4($sp)           
    sub.s   $f4, $f6, $f26             
    swc1    $f4, 0x0140(v0)            ## 00000140
    lwc1    $f8, 0x00D8($sp)           
    swc1    $f8, 0x0144(v0)            ## 00000144
lbl_808FE5D8:
    lw      t4, 0x008C($sp)            
    addiu   s3, s3, 0x0001             ## s3 = 00000001
    addiu   s5, s5, 0x0004             ## s5 = 808FEBB0
    addiu   s6, s6, 0x0002             ## s6 = 00000035
    bne     s3, t4, lbl_808FE464       
    addiu   s7, s7, 0x0002             ## s7 = 00000036
lbl_808FE5F0:
    lw      $ra, 0x005C($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    lw      s5, 0x004C($sp)            
    lw      s6, 0x0050($sp)            
    lw      s7, 0x0054($sp)            
    lw      s8, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00E0           ## $sp = 00000000


func_808FE630:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      t7, 0x0030($sp)            
    or      a2, $zero, $zero           ## a2 = 00000000
    lw      t0, 0x0000(t6)             ## 00000000
    lh      a0, 0x01BE(t7)             ## 000001BE
    lh      a1, 0x00B6(t7)             ## 000000B6
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    jal     func_800AAF00              
    sw      t0, 0x002C($sp)            
    lw      t0, 0x002C($sp)            
    lw      v1, 0x02C0(t0)             ## 000002C0
    lui     t9, 0xDA38                 ## t9 = DA380000
    ori     t9, t9, 0x0003             ## t9 = DA380003
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02C0(t0)             ## 000002C0
    sw      t9, 0x0000(v1)             ## 00000000
    lw      t1, 0x0034($sp)            
    lw      a0, 0x0000(t1)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0024($sp)            
    lw      a3, 0x0024($sp)            
    lw      t0, 0x002C($sp)            
    lui     t3, 0xDE00                 ## t3 = DE000000
    sw      v0, 0x0004(a3)             ## 00000004
    lw      v1, 0x02C0(t0)             ## 000002C0
    lui     t4, 0x0600                 ## t4 = 06000000
    addiu   t4, t4, 0x1828             ## t4 = 06001828
    addiu   t2, v1, 0x0008             ## t2 = 00000008
    sw      t2, 0x02C0(t0)             ## 000002C0
    sw      t4, 0x0004(v1)             ## 00000004
    sw      t3, 0x0000(v1)             ## 00000000
    lw      a1, 0x0030($sp)            
    addiu   a0, $zero, 0x0037          ## a0 = 00000037
    addiu   a1, a1, 0x0228             ## a1 = 00000228
    jal     func_80050CE4              
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80050CE4              
    addiu   a0, $zero, 0x0038          ## a0 = 00000038
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FE6EC:
    addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s1, 0x0020($sp)            
    sw      a1, 0x008C($sp)            
    lw      t6, 0x008C($sp)            
    lw      a0, 0x0000(t6)             ## 00000000
    jal     func_8007E404              
    or      s1, a0, $zero              ## s1 = 00000000
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t8, 0xFA00                 ## t8 = FA000000
    addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s1)             ## 000002D0
    sw      t9, 0x0004(v1)             ## 00000004
    sw      t8, 0x0000(v1)             ## 00000000
    lw      a0, 0x0224(s0)             ## 00000224
    lw      a1, 0x0008(s0)             ## 00000008
    lw      a2, 0x000C(s0)             ## 0000000C
    lw      a3, 0x0010(s0)             ## 00000010
    addiu   t0, $sp, 0x0048            ## t0 = FFFFFFC0
    jal     func_8002B668              
    sw      t0, 0x0010($sp)            
    addiu   a0, $sp, 0x0048            ## a0 = FFFFFFC0
    jal     func_800AA79C              
    or      a1, $zero, $zero           ## a1 = 00000000
    lui     $at, %hi(var_808FEC10)     ## $at = 80900000
    lwc1    $f6, %lo(var_808FEC10)($at) 
    lwc1    $f4, 0x0220(s0)            ## 00000220
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f14                  ## $f14 = 1.00
    mul.s   $f12, $f4, $f6             
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    nop
    lw      s0, 0x02D0(s1)             ## 000002D0
    lui     t2, 0xDA38                 ## t2 = DA380000
    ori     t2, t2, 0x0003             ## t2 = DA380003
    addiu   t1, s0, 0x0008             ## t1 = 00000008
    sw      t1, 0x02D0(s1)             ## 000002D0
    sw      t2, 0x0000(s0)             ## 00000000
    lw      t3, 0x008C($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t3)             ## 00000000
    sw      v0, 0x0004(s0)             ## 00000004
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t6, 0x0405                 ## t6 = 04050000
    addiu   t6, t6, 0xE740             ## t6 = 0404E740
    addiu   t4, v1, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s1)             ## 000002D0
    lui     t5, 0xDE00                 ## t5 = DE000000
    sw      t5, 0x0000(v1)             ## 00000000
    sw      t6, 0x0004(v1)             ## 00000004
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           ## $sp = 00000000


func_808FE7DC:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      a0, 0x0018($sp)            
    or      a0, a1, $zero              ## a0 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    bne     a0, $at, lbl_808FE808      
    lw      a1, 0x0028($sp)            
    jal     func_80050CE4              
    addiu   a1, a1, 0x0228             ## a1 = 00000228
lbl_808FE808:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FE818:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s2, 0x0028($sp)            
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    or      s2, a1, $zero              ## s2 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0024($sp)            
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_8007E298              
    or      s1, a0, $zero              ## s1 = 00000000
    lw      t7, 0x01B0(s0)             ## 000001B0
    lui     t6, %hi(func_808FDD94)     ## t6 = 80900000
    addiu   t6, t6, %lo(func_808FDD94) ## t6 = 808FDD94
    beq     t6, t7, lbl_808FE990       
    or      a0, s2, $zero              ## a0 = 00000000
    lui     t8, %hi(func_808FE7DC)     ## t8 = 80900000
    addiu   t8, t8, %lo(func_808FE7DC) ## t8 = 808FE7DC
    lw      a1, 0x0170(s0)             ## 00000170
    lw      a2, 0x018C(s0)             ## 0000018C
    sw      s0, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    jal     func_8008993C              
    or      a3, $zero, $zero           ## a3 = 00000000
    lw      t0, 0x01B0(s0)             ## 000001B0
    lui     t9, %hi(func_808FC1B0)     ## t9 = 80900000
    addiu   t9, t9, %lo(func_808FC1B0) ## t9 = 808FC1B0
    bne     t9, t0, lbl_808FE89C       
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_808FE250              
    or      a1, s2, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_808FE8A4 
    nop
lbl_808FE89C:
    jal     func_808FE340              
    or      a1, s2, $zero              ## a1 = 00000000
lbl_808FE8A4:
    lui     $at, %hi(var_808FEC14)     ## $at = 80900000
    lwc1    $f6, %lo(var_808FEC14)($at) 
    lwc1    $f4, 0x0220(s0)            ## 00000220
    or      a3, $zero, $zero           ## a3 = 00000000
    mul.s   $f8, $f4, $f6              
    swc1    $f8, 0x0040($sp)           
    lw      a2, 0x0010(s0)             ## 00000010
    lwc1    $f14, 0x000C(s0)           ## 0000000C
    jal     func_800AA7F4              
    lwc1    $f12, 0x0008(s0)           ## 00000008
    lh      t1, 0x0016(s0)             ## 00000016
    lui     $at, %hi(var_808FEC18)     ## $at = 80900000
    lwc1    $f18, %lo(var_808FEC18)($at) 
    mtc1    t1, $f10                   ## $f10 = 0.00
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f18           
    jal     func_800AAB94              
    nop
    lwc1    $f12, 0x0040($sp)          
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      v1, 0x02C0(s1)             ## 000002C0
    lui     t3, 0xDA38                 ## t3 = DA380000
    ori     t3, t3, 0x0003             ## t3 = DA380003
    addiu   t2, v1, 0x0008             ## t2 = 00000008
    sw      t2, 0x02C0(s1)             ## 000002C0
    sw      t3, 0x0000(v1)             ## 00000000
    lw      a0, 0x0000(s2)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0034($sp)            
    lw      a1, 0x0034($sp)            
    lui     t5, 0xDE00                 ## t5 = DE000000
    or      a0, s0, $zero              ## a0 = 00000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      v1, 0x02C0(s1)             ## 000002C0
    lui     t6, 0x0600                 ## t6 = 06000000
    addiu   t6, t6, 0x10F0             ## t6 = 060010F0
    addiu   t4, v1, 0x0008             ## t4 = 00000008
    sw      t4, 0x02C0(s1)             ## 000002C0
    sw      t6, 0x0004(v1)             ## 00000004
    sw      t5, 0x0000(v1)             ## 00000000
    lw      t8, 0x01B0(s0)             ## 000001B0
    lui     t7, %hi(func_808FD86C)     ## t7 = 80900000
    addiu   t7, t7, %lo(func_808FD86C) ## t7 = 808FD86C
    bnel    t7, t8, lbl_808FE974       
    lw      t9, 0x0224(s0)             ## 00000224
    jal     func_808FE630              
    or      a1, s2, $zero              ## a1 = 00000000
    lw      t9, 0x0224(s0)             ## 00000224
lbl_808FE974:
    or      a0, s0, $zero              ## a0 = 00000000
    beql    t9, $zero, lbl_808FEA04    
    lw      $ra, 0x002C($sp)           
    jal     func_808FE6EC              
    or      a1, s2, $zero              ## a1 = 00000000
    beq     $zero, $zero, lbl_808FEA04 
    lw      $ra, 0x002C($sp)           
lbl_808FE990:
    lh      v0, 0x01B6(s0)             ## 000001B6
    lui     a2, 0x4348                 ## a2 = 43480000
    slti    $at, v0, 0x0029            
    beq     $at, $zero, lbl_808FE9AC   
    andi    t0, v0, 0x0001             ## t0 = 00000000
    beql    t0, $zero, lbl_808FEA04    
    lw      $ra, 0x002C($sp)           
lbl_808FE9AC:
    mtc1    $zero, $f12                ## $f12 = 0.00
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    jal     func_800AA7F4              
    mov.s   $f14, $f12                 
    lw      s0, 0x02C0(s1)             ## 000002C0
    lui     t2, 0xDA38                 ## t2 = DA380000
    ori     t2, t2, 0x0003             ## t2 = DA380003
    addiu   t1, s0, 0x0008             ## t1 = 00000008
    sw      t1, 0x02C0(s1)             ## 000002C0
    sw      t2, 0x0000(s0)             ## 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s2)             ## 00000000
    sw      v0, 0x0004(s0)             ## 00000004
    lw      v1, 0x02C0(s1)             ## 000002C0
    lui     t5, 0x0600                 ## t5 = 06000000
    addiu   t5, t5, 0x3070             ## t5 = 06003070
    addiu   t3, v1, 0x0008             ## t3 = 00000008
    sw      t3, 0x02C0(s1)             ## 000002C0
    lui     t4, 0xDE00                 ## t4 = DE000000
    sw      t4, 0x0000(v1)             ## 00000000
    sw      t5, 0x0004(v1)             ## 00000004
    lw      $ra, 0x002C($sp)           
lbl_808FEA04:
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    nop
    nop

.section .data

var_808FEA20: .word 0x00000000, 0x00000000, 0x00000000
var_808FEA2C: .word 0x00550500, 0x00000005, 0x00390000, 0x00000408
.word func_808FB480
.word func_808FB6C4
.word func_808FE0B0
.word func_808FE818
var_808FEA4C: .word \
0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, \
0x00000000, 0x09010100, 0x01000000, 0x006403E8, \
0x000F0064, 0x00000000, 0x00000000, 0x00000000, \
0xFFCFFFFF, 0x00000000, 0x00000100, 0x33000000, \
0x000005DC, 0x00080064, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00000000, \
0x34000000, 0x000001F4, 0x00080064, 0x00000000, \
0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, \
0x00000000, 0x35000000, 0x000005DC, 0x00080064, \
0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00000000, 0x36000000, 0x000001F4, \
0x00080064, 0x00000000, 0x00000000, 0x00000000, \
0xFFCFFFFF, 0x00000000, 0x00000000, 0x37000000, \
0x000005DC, 0x00080064, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00000000, \
0x38000000, 0x000001F4, 0x00080064
var_808FEB48: .word 0x06110939, 0x10000000, 0x00000007
.word var_808FEA4C
var_808FEB58: .word 0x02000019, 0x0019FF00
var_808FEB60: .byte \
0x10, 0x02, 0x01, 0x02, 0xE2, 0x02, 0x02, 0x02, 0xF1, 0xF2, 0xF4, 0x24, 0x02, 0x02, 0x02, 0x02, \
0x02, 0x24, 0x00, 0x00, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8
var_808FEB7B: .byte 0xF4, 0x00, 0x00, 0x04, 0x00
var_808FEB80: .byte \
0x10, 0x02, 0x01, 0x02, 0xE2, 0x02, 0x02, 0x10, 0xF1, 0xF2, 0xF4, 0x24, 0x02, 0x02, 0x02, 0x02, \
0x02, 0x24, 0x00, 0x00, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8
var_808FEB9B: .byte 0xF4, 0x00, 0x00, 0x04, 0x00
var_808FEBA0: .word 0x304C05DC
var_808FEBA4: .word 0x69FF69FF
var_808FEBA8: .word 0x96FA9600
var_808FEBAC: .word \
0x06001330, 0x06001628, 0x06001828, 0x00000000, \
0x00000000

.section .rodata

var_808FEBC0: .word 0x3C23D70A
var_808FEBC4: .word 0x3D888889
var_808FEBC8: .word 0x3C23D70A
var_808FEBCC: .word 0xBF4CCCCD
var_808FEBD0: .word 0x3C23D70A
var_808FEBD4: .word 0x3F333333
var_808FEBD8: .word 0x3D888889
var_808FEBDC: .word 0x40490FDB
var_808FEBE0: .word 0x3C23D70A
var_808FEBE4: .word 0x3D088889
var_808FEBE8: .word 0x3F333333
var_808FEBEC: .word 0x3D072B02
var_808FEBF0: .word 0x40490FDB
var_808FEBF4: .word 0x3F4CCCCD
var_808FEBF8: .word 0x3DCCCCCD
var_808FEBFC: .word 0x3BA3D70A
var_808FEC00: .word 0x3DCCCCCD
var_808FEC04: .word 0x3C23D70A
var_808FEC08: .word 0x3C23D70A
var_808FEC0C: .word 0x3C23D70A
var_808FEC10: .word 0x3E19999A
var_808FEC14: .word 0x3C23D70A
var_808FEC18: .word 0x38C90FDB, 0x00000000

