#include <mips.h>
.set noreorder
.set noat

.section .text
func_808BC490:
    sw      a1, 0x013C(a0)             ## 0000013C
    jr      $ra                        
    nop


func_808BC49C:
    sw      a1, 0x0140(a0)             ## 00000140
    jr      $ra                        
    nop


func_808BC4A8:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a1, 0x3F19                 ## a1 = 3F190000
    ori     a1, a1, 0x999A             ## a1 = 3F19999A
    jal     func_80020F88              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_808BCD30)     ## a1 = 808C0000
    addiu   a1, a1, %lo(func_808BCD30) ## a1 = 808BCD30
    jal     func_808BC49C              
    or      a0, s0, $zero              ## a0 = 00000000
    lh      t6, 0x001C(s0)             ## 0000001C
    or      a0, s0, $zero              ## a0 = 00000000
    lui     a1, %hi(func_808BCA04)     ## a1 = 808C0000
    bgez    t6, lbl_808BC594           
    nop
    lui     a1, %hi(func_808BC710)     ## a1 = 808C0000
    addiu   a1, a1, %lo(func_808BC710) ## a1 = 808BC710
    jal     func_808BC490              
    or      a0, s0, $zero              ## a0 = 00000000
    lui     $at, %hi(var_808BCF50)     ## $at = 808C0000
    lwc1    $f4, %lo(var_808BCF50)($at) 
    lwc1    $f6, 0x0024(s0)            ## 00000024
    lwc1    $f10, 0x0028(s0)           ## 00000028
    lwc1    $f18, 0x002C(s0)           ## 0000002C
    swc1    $f4, 0x0050(s0)            ## 00000050
    trunc.w.s $f8, $f6                   
    addiu   t7, $zero, 0x005A          ## t7 = 0000005A
    sh      t7, 0x0144(s0)             ## 00000144
    trunc.w.s $f16, $f10                 
    mfc1    a1, $f8                    
    addiu   a0, s0, 0x01C4             ## a0 = 000001C4
    trunc.w.s $f4, $f18                  
    mfc1    a2, $f16                   
    addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
    addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
    mfc1    a3, $f4                    
    addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
    addiu   t4, $zero, 0x012C          ## t4 = 0000012C
    sll     a1, a1, 16                 
    sll     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sra     a2, a2, 16                 
    sra     a1, a1, 16                 
    sw      t4, 0x001C($sp)            
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    jal     func_80065BCC              
    sw      a0, 0x0034($sp)            
    lw      a0, 0x0044($sp)            
    lw      a2, 0x0034($sp)            
    jal     func_800665B0              
    addiu   a1, a0, 0x07A8             ## a1 = 000007A8
    beq     $zero, $zero, lbl_808BC6C4 
    sw      v0, 0x01C0(s0)             ## 000001C0
lbl_808BC594:
    jal     func_808BC490              
    addiu   a1, a1, %lo(func_808BCA04) ## a1 = FFFFCA04
    mtc1    $zero, $f0                 ## $f0 = 0.00
    lui     a2, 0x8002                 ## a2 = 80020000
    addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_8001EC20              
    addiu   a0, s0, 0x00B4             ## a0 = 000000B4
    lh      t5, 0x001C(s0)             ## 0000001C
    lui     $at, 0x41F0                ## $at = 41F00000
    mtc1    $at, $f6                   ## $f6 = 30.00
    mtc1    t5, $f8                    ## $f8 = 0.00
    lui     $at, %hi(var_808BCF54)     ## $at = 808C0000
    swc1    $f6, 0x0068(s0)            ## 00000068
    cvt.s.w $f0, $f8                   
    lwc1    $f10, %lo(var_808BCF54)($at) 
    addiu   t8, $zero, 0x0019          ## t8 = 00000019
    lui     $at, %hi(var_808BCF58)     ## $at = 808C0000
    mul.s   $f16, $f0, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t7, $f18                   
    nop
    subu    t9, t8, t7                 
    sh      t9, 0x0144(s0)             ## 00000144
    lh      t0, 0x0144(s0)             ## 00000144
    bgez    t0, lbl_808BC618           
    nop
    lh      t1, 0x001C(s0)             ## 0000001C
    sh      $zero, 0x0144(s0)          ## 00000144
    mtc1    t1, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f0, $f4                   
lbl_808BC618:
    lwc1    $f12, %lo(var_808BCF58)($at) 
    lui     $at, 0x3E80                ## $at = 3E800000
    mtc1    $at, $f6                   ## $f6 = 0.25
    lui     $at, %hi(var_808BCF5C)     ## $at = 808C0000
    lwc1    $f10, %lo(var_808BCF5C)($at) 
    mul.s   $f8, $f0, $f6              
    lui     $at, %hi(var_808BCF60)     ## $at = 808C0000
    lwc1    $f18, %lo(var_808BCF60)($at) 
    lui     $at, 0x41A0                ## $at = 41A00000
    mul.s   $f16, $f8, $f10            
    sub.s   $f2, $f18, $f16            
    c.lt.s  $f2, $f12                  
    swc1    $f2, 0x0178(s0)            ## 00000178
    bc1fl   lbl_808BC66C               
    mtc1    $at, $f12                  ## $f12 = 20.00
    lh      t2, 0x001C(s0)             ## 0000001C
    swc1    $f12, 0x0178(s0)           ## 00000178
    mtc1    t2, $f4                    ## $f4 = 0.00
    nop
    cvt.s.w $f0, $f4                   
    mtc1    $at, $f12                  ## $f12 = 20.00
lbl_808BC66C:
    lui     $at, 0x437F                ## $at = 437F0000
    mtc1    $at, $f6                   ## $f6 = 255.00
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f8                   ## $f8 = 10.00
    nop
    mul.s   $f10, $f0, $f8             
    sub.s   $f2, $f6, $f10             
    c.lt.s  $f2, $f12                  
    swc1    $f2, 0x017C(s0)            ## 0000017C
    bc1f    lbl_808BC69C               
    nop
    swc1    $f12, 0x017C(s0)           ## 0000017C
lbl_808BC69C:
    jal     func_800CDCCC              ## Rand.Next() float
    nop
    lui     $at, 0x4100                ## $at = 41000000
    mtc1    $at, $f18                  ## $f18 = 8.00
    nop
    mul.s   $f16, $f0, $f18            
    trunc.w.s $f4, $f16                  
    mfc1    t4, $f4                    
    nop
    sh      t4, 0x0146(s0)             ## 00000146
lbl_808BC6C4:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000
    jr      $ra                        
    nop


func_808BC6D8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lh      t6, 0x001C(a3)             ## 0000001C
    lw      a0, 0x001C($sp)            
    bgez    t6, lbl_808BC700           
    addiu   a1, a0, 0x07A8             ## a1 = 000007A8
    jal     func_80066610              
    lw      a2, 0x01C0(a3)             ## 000001C0
lbl_808BC700:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808BC710:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sdc1    $f20, 0x0020($sp)          
    sw      a1, 0x004C($sp)            
    lw      v0, 0x0118(s0)             ## 00000118
    addiu   a0, s0, 0x0050             ## a0 = 00000050
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lwc1    $f4, 0x03E8(v0)            ## 000003E8
    swc1    $f4, 0x0024(s0)            ## 00000024
    lwc1    $f6, 0x03EC(v0)            ## 000003EC
    swc1    $f6, 0x0028(s0)            ## 00000028
    lwc1    $f8, 0x03F0(v0)            ## 000003F0
    swc1    $f8, 0x002C(s0)            ## 0000002C
    lbu     t6, 0x01D2(v0)             ## 000001D2
    bnel    t6, $zero, lbl_808BC7AC    
    lh      v0, 0x0144(s0)             ## 00000144
    mtc1    $zero, $f20                ## $f20 = 0.00
    lui     a3, 0x3F19                 ## a3 = 3F190000
    ori     a3, a3, 0x999A             ## a3 = 3F19999A
    mfc1    a1, $f20                   
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    mfc1    a1, $f20                   
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x41A0                 ## a3 = 41A00000
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    c.eq.s  $f0, $f20                  
    nop
    bc1fl   lbl_808BC9F4               
    lw      $ra, 0x002C($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808BC9F4 
    lw      $ra, 0x002C($sp)           
    lh      v0, 0x0144(s0)             ## 00000144
lbl_808BC7AC:
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    lui     a1, 0x4300                 ## a1 = 43000000
    slti    $at, v0, 0x0046            
    beq     $at, $zero, lbl_808BC80C   
    lui     a2, 0x3DCC                 ## a2 = 3DCC0000
    mtc1    $zero, $f20                ## $f20 = 0.00
    ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
    lui     a3, 0x3FC0                 ## a3 = 3FC00000
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    lui     a3, 0x4074                 ## a3 = 40740000
    ori     a3, a3, 0xCCCC             ## a3 = 4074CCCC
    addiu   a0, s0, 0x0180             ## a0 = 00000180
    lui     a1, 0x437F                 ## a1 = 437F0000
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    addiu   a0, s0, 0x0184             ## a0 = 00000184
    lui     a1, 0x42C8                 ## a1 = 42C80000
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x3FC0                 ## a3 = 3FC00000
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    lh      v0, 0x0144(s0)             ## 00000144
lbl_808BC80C:
    mtc1    $zero, $f20                ## $f20 = 0.00
    bne     v0, $zero, lbl_808BC820    
    addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
    beq     $zero, $zero, lbl_808BC828 
    or      v1, $zero, $zero           ## v1 = 00000000
lbl_808BC820:
    sh      t7, 0x0144(s0)             ## 00000144
    lh      v1, 0x0144(s0)             ## 00000144
lbl_808BC828:
    bne     v1, $zero, lbl_808BC8C0    
    addiu   a0, s0, 0x0050             ## a0 = 00000050
    mfc1    a1, $f20                   
    lui     a3, 0x3E99                 ## a3 = 3E990000
    addiu   t8, s0, 0x017C             ## t8 = 0000017C
    addiu   t9, s0, 0x0180             ## t9 = 00000180
    addiu   t0, s0, 0x0184             ## t0 = 00000184
    sw      t0, 0x0034($sp)            
    sw      t9, 0x0038($sp)            
    sw      t8, 0x003C($sp)            
    ori     a3, a3, 0x999A             ## a3 = 3E99999A
    lui     a2, 0x3F80                 ## a2 = 3F800000
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    mfc1    a1, $f20                   
    lw      a0, 0x0038($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x41CC                 ## a3 = 41CC0000
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    mfc1    a1, $f20                   
    lw      a0, 0x0034($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4120                 ## a3 = 41200000
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    mfc1    a1, $f20                   
    lw      a0, 0x003C($sp)            
    lui     a2, 0x3F80                 ## a2 = 3F800000
    lui     a3, 0x4120                 ## a3 = 41200000
    jal     func_80064178              
    swc1    $f20, 0x0010($sp)          
    c.eq.s  $f0, $f20                  
    nop
    bc1fl   lbl_808BC8C4               
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808BC8C0:
    or      a0, s0, $zero              ## a0 = 00000000
lbl_808BC8C4:
    jal     func_80020F88              
    lw      a1, 0x0050(s0)             ## 00000050
    cfc1    t1, $f31                   
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    ctc1    a1, $f31                   
    lwc1    $f10, 0x0180(s0)           ## 00000180
    addiu   a0, s0, 0x01C4             ## a0 = 000001C4
    or      a3, $zero, $zero           ## a3 = 00000000
    cvt.w.s $f16, $f10                 
    addiu   t3, $zero, 0x012C          ## t3 = 0000012C
    lui     $at, 0x4F00                ## $at = 4F000000
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             ## a1 = 00000000
    beql    a1, $zero, lbl_808BC94C    
    mfc1    a1, $f16                   
    mtc1    $at, $f16                  ## $f16 = 2147484000.00
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    a1, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    a1, $f31                   
    nop
    andi    a1, a1, 0x0078             ## a1 = 00000000
    bne     a1, $zero, lbl_808BC940    
    nop
    mfc1    a1, $f16                   
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_808BC958 
    or      a1, a1, $at                ## a1 = 80000000
lbl_808BC940:
    beq     $zero, $zero, lbl_808BC958 
    addiu   a1, $zero, 0xFFFF          ## a1 = FFFFFFFF
    mfc1    a1, $f16                   
lbl_808BC94C:
    nop
    bltz    a1, lbl_808BC940           
    nop
lbl_808BC958:
    ctc1    t1, $f31                   
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    lwc1    $f18, 0x0184(s0)           ## 00000184
    andi    a1, a1, 0x00FF             ## a1 = 000000FF
    cfc1    t2, $f31                   
    ctc1    a2, $f31                   
    lui     $at, 0x4F00                ## $at = 4F000000
    cvt.w.s $f4, $f18                  
    cfc1    a2, $f31                   
    nop
    andi    a2, a2, 0x0078             ## a2 = 00000000
    beql    a2, $zero, lbl_808BC9D4    
    mfc1    a2, $f4                    
    mtc1    $at, $f4                   ## $f4 = 2147484000.00
    addiu   a2, $zero, 0x0001          ## a2 = 00000001
    sub.s   $f4, $f18, $f4             
    ctc1    a2, $f31                   
    nop
    cvt.w.s $f4, $f4                   
    cfc1    a2, $f31                   
    nop
    andi    a2, a2, 0x0078             ## a2 = 00000000
    bne     a2, $zero, lbl_808BC9C8    
    nop
    mfc1    a2, $f4                    
    lui     $at, 0x8000                ## $at = 80000000
    beq     $zero, $zero, lbl_808BC9E0 
    or      a2, a2, $at                ## a2 = 80000000
lbl_808BC9C8:
    beq     $zero, $zero, lbl_808BC9E0 
    addiu   a2, $zero, 0xFFFF          ## a2 = FFFFFFFF
    mfc1    a2, $f4                    
lbl_808BC9D4:
    nop
    bltz    a2, lbl_808BC9C8           
    nop
lbl_808BC9E0:
    ctc1    t2, $f31                   
    andi    a2, a2, 0x00FF             ## a2 = 000000FF
    jal     func_80065C98              
    sw      t3, 0x0010($sp)            
    lw      $ra, 0x002C($sp)           
lbl_808BC9F4:
    ldc1    $f20, 0x0020($sp)          
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_808BCA04:
    addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s1, 0x0020($sp)            
    sw      a1, 0x0044($sp)            
    lw      v0, 0x0118(s0)             ## 00000118
    lw      t6, 0x0044($sp)            
    lh      t8, 0x001C(s0)             ## 0000001C
    lh      t7, 0x0192(v0)             ## 00000192
    lw      s1, 0x1C44(t6)             ## 00001C44
    or      v1, $zero, $zero           ## v1 = 00000000
    bne     t8, $zero, lbl_808BCA6C    
    sh      t7, 0x0148(s0)             ## 00000148
    lui     a3, 0x8010                 ## a3 = 80100000
    lui     t9, 0x8010                 ## t9 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    addiu   t9, t9, 0x43A8             ## t9 = 801043A8
    sw      t9, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x3009          ## a0 = 00003009
    addiu   a1, s0, 0x00E4             ## a1 = 000000E4
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    jal     func_800C806C              
    sh      $zero, 0x003E($sp)         
    lh      v1, 0x003E($sp)            
lbl_808BCA6C:
    mtc1    $zero, $f4                 ## $f4 = 0.00
    lw      a1, 0x0178(s0)             ## 00000178
    lui     a2, 0x3E99                 ## a2 = 3E990000
    ori     a2, a2, 0x999A             ## a2 = 3E99999A
    sh      v1, 0x003E($sp)            
    addiu   a0, s0, 0x0050             ## a0 = 00000050
    lui     a3, 0x3F00                 ## a3 = 3F000000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80020F88              
    lw      a1, 0x0050(s0)             ## 00000050
    lui     $at, %hi(var_808BCF64)     ## $at = 808C0000
    lwc1    $f2, %lo(var_808BCF64)($at) 
    lwc1    $f0, 0x0024(s0)            ## 00000024
    lh      v1, 0x003E($sp)            
    lui     $at, 0xC120                ## $at = C1200000
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_808BCAEC               
    lui     $at, 0xC3C3                ## $at = C3C30000
    lwc1    $f6, 0x005C(s0)            ## 0000005C
    mtc1    $at, $f8                   ## $f8 = -390.00
    nop
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_808BCAEC               
    lui     $at, 0xC3C3                ## $at = C3C30000
    swc1    $f2, 0x0024(s0)            ## 00000024
    lwc1    $f0, 0x0024(s0)            ## 00000024
    addiu   v1, $zero, 0x0001          ## v1 = 00000001
    lui     $at, 0xC3C3                ## $at = C3C30000
lbl_808BCAEC:
    mtc1    $at, $f2                   ## $f2 = -390.00
    lui     $at, 0x4120                ## $at = 41200000
    c.lt.s  $f2, $f0                   
    nop
    bc1f    lbl_808BCB24               
    nop
    mtc1    $at, $f12                  ## $f12 = 10.00
    lwc1    $f10, 0x005C(s0)           ## 0000005C
    c.lt.s  $f12, $f10                 
    nop
    bc1f    lbl_808BCB24               
    nop
    swc1    $f2, 0x0024(s0)            ## 00000024
    addiu   v1, $zero, 0x0001          ## v1 = 00000001
lbl_808BCB24:
    lui     $at, %hi(var_808BCF68)     ## $at = 808C0000
    lwc1    $f2, %lo(var_808BCF68)($at) 
    lwc1    $f0, 0x002C(s0)            ## 0000002C
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f12                  ## $f12 = 10.00
    c.lt.s  $f2, $f0                   
    lui     $at, %hi(var_808BCF6C)     ## $at = 808C0000
    bc1f    lbl_808BCB68               
    nop
    lwc1    $f16, 0x0064(s0)           ## 00000064
    c.lt.s  $f12, $f16                 
    nop
    bc1f    lbl_808BCB68               
    nop
    swc1    $f2, 0x002C(s0)            ## 0000002C
    lwc1    $f0, 0x002C(s0)            ## 0000002C
    addiu   v1, $zero, 0x0001          ## v1 = 00000001
lbl_808BCB68:
    lwc1    $f2, %lo(var_808BCF6C)($at) 
    lui     $at, 0xC120                ## $at = C1200000
    addiu   a0, s0, 0x017C             ## a0 = 0000017C
    c.lt.s  $f0, $f2                   
    nop
    bc1f    lbl_808BCBA8               
    nop
    lwc1    $f18, 0x0064(s0)           ## 00000064
    mtc1    $at, $f4                   ## $f4 = -10.00
    nop
    c.lt.s  $f18, $f4                  
    nop
    bc1f    lbl_808BCBA8               
    nop
    swc1    $f2, 0x002C(s0)            ## 0000002C
    addiu   v1, $zero, 0x0001          ## v1 = 00000001
lbl_808BCBA8:
    beql    v1, $zero, lbl_808BCBDC    
    lh      v0, 0x0144(s0)             ## 00000144
    lh      t0, 0x0148(s0)             ## 00000148
    bnel    t0, $zero, lbl_808BCBD0    
    lh      t3, 0x0032(s0)             ## 00000032
    lh      t1, 0x0032(s0)             ## 00000032
    addiu   t2, t1, 0x4000             ## t2 = 00004000
    beq     $zero, $zero, lbl_808BCBD8 
    sh      t2, 0x0032(s0)             ## 00000032
    lh      t3, 0x0032(s0)             ## 00000032
lbl_808BCBD0:
    addiu   t4, t3, 0xC000             ## t4 = FFFFC000
    sh      t4, 0x0032(s0)             ## 00000032
lbl_808BCBD8:
    lh      v0, 0x0144(s0)             ## 00000144
lbl_808BCBDC:
    bne     v0, $zero, lbl_808BCBEC    
    addiu   t5, v0, 0xFFFF             ## t5 = FFFFFFFF
    beq     $zero, $zero, lbl_808BCBF4 
    or      v1, $zero, $zero           ## v1 = 00000000
lbl_808BCBEC:
    sh      t5, 0x0144(s0)             ## 00000144
    lh      v1, 0x0144(s0)             ## 00000144
lbl_808BCBF4:
    bnel    v1, $zero, lbl_808BCC44    
    lbu     t6, 0x0A50(s1)             ## 00000A50
    mtc1    $zero, $f0                 ## $f0 = 0.00
    mfc1    a3, $f12                   
    lui     a2, 0x3F80                 ## a2 = 3F800000
    mfc1    a1, $f0                    
    jal     func_80064178              
    swc1    $f0, 0x0010($sp)           
    lui     $at, 0x4120                ## $at = 41200000
    mtc1    $at, $f8                   ## $f8 = 10.00
    lwc1    $f6, 0x017C(s0)            ## 0000017C
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_808BCCE4               
    lw      $ra, 0x0024($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808BCCE4 
    lw      $ra, 0x0024($sp)           
    lbu     t6, 0x0A50(s1)             ## 00000A50
lbl_808BCC44:
    lui     $at, 0x4302                ## $at = 43020000
    bnel    t6, $zero, lbl_808BCCE4    
    lw      $ra, 0x0024($sp)           
    lwc1    $f10, 0x0050(s0)           ## 00000050
    mtc1    $at, $f16                  ## $f16 = 130.00
    lui     $at, %hi(var_808BCF70)     ## $at = 808C0000
    lwc1    $f4, %lo(var_808BCF70)($at) 
    mul.s   $f18, $f10, $f16           
    lwc1    $f6, 0x008C(s0)            ## 0000008C
    or      v1, $zero, $zero           ## v1 = 00000000
    div.s   $f0, $f18, $f4             
    mul.s   $f8, $f0, $f0              
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_808BCCE4               
    lw      $ra, 0x0024($sp)           
lbl_808BCC84:
    or      a0, $zero, $zero           ## a0 = 00000000
    addiu   a1, $zero, 0x00C8          ## a1 = 000000C8
    jal     func_80063BF0              
    sh      v1, 0x002E($sp)            
    lh      v1, 0x002E($sp)            
    addu    t7, s1, v1                 
    addiu   v1, v1, 0x0001             ## v1 = 00000001
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    slti    $at, v1, 0x0012            
    bne     $at, $zero, lbl_808BCC84   
    sb      v0, 0x0A51(t7)             ## 00000A51
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    sb      t8, 0x0A50(s1)             ## 00000A50
    mtc1    $zero, $f10                ## $f10 = 0.00
    lh      a3, 0x0032(s0)             ## 00000032
    addiu   t9, $zero, 0x0008          ## t9 = 00000008
    sw      t9, 0x0014($sp)            
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              ## a1 = 00000000
    lui     a2, 0x41A0                 ## a2 = 41A00000
    jal     func_80022E7C              
    swc1    $f10, 0x0010($sp)          
    lw      $ra, 0x0024($sp)           
lbl_808BCCE4:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_808BCCF4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x0146(a0)             ## 00000146
    addiu   t7, t6, 0x0001             ## t7 = 00000001
    sh      t7, 0x0146(a0)             ## 00000146
    sw      a0, 0x0018($sp)            
    lw      t9, 0x013C(a0)             ## 0000013C
    jalr    $ra, t9                    
    nop
    jal     func_8002121C              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808BCD30:
    addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a0, 0x0048($sp)            
    lw      t6, 0x0048($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    lw      s0, 0x0000(a1)             ## 00000000
    lh      t7, 0x0146(t6)             ## 00000146
    ori     $at, $at, 0x1DA0           ## $at = 00011DA0
    addu    a0, a1, $at                
    andi    t8, t7, 0x0007             ## t8 = 00000000
    sh      t8, 0x0046($sp)            
    jal     func_800ABE54              
    sw      a1, 0x004C($sp)            
    lw      t9, 0x004C($sp)            
    jal     func_8007E930              
    lw      a0, 0x0000(t9)             ## 00000000
    jal     func_8007E824              
    lw      a0, 0x02D0(s0)             ## 000002D0
    addiu   t1, v0, 0x0008             ## t1 = 00000008
    sw      t1, 0x02D0(s0)             ## 000002D0
    lui     t2, 0xFC30                 ## t2 = FC300000
    lui     t3, 0x5566                 ## t3 = 55660000
    ori     t3, t3, 0xDB6D             ## t3 = 5566DB6D
    ori     t2, t2, 0xB261             ## t2 = FC30B261
    sw      t2, 0x0000(v0)             ## 00000000
    sw      t3, 0x0004(v0)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t5, 0xE700                 ## t5 = E7000000
    mtc1    $zero, $f12                ## $f12 = 0.00
    addiu   t4, v1, 0x0008             ## t4 = 00000008
    sw      t4, 0x02D0(s0)             ## 000002D0
    sw      $zero, 0x0004(v1)          ## 00000004
    sw      t5, 0x0000(v1)             ## 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t7, 0xFA00                 ## t7 = FA000000
    lui     $at, 0xFFFF                ## $at = FFFF0000
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    sw      t7, 0x0000(v1)             ## 00000000
    lw      t8, 0x0048($sp)            
    ori     $at, $at, 0x6400           ## $at = FFFF6400
    mfc1    a2, $f12                   
    lwc1    $f4, 0x017C(t8)            ## 0000017C
    trunc.w.s $f6, $f4                   
    mfc1    t3, $f6                    
    nop
    andi    t4, t3, 0x00FF             ## t4 = 0000006D
    or      t5, t4, $at                ## t5 = FFFF646D
    sw      t5, 0x0004(v1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t7, 0xFB00                 ## t7 = FB000000
    lui     t8, 0xC800                 ## t8 = C8000000
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    sw      t8, 0x0004(v1)             ## 00000004
    sw      t7, 0x0000(v1)             ## 00000000
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t1, 0xDB06                 ## t1 = DB060000
    ori     t1, t1, 0x0020             ## t1 = DB060020
    addiu   t9, v1, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s0)             ## 000002D0
    sw      t1, 0x0000(v1)             ## 00000000
    lh      t2, 0x0046($sp)            
    lui     a0, %hi(var_808BCF30)      ## a0 = 808C0000
    lui     t8, 0x8012                 ## t8 = 80120000
    sll     t3, t2,  2                 
    addu    a0, a0, t3                 
    lw      a0, %lo(var_808BCF30)(a0)  
    lui     $at, 0x00FF                ## $at = 00FF0000
    ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
    sll     t5, a0,  4                 
    srl     t6, t5, 28                 
    sll     t7, t6,  2                 
    addu    t8, t8, t7                 
    lw      t8, 0x0C38(t8)             ## 80120C38
    and     t4, a0, $at                
    lui     $at, 0x8000                ## $at = 80000000
    addu    t9, t4, t8                 
    addu    t1, t9, $at                
    sw      t1, 0x0004(v1)             ## 00000004
    lui     $at, 0x4130                ## $at = 41300000
    mtc1    $at, $f14                  ## $f14 = 11.00
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          ## a3 = 00000001
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t3, 0xDA38                 ## t3 = DA380000
    ori     t3, t3, 0x0003             ## t3 = DA380003
    addiu   t2, v1, 0x0008             ## t2 = 00000008
    sw      t2, 0x02D0(s0)             ## 000002D0
    sw      t3, 0x0000(v1)             ## 00000000
    lw      t5, 0x004C($sp)            
    lw      a0, 0x0000(t5)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    lui     t7, 0xDE00                 ## t7 = DE000000
    sw      v0, 0x0004(a1)             ## 00000004
    lw      v1, 0x02D0(s0)             ## 000002D0
    lui     t4, 0x0602                 ## t4 = 06020000
    addiu   t4, t4, 0xC550             ## t4 = 0601C550
    addiu   t6, v1, 0x0008             ## t6 = 00000008
    sw      t6, 0x02D0(s0)             ## 000002D0
    sw      t4, 0x0004(v1)             ## 00000004
    sw      t7, 0x0000(v1)             ## 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0048           ## $sp = 00000000
    jr      $ra                        
    nop


func_808BCEE8:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0140(a0)             ## 00000140
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_808BCF10: .word 0x00000500, 0x00000030, 0x00190000, 0x000001D4
.word func_808BC4A8
.word func_808BC6D8
.word func_808BCCF4
.word func_808BCEE8
var_808BCF30: .word \
0x060250E0, 0x060260E0, 0x060270E0, 0x060280E0, \
0x060290E0, 0x0602A0E0, 0x0602B0E0, 0x0602C0E0

.section .rodata

var_808BCF50: .word 0x40333333
var_808BCF54: .word 0x3F4CCCCD
var_808BCF58: .word 0x3F666667
var_808BCF5C: .word 0x3F19999A
var_808BCF60: .word 0x40866667
var_808BCF64: .word 0xC4ADC000
var_808BCF68: .word 0xC52F4000
var_808BCF6C: .word 0xC56DC000
var_808BCF70: .word 0x40866667, 0x00000000, 0x00000000, 0x00000000

