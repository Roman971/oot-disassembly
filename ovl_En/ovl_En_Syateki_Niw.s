#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AA56C0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lui     a1, %hi(var_80AA740C)      # a1 = 80AA0000
    addiu   a1, a1, %lo(var_80AA740C)  # a1 = 80AA740C
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     a2, 0x8002                 # a2 = 80020000
    and     t7, t6, $at                
    sw      t7, 0x0004(s0)             # 00000004
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41C8                 # a3 = 41C80000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t8, s0, 0x0180             # t8 = 00000180
    addiu   t9, s0, 0x01E0             # t9 = 000001E0
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    addiu   a3, a3, 0x00E8             # a3 = 060000E8
    addiu   a2, a2, 0x2530             # a2 = 06002530
    lw      a0, 0x003C($sp)            
    jal     func_8008C788              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lh      t1, 0x001C(s0)             # 0000001C
    addiu   a1, s0, 0x02EC             # a1 = 000002EC
    sh      t1, 0x028E(s0)             # 0000028E
    lh      t2, 0x028E(s0)             # 0000028E
    bgezl   t2, lbl_80AA5760           
    lw      a0, 0x003C($sp)            
    sh      $zero, 0x028E(s0)          # 0000028E
    lw      a0, 0x003C($sp)            
lbl_80AA5760:
    jal     func_8004AB7C              
    sw      a1, 0x0030($sp)            
    lui     a3, %hi(var_80AA73E0)      # a3 = 80AA0000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_80AA73E0)  # a3 = 80AA73E0
    lw      a0, 0x003C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lh      t3, 0x028E(s0)             # 0000028E
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    or      a0, s0, $zero              # a0 = 00000000
    bne     t3, $zero, lbl_80AA57AC    
    lui     a1, 0x3C23                 # a1 = 3C230000
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AA57BC 
    addiu   v0, s0, 0x0024             # v0 = 00000024
lbl_80AA57AC:
    sb      t4, 0x00AE(s0)             # 000000AE
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             # a1 = 0000D70A
    addiu   v0, s0, 0x0024             # v0 = 00000024
lbl_80AA57BC:
    lw      t6, 0x0000(v0)             # 00000024
    lui     t9, %hi(func_80AA5B90)     # t9 = 80AA0000
    addiu   t9, t9, %lo(func_80AA5B90) # t9 = 80AA5B90
    sw      t6, 0x02CC(s0)             # 000002CC
    lw      t5, 0x0004(v0)             # 00000028
    sw      t5, 0x02D0(s0)             # 000002D0
    lw      t6, 0x0008(v0)             # 0000002C
    sw      t6, 0x02D4(s0)             # 000002D4
    lw      t8, 0x0000(v0)             # 00000024
    sw      t8, 0x02D8(s0)             # 000002D8
    lw      t7, 0x0004(v0)             # 00000028
    sw      t7, 0x02DC(s0)             # 000002DC
    lw      t8, 0x0008(v0)             # 0000002C
    sw      t9, 0x0240(s0)             # 00000240
    sw      t8, 0x02E0(s0)             # 000002E0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80AA5808:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x02EC             # a1 = 000002EC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA5834:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      a2, 0x0028($sp)            
    sll     a2, a2, 16                 
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sra     a2, a2, 16                 
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x0244(s0)             # 00000244
    bnel    t6, $zero, lbl_80AA58D4    
    lh      t4, 0x0248(s0)             # 00000248
    bne     a2, $zero, lbl_80AA5874    
    lui     $at, %hi(var_80AA7460)     # $at = 80AA0000
    mtc1    $zero, $f2                 # $f2 = 0.00
    beq     $zero, $zero, lbl_80AA5880 
    swc1    $f2, 0x0254(s0)            # 00000254
lbl_80AA5874:
    lwc1    $f4, %lo(var_80AA7460)($at) 
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f4, 0x0254(s0)            # 00000254
lbl_80AA5880:
    lh      t7, 0x027E(s0)             # 0000027E
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sh      t9, 0x0244(s0)             # 00000244
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x027E(s0)             # 0000027E
    lh      t0, 0x027E(s0)             # 0000027E
    andi    t1, t0, 0x0001             # t1 = 00000000
    bnel    t1, $zero, lbl_80AA58D4    
    lh      t4, 0x0248(s0)             # 00000248
    bne     a2, $zero, lbl_80AA58D0    
    swc1    $f2, 0x0254(s0)            # 00000254
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64              
    sh      a2, 0x002A($sp)            
    trunc.w.s $f6, $f0                   
    lh      a2, 0x002A($sp)            
    mfc1    t3, $f6                    
    nop
    sh      t3, 0x0244(s0)             # 00000244
lbl_80AA58D0:
    lh      t4, 0x0248(s0)             # 00000248
lbl_80AA58D4:
    mtc1    $zero, $f2                 # $f2 = 0.00
    bnel    t4, $zero, lbl_80AA5A34    
    lwc1    $f0, 0x0254(s0)            # 00000254
    lh      t5, 0x0282(s0)             # 00000282
    sltiu   $at, a2, 0x0006            
    sll     t9, a2,  2                 
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x0282(s0)             # 00000282
    lh      t7, 0x0282(s0)             # 00000282
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     $at, $zero, lbl_80AA5A30   
    sh      t8, 0x0282(s0)             # 00000282
    lui     $at, %hi(var_80AA7464)     # $at = 80AA0000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80AA7464)($at) 
    jr      t9                         
    nop
var_80AA5918:
    swc1    $f2, 0x025C(s0)            # 0000025C
    beq     $zero, $zero, lbl_80AA5A30 
    swc1    $f2, 0x0258(s0)            # 00000258
var_80AA5924:
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sh      t0, 0x0248(s0)             # 00000248
    lui     $at, %hi(var_80AA747C)     # $at = 80AA0000
    lwc1    $f8, %lo(var_80AA747C)($at) 
    lh      t1, 0x0282(s0)             # 00000282
    lui     $at, %hi(var_80AA7480)     # $at = 80AA0000
    swc1    $f8, 0x025C(s0)            # 0000025C
    lwc1    $f10, %lo(var_80AA7480)($at) 
    bne     t1, $zero, lbl_80AA5A30    
    swc1    $f10, 0x0258(s0)           # 00000258
    swc1    $f2, 0x025C(s0)            # 0000025C
    beq     $zero, $zero, lbl_80AA5A30 
    swc1    $f2, 0x0258(s0)            # 00000258
var_80AA5958:
    lui     $at, %hi(var_80AA7484)     # $at = 80AA0000
    lwc1    $f0, %lo(var_80AA7484)($at) 
    lui     $at, %hi(var_80AA7488)     # $at = 80AA0000
    lwc1    $f2, %lo(var_80AA7488)($at) 
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sh      t2, 0x0248(s0)             # 00000248
    lui     $at, %hi(var_80AA748C)     # $at = 80AA0000
    lwc1    $f16, %lo(var_80AA748C)($at) 
    lui     $at, %hi(var_80AA7490)     # $at = 80AA0000
    lh      t3, 0x0282(s0)             # 00000282
    swc1    $f16, 0x025C(s0)           # 0000025C
    lwc1    $f18, %lo(var_80AA7490)($at) 
    swc1    $f0, 0x0270(s0)            # 00000270
    swc1    $f0, 0x0268(s0)            # 00000268
    swc1    $f2, 0x0274(s0)            # 00000274
    swc1    $f2, 0x026C(s0)            # 0000026C
    bne     t3, $zero, lbl_80AA5A30    
    swc1    $f18, 0x0258(s0)           # 00000258
    lui     $at, 0x45FA                # $at = 45FA0000
    mtc1    $at, $f0                   # $f0 = 8000.00
    nop
    swc1    $f0, 0x0268(s0)            # 00000268
    beq     $zero, $zero, lbl_80AA5A30 
    swc1    $f0, 0x0270(s0)            # 00000270
var_80AA59B8:
    lui     $at, %hi(var_80AA7494)     # $at = 80AA0000
    lwc1    $f0, %lo(var_80AA7494)($at) 
    lh      t5, 0x0282(s0)             # 00000282
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sh      t4, 0x0248(s0)             # 00000248
    swc1    $f0, 0x0268(s0)            # 00000268
    bne     t5, $zero, lbl_80AA5A30    
    swc1    $f0, 0x0270(s0)            # 00000270
    lui     $at, %hi(var_80AA7498)     # $at = 80AA0000
    lwc1    $f0, %lo(var_80AA7498)($at) 
    swc1    $f0, 0x0268(s0)            # 00000268
    beq     $zero, $zero, lbl_80AA5A30 
    swc1    $f0, 0x0270(s0)            # 00000270
var_80AA59EC:
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sh      t6, 0x0246(s0)             # 00000246
    lh      t7, 0x0246(s0)             # 00000246
    beq     $zero, $zero, lbl_80AA5A30 
    sh      t7, 0x0244(s0)             # 00000244
var_80AA5A00:
    lui     $at, %hi(var_80AA749C)     # $at = 80AA0000
    lwc1    $f0, %lo(var_80AA749C)($at) 
    lh      t9, 0x0282(s0)             # 00000282
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sh      t8, 0x0248(s0)             # 00000248
    swc1    $f0, 0x0268(s0)            # 00000268
    bne     t9, $zero, lbl_80AA5A30    
    swc1    $f0, 0x0270(s0)            # 00000270
    lui     $at, %hi(var_80AA74A0)     # $at = 80AA0000
    lwc1    $f0, %lo(var_80AA74A0)($at) 
    swc1    $f0, 0x0268(s0)            # 00000268
    swc1    $f0, 0x0270(s0)            # 00000270
lbl_80AA5A30:
    lwc1    $f0, 0x0254(s0)            # 00000254
lbl_80AA5A34:
    lwc1    $f4, 0x02AC(s0)            # 000002AC
    addiu   a0, s0, 0x02AC             # a0 = 000002AC
    lui     a2, 0x3F00                 # a2 = 3F000000
    c.eq.s  $f4, $f0                   
    nop
    bc1tl   lbl_80AA5A60               
    lwc1    $f0, 0x025C(s0)            # 0000025C
    mfc1    a1, $f0                    
    jal     func_80064280              
    lui     a3, 0x457A                 # a3 = 457A0000
    lwc1    $f0, 0x025C(s0)            # 0000025C
lbl_80AA5A60:
    lwc1    $f6, 0x0294(s0)            # 00000294
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f6, $f0                   
    addiu   a0, s0, 0x0294             # a0 = 00000294
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA5A90               
    lwc1    $f0, 0x0270(s0)            # 00000270
    mfc1    a1, $f0                    
    jal     func_80064280              
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0270(s0)            # 00000270
lbl_80AA5A90:
    lwc1    $f8, 0x0298(s0)            # 00000298
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f8, $f0                   
    addiu   a0, s0, 0x0298             # a0 = 00000298
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA5AC0               
    lwc1    $f0, 0x0274(s0)            # 00000274
    mfc1    a1, $f0                    
    jal     func_80064280              
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0274(s0)            # 00000274
lbl_80AA5AC0:
    lwc1    $f10, 0x029C(s0)           # 0000029C
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f10, $f0                  
    addiu   a0, s0, 0x029C             # a0 = 0000029C
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA5AF0               
    lwc1    $f0, 0x0258(s0)            # 00000258
    mfc1    a1, $f0                    
    jal     func_80064280              
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0258(s0)            # 00000258
lbl_80AA5AF0:
    lwc1    $f16, 0x02A0(s0)           # 000002A0
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f16, $f0                  
    addiu   a0, s0, 0x02A0             # a0 = 000002A0
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA5B20               
    lwc1    $f0, 0x0268(s0)            # 00000268
    mfc1    a1, $f0                    
    jal     func_80064280              
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0268(s0)            # 00000268
lbl_80AA5B20:
    lwc1    $f18, 0x02A4(s0)           # 000002A4
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f18, $f0                  
    addiu   a0, s0, 0x02A4             # a0 = 000002A4
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA5B50               
    lwc1    $f0, 0x026C(s0)            # 0000026C
    mfc1    a1, $f0                    
    jal     func_80064280              
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x026C(s0)            # 0000026C
lbl_80AA5B50:
    lwc1    $f4, 0x02A8(s0)            # 000002A8
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f4, $f0                   
    addiu   a0, s0, 0x02A8             # a0 = 000002A8
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA5B80               
    lw      $ra, 0x001C($sp)           
    mfc1    a1, $f0                    
    jal     func_80064280              
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lw      $ra, 0x001C($sp)           
lbl_80AA5B80:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA5B90:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x00E8             # a0 = 060000E8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x00E8             # a1 = 060000E8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lh      t6, 0x028E(s0)             # 0000028E
    or      a0, s0, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_80AA5BFC    
    nop
    jal     func_80020F88              
    lw      a1, 0x02E4(s0)             # 000002E4
lbl_80AA5BFC:
    lui     t7, %hi(func_80AA5C1C)     # t7 = 80AA0000
    addiu   t7, t7, %lo(func_80AA5C1C) # t7 = 80AA5C1C
    sw      t7, 0x0240(s0)             # 00000240
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA5C1C:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x008C($sp)            
    lui     t7, %hi(var_80AA7418)      # t7 = 80AA0000
    addiu   t7, t7, %lo(var_80AA7418)  # t7 = 80AA7418
    lw      t9, 0x0000(t7)             # 80AA7418
    addiu   t6, $sp, 0x007C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80AA741C
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80AA7420
    lui     t1, %hi(var_80AA7424)      # t1 = 80AA0000
    addiu   t1, t1, %lo(var_80AA7424)  # t1 = 80AA7424
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t3, 0x0000(t1)             # 80AA7424
    addiu   t0, $sp, 0x0070            # t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             # 80AA7428
    sw      t3, 0x0000(t0)             # FFFFFFE8
    lw      t3, 0x0008(t1)             # 80AA742C
    sw      t2, 0x0004(t0)             # FFFFFFEC
    lui     t4, %hi(var_80AA7430)      # t4 = 80AA0000
    sw      t3, 0x0008(t0)             # FFFFFFF0
    lui     t5, %hi(var_80AA7434)      # t5 = 80AA0000
    lw      t4, %lo(var_80AA7430)(t4)  
    lw      t5, %lo(var_80AA7434)(t5)  
    sw      t4, 0x006C($sp)            
    sw      t5, 0x0068($sp)            
    lh      t6, 0x028C(s0)             # 0000028C
    beql    t6, $zero, lbl_80AA5CD0    
    sh      $zero, 0x004A($sp)         
    lh      t7, 0x028E(s0)             # 0000028E
    bnel    t7, $zero, lbl_80AA5CD0    
    sh      $zero, 0x004A($sp)         
    lhu     t8, 0x0088(s0)             # 00000088
    lui     t0, %hi(func_80AA614C)     # t0 = 80AA0000
    addiu   t0, t0, %lo(func_80AA614C) # t0 = 80AA614C
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_80AA5CD0    
    sh      $zero, 0x004A($sp)         
    sh      $zero, 0x028C(s0)          # 0000028C
    beq     $zero, $zero, lbl_80AA6138 
    sw      t0, 0x0240(s0)             # 00000240
    sh      $zero, 0x004A($sp)         
lbl_80AA5CD0:
    lh      t1, 0x024E(s0)             # 0000024E
    bnel    t1, $zero, lbl_80AA5F54    
    lh      t5, 0x024C(s0)             # 0000024C
    lh      t2, 0x024C(s0)             # 0000024C
    bnel    t2, $zero, lbl_80AA5F54    
    lh      t5, 0x024C(s0)             # 0000024C
    lh      t3, 0x0284(s0)             # 00000284
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x0284(s0)             # 00000284
    lh      t5, 0x0284(s0)             # 00000284
    slti    $at, t5, 0x0008            
    bne     $at, $zero, lbl_80AA5EE8   
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64              
    nop
    trunc.w.s $f4, $f0                   
    lui     $at, %hi(var_80AA74A4)     # $at = 80AA0000
    mfc1    t7, $f4                    
    nop
    sh      t7, 0x024E(s0)             # 0000024E
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80AA74A4)($at) 
    trunc.w.s $f6, $f0                   
    lh      v0, 0x028E(s0)             # 0000028E
    lui     $at, 0x42C8                # $at = 42C80000
    mfc1    t9, $f6                    
    beq     v0, $zero, lbl_80AA5D58    
    sh      t9, 0x0284(s0)             # 00000284
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AA5E54      
    lui     $at, 0x4248                # $at = 42480000
    beq     $zero, $zero, lbl_80AA5F54 
    lh      t5, 0x024C(s0)             # 0000024C
lbl_80AA5D58:
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D90              
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80AA5D8C               
    add.s   $f14, $f0, $f12            
    beq     $zero, $zero, lbl_80AA5D8C 
    sub.s   $f14, $f0, $f12            
    add.s   $f14, $f0, $f12            
lbl_80AA5D8C:
    jal     func_80026D90              
    swc1    $f14, 0x0050($sp)          
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    c.lt.s  $f0, $f10                  
    lwc1    $f14, 0x0050($sp)          
    bc1fl   lbl_80AA5DBC               
    add.s   $f2, $f0, $f12             
    beq     $zero, $zero, lbl_80AA5DBC 
    sub.s   $f2, $f0, $f12             
    add.s   $f2, $f0, $f12             
lbl_80AA5DBC:
    lwc1    $f16, 0x02CC(s0)           # 000002CC
    lui     $at, 0xC316                # $at = C3160000
    mtc1    $at, $f12                  # $f12 = -150.00
    add.s   $f0, $f16, $f14            
    lwc1    $f18, 0x02D4(s0)           # 000002D4
    lui     $at, 0x4316                # $at = 43160000
    c.lt.s  $f0, $f12                  
    swc1    $f0, 0x02D8(s0)            # 000002D8
    add.s   $f4, $f18, $f2             
    mtc1    $at, $f0                   # $f0 = 150.00
    lui     $at, 0xC270                # $at = C2700000
    bc1f    lbl_80AA5DF4               
    swc1    $f4, 0x02E0(s0)            # 000002E0
    swc1    $f12, 0x02D8(s0)           # 000002D8
lbl_80AA5DF4:
    lwc1    $f6, 0x02D8(s0)            # 000002D8
    mtc1    $at, $f2                   # $f2 = -60.00
    lui     $at, 0xC220                # $at = C2200000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80AA5E18               
    lwc1    $f0, 0x02E0(s0)            # 000002E0
    swc1    $f0, 0x02D8(s0)            # 000002D8
    lwc1    $f0, 0x02E0(s0)            # 000002E0
lbl_80AA5E18:
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80AA5E34               
    mtc1    $at, $f2                   # $f2 = -40.00
    swc1    $f2, 0x02E0(s0)            # 000002E0
    lwc1    $f0, 0x02E0(s0)            # 000002E0
    mtc1    $at, $f2                   # $f2 = -40.00
lbl_80AA5E34:
    nop
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80AA5F54               
    lh      t5, 0x024C(s0)             # 0000024C
    beq     $zero, $zero, lbl_80AA5F50 
    swc1    $f2, 0x02E0(s0)            # 000002E0
    lui     $at, 0x4248                # $at = 42480000
lbl_80AA5E54:
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D90              
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f2                   # $f2 = 50.00
    c.lt.s  $f0, $f8                   
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    bc1fl   lbl_80AA5E8C               
    add.s   $f14, $f0, $f2             
    beq     $zero, $zero, lbl_80AA5E8C 
    sub.s   $f14, $f0, $f2             
    add.s   $f14, $f0, $f2             
lbl_80AA5E8C:
    jal     func_80026D90              
    swc1    $f14, 0x0050($sp)          
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f14, 0x0050($sp)          
    lui     $at, 0x41F0                # $at = 41F00000
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80AA5EC4               
    mtc1    $at, $f18                  # $f18 = 30.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    beq     $zero, $zero, lbl_80AA5ECC 
    sub.s   $f2, $f0, $f16             
    mtc1    $at, $f18                  # $f18 = 30.00
lbl_80AA5EC4:
    nop
    add.s   $f2, $f0, $f18             
lbl_80AA5ECC:
    lwc1    $f4, 0x02CC(s0)            # 000002CC
    lwc1    $f8, 0x02D4(s0)            # 000002D4
    add.s   $f6, $f4, $f14             
    add.s   $f10, $f8, $f2             
    swc1    $f6, 0x02D8(s0)            # 000002D8
    beq     $zero, $zero, lbl_80AA5F50 
    swc1    $f10, 0x02E0(s0)           # 000002E0
lbl_80AA5EE8:
    lhu     t1, 0x0088(s0)             # 00000088
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sh      t0, 0x024C(s0)             # 0000024C
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80AA5F50    
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f16                  # $f16 = 2.50
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64              
    swc1    $f16, 0x0060(s0)           # 00000060
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80AA5F54               
    lh      t5, 0x024C(s0)             # 0000024C
    lh      t3, 0x028E(s0)             # 0000028E
    lui     $at, 0x4120                # $at = 41200000
    bnel    t3, $zero, lbl_80AA5F54    
    lh      t5, 0x024C(s0)             # 0000024C
    mtc1    $at, $f4                   # $f4 = 10.00
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    sh      t4, 0x024C(s0)             # 0000024C
    swc1    $f4, 0x0060(s0)            # 00000060
lbl_80AA5F50:
    lh      t5, 0x024C(s0)             # 0000024C
lbl_80AA5F54:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   a0, s0, 0x0024             # a0 = 00000024
    beq     t5, $zero, lbl_80AA6080    
    lui     a2, 0x3F80                 # a2 = 3F800000
    sh      t6, 0x004A($sp)            
    lw      a3, 0x02BC(s0)             # 000002BC
    jal     func_80064280              
    lw      a1, 0x02D8(s0)             # 000002D8
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x02E0(s0)             # 000002E0
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lw      a3, 0x02BC(s0)             # 000002BC
    lui     a3, 0x3E99                 # a3 = 3E990000
    ori     a3, a3, 0x999A             # a3 = 3E99999A
    addiu   a0, s0, 0x02BC             # a0 = 000002BC
    lui     a1, 0x4040                 # a1 = 40400000
    jal     func_80064280              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lwc1    $f6, 0x02D8(s0)            # 000002D8
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    sub.s   $f12, $f6, $f8             
    lwc1    $f10, 0x02E0(s0)           # 000002E0
    lwc1    $f16, 0x002C(s0)           # 0000002C
    abs.s   $f0, $f12                  
    sub.s   $f14, $f10, $f16           
    c.lt.s  $f0, $f2                   
    abs.s   $f0, $f14                  
    bc1fl   lbl_80AA5FE0               
    c.lt.s  $f0, $f2                   
    mtc1    $zero, $f12                # $f12 = 0.00
    nop
    c.lt.s  $f0, $f2                   
lbl_80AA5FE0:
    mtc1    $zero, $f0                 # $f0 = 0.00
    bc1fl   lbl_80AA5FF8               
    c.eq.s  $f12, $f0                  
    mtc1    $zero, $f14                # $f14 = 0.00
    nop
    c.eq.s  $f12, $f0                  
lbl_80AA5FF8:
    nop
    bc1f    lbl_80AA601C               
    nop
    c.eq.s  $f14, $f0                  
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    bc1f    lbl_80AA601C               
    nop
    sh      $zero, 0x024C(s0)          # 0000024C
    sh      t7, 0x0284(s0)             # 00000284
lbl_80AA601C:
    jal     func_800CD76C              
    nop
    lui     $at, %hi(var_80AA74A8)     # $at = 80AA0000
    lwc1    $f18, %lo(var_80AA74A8)($at) 
    lwc1    $f8, 0x02C0(s0)            # 000002C0
    sw      $zero, 0x0010($sp)         
    mul.s   $f4, $f0, $f18             
    trunc.w.s $f10, $f8                  
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    mfc1    a3, $f10                   
    trunc.w.s $f6, $f4                   
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    mfc1    a1, $f6                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lui     a1, 0x461C                 # a1 = 461C0000
    ori     a1, a1, 0x4000             # a1 = 461C4000
    addiu   a0, s0, 0x02C0             # a0 = 000002C0
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x447A                 # a3 = 447A0000
lbl_80AA6080:
    lh      t0, 0x0250(s0)             # 00000250
    lw      t1, 0x008C($sp)            
    lui     t2, 0x0001                 # t2 = 00010000
    bne     t0, $zero, lbl_80AA60AC    
    addu    t2, t2, t1                 
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x008C($sp)            
    jal     func_80AA5834              
    lh      a2, 0x004A($sp)            
    beq     $zero, $zero, lbl_80AA613C 
    lw      $ra, 0x0034($sp)           
lbl_80AA60AC:
    lw      t2, 0x1DE4(t2)             # 00001DE4
    lui     $at, 0x40A0                # $at = 40A00000
    addiu   t4, s0, 0x0024             # t4 = 00000024
    andi    t3, t2, 0x0003             # t3 = 00000000
    bnel    t3, $zero, lbl_80AA613C    
    lw      $ra, 0x0034($sp)           
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90              
    sw      t4, 0x003C($sp)            
    lui     $at, %hi(var_80AA74AC)     # $at = 80AA0000
    lwc1    $f16, %lo(var_80AA74AC)($at) 
    lw      t5, 0x003C($sp)            
    swc1    $f0, 0x0080($sp)           
    swc1    $f16, 0x0074($sp)          
    lw      t7, 0x0000(t5)             # 00000000
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFD4
    addiu   t8, $sp, 0x006C            # t8 = FFFFFFE4
    sw      t7, 0x0000(a1)             # FFFFFFD4
    lw      t6, 0x0004(t5)             # 00000004
    addiu   t9, $sp, 0x0068            # t9 = FFFFFFE0
    addiu   t0, $zero, 0x0258          # t0 = 00000258
    sw      t6, 0x0004(a1)             # FFFFFFD8
    lw      t7, 0x0008(t5)             # 00000008
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    sw      t7, 0x0008(a1)             # FFFFFFDC
    sw      t2, 0x0020($sp)            
    sw      t1, 0x001C($sp)            
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    lw      a0, 0x008C($sp)            
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFF4
    jal     func_8001BE64              
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFE8
lbl_80AA6138:
    lw      $ra, 0x0034($sp)           
lbl_80AA613C:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0088           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA614C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x00E8             # a0 = 060000E8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x00E8             # a1 = 060000E8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     $at, %hi(var_80AA74B0)     # $at = 80AA0000
    lwc1    $f0, %lo(var_80AA74B0)($at) 
    lui     $at, %hi(var_80AA74B4)     # $at = 80AA0000
    lwc1    $f2, %lo(var_80AA74B4)($at) 
    lui     $at, %hi(var_80AA74B8)     # $at = 80AA0000
    swc1    $f0, 0x0278(s0)            # 00000278
    swc1    $f2, 0x026C(s0)            # 0000026C
    swc1    $f2, 0x02A8(s0)            # 000002A8
    lwc1    $f10, %lo(var_80AA74B8)($at) 
    lui     t6, %hi(func_80AA6204)     # t6 = 80AA0000
    addiu   t6, t6, %lo(func_80AA6204) # t6 = 80AA6204
    sw      t6, 0x0240(s0)             # 00000240
    swc1    $f0, 0x02A0(s0)            # 000002A0
    swc1    $f0, 0x0258(s0)            # 00000258
    swc1    $f0, 0x0298(s0)            # 00000298
    swc1    $f0, 0x0294(s0)            # 00000294
    swc1    $f0, 0x025C(s0)            # 0000025C
    swc1    $f2, 0x029C(s0)            # 0000029C
    swc1    $f2, 0x0274(s0)            # 00000274
    swc1    $f10, 0x02A4(s0)           # 000002A4
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA6204:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    mov.s   $f16, $f0                  
    lw      t0, 0x1C44(t6)             # 00001C44
    sh      t7, 0x0110(t0)             # 00000110
    lhu     t8, 0x028A(s0)             # 0000028A
    sltiu   $at, t8, 0x0007            
    beq     $at, $zero, lbl_80AA65A0   
    sll     t8, t8,  2                 
    lui     $at, %hi(var_80AA74BC)     # $at = 80AA0000
    addu    $at, $at, t8               
    lw      t8, %lo(var_80AA74BC)($at) 
    jr      t8                         
    nop
var_80AA6254:
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      t9, 0x0286(s0)             # 00000286
    swc1    $f0, 0x02BC(s0)            # 000002BC
    beq     $zero, $zero, lbl_80AA65A0 
    sh      t1, 0x028A(s0)             # 0000028A
var_80AA626C:
    lh      t2, 0x024C(s0)             # 0000024C
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f0                   # $f0 = 2.00
    lui     $at, 0x4060                # $at = 40600000
    bne     t2, $zero, lbl_80AA6294    
    swc1    $f0, 0x0068(s0)            # 00000068
    mtc1    $at, $f4                   # $f4 = 3.50
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    sh      t3, 0x024C(s0)             # 0000024C
    swc1    $f4, 0x0060(s0)            # 00000060
lbl_80AA6294:
    lh      t4, 0x024A(s0)             # 0000024A
    lui     $at, %hi(var_80AA74DC)     # $at = 80AA0000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    bnel    t4, $zero, lbl_80AA62CC    
    lh      t1, 0x0288(s0)             # 00000288
    lh      t5, 0x0288(s0)             # 00000288
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sh      t9, 0x024A(s0)             # 0000024A
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x0288(s0)             # 00000288
    lh      t7, 0x0288(s0)             # 00000288
    andi    t8, t7, 0x0001             # t8 = 00000000
    sh      t8, 0x0288(s0)             # 00000288
    lh      t1, 0x0288(s0)             # 00000288
lbl_80AA62CC:
    bne     t1, $zero, lbl_80AA62E0    
    nop
    lui     $at, %hi(var_80AA74D8)     # $at = 80AA0000
    beq     $zero, $zero, lbl_80AA62E4 
    lwc1    $f16, %lo(var_80AA74D8)($at) 
lbl_80AA62E0:
    lwc1    $f16, %lo(var_80AA74DC)($at) 
lbl_80AA62E4:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     $at, %hi(var_80AA74E0)     # $at = 80AA0000
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_80AA65A4               
    lwc1    $f18, 0x0024(t0)           # 00000024
    swc1    $f0, 0x0068(s0)            # 00000068
    lwc1    $f10, %lo(var_80AA74E0)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    sh      t2, 0x028A(s0)             # 0000028A
    swc1    $f10, 0x006C(s0)           # 0000006C
    beq     $zero, $zero, lbl_80AA65A0 
    swc1    $f18, 0x0060(s0)           # 00000060
var_80AA6324:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lwc1    $f4, 0x002C(t0)            # 0000002C
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lui     $at, 0x42DC                # $at = 42DC0000
    sub.s   $f8, $f4, $f6              
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80AA6354               
    lhu     t3, 0x0088(s0)             # 00000088
    swc1    $f0, 0x0068(s0)            # 00000068
    lhu     t3, 0x0088(s0)             # 00000088
lbl_80AA6354:
    andi    t4, t3, 0x0001             # t4 = 00000001
    beql    t4, $zero, lbl_80AA65A4    
    lwc1    $f18, 0x0024(t0)           # 00000024
    mtc1    $at, $f18                  # $f18 = 110.00
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lui     $at, 0x3F00                # $at = 3F000000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    c.lt.s  $f18, $f4                  
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    bc1fl   lbl_80AA65A4               
    lwc1    $f18, 0x0024(t0)           # 00000024
    sh      $zero, 0x0246(s0)          # 00000246
    sh      $zero, 0x0280(s0)          # 00000280
    mtc1    $at, $f6                   # $f6 = 0.50
    lh      t5, 0x0246(s0)             # 00000246
    lh      t6, 0x0280(s0)             # 00000280
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x006C(s0)            # 0000006C
    swc1    $f0, 0x0274(s0)            # 00000274
    swc1    $f0, 0x026C(s0)            # 0000026C
    swc1    $f0, 0x0268(s0)            # 00000268
    swc1    $f0, 0x0270(s0)            # 00000270
    swc1    $f0, 0x0278(s0)            # 00000278
    sh      t7, 0x0286(s0)             # 00000286
    sh      t8, 0x028A(s0)             # 0000028A
    swc1    $f6, 0x0068(s0)            # 00000068
    sh      t5, 0x0244(s0)             # 00000244
    beq     $zero, $zero, lbl_80AA65A0 
    sh      t6, 0x027E(s0)             # 0000027E
var_80AA63C8:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    lwc1    $f8, 0x002C(t0)            # 0000002C
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   v0, $zero, 0x0014          # v0 = 00000014
    sub.s   $f18, $f8, $f10            
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    lui     $at, %hi(var_80AA74E4)     # $at = 80AA0000
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_80AA65A4               
    lwc1    $f18, 0x0024(t0)           # 00000024
    swc1    $f0, 0x0068(s0)            # 00000068
    sh      t9, 0x0252(s0)             # 00000252
    sh      v0, 0x024A(s0)             # 0000024A
    lwc1    $f6, %lo(var_80AA74E4)($at) 
    sh      t1, 0x028A(s0)             # 0000028A
    beq     $zero, $zero, lbl_80AA65A0 
    swc1    $f6, 0x0254(s0)            # 00000254
var_80AA6418:
    lh      t2, 0x024A(s0)             # 0000024A
    lui     $at, %hi(var_80AA74E8)     # $at = 80AA0000
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    bne     t2, $zero, lbl_80AA65A0    
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f2, %lo(var_80AA74E8)($at) 
    sh      t3, 0x0286(s0)             # 00000286
    lui     $at, %hi(var_80AA74EC)     # $at = 80AA0000
    lwc1    $f8, %lo(var_80AA74EC)($at) 
    swc1    $f0, 0x025C(s0)            # 0000025C
    swc1    $f0, 0x0258(s0)            # 00000258
    swc1    $f0, 0x0274(s0)            # 00000274
    swc1    $f0, 0x026C(s0)            # 0000026C
    swc1    $f2, 0x0270(s0)            # 00000270
    swc1    $f2, 0x0268(s0)            # 00000268
    swc1    $f8, 0x0254(s0)            # 00000254
    swc1    $f16, 0x0028($sp)          
    sw      t0, 0x002C($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2813          # a1 = 00002813
    lw      t0, 0x002C($sp)            
    lwc1    $f16, 0x0028($sp)          
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    sh      t4, 0x024A(s0)             # 0000024A
    lh      v0, 0x024A(s0)             # 0000024A
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    sh      t5, 0x028A(s0)             # 0000028A
    sh      v0, 0x0246(s0)             # 00000246
    beq     $zero, $zero, lbl_80AA65A0 
    sh      v0, 0x0244(s0)             # 00000244
var_80AA6490:
    lh      v1, 0x024A(s0)             # 0000024A
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    bne     v1, $at, lbl_80AA64C8      
    nop
    sh      $zero, 0x0248(s0)          # 00000248
    lh      v0, 0x0248(s0)             # 00000248
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    sh      t6, 0x0286(s0)             # 00000286
    lh      v1, 0x024A(s0)             # 0000024A
    sh      v0, 0x0246(s0)             # 00000246
    sh      v0, 0x0244(s0)             # 00000244
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_80AA64C8:
    bne     v1, $zero, lbl_80AA65A0    
    lui     $at, 0x41F0                # $at = 41F00000
    lwc1    $f18, 0x002C(t0)           # 0000002C
    mtc1    $at, $f4                   # $f4 = 30.00
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     a3, 0x8010                 # a3 = 80100000
    sub.s   $f6, $f18, $f4             
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    c.lt.s  $f6, $f8                   
    addiu   a0, $zero, 0x680B          # a0 = 0000680B
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bc1fl   lbl_80AA65A4               
    lwc1    $f18, 0x0024(t0)           # 00000024
    sw      a3, 0x0010($sp)            
    sw      t7, 0x0014($sp)            
    sw      t0, 0x002C($sp)            
    jal     func_800C806C              
    swc1    $f16, 0x0028($sp)          
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      t0, 0x002C($sp)            
    lwc1    $f16, 0x0028($sp)          
    addiu   v0, $zero, 0x0014          # v0 = 00000014
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    sh      v0, 0x024E(s0)             # 0000024E
    sh      t8, 0x028A(s0)             # 0000028A
    beq     $zero, $zero, lbl_80AA65A0 
    swc1    $f0, 0x0068(s0)            # 00000068
var_80AA6540:
    lh      t9, 0x024E(s0)             # 0000024E
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   v0, $zero, 0x0014          # v0 = 00000014
    bne     t9, $at, lbl_80AA65A0      
    lw      t1, 0x0034($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t1               
    sb      v0, 0x1E15($at)            # 00011E15
    lw      t3, 0x0034($sp)            
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x5A30(t2)            # 8011A5D0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t3               
    sh      t2, 0x1E1A($at)            # 00011E1A
    lw      t4, 0x0034($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    addu    $at, $at, t4               
    sb      $zero, 0x1E5C($at)         # 00011E5C
    sh      t5, 0x0110(t0)             # 00000110
    lui     t6, %hi(func_80AA6680)     # t6 = 80AA0000
    addiu   t6, t6, %lo(func_80AA6680) # t6 = 80AA6680
    sh      v0, 0x024E(s0)             # 0000024E
    sw      t6, 0x0240(s0)             # 00000240
lbl_80AA65A0:
    lwc1    $f18, 0x0024(t0)           # 00000024
lbl_80AA65A4:
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f8, 0x002C(t0)            # 0000002C
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sub.s   $f12, $f18, $f10           
    swc1    $f16, 0x0028($sp)          
    jal     func_800CD76C              
    sub.s   $f14, $f8, $f6             
    lui     $at, %hi(var_80AA74F0)     # $at = 80AA0000
    lwc1    $f8, %lo(var_80AA74F0)($at) 
    lwc1    $f16, 0x0028($sp)          
    addiu   a0, s0, 0x0032             # a0 = 00000032
    mul.s   $f10, $f0, $f8             
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    trunc.w.s $f18, $f10                 
    mfc1    t8, $f18                   
    lwc1    $f18, 0x02BC(s0)           # 000002BC
    sw      $zero, 0x0010($sp)         
    sll     t9, t8, 16                 
    sra     t1, t9, 16                 
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    trunc.w.s $f4, $f18                  
    add.s   $f8, $f6, $f16             
    mfc1    a3, $f4                    
    trunc.w.s $f10, $f8                  
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    mfc1    a1, $f10                   
    nop
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lui     a1, 0x453B                 # a1 = 453B0000
    ori     a1, a1, 0x8000             # a1 = 453B8000
    addiu   a0, s0, 0x02BC             # a0 = 000002BC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x43FA                 # a3 = 43FA0000
    lh      a2, 0x0286(s0)             # 00000286
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    bne     a2, $at, lbl_80AA6664      
    or      a0, s0, $zero              # a0 = 00000000
    sh      t4, 0x0246(s0)             # 00000246
    lh      t5, 0x0246(s0)             # 00000246
    lh      a2, 0x0286(s0)             # 00000286
    sh      t5, 0x0244(s0)             # 00000244
lbl_80AA6664:
    jal     func_80AA5834              
    lw      a1, 0x0034($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA6680:
    sw      a1, 0x0004($sp)            
    lh      t6, 0x024E(a0)             # 0000024E
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t6, $at, lbl_80AA6698      
    lui     $at, 0x8012                # $at = 80120000
    sh      $zero, -0x4662($at)        # 8011B99E
lbl_80AA6698:
    jr      $ra                        
    nop


func_80AA66A0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lw      a1, 0x02C4(s0)             # 000002C4
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0026            # a2 = FFFFFFFE
    jal     func_80022B14              
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFFC
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f0, 0x00EC(s0)            # 000000EC
    lui     $at, 0x4448                # $at = 44480000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80AA6788               
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f6                   # $f6 = 800.00
    lh      v0, 0x0026($sp)            
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80AA6788               
    lw      $ra, 0x001C($sp)           
    blez    v0, lbl_80AA6784           
    slti    $at, v0, 0x0140            
    beq     $at, $zero, lbl_80AA6784   
    lh      v0, 0x0024($sp)            
    blez    v0, lbl_80AA6784           
    slti    $at, v0, 0x00F0            
    beq     $at, $zero, lbl_80AA6784   
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lui     $at, %hi(var_80AA74F4)     # $at = 80AA0000
    swc1    $f8, 0x0068(s0)            # 00000068
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80AA74F4)($at) 
    trunc.w.s $f10, $f0                  
    lui     $at, 0x45FA                # $at = 45FA0000
    mtc1    $at, $f12                  # $f12 = 8000.00
    mfc1    t7, $f10                   
    jal     func_80026D90              
    sh      t7, 0x0288(s0)             # 00000288
    lui     $at, %hi(var_80AA74F8)     # $at = 80AA0000
    lwc1    $f16, %lo(var_80AA74F8)($at) 
    lui     t0, %hi(func_80AA6798)     # t0 = 80AA0000
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    add.s   $f18, $f0, $f16            
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    addiu   t0, t0, %lo(func_80AA6798) # t0 = 80AA6798
    sh      t8, 0x0252(s0)             # 00000252
    swc1    $f18, 0x02C8(s0)           # 000002C8
    sh      t9, 0x024E(s0)             # 0000024E
    sw      t0, 0x0240(s0)             # 00000240
lbl_80AA6784:
    lw      $ra, 0x001C($sp)           
lbl_80AA6788:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA6798:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lw      a1, 0x02C4(s0)             # 000002C4
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x002E            # a2 = FFFFFFF6
    jal     func_80022B14              
    addiu   a3, $sp, 0x002C            # a3 = FFFFFFF4
    lh      t6, 0x024E(s0)             # 0000024E
    lui     $at, 0xC28C                # $at = C28C0000
    beq     t6, $zero, lbl_80AA6818    
    nop
    lwc1    $f4, 0x00EC(s0)            # 000000EC
    mtc1    $at, $f6                   # $f6 = -70.00
    lh      v0, 0x002E($sp)            
    c.lt.s  $f4, $f6                   
    nop
    bc1t    lbl_80AA6818               
    nop
    bltz    v0, lbl_80AA6818           
    slti    $at, v0, 0x0141            
    beq     $at, $zero, lbl_80AA6818   
    lh      v0, 0x002C($sp)            
    bltz    v0, lbl_80AA6818           
    slti    $at, v0, 0x00F1            
    bnel    $at, $zero, lbl_80AA682C   
    lh      t8, 0x024C(s0)             # 0000024C
lbl_80AA6818:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AA6944 
    lw      $ra, 0x0024($sp)           
    lh      t8, 0x024C(s0)             # 0000024C
lbl_80AA682C:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x0290(s0)             # 00000290
    bnel    t8, $zero, lbl_80AA68C0    
    lh      t0, 0x0288(s0)             # 00000288
    lh      t9, 0x0288(s0)             # 00000288
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0288(s0)             # 00000288
    lh      t1, 0x0288(s0)             # 00000288
    andi    t2, t1, 0x0001             # t2 = 00000000
    jal     func_80026D90              
    sh      t2, 0x0288(s0)             # 00000288
    trunc.w.s $f8, $f0                   
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    mfc1    t6, $f8                    
    nop
    addiu   t7, t6, 0x0005             # t7 = 00000005
    jal     func_80026D64              
    sh      t7, 0x024C(s0)             # 0000024C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80AA68C0               
    lh      t0, 0x0288(s0)             # 00000288
    lhu     t8, 0x0088(s0)             # 00000088
    lui     $at, 0x4080                # $at = 40800000
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_80AA68C0    
    lh      t0, 0x0288(s0)             # 00000288
    mtc1    $at, $f16                  # $f16 = 4.00
    nop
    swc1    $f16, 0x0060(s0)           # 00000060
    lh      t0, 0x0288(s0)             # 00000288
lbl_80AA68C0:
    lui     $at, %hi(var_80AA7500)     # $at = 80AA0000
    bne     t0, $zero, lbl_80AA68D8    
    nop
    lui     $at, %hi(var_80AA74FC)     # $at = 80AA0000
    beq     $zero, $zero, lbl_80AA68DC 
    lwc1    $f2, %lo(var_80AA74FC)($at) 
lbl_80AA68D8:
    lwc1    $f2, %lo(var_80AA7500)($at) 
lbl_80AA68DC:
    lwc1    $f18, 0x02C8(s0)           # 000002C8
    lwc1    $f6, 0x02BC(s0)            # 000002BC
    sw      $zero, 0x0010($sp)         
    add.s   $f0, $f18, $f2             
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    trunc.w.s $f8, $f6                   
    trunc.w.s $f4, $f0                   
    mfc1    a3, $f8                    
    mfc1    a1, $f4                    
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lui     a1, 0x453B                 # a1 = 453B0000
    ori     a1, a1, 0x8000             # a1 = 453B8000
    addiu   a0, s0, 0x02BC             # a0 = 000002BC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280              
    lui     a3, 0x43FA                 # a3 = 43FA0000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)            
    jal     func_80AA5834              
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      $ra, 0x0024($sp)           
lbl_80AA6944:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA6954:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lbu     v0, 0x02FD(a0)             # 000002FD
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80AA6A18    
    lw      $ra, 0x0014($sp)           
    lh      v1, 0x028E(a0)             # 0000028E
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x02FD(a0)             # 000002FD
    beq     v1, $zero, lbl_80AA6994    
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     v1, v0, lbl_80AA69E0       
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    beq     $zero, $zero, lbl_80AA6A18 
    lw      $ra, 0x0014($sp)           
lbl_80AA6994:
    lh      t8, 0x028C(a0)             # 0000028C
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    addiu   a1, $zero, 0x2812          # a1 = 00002812
    bnel    t8, $zero, lbl_80AA6A18    
    lw      $ra, 0x0014($sp)           
    sh      t9, 0x0252(a0)             # 00000252
    jal     func_80022FD0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f4                   # $f4 = -3.00
    lui     t0, %hi(func_80AA614C)     # t0 = 80AA0000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t0, t0, %lo(func_80AA614C) # t0 = 80AA614C
    sh      v0, 0x028C(a0)             # 0000028C
    sh      v0, 0x0290(a0)             # 00000290
    sw      t0, 0x0240(a0)             # 00000240
    beq     $zero, $zero, lbl_80AA6A14 
    swc1    $f4, 0x006C(a0)            # 0000006C
lbl_80AA69E0:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      t1, 0x0252(a0)             # 00000252
    sb      t2, 0x02E8(a0)             # 000002E8
    sw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2812          # a1 = 00002812
    lw      a0, 0x0018($sp)            
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t3, 0x0250(a0)             # 00000250
    lh      t4, 0x0250(a0)             # 00000250
    sh      v0, 0x0290(a0)             # 00000290
    sh      t4, 0x024E(a0)             # 0000024E
lbl_80AA6A14:
    lw      $ra, 0x0014($sp)           
lbl_80AA6A18:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA6A24:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s1, 0x0048($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s0, 0x0044($sp)            
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x00AC($sp)            
    lui     t7, %hi(var_80AA7438)      # t7 = 80AA0000
    addiu   t7, t7, %lo(var_80AA7438)  # t7 = 80AA7438
    lw      t9, 0x0000(t7)             # 80AA7438
    addiu   t6, $sp, 0x0090            # t6 = FFFFFFE8
    lw      t8, 0x0004(t7)             # 80AA743C
    sw      t9, 0x0000(t6)             # FFFFFFE8
    lw      t9, 0x0008(t7)             # 80AA7440
    lui     t1, %hi(var_80AA7444)      # t1 = 80AA0000
    addiu   t1, t1, %lo(var_80AA7444)  # t1 = 80AA7444
    sw      t8, 0x0004(t6)             # FFFFFFEC
    sw      t9, 0x0008(t6)             # FFFFFFF0
    lw      t3, 0x0000(t1)             # 80AA7444
    addiu   t0, $sp, 0x0084            # t0 = FFFFFFDC
    lw      t2, 0x0004(t1)             # 80AA7448
    sw      t3, 0x0000(t0)             # FFFFFFDC
    lw      t3, 0x0008(t1)             # 80AA744C
    sw      t2, 0x0004(t0)             # FFFFFFE0
    or      a0, s1, $zero              # a0 = 00000000
    sw      t3, 0x0008(t0)             # FFFFFFE4
    jal     func_80AA7060              
    lw      a1, 0x00AC($sp)            
    lh      t4, 0x027C(s1)             # 0000027C
    lh      v0, 0x0244(s1)             # 00000244
    lui     $at, 0x4170                # $at = 41700000
    addiu   t5, t4, 0x0001             # t5 = 00000001
    beq     v0, $zero, lbl_80AA6AC4    
    sh      t5, 0x027C(s1)             # 0000027C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0244(s1)             # 00000244
lbl_80AA6AC4:
    lh      v0, 0x0248(s1)             # 00000248
    beq     v0, $zero, lbl_80AA6AD4    
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0248(s1)             # 00000248
lbl_80AA6AD4:
    lh      v0, 0x024A(s1)             # 0000024A
    beq     v0, $zero, lbl_80AA6AE4    
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x024A(s1)             # 0000024A
lbl_80AA6AE4:
    lh      v0, 0x024C(s1)             # 0000024C
    beq     v0, $zero, lbl_80AA6AF4    
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x024C(s1)             # 0000024C
lbl_80AA6AF4:
    lh      v0, 0x024E(s1)             # 0000024E
    beq     v0, $zero, lbl_80AA6B04    
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x024E(s1)             # 0000024E
lbl_80AA6B04:
    lh      v0, 0x0252(s1)             # 00000252
    beq     v0, $zero, lbl_80AA6B14    
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0252(s1)             # 00000252
lbl_80AA6B14:
    lh      v0, 0x0250(s1)             # 00000250
    beq     v0, $zero, lbl_80AA6B24    
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x0250(s1)             # 00000250
lbl_80AA6B24:
    lwl     t4, 0x0030(s1)             # 00000030
    lwr     t4, 0x0033(s1)             # 00000033
    mtc1    $at, $f4                   # $f4 = 15.00
    lw      t9, 0x0240(s1)             # 00000240
    swl     t4, 0x00B4(s1)             # 000000B4
    swr     t4, 0x00B7(s1)             # 000000B7
    lhu     t4, 0x0034(s1)             # 00000034
    swc1    $f4, 0x00C4(s1)            # 000000C4
    or      a0, s1, $zero              # a0 = 00000000
    sh      t4, 0x00B8(s1)             # 000000B8
    jalr    $ra, t9                    
    lw      a1, 0x00AC($sp)            
    jal     func_8002121C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    addiu   t5, $zero, 0x001D          # t5 = 0000001D
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t5, 0x0014($sp)            
    lw      a0, 0x00AC($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f6, 0x0010($sp)           
    lh      t6, 0x0290(s1)             # 00000290
    lui     $at, 0x4100                # $at = 41000000
    beql    t6, $zero, lbl_80AA6C94    
    or      a0, s1, $zero              # a0 = 00000000
    mtc1    $at, $f28                  # $f28 = 8.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f24                  # $f24 = 2.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f22                  # $f22 = 3.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    mtc1    $zero, $f26                # $f26 = 0.00
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80AA6BC0:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f8, 0x0024(s1)            # 00000024
    mov.s   $f12, $f20                 
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x0078($sp)          
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lwc1    $f16, 0x0028(s1)           # 00000028
    mov.s   $f12, $f20                 
    add.s   $f4, $f16, $f18            
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x007C($sp)           
    lwc1    $f8, 0x002C(s1)            # 0000002C
    mov.s   $f12, $f22                 
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x0080($sp)          
    swc1    $f0, 0x006C($sp)           
    jal     func_80026D64              
    mov.s   $f12, $f24                 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    mov.s   $f12, $f22                 
    mul.s   $f18, $f0, $f16            
    add.s   $f4, $f18, $f24            
    jal     func_80026D90              
    swc1    $f4, 0x0070($sp)           
    lui     $at, %hi(var_80AA7504)     # $at = 80AA0000
    lwc1    $f6, %lo(var_80AA7504)($at) 
    swc1    $f0, 0x0074($sp)           
    swc1    $f26, 0x0060($sp)          
    swc1    $f26, 0x0068($sp)          
    mov.s   $f12, $f28                 
    jal     func_80026D64              
    swc1    $f6, 0x0064($sp)           
    add.s   $f8, $f0, $f28             
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0078            # a1 = FFFFFFD0
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFC4
    swc1    $f8, 0x0010($sp)           
    jal     func_80AA6F70              
    addiu   a3, $sp, 0x0060            # a3 = FFFFFFB8
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16                 
    sra     s0, s0, 16                 
    slti    $at, s0, 0x0014            
    bne     $at, $zero, lbl_80AA6BC0   
    nop
    sh      $zero, 0x0290(s1)          # 00000290
    or      a0, s1, $zero              # a0 = 00000000
lbl_80AA6C94:
    jal     func_80AA6954              
    lw      a1, 0x00AC($sp)            
    lh      t7, 0x0252(s1)             # 00000252
    bnel    t7, $zero, lbl_80AA6CEC    
    lh      v0, 0x028E(s1)             # 0000028E
    lw      t0, 0x0240(s1)             # 00000240
    lui     t8, %hi(func_80AA5C1C)     # t8 = 80AA0000
    addiu   t8, t8, %lo(func_80AA5C1C) # t8 = 80AA5C1C
    bne     t8, t0, lbl_80AA6CD8       
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    addiu   t1, $zero, 0x012C          # t1 = 0000012C
    sh      t1, 0x0252(s1)             # 00000252
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2811          # a1 = 00002811
    beq     $zero, $zero, lbl_80AA6CEC 
    lh      v0, 0x028E(s1)             # 0000028E
lbl_80AA6CD8:
    sh      t2, 0x0252(s1)             # 00000252
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2812          # a1 = 00002812
    lh      v0, 0x028E(s1)             # 0000028E
lbl_80AA6CEC:
    or      s0, $zero, $zero           # s0 = 00000000
    lw      t3, 0x00AC($sp)            
    beq     v0, $zero, lbl_80AA6D10    
    lui     t4, 0x0001                 # t4 = 00010000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AA6D2C      
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    beq     $zero, $zero, lbl_80AA6D2C 
    nop
lbl_80AA6D10:
    addu    t4, t4, t3                 
    lb      t4, 0x1E5C(t4)             # 00011E5C
    beq     t4, $zero, lbl_80AA6D2C    
    nop
    beq     $zero, $zero, lbl_80AA6D2C 
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    addiu   s0, $zero, 0x0001          # s0 = 00000001
lbl_80AA6D2C:
    beq     s0, $zero, lbl_80AA6D6C    
    or      a0, s1, $zero              # a0 = 00000000
    addiu   s0, s1, 0x02EC             # s0 = 000002EC
    jal     func_80050B00              
    or      a1, s0, $zero              # a1 = 000002EC
    lw      a0, 0x00AC($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    sw      a1, 0x0054($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s0, $zero              # a2 = 000002EC
    lw      a1, 0x0054($sp)            
    lw      a0, 0x00AC($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s0, $zero              # a2 = 000002EC
lbl_80AA6D6C:
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    ldc1    $f28, 0x0038($sp)          
    lw      s0, 0x0044($sp)            
    lw      s1, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_80AA6D94:
    addiu   $sp, $sp, 0xFFF0           # $sp = FFFFFFF0
    sw      a0, 0x0010($sp)            
    sw      a2, 0x0018($sp)            
    sw      a3, 0x001C($sp)            
    lui     t7, %hi(var_80AA7450)      # t7 = 80AA0000
    addiu   t7, t7, %lo(var_80AA7450)  # t7 = 80AA7450
    lw      t9, 0x0000(t7)             # 80AA7450
    addiu   t6, $sp, 0x0000            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80AA7454
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80AA7458
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    sw      t8, 0x0004(t6)             # FFFFFFF4
    bne     a1, $at, lbl_80AA6DF4      
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      v0, 0x0024($sp)            
    lw      v1, 0x0020($sp)            
    lwc1    $f4, 0x02AC(v0)            # 000002AC
    lh      t0, 0x0002(v1)             # 00000002
    trunc.w.s $f6, $f4                   
    mfc1    t4, $f6                    
    nop
    addu    t5, t0, t4                 
    sh      t5, 0x0002(v1)             # 00000002
lbl_80AA6DF4:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    lw      v0, 0x0024($sp)            
    bne     a1, $at, lbl_80AA6E58      
    lw      v1, 0x0020($sp)            
    lwc1    $f8, 0x02A8(v0)            # 000002A8
    lh      t6, 0x0000(v1)             # 00000000
    lh      t3, 0x0002(v1)             # 00000002
    trunc.w.s $f10, $f8                  
    lh      t9, 0x0004(v1)             # 00000004
    mfc1    t1, $f10                   
    nop
    addu    t2, t6, t1                 
    sh      t2, 0x0000(v1)             # 00000000
    lwc1    $f16, 0x02A4(v0)           # 000002A4
    trunc.w.s $f18, $f16                 
    mfc1    t7, $f18                   
    nop
    addu    t8, t3, t7                 
    sh      t8, 0x0002(v1)             # 00000002
    lwc1    $f4, 0x02A0(v0)            # 000002A0
    trunc.w.s $f6, $f4                   
    mfc1    t0, $f6                    
    nop
    addu    t4, t9, t0                 
    sh      t4, 0x0004(v1)             # 00000004
lbl_80AA6E58:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    a1, $at, lbl_80AA6EBC      
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f8, 0x029C(v0)            # 0000029C
    lh      t5, 0x0000(v1)             # 00000000
    lh      t2, 0x0002(v1)             # 00000002
    trunc.w.s $f10, $f8                  
    lh      t8, 0x0004(v1)             # 00000004
    mfc1    t6, $f10                   
    nop
    addu    t1, t5, t6                 
    sh      t1, 0x0000(v1)             # 00000000
    lwc1    $f16, 0x0298(v0)           # 00000298
    trunc.w.s $f18, $f16                 
    mfc1    t3, $f18                   
    nop
    addu    t7, t2, t3                 
    sh      t7, 0x0002(v1)             # 00000002
    lwc1    $f4, 0x0294(v0)            # 00000294
    trunc.w.s $f6, $f4                   
    mfc1    t9, $f6                    
    nop
    addu    t0, t8, t9                 
    sh      t0, 0x0004(v1)             # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AA6EBC:
    jr      $ra                        
    addiu   $sp, $sp, 0x0010           # $sp = 00000000


func_80AA6EC4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     t6, %hi(var_80AA745C)      # t6 = 80AA0000
    lw      t6, %lo(var_80AA745C)(t6)  
    lui     t7, %hi(func_80AA66A0)     # t7 = 80AA0000
    addiu   t7, t7, %lo(func_80AA66A0) # t7 = 80AA66A0
    sw      t6, 0x0030($sp)            
    lw      t8, 0x0240(s0)             # 00000240
    beql    t7, t8, lbl_80AA6F60       
    lw      $ra, 0x002C($sp)           
    jal     func_8007E298              
    lw      a0, 0x0000(s1)             # 00000000
    lh      t9, 0x0250(s0)             # 00000250
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF8
    beq     t9, $zero, lbl_80AA6F20    
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001A0E0              
    addiu   a3, $zero, 0x0014          # a3 = 00000014
lbl_80AA6F20:
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t0, %hi(func_80AA6D94)     # t0 = 80AA0000
    addiu   t0, t0, %lo(func_80AA6D94) # t0 = 80AA6D94
    sw      t0, 0x0010($sp)            
    sw      s0, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    jal     func_80089D8C              
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8001A468              
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AA721C              
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_80AA6F60:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80AA6F70:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    addiu   v1, a0, 0x0338             # v1 = 00000338
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AA6F80:
    lbu     t6, 0x0000(v1)             # 00000338
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_80AA7044    
    sra     v0, v0, 16                 
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0000(v1)             # 00000338
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t9, 0x0004(v1)             # 0000033C
    lw      t8, 0x0004(a1)             # 00000004
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    sw      t8, 0x0008(v1)             # 00000340
    lw      t9, 0x0008(a1)             # 00000008
    sw      t9, 0x000C(v1)             # 00000344
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x0010(v1)             # 00000348
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0014(v1)             # 0000034C
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0018(v1)             # 00000350
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x001C(v1)             # 00000354
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0020(v1)             # 00000358
    lw      t3, 0x0008(a3)             # 00000008
    sb      $zero, 0x0034(v1)          # 0000036C
    sw      t3, 0x0024(v1)             # 0000035C
    lwc1    $f4, 0x0030($sp)           
    div.s   $f8, $f4, $f6              
    swc1    $f8, 0x002C(v1)            # 00000364
    jal     func_80026D64              
    sw      v1, 0x0018($sp)            
    trunc.w.s $f10, $f0                  
    lw      v1, 0x0018($sp)            
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f12                  # $f12 = 1000.00
    mfc1    t7, $f10                   
    nop
    addiu   t8, t7, 0x0028             # t8 = 00000028
    jal     func_80026D64              
    sh      t8, 0x0028(v1)             # 00000028
    trunc.w.s $f16, $f0                  
    lw      v1, 0x0018($sp)            
    mfc1    t0, $f16                   
    beq     $zero, $zero, lbl_80AA7050 
    sh      t0, 0x002A(v1)             # 0000002A
lbl_80AA7044:
    slti    $at, v0, 0x0005            
    bne     $at, $zero, lbl_80AA6F80   
    addiu   v1, v1, 0x0038             # v1 = 00000038
lbl_80AA7050:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA7060:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0054($sp)           
    sw      s3, 0x0050($sp)            
    sw      s2, 0x004C($sp)            
    sw      s1, 0x0048($sp)            
    sw      s0, 0x0044($sp)            
    sdc1    $f30, 0x0038($sp)          
    sdc1    $f28, 0x0030($sp)          
    sdc1    $f26, 0x0028($sp)          
    sdc1    $f24, 0x0020($sp)          
    sdc1    $f22, 0x0018($sp)          
    sdc1    $f20, 0x0010($sp)          
    sw      a1, 0x005C($sp)            
    lui     $at, %hi(var_80AA7508)     # $at = 80AA0000
    lwc1    $f30, %lo(var_80AA7508)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f28                  # $f28 = 0.50
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f26                  # $f26 = -0.50
    lui     $at, %hi(var_80AA750C)     # $at = 80AA0000
    lwc1    $f24, %lo(var_80AA750C)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   s0, a0, 0x0338             # s0 = 00000338
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s3, $zero, 0x0BB8          # s3 = 00000BB8
    addiu   s2, $zero, 0x0001          # s2 = 00000001
lbl_80AA70D0:
    lbu     t6, 0x0000(s0)             # 00000338
    beql    t6, $zero, lbl_80AA71D4    
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lwc1    $f0, 0x0010(s0)            # 00000348
    lwc1    $f4, 0x0004(s0)            # 0000033C
    lwc1    $f2, 0x0014(s0)            # 0000034C
    lwc1    $f8, 0x0008(s0)            # 00000340
    lwc1    $f12, 0x0018(s0)           # 00000350
    lwc1    $f16, 0x000C(s0)           # 00000344
    add.s   $f6, $f4, $f0              
    lwc1    $f4, 0x001C(s0)            # 00000354
    lbu     t7, 0x0034(s0)             # 0000036C
    add.s   $f10, $f8, $f2             
    lwc1    $f8, 0x0020(s0)            # 00000358
    swc1    $f6, 0x0004(s0)            # 0000033C
    add.s   $f18, $f16, $f12           
    lwc1    $f16, 0x0024(s0)           # 0000035C
    swc1    $f10, 0x0008(s0)           # 00000340
    add.s   $f6, $f0, $f4              
    swc1    $f18, 0x000C(s0)           # 00000344
    lbu     t9, 0x0000(s0)             # 00000338
    add.s   $f10, $f2, $f8             
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0034(s0)             # 0000036C
    add.s   $f18, $f12, $f16           
    swc1    $f6, 0x0010(s0)            # 00000348
    swc1    $f10, 0x0014(s0)           # 0000034C
    bne     s2, t9, lbl_80AA71D0       
    swc1    $f18, 0x0018(s0)           # 00000350
    lh      t0, 0x002A(s0)             # 00000362
    mfc1    a1, $f20                   
    mfc1    a2, $f22                   
    mfc1    a3, $f24                   
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x002A(s0)             # 00000362
    jal     func_80064280              
    addiu   a0, s0, 0x0010             # a0 = 00000348
    mfc1    a1, $f20                   
    mfc1    a2, $f22                   
    mfc1    a3, $f24                   
    jal     func_80064280              
    addiu   a0, s0, 0x0018             # a0 = 00000350
    lwc1    $f4, 0x0014(s0)            # 0000034C
    c.lt.s  $f4, $f26                  
    nop
    bc1fl   lbl_80AA7194               
    lh      t2, 0x002A(s0)             # 00000362
    swc1    $f28, 0x0014(s0)           # 0000034C
    lh      t2, 0x002A(s0)             # 00000362
lbl_80AA7194:
    multu   t2, s3                     
    mflo    a0                         
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f6, $f0, $f30             
    lui     $at, %hi(var_80AA7510)     # $at = 80AA0000
    lwc1    $f8, %lo(var_80AA7510)($at) 
    lh      t3, 0x0028(s0)             # 00000360
    lbu     t4, 0x0034(s0)             # 0000036C
    mul.s   $f10, $f6, $f8             
    slt     $at, t3, t4                
    beq     $at, $zero, lbl_80AA71D0   
    swc1    $f10, 0x0030(s0)           # 00000368
    sb      $zero, 0x0000(s0)          # 00000338
lbl_80AA71D0:
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80AA71D4:
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    slti    $at, s1, 0x0005            
    bne     $at, $zero, lbl_80AA70D0   
    addiu   s0, s0, 0x0038             # s0 = 00000370
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0010($sp)          
    ldc1    $f22, 0x0018($sp)          
    ldc1    $f24, 0x0020($sp)          
    ldc1    $f26, 0x0028($sp)          
    ldc1    $f28, 0x0030($sp)          
    ldc1    $f30, 0x0038($sp)          
    lw      s0, 0x0044($sp)            
    lw      s1, 0x0048($sp)            
    lw      s2, 0x004C($sp)            
    lw      s3, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80AA721C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s8, 0x0050($sp)            
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s7, 0x004C($sp)            
    sw      s6, 0x0048($sp)            
    sw      s5, 0x0044($sp)            
    sw      s4, 0x0040($sp)            
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s1, 0x0034($sp)            
    sw      s0, 0x0030($sp)            
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x0000(s8)             # 00000000
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s1, a2, 0x0338             # s1 = 00000338
    or      s2, a0, $zero              # s2 = 00000000
    jal     func_8007E2C0              
    nop
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f24                  # $f24 = -1000.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    mtc1    $zero, $f20                # $f20 = 0.00
    or      s5, $zero, $zero           # s5 = 00000000
    lui     s7, 0xDE00                 # s7 = DE000000
lbl_80AA7290:
    lbu     t6, 0x0000(s1)             # 00000338
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     s6, 0x0600                 # s6 = 06000000
    bne     t6, $at, lbl_80AA7360      
    addiu   s6, s6, 0x2428             # s6 = 06002428
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     s4, $zero, lbl_80AA72D8    
    addu    s3, s8, $at                
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x23B0             # t8 = 060023B0
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    addiu   s4, s4, 0x0001             # s4 = 00000001
    andi    s4, s4, 0x00FF             # s4 = 00000001
lbl_80AA72D8:
    lwc1    $f12, 0x0004(s1)           # 0000033C
    lwc1    $f14, 0x0008(s1)           # 00000340
    lw      a2, 0x000C(s1)             # 00000344
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800ABE54              
    or      a0, s3, $zero              # a0 = 00000000
    lwc1    $f12, 0x002C(s1)           # 00000364
    mfc1    a2, $f22                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lwc1    $f12, 0x0030(s1)           # 00000368
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mfc1    a2, $f20                   
    mov.s   $f12, $f20                 
    mov.s   $f14, $f24                 
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, s3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_80AA7360:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x0005            
    bne     $at, $zero, lbl_80AA7290   
    addiu   s1, s1, 0x0038             # s1 = 00000370
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    lw      s5, 0x0044($sp)            
    lw      s6, 0x0048($sp)            
    lw      s7, 0x004C($sp)            
    lw      s8, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80AA73C0: .word 0x01430600, 0x00000010, 0x00130000, 0x00000450
.word func_80AA56C0
.word func_80AA5808
.word func_80AA6A24
.word func_80AA6EC4
var_80AA73E0: .word \
0x05000939, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x000A0014, 0x00040000, 0x00000000
var_80AA740C: .word 0x801F0001, 0xB86CFC18, 0x304C0000
var_80AA7418: .word 0x00000000, 0x00000000, 0x00000000
var_80AA7424: .word 0x00000000, 0x3E4CCCCD, 0x00000000
var_80AA7430: .word 0x000000FF
var_80AA7434: .word 0x000000FF
var_80AA7438: .word 0x00000000, 0x00000000, 0x00000000
var_80AA7444: .word 0x00000000, 0x00000000, 0x00000000
var_80AA7450: .word 0x00000000, 0x00000000, 0x00000000
var_80AA745C: .word 0x000000FF

.section .rodata

var_80AA7460: .word 0xC61C4000
var_80AA7464: .word var_80AA5918
.word var_80AA5924
.word var_80AA5958
.word var_80AA59B8
.word var_80AA59EC
.word var_80AA5A00
var_80AA747C: .word 0x45DAC000
var_80AA7480: .word 0x45DAC000
var_80AA7484: .word 0x46C35000
var_80AA7488: .word 0x45BB8000
var_80AA748C: .word 0xC61C4000
var_80AA7490: .word 0xC61C4000
var_80AA7494: .word 0x461C4000
var_80AA7498: .word 0x453B8000
var_80AA749C: .word 0x465AC000
var_80AA74A0: .word 0x461C4000
var_80AA74A4: .word 0x407F5C29
var_80AA74A8: .word 0x4622F983
var_80AA74AC: .word 0x3E4CCCCD
var_80AA74B0: .word 0xC61C4000
var_80AA74B4: .word 0x45BB8000
var_80AA74B8: .word 0x461C4000
var_80AA74BC: .word var_80AA6254
.word var_80AA626C
.word var_80AA6324
.word var_80AA63C8
.word var_80AA6418
.word var_80AA6490
.word var_80AA6540
var_80AA74D8: .word 0x459C4000
var_80AA74DC: .word 0xC59C4000
var_80AA74E0: .word 0xBE99999A
var_80AA74E4: .word 0x461C4000
var_80AA74E8: .word 0x465AC000
var_80AA74EC: .word 0x459C4000
var_80AA74F0: .word 0x4622F983
var_80AA74F4: .word 0x3FFEB852
var_80AA74F8: .word 0xC61C4000
var_80AA74FC: .word 0x459C4000
var_80AA7500: .word 0xC59C4000
var_80AA7504: .word 0xBE19999A
var_80AA7508: .word 0x40490FDB
var_80AA750C: .word 0x3D4CCCCD
var_80AA7510: .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000

