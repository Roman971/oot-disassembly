.section .text
func_808781F0:
    lh      t6, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    beq     t6, $at, lbl_80878208      
    nop
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80878208:
    lui     $at, %hi(var_80883730)     # $at = 80880000
    lwc1    $f6, %lo(var_80883730)($at) 
    lwc1    $f4, 0x0068(a0)            # 00000068
    lui     t7, 0x8012                 # t7 = 80120000
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80878230               
    nop
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80878230:
    lhu     t7, -0x4B4A(t7)            # 8011B4B6
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lui     v1, %hi(var_8088350C)      # v1 = 80880000
    andi    t8, t7, 0x000F             # t8 = 00000000
    bne     t8, $at, lbl_80878250      
    addiu   v1, v1, %lo(var_8088350C)  # v1 = 8088350C
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80878250:
    lui     a3, %hi(var_80883534)      # a3 = 80880000
    addiu   a3, a3, %lo(var_80883534)  # a3 = 80883534
    lwc1    $f14, 0x002C(a0)           # 0000002C
    lh      t9, 0x0004(v1)             # 80883510
lbl_80878260:
    lh      t1, 0x0006(v1)             # 80883512
    lh      t0, 0x0008(v1)             # 80883514
    mtc1    t9, $f8                    # $f8 = 0.00
    mtc1    t1, $f18                   # $f18 = 0.00
    mtc1    t0, $f10                   # $f10 = 0.00
    cvt.s.w $f0, $f8                   
    cvt.s.w $f4, $f18                  
    cvt.s.w $f16, $f10                 
    add.s   $f6, $f0, $f4              
    add.s   $f2, $f16, $f6             
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_808782A8               
    lh      t2, 0x0000(v1)             # 8088350C
    mov.s   $f12, $f0                  
    mov.s   $f0, $f2                   
    mov.s   $f2, $f12                  
    lh      t2, 0x0000(v1)             # 8088350C
lbl_808782A8:
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.lt.s  $f10, $f14                 
    nop
    bc1fl   lbl_8087833C               
    addiu   v1, v1, 0x0014             # v1 = 80883520
    lh      t3, 0x0002(v1)             # 80883522
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    c.lt.s  $f14, $f4                  
    nop
    bc1fl   lbl_8087833C               
    addiu   v1, v1, 0x0014             # v1 = 80883534
    lwc1    $f12, 0x0024(a0)           # 00000024
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_8087833C               
    addiu   v1, v1, 0x0014             # v1 = 80883548
    c.lt.s  $f12, $f2                  
    nop
    bc1fl   lbl_8087833C               
    addiu   v1, v1, 0x0014             # v1 = 8088355C
    lh      v0, 0x000A(v1)             # 80883566
    lh      a1, 0x000C(v1)             # 80883568
    lh      a2, 0x0032(a0)             # 00000032
    subu    t4, v0, a1                 
    slt     $at, t4, a2                
    beq     $at, $zero, lbl_80878338   
    addu    t5, a1, v0                 
    slt     $at, a2, t5                
    beql    $at, $zero, lbl_8087833C   
    addiu   v1, v1, 0x0014             # v1 = 80883570
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80878338:
    addiu   v1, v1, 0x0014             # v1 = 80883584
lbl_8087833C:
    bnel    v1, a3, lbl_80878260       
    lh      t9, 0x0004(v1)             # 80883588
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80878350:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, %hi(var_80883734)     # $at = 80880000
    lwc1    $f6, %lo(var_80883734)($at) 
    lwc1    $f4, 0x0068(a3)            # 00000068
    lui     v0, %hi(var_8088350C)      # v0 = 80880000
    addiu   v0, v0, %lo(var_8088350C)  # v0 = 8088350C
    c.lt.s  $f4, $f6                   
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    bc1fl   lbl_80878394               
    lwc1    $f14, 0x002C(a3)           # 0000002C
    beq     $zero, $zero, lbl_80878480 
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f14, 0x002C(a3)           # 0000002C
lbl_80878394:
    lh      t6, 0x0004(v0)             # 00000004
    lh      t7, 0x0006(v0)             # 00000006
    mtc1    t6, $f8                    # $f8 = 0.00
    mtc1    t7, $f10                   # $f10 = 0.00
    cvt.s.w $f0, $f8                   
    cvt.s.w $f16, $f10                 
    add.s   $f12, $f16, $f0            
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_808783D0               
    lh      t8, 0x0000(v0)             # 00000000
    mov.s   $f2, $f0                   
    mov.s   $f0, $f12                  
    mov.s   $f12, $f2                  
    lh      t8, 0x0000(v0)             # 00000000
lbl_808783D0:
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    c.lt.s  $f4, $f14                  
    nop
    bc1fl   lbl_80878474               
    addiu   a2, a2, 0x0001             # a2 = 00000001
    lh      t9, 0x0002(v0)             # 00000002
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    c.lt.s  $f14, $f8                  
    nop
    bc1fl   lbl_80878474               
    addiu   a2, a2, 0x0001             # a2 = 00000002
    lwc1    $f2, 0x0024(a3)            # 00000024
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80878474               
    addiu   a2, a2, 0x0001             # a2 = 00000003
    c.lt.s  $f2, $f12                  
    nop
    bc1fl   lbl_80878474               
    addiu   a2, a2, 0x0001             # a2 = 00000004
    lh      v1, 0x000A(v0)             # 0000000A
    lh      a0, 0x000C(v0)             # 0000000C
    lh      a1, 0x0032(a3)             # 00000032
    subu    t1, v1, a0                 
    slt     $at, t1, a1                
    beq     $at, $zero, lbl_80878470   
    addu    t2, a0, v1                 
    slt     $at, a1, t2                
    beql    $at, $zero, lbl_80878474   
    addiu   a2, a2, 0x0001             # a2 = 00000005
    sb      a2, 0x039C(a3)             # 0000039C
    lw      a1, 0x001C($sp)            
    jal     func_8087F3E0              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80878480 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80878470:
    addiu   a2, a2, 0x0001             # a2 = 00000001
lbl_80878474:
    bne     a2, t0, lbl_80878394       
    addiu   v0, v0, 0x0014             # v0 = 00000015
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80878480:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80878490:
    sll     t6, a1,  2                 
    addu    t6, t6, a1                 
    sll     t6, t6,  1                 
    addu    v0, a0, t6                 
    lh      t7, 0x0000(v0)             # 00000000
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0000(a2)            # 00000000
    lh      t8, 0x0002(v0)             # 00000002
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0004(a2)           # 00000004
    lh      t9, 0x0004(v0)             # 00000004
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0008(a2)           # 00000008
    jr      $ra                        
    nop


func_808784E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a3, 0x0024($sp)            
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    sll     a2, a3, 16                 
    sra     a2, a2, 16                 
    jal     func_8005B00C              
    lw      a1, 0x0020($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80878520:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0074($sp)            
    sw      a2, 0x0078($sp)            
    lw      t6, 0x0078($sp)            
    lw      a1, 0x01F4(s0)             # 000001F4
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFF4
    jal     func_80878490              
    lw      a0, 0x0004(t6)             # 00000004
    lw      t7, 0x0078($sp)            
    lw      t9, 0x01F4(s0)             # 000001F4
    addiu   t2, $sp, 0x0040            # t2 = FFFFFFD0
    lw      t8, 0x0004(t7)             # 00000004
    sll     t0, t9,  2                 
    addu    t0, t0, t9                 
    sll     t0, t0,  1                 
    addu    t1, t8, t0                 
    lh      a1, 0x0008(t1)             # 00000008
    sw      t2, 0x0010($sp)            
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFF4
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFD8
    jal     func_800A6750              
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFD4
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0048($sp)           
    lwc1    $f16, 0x0044($sp)          
    lwc1    $f18, 0x002C(s0)           # 0000002C
    mul.s   $f10, $f6, $f8             
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFF4
    mul.s   $f6, $f16, $f18            
    lwc1    $f16, 0x0040($sp)          
    add.s   $f8, $f10, $f6             
    add.s   $f18, $f8, $f16            
    c.lt.s  $f4, $f18                  
    nop
    bc1fl   lbl_808785E8               
    lw      t9, 0x0078($sp)            
    lw      t3, 0x01F4(s0)             # 000001F4
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sw      t4, 0x01F4(s0)             # 000001F4
    lw      t6, 0x0078($sp)            
    lw      t7, 0x0000(t6)             # 00000000
    slt     $at, t4, t7                
    bnel    $at, $zero, lbl_808785E8   
    lw      t9, 0x0078($sp)            
    sw      $zero, 0x01F4(s0)          # 000001F4
    lw      t9, 0x0078($sp)            
lbl_808785E8:
    lw      a1, 0x01F4(s0)             # 000001F4
    jal     func_80878490              
    lw      a0, 0x0004(t9)             # 00000004
    lw      a1, 0x01F4(s0)             # 000001F4
    lw      t8, 0x0078($sp)            
    lw      t0, 0x0078($sp)            
    addiu   a1, a1, 0xFFFF             # a1 = FFFFFFFF
    bgez    a1, lbl_80878614           
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFE8
    lw      a1, 0x0000(t8)             # 00000000
    addiu   a1, a1, 0xFFFF             # a1 = FFFFFFFE
lbl_80878614:
    jal     func_80878490              
    lw      a0, 0x0004(t0)             # 00000004
    lwc1    $f10, 0x0064($sp)          
    lwc1    $f6, 0x006C($sp)           
    lwc1    $f12, 0x0024(s0)           # 00000024
    lwc1    $f14, 0x002C(s0)           # 0000002C
    addiu   t1, $sp, 0x003C            # t1 = FFFFFFCC
    sw      t1, 0x0018($sp)            
    lw      a2, 0x0058($sp)            
    lw      a3, 0x0060($sp)            
    swc1    $f10, 0x0010($sp)          
    jal     func_800A8334              
    swc1    $f6, 0x0014($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0074($sp)            
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFF4
    jal     func_808784E4              
    addiu   a3, $zero, 0x0190          # a3 = 00000190
    lui     $at, %hi(var_80883738)     # $at = 80880000
    lwc1    $f16, %lo(var_80883738)($at) 
    lwc1    $f8, 0x003C($sp)           
    lui     $at, 0x4302                # $at = 43020000
    c.lt.s  $f8, $f16                  
    nop
    bc1fl   lbl_80878774               
    lw      t9, 0x0074($sp)            
    lwc1    $f0, 0x0090(s0)            # 00000090
    mtc1    $at, $f4                   # $f4 = 130.00
    nop
    c.lt.s  $f0, $f4                   
    nop
    bc1tl   lbl_808786B4               
    lh      t6, 0x008A(s0)             # 0000008A
    lw      t2, 0x031C(s0)             # 0000031C
    lui     $at, 0x4396                # $at = 43960000
    lbu     t3, 0x0017(t2)             # 00000017
    andi    t4, t3, 0x0002             # t4 = 00000000
    beql    t4, $zero, lbl_80878708    
    mtc1    $at, $f10                  # $f10 = 300.00
    lh      t6, 0x008A(s0)             # 0000008A
lbl_808786B4:
    lh      t5, 0x0032(s0)             # 00000032
    subu    a0, t6, t5                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_808786F4               
    lh      t8, 0x0032(s0)             # 00000032
    lh      t7, 0x0032(s0)             # 00000032
    addiu   t9, t7, 0xFEE8             # t9 = FFFFFEE8
    beq     $zero, $zero, lbl_80878768 
    sh      t9, 0x0032(s0)             # 00000032
    lh      t8, 0x0032(s0)             # 00000032
lbl_808786F4:
    addiu   t0, t8, 0x0118             # t0 = 00000118
    sh      t0, 0x0032(s0)             # 00000032
    beq     $zero, $zero, lbl_8087876C 
    lh      t7, 0x0032(s0)             # 00000032
    mtc1    $at, $f10                  # $f10 = 0.00
lbl_80878708:
    nop
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_8087876C               
    lh      t7, 0x0032(s0)             # 00000032
    lh      t1, 0x008A(s0)             # 0000008A
    lh      t2, 0x0032(s0)             # 00000032
    subu    a0, t1, t2                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80878760               
    lh      t6, 0x0032(s0)             # 00000032
    lh      t3, 0x0032(s0)             # 00000032
    addiu   t4, t3, 0x0118             # t4 = 00000118
    beq     $zero, $zero, lbl_80878768 
    sh      t4, 0x0032(s0)             # 00000032
    lh      t6, 0x0032(s0)             # 00000032
lbl_80878760:
    addiu   t5, t6, 0xFEE8             # t5 = FFFFFEE8
    sh      t5, 0x0032(s0)             # 00000032
lbl_80878768:
    lh      t7, 0x0032(s0)             # 00000032
lbl_8087876C:
    sh      t7, 0x00B6(s0)             # 000000B6
    lw      t9, 0x0074($sp)            
lbl_80878774:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800214FC              
    lw      a1, 0x1C44(t9)             # 00001C44
    lw      t8, 0x0074($sp)            
    swc1    $f0, 0x0050($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4              
    lw      a1, 0x1C44(t8)             # 00001C44
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lwc1    $f16, 0x0050($sp)          
    lh      t0, 0x0032(s0)             # 00000032
    c.le.s  $f16, $f8                  
    subu    a0, v0, t0                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    bc1tl   lbl_80878808               
    lwc1    $f0, 0x0068(s0)            # 00000068
    jal     func_800636C4              # sins?
    sh      a0, 0x004E($sp)            
    lui     $at, %hi(var_8088373C)     # $at = 80880000
    lwc1    $f4, %lo(var_8088373C)($at) 
    abs.s   $f0, $f0                   
    lh      a0, 0x004E($sp)            
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80878854               
    lw      t3, 0x0078($sp)            
    jal     func_80063684              # coss?
    nop
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_80878854               
    lw      t3, 0x0078($sp)            
    lwc1    $f0, 0x0068(s0)            # 00000068
lbl_80878808:
    lwc1    $f10, 0x0388(s0)           # 00000388
    lui     $at, %hi(var_80883744)     # $at = 80880000
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_80878834               
    nop
    lui     $at, %hi(var_80883740)     # $at = 80880000
    lwc1    $f6, %lo(var_80883740)($at) 
    add.s   $f8, $f0, $f6              
    beq     $zero, $zero, lbl_80878840 
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_80878834:
    lwc1    $f16, %lo(var_80883744)($at) 
    sub.s   $f4, $f0, $f16             
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_80878840:
    lhu     t1, 0x0384(s0)             # 00000384
    ori     t2, t1, 0x0001             # t2 = 00000001
    beq     $zero, $zero, lbl_808788C0 
    sh      t2, 0x0384(s0)             # 00000384
    lw      t3, 0x0078($sp)            
lbl_80878854:
    lw      t6, 0x01F4(s0)             # 000001F4
    lwc1    $f0, 0x0068(s0)            # 00000068
    lw      t4, 0x0004(t3)             # 00000004
    sll     t5, t6,  2                 
    addu    t5, t5, t6                 
    sll     t5, t5,  1                 
    addu    t7, t4, t5                 
    lh      t9, 0x0006(t7)             # 00000006
    lui     $at, %hi(var_8088374C)     # $at = 80880000
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18                 
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_808788A8               
    nop
    lui     $at, %hi(var_80883748)     # $at = 80880000
    lwc1    $f6, %lo(var_80883748)($at) 
    add.s   $f8, $f0, $f6              
    beq     $zero, $zero, lbl_808788B4 
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_808788A8:
    lwc1    $f16, %lo(var_8088374C)($at) 
    sub.s   $f4, $f0, $f16             
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_808788B4:
    lhu     t8, 0x0384(s0)             # 00000384
    andi    t0, t8, 0xFFFE             # t0 = 00000000
    sh      t0, 0x0384(s0)             # 00000384
lbl_808788C0:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra                        
    nop


func_808788D4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    lui     v1, %hi(var_8088358C)      # v1 = 80880000
    addiu   v1, v1, %lo(var_8088358C)  # v1 = 8088358C
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      v0, 0x0208(s0)             # 00000208
    lwc1    $f0, 0x0204(s0)            # 00000204
    sll     t6, v0,  2                 
    addu    t7, v1, t6                 
    lw      t8, 0x0000(t7)             # 00000000
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80878980               
    lw      $ra, 0x0024($sp)           
    bne     v0, $zero, lbl_80878940    
    lui     a3, 0x8010                 # a3 = 80100000
    lw      t9, 0x0004(v1)             # 80883590
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.lt.s  $f10, $f0                  
    nop
    bc1t    lbl_8087897C               
lbl_80878940:
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    sw      t0, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2803          # a0 = 00002803
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      t1, 0x0208(s0)             # 00000208
    addiu   t2, t1, 0x0001             # t2 = 00000001
    slti    $at, t2, 0x0002            
    bne     $at, $zero, lbl_8087897C   
    sw      t2, 0x0208(s0)             # 00000208
    sw      $zero, 0x0208(s0)          # 00000208
lbl_8087897C:
    lw      $ra, 0x0024($sp)           
lbl_80878980:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80878990:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)            
    addiu   a0, $zero, 0x2804          # a0 = 00002804
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808789D8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)            
    addiu   a0, $zero, 0x2804          # a0 = 00002804
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80878A20:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t6, 0x0020($sp)            
    swc1    $f4, 0x001C($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B4(t6)             # 000000B4
    lui     $at, %hi(var_80883750)     # $at = 80880000
    lwc1    $f6, %lo(var_80883750)($at) 
    lw      t7, 0x0020($sp)            
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80878A90               
    lwc1    $f0, 0x001C($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B4(t7)             # 000000B4
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, %hi(var_80883754)     # $at = 80880000
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80878A90               
    lwc1    $f0, 0x001C($sp)           
    lwc1    $f10, %lo(var_80883754)($at) 
    swc1    $f10, 0x001C($sp)          
    lwc1    $f0, 0x001C($sp)           
lbl_80878A90:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80878AA0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    jal     func_8008EC20              
    addu    a0, a0, $at                
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80878AD0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    sw      a2, 0x0038($sp)            
    lw      a0, 0x0030($sp)            
    lw      a1, 0x0038($sp)            
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFF4
    jal     func_80878AA0              
    addiu   a3, $sp, 0x0020            # a3 = FFFFFFF0
    lwc1    $f0, 0x0020($sp)           
    lui     $at, %hi(var_80883758)     # $at = 80880000
    lwc1    $f4, %lo(var_80883758)($at) 
    abs.s   $f0, $f0                   
    lw      a1, 0x0030($sp)            
    c.lt.s  $f0, $f4                   
    addiu   a1, a1, 0x00E0             # a1 = 000000E0
    bc1f    lbl_80878B24               
    nop
    beq     $zero, $zero, lbl_80878B70 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80878B24:
    jal     func_800A5560              
    lw      a0, 0x0038($sp)            
    swc1    $f0, 0x001C($sp)           
    lw      a0, 0x0030($sp)            
    lw      a1, 0x0034($sp)            
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFF4
    jal     func_800249DC              
    lw      a3, 0x0020($sp)            
    sltu    v0, $zero, v0              
    bne     v0, $zero, lbl_80878B70    
    lwc1    $f6, 0x001C($sp)           
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    or      v0, $zero, $zero           # v0 = 00000000
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_80878B70               
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80878B70:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80878B80:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      v1, 0x0200(s0)             # 00000200
    lui     $at, 0x420C                # $at = 420C0000
    bnel    v1, $zero, lbl_80878C3C    
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lwc1    $f0, 0x0204(s0)            # 00000204
    mtc1    $at, $f4                   # $f4 = 0.00
    lui     $at, 0x41E0                # $at = 41E00000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80878BD0               
    mtc1    $at, $f6                   # $f6 = 28.00
    lw      t6, 0x0148(s0)             # 00000148
    beql    t6, $zero, lbl_80878BF8    
    lw      v0, 0x01E0(s0)             # 000001E0
    mtc1    $at, $f6                   # $f6 = 28.00
lbl_80878BD0:
    nop
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80878C3C               
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      t7, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t7, $at, lbl_80878C3C      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      v0, 0x01E0(s0)             # 000001E0
lbl_80878BF8:
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t8, v0, 0x1000             # t8 = 00000000
    bne     t8, $zero, lbl_80878C38    
    ori     t9, v0, 0x1000             # t9 = 00001000
    lui     t0, 0x8010                 # t0 = 80100000
    sw      t9, 0x01E0(s0)             # 000001E0
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    sw      t0, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x282C          # a0 = 0000282C
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_80878C9C 
    lw      $ra, 0x0024($sp)           
lbl_80878C38:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80878C3C:
    bne     v1, $at, lbl_80878C98      
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f8                   # $f8 = 25.00
    lwc1    $f10, 0x0204(s0)           # 00000204
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80878C9C               
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x01E0(s0)             # 000001E0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t1, v0, 0x0800             # t1 = 00000000
    bne     t1, $zero, lbl_80878C98    
    ori     t2, v0, 0x0800             # t2 = 00000800
    lui     t3, 0x8010                 # t3 = 80100000
    sw      t2, 0x01E0(s0)             # 000001E0
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sw      t3, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x282B          # a0 = 0000282B
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80878C98:
    lw      $ra, 0x0024($sp)           
lbl_80878C9C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80878CAC:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s2, 0x0030($sp)            
    sw      s1, 0x002C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s8, 0x0048($sp)            
    sw      s7, 0x0044($sp)            
    sw      s6, 0x0040($sp)            
    sw      s5, 0x003C($sp)            
    sw      s4, 0x0038($sp)            
    sw      s3, 0x0034($sp)            
    sw      s0, 0x0028($sp)            
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lui     $at, %hi(var_8088375C)     # $at = 80880000
    lui     s0, %hi(var_80882E70)      # s0 = 80880000
    lui     s8, 0x8012                 # s8 = 80120000
    lwc1    $f22, %lo(var_8088375C)($at) 
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   s8, s8, 0xA5D0             # s8 = 8011A5D0
    addiu   s0, s0, %lo(var_80882E70)  # s0 = 80882E70
    addiu   s7, $zero, 0x0006          # s7 = 00000006
    addiu   s6, $zero, 0x0063          # s6 = 00000063
    addiu   s4, $sp, 0x0058            # s4 = FFFFFFE0
    lh      v0, 0x00A4(s2)             # 000000A4
lbl_80878D14:
    lh      t6, 0x0000(s0)             # 80882E70
    bne     v0, t6, lbl_80878E78       
    nop
    bne     s6, v0, lbl_80878DA8       
    lw      s3, 0x1C44(s2)             # 00001C44
    jal     func_800288B4              
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    beql    v0, $zero, lbl_80878D5C    
    lh      v0, 0x0002(s0)             # 80882E72
    lhu     t7, 0x13FA(s8)             # 8011B9CA
    andi    t8, t7, 0x000F             # t8 = 00000000
    bnel    s7, t8, lbl_80878DAC       
    lh      t3, 0x0002(s0)             # 80882E72
    jal     func_800288B4              
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bnel    v0, $zero, lbl_80878DAC    
    lh      t3, 0x0002(s0)             # 80882E72
    lh      v0, 0x0002(s0)             # 80882E72
lbl_80878D5C:
    addiu   $at, $zero, 0x0358         # $at = 00000358
    bnel    v0, $at, lbl_80878D84      
    addiu   $at, $zero, 0xFC15         # $at = FFFFFC15
    lh      t9, 0x0004(s0)             # 80882E74
    bnel    t9, $zero, lbl_80878D84    
    addiu   $at, $zero, 0xFC15         # $at = FFFFFC15
    lh      t0, 0x0006(s0)             # 80882E76
    addiu   $at, $zero, 0xFC6A         # $at = FFFFFC6A
    beq     t0, $at, lbl_80878DA8      
    addiu   $at, $zero, 0xFC15         # $at = FFFFFC15
lbl_80878D84:
    bne     v0, $at, lbl_80878E78      
    nop
    lh      t1, 0x0004(s0)             # 80882E74
    bne     t1, $zero, lbl_80878E78    
    nop
    lh      t2, 0x0006(s0)             # 80882E76
    addiu   $at, $zero, 0xFD0D         # $at = FFFFFD0D
    bne     t2, $at, lbl_80878E78      
    nop
lbl_80878DA8:
    lh      t3, 0x0002(s0)             # 80882E72
lbl_80878DAC:
    lh      t4, 0x0004(s0)             # 80882E74
    lh      t5, 0x0006(s0)             # 80882E76
    mtc1    t3, $f4                    # $f4 = 0.00
    mtc1    t4, $f8                    # $f8 = 0.00
    mtc1    t5, $f16                   # $f16 = 0.00
    cvt.s.w $f6, $f4                   
    addiu   a0, s3, 0x0024             # a0 = 00000024
    or      a1, s4, $zero              # a1 = FFFFFFE0
    cvt.s.w $f10, $f8                  
    swc1    $f6, 0x0058($sp)           
    cvt.s.w $f18, $f16                 
    swc1    $f10, 0x005C($sp)          
    jal     func_800A5560              
    swc1    $f18, 0x0060($sp)          
    c.lt.s  $f22, $f0                  
    mov.s   $f20, $f0                  
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    bc1t    lbl_80878E78               
    nop
    jal     func_80878AD0              
    or      a2, s4, $zero              # a2 = FFFFFFE0
    bne     v0, $zero, lbl_80878E78    
    nop
    lh      t6, 0x0002(s0)             # 80882E72
    mov.s   $f22, $f20                 
    or      a0, s1, $zero              # a0 = 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0024(s1)            # 00000024
    lh      t7, 0x0004(s0)             # 80882E74
    lw      t0, 0x0024(s1)             # 00000024
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(s1)           # 00000028
    lh      t8, 0x0006(s0)             # 80882E76
    sw      t0, 0x0100(s1)             # 00000100
    lw      t9, 0x0028(s1)             # 00000028
    mtc1    t8, $f16                   # $f16 = 0.00
    sw      t9, 0x0104(s1)             # 00000104
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(s1)           # 0000002C
    lw      t0, 0x002C(s1)             # 0000002C
    sw      t0, 0x0108(s1)             # 00000108
    lh      t1, 0x0008(s0)             # 80882E78
    sh      t1, 0x0032(s1)             # 00000032
    jal     func_800213B4              
    lw      a1, 0x1C44(s2)             # 00001C44
    sh      v0, 0x00B6(s1)             # 000000B6
lbl_80878E78:
    lui     t2, %hi(var_8088350A)      # t2 = 80880000
    addiu   t2, t2, %lo(var_8088350A)  # t2 = 8088350A
    addiu   s0, s0, 0x000A             # s0 = 80882E7A
    bnel    s0, t2, lbl_80878D14       
    lh      v0, 0x00A4(s2)             # 000000A4
    or      v0, s5, $zero              # v0 = 00000001
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    lw      s3, 0x0034($sp)            
    lw      s4, 0x0038($sp)            
    lw      s5, 0x003C($sp)            
    lw      s6, 0x0040($sp)            
    lw      s7, 0x0044($sp)            
    lw      s8, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_80878EC8:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sw      t6, 0x0370(a0)             # 00000370
    sh      $zero, 0x0374(a0)          # 00000374
    jr      $ra                        
    nop


func_80878EE0:
    sw      a1, 0x0004($sp)            
    sw      $zero, 0x0378(a0)          # 00000378
    jr      $ra                        
    nop


func_80878EF0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lw      a2, 0x1C44(a1)             # 00001C44
    lw      t6, 0x066C(a2)             # 0000066C
    or      a0, a2, $zero              # a0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_80878F94    
    nop
    sw      a2, 0x001C($sp)            
    sw      a1, 0x0024($sp)            
    jal     func_800216F8              
    sw      a3, 0x0020($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      v1, 0x001C($sp)            
    lw      a1, 0x0024($sp)            
    beq     v0, $at, lbl_80878F94      
    lw      a3, 0x0020($sp)            
    lw      t8, 0x066C(v1)             # 0000066C
    sll     t9, t8, 11                 
    bltz    t9, lbl_80878F94           
    nop
    lw      t0, 0x01E0(a3)             # 000001E0
    sll     t1, t0, 12                 
    bgezl   t1, lbl_80878F68           
    lw      t3, 0x013C(a3)             # 0000013C
    lw      t2, 0x0378(a3)             # 00000378
    beq     t2, $zero, lbl_80878F94    
    nop
    lw      t3, 0x013C(a3)             # 0000013C
lbl_80878F68:
    addiu   $at, $zero, 0x0012         # $at = 00000012
    beq     t3, $at, lbl_80878F94      
    nop
    lw      t4, 0x0004(v1)             # 00000004
    andi    t5, t4, 0x0100             # t5 = 00000000
    bne     t5, $zero, lbl_80878F94    
    nop
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     t6, $zero, lbl_80878F9C    
    nop
lbl_80878F94:
    beq     $zero, $zero, lbl_80878F9C 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80878F9C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80878FAC:
    sw      a1, 0x0004($sp)            
    sw      $zero, 0x038C(a0)          # 0000038C
    sw      $zero, 0x0390(a0)          # 00000390
    sw      $zero, 0x0394(a0)          # 00000394
    jr      $ra                        
    nop


func_80878FC4:
    sh      $zero, 0x0000(a0)          # 00000000
    jr      $ra                        
    nop


func_80878FD0:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)           
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     a1, %hi(var_80883594)      # a1 = 80880000
    addiu   a1, a1, %lo(var_80883594)  # a1 = 80883594
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063F7C              
    sh      $zero, 0x0E60(t6)          # 80120E60
    jal     func_80878FC4              
    addiu   a0, s0, 0x03B8             # a0 = 000003B8
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    addiu   t8, s0, 0x0024             # t8 = 00000024
    lui     $at, 0x428C                # $at = 428C0000
    sh      $zero, 0x05BE(t7)          # 801205BE
    sw      t8, 0x003C($sp)            
    lw      t1, 0x0000(t8)             # 00000024
    mtc1    $at, $f6                   # $f6 = 70.00
    lui     v0, 0x8012                 # v0 = 80120000
    sw      t1, 0x0248(s0)             # 00000248
    lw      t0, 0x0004(t8)             # 00000028
    sw      t0, 0x024C(s0)             # 0000024C
    lwc1    $f4, 0x024C(s0)            # 0000024C
    lw      t1, 0x0008(t8)             # 0000002C
    sw      $zero, 0x0140(s0)          # 00000140
    add.s   $f8, $f4, $f6              
    sw      $zero, 0x0144(s0)          # 00000144
    sw      t1, 0x0250(s0)             # 00000250
    swc1    $f8, 0x024C(s0)            # 0000024C
    lw      v0, -0x4600(v0)            # 8011BA00
    lh      t2, 0x055C(v0)             # 8012055C
    bne     t2, $zero, lbl_8087906C    
    addiu   t3, $zero, 0x0046          # t3 = 00000046
    sh      t3, 0x055C(v0)             # 8012055C
lbl_8087906C:
    lh      v0, 0x001C(s0)             # 0000001C
    andi    t4, v0, 0x8000             # t4 = 00000000
    beq     t4, $zero, lbl_808790FC    
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t5, v0, $at                
    lui     $at, 0x0001                # $at = 00010000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    ori     $at, $at, 0x17A4           # $at = 000117A4
    sh      t5, 0x001C(s0)             # 0000001C
    sw      t6, 0x0148(s0)             # 00000148
    addu    a0, s1, $at                
    sw      a0, 0x0038($sp)            
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x00D2          # a1 = 000000D2
    sll     t7, v0, 24                 
    sra     t8, t7, 24                 
    bgez    t8, lbl_808790C8           
    sb      v0, 0x014C(s0)             # 0000014C
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808796F0 
    lw      $ra, 0x0034($sp)           
lbl_808790C8:
    lw      a0, 0x0038($sp)            
lbl_808790CC:
    jal     func_80081688              
    lb      a1, 0x014C(s0)             # 0000014C
    beql    v0, $zero, lbl_808790CC    
    lw      a0, 0x0038($sp)            
    lb      t9, 0x014C(s0)             # 0000014C
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80020FA4              
    sb      t9, 0x001E(s0)             # 0000001E
    addiu   t0, $zero, 0x000C          # t0 = 0000000C
    beq     $zero, $zero, lbl_80879108 
    sw      t0, 0x01F8(s0)             # 000001F8
lbl_808790FC:
    addiu   t1, $zero, 0x000E          # t1 = 0000000E
    sw      $zero, 0x0148(s0)          # 00000148
    sw      t1, 0x01F8(s0)             # 000001F8
lbl_80879108:
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x7FFF         # $at = 00007FFF
    bne     t2, $at, lbl_8087911C      
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sh      t3, 0x001C(s0)             # 0000001C
lbl_8087911C:
    lh      v0, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    bne     v0, $at, lbl_80879134      
    lui     t4, 0x0001                 # t4 = 00010000
    beq     $zero, $zero, lbl_8087921C 
    sw      t4, 0x01E0(s0)             # 000001E0
lbl_80879134:
    addiu   $at, $zero, 0x005D         # $at = 0000005D
    bnel    v0, $at, lbl_80879160      
    lh      v0, 0x001C(s0)             # 0000001C
    lw      t5, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t6, 0x0005                 # t6 = 00050000
    bnel    t5, $at, lbl_80879160      
    lh      v0, 0x001C(s0)             # 0000001C
    beq     $zero, $zero, lbl_8087921C 
    sw      t6, 0x01E0(s0)             # 000001E0
    lh      v0, 0x001C(s0)             # 0000001C
lbl_80879160:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     t7, 0x000B                 # t7 = 000B0000
    bnel    v0, $at, lbl_8087917C      
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     $zero, $zero, lbl_8087921C 
    sw      t7, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_8087917C:
    bne     v0, $at, lbl_80879204      
    lui     t8, 0x000A                 # t8 = 000A0000
    sw      t8, 0x01E0(s0)             # 000001E0
    jal     func_800288B4              
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bne     v0, $zero, lbl_808791AC    
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    lui     t5, 0x8012                 # t5 = 80120000
    lh      t0, 0x0556(t9)             # 80120556
    beq     t0, $zero, lbl_808791D0    
    nop
lbl_808791AC:
    lw      t1, 0x01E0(s0)             # 000001E0
    lui     $at, 0xFFFD                # $at = FFFD0000
    ori     $at, $at, 0xFFFF           # $at = FFFDFFFF
    and     t2, t1, $at                
    lui     $at, 0x0400                # $at = 04000000
    sw      t2, 0x01E0(s0)             # 000001E0
    or      t4, t2, $at                # t4 = 04000000
    beq     $zero, $zero, lbl_8087921C 
    sw      t4, 0x01E0(s0)             # 000001E0
lbl_808791D0:
    lhu     t5, -0x4636(t5)            # 8011B9CA
    andi    t6, t5, 0x0040             # t6 = 00000000
    beql    t6, $zero, lbl_80879220    
    lh      t1, 0x00A4(s1)             # 000000A4
    lw      t7, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t7, $at, lbl_80879220      
    lh      t1, 0x00A4(s1)             # 000000A4
    lw      t8, 0x01E0(s0)             # 000001E0
    lui     $at, 0x0030                # $at = 00300000
    or      t9, t8, $at                # t9 = 00300000
    beq     $zero, $zero, lbl_8087921C 
    sw      t9, 0x01E0(s0)             # 000001E0
lbl_80879204:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80879218      
    addiu   t0, $zero, 0x0080          # t0 = 00000080
    beq     $zero, $zero, lbl_8087921C 
    sw      t0, 0x01E0(s0)             # 000001E0
lbl_80879218:
    sw      $zero, 0x01E0(s0)          # 000001E0
lbl_8087921C:
    lh      t1, 0x00A4(s1)             # 000000A4
lbl_80879220:
    addiu   $at, $zero, 0x0063         # $at = 00000063
    bne     t1, $at, lbl_80879270      
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x4636(t2)            # 8011B9CA
    addiu   $at, $zero, 0x0006         # $at = 00000006
    andi    t3, t2, 0x000F             # t3 = 00000000
    bnel    t3, $at, lbl_80879274      
    lui     a1, 0x3C23                 # a1 = 3C230000
    jal     func_800288B4              
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bne     v0, $zero, lbl_80879270    
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    lh      t5, 0x0556(t4)             # 80120556
    bnel    t5, $zero, lbl_80879274    
    lui     a1, 0x3C23                 # a1 = 3C230000
    lw      t6, 0x01E0(s0)             # 000001E0
    lui     $at, 0x0200                # $at = 02000000
    or      t7, t6, $at                # t7 = 02000000
    sw      t7, 0x01E0(s0)             # 000001E0
lbl_80879270:
    lui     a1, 0x3C23                 # a1 = 3C230000
lbl_80879274:
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f10                  # $f10 = -3.50
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xF04C             # a2 = 8001F04C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_8001EC20              
    swc1    $f10, 0x006C(s0)           # 0000006C
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x013C(s0)             # 0000013C
    addiu   a1, s0, 0x0268             # a1 = 00000268
    swc1    $f16, 0x0068(s0)           # 00000068
    sw      a1, 0x0040($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80882DDC)      # a3 = 80880000
    lw      a1, 0x0040($sp)            
    addiu   a3, a3, %lo(var_80882DDC)  # a3 = 80882DDC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x02B4             # a1 = 000002B4
    sw      a1, 0x0040($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80882E08)      # a3 = 80880000
    lw      a1, 0x0040($sp)            
    addiu   a3, a3, %lo(var_80882E08)  # a3 = 80882E08
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0300             # a1 = 00000300
    sw      a1, 0x0040($sp)            
    jal     func_8004A484              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80882E58)      # a3 = 80880000
    addiu   t9, s0, 0x0320             # t9 = 00000320
    lw      a1, 0x0040($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80882E58)  # a3 = 80882E58
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80049E10              
    addiu   a0, $zero, 0x000B          # a0 = 0000000B
    lui     a2, %hi(var_80882E68)      # a2 = 80880000
    addiu   a2, a2, %lo(var_80882E68)  # a2 = 80882E68
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344              
    or      a1, v0, $zero              # a1 = 00000000
    lw      t0, 0x003C($sp)            
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    lw      t2, 0x0000(t0)             # 00000000
    addiu   $at, $zero, 0x0063         # $at = 00000063
    lui     t3, 0x8012                 # t3 = 80120000
    sw      t2, 0x0038(s0)             # 00000038
    lw      t1, 0x0004(t0)             # 00000004
    sw      t1, 0x003C(s0)             # 0000003C
    lwc1    $f18, 0x003C(s0)           # 0000003C
    lw      t2, 0x0008(t0)             # 00000008
    sw      $zero, 0x01FC(s0)          # 000001FC
    add.s   $f6, $f18, $f4             
    sw      t2, 0x0040(s0)             # 00000040
    swc1    $f6, 0x003C(s0)            # 0000003C
    lh      v0, 0x00A4(s1)             # 000000A4
    bnel    v0, $at, lbl_80879468      
    addiu   $at, $zero, 0x0036         # $at = 00000036
    lw      t3, -0x46D0(t3)            # 8011B930
    slti    $at, t3, 0x0004            
    beql    $at, $zero, lbl_80879468   
    addiu   $at, $zero, 0x0036         # $at = 00000036
    lw      t4, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t4, $at, lbl_80879424      
    nop
    lh      t5, 0x0034(s0)             # 00000034
    lui     t6, 0x8012                 # t6 = 80120000
    beq     t5, $zero, lbl_808793D4    
    nop
    lw      t6, -0x5A20(t6)            # 8011A5E0
    beq     t6, $zero, lbl_808793E4    
    nop
lbl_808793D4:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808796F0 
    lw      $ra, 0x0034($sp)           
lbl_808793E4:
    jal     func_800288B4              
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    beql    v0, $zero, lbl_80879408    
    lh      t7, 0x0034(s0)             # 00000034
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808796F0 
    lw      $ra, 0x0034($sp)           
    lh      t7, 0x0034(s0)             # 00000034
lbl_80879408:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    t7, $at, lbl_808794D0      
    lw      v0, 0x0148(s0)             # 00000148
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808796F0 
    lw      $ra, 0x0034($sp)           
lbl_80879424:
    jal     func_800288B4              
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bne     v0, $zero, lbl_808794CC    
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    lui     t0, 0x8012                 # t0 = 80120000
    lh      t9, 0x0556(t8)             # 80120556
    bnel    t9, $zero, lbl_808794D0    
    lw      v0, 0x0148(s0)             # 00000148
    lw      t0, -0x5A20(t0)            # 8011A5E0
    beql    t0, $zero, lbl_808794D0    
    lw      v0, 0x0148(s0)             # 00000148
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808796F0 
    lw      $ra, 0x0034($sp)           
    addiu   $at, $zero, 0x0036         # $at = 00000036
lbl_80879468:
    bne     v0, $at, lbl_808794CC      
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x5A20(t1)            # 8011A5E0
    beq     t1, $zero, lbl_808794AC    
    nop
    jal     func_800288B4              
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bne     v0, $zero, lbl_808794AC    
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x4600(t2)            # 8011BA00
    lui     t4, 0x8012                 # t4 = 80120000
    lh      t3, 0x0556(t2)             # 80120556
    bne     t3, $zero, lbl_808794AC    
    nop
    lw      t4, -0x5A2C(t4)            # 8011A5D4
    beql    t4, $zero, lbl_808794C0    
    lw      t5, 0x01E0(s0)             # 000001E0
lbl_808794AC:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808796F0 
    lw      $ra, 0x0034($sp)           
    lw      t5, 0x01E0(s0)             # 000001E0
lbl_808794C0:
    lui     $at, 0x0001                # $at = 00010000
    or      t6, t5, $at                # t6 = 00010000
    sw      t6, 0x01E0(s0)             # 000001E0
lbl_808794CC:
    lw      v0, 0x0148(s0)             # 00000148
lbl_808794D0:
    lui     t7, %hi(var_80882D88)      # t7 = 80880000
    lui     a2, %hi(var_80882DB4)      # a2 = 80880000
    sll     v0, v0,  2                 
    addu    t7, t7, v0                 
    lw      t7, %lo(var_80882D88)(t7)  
    addu    a2, a2, v0                 
    lw      a2, %lo(var_80882DB4)(a2)  
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0150             # a1 = 00000150
    jal     func_8008E4EC              
    lw      a3, 0x0000(t7)             # 80880000
    lw      t8, 0x0148(s0)             # 00000148
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sw      $zero, 0x0200(s0)          # 00000200
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    jal     func_8008D1C4              
    lw      a1, 0x0000(t0)             # 80880000
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    sb      t1, 0x0228(s0)             # 00000228
    sw      $zero, 0x022C(s0)          # 0000022C
    sw      $zero, 0x0234(s0)          # 00000234
    sb      $zero, 0x036A(s0)          # 0000036A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878EC8              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878EE0              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878FAC              
    or      a1, s1, $zero              # a1 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_8087957C      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    jal     func_8087BF48              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808796E0 
    sh      $zero, 0x00B8(s0)          # 000000B8
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8087957C:
    bnel    v0, $at, lbl_8087960C      
    addiu   $at, $zero, 0x0007         # $at = 00000007
    jal     func_8087CBB8              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    swc1    $f10, 0x0014($sp)          
    lh      t2, 0x00B4(s0)             # 000000B4
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00CB          # a2 = 000000CB
    sw      t2, 0x0018($sp)            
    lh      t3, 0x00B6(s0)             # 000000B6
    sw      t5, 0x0024($sp)            
    sw      t4, 0x0020($sp)            
    jal     func_80025110              # ActorSpawn
    sw      t3, 0x001C($sp)            
    sw      v0, 0x037C(s0)             # 0000037C
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4636(t6)            # 8011B9CA
    lui     $at, 0x414A                # $at = 414A0000
    andi    t7, t6, 0x0040             # t7 = 00000000
    bnel    t7, $zero, lbl_80879600    
    mtc1    $at, $f18                  # $f18 = 12.63
    lui     $at, %hi(var_80883760)     # $at = 80880000
    lwc1    $f16, %lo(var_80883760)($at) 
    beq     $zero, $zero, lbl_808796DC 
    swc1    $f16, 0x0388(s0)           # 00000388
    mtc1    $at, $f18                  # $f18 = 0.00
lbl_80879600:
    beq     $zero, $zero, lbl_808796DC 
    swc1    $f18, 0x0388(s0)           # 00000388
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_8087960C:
    bne     v0, $at, lbl_80879624      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8087DF78              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808796E0 
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_80879624:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    v0, $at, lbl_8087964C      
    lh      t8, 0x00A4(s1)             # 000000A4
    jal     func_8087E334              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006FA88              
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808796E0 
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t8, 0x00A4(s1)             # 000000A4
lbl_8087964C:
    addiu   $at, $zero, 0x0063         # $at = 00000063
    bnel    t8, $at, lbl_8087968C      
    lh      v0, 0x00A4(s1)             # 000000A4
    jal     func_800288B4              
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bne     v0, $zero, lbl_80879688    
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    lh      t0, 0x0556(t9)             # 80120556
    bnel    t0, $zero, lbl_8087968C    
    lh      v0, 0x00A4(s1)             # 000000A4
    jal     func_8087E92C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808796E0 
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_80879688:
    lh      v0, 0x00A4(s1)             # 000000A4
lbl_8087968C:
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    bnel    v0, $at, lbl_808796AC      
    addiu   $at, $zero, 0x005D         # $at = 0000005D
    jal     func_8087C298              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808796E0 
    sh      $zero, 0x00B8(s0)          # 000000B8
    addiu   $at, $zero, 0x005D         # $at = 0000005D
lbl_808796AC:
    bne     v0, $at, lbl_808796D4      
    nop
    lw      t1, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t1, $at, lbl_808796D4      
    nop
    jal     func_8087C298              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808796E0 
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_808796D4:
    jal     func_8087C2CC              
    or      a0, s0, $zero              # a0 = 00000000
lbl_808796DC:
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_808796E0:
    lh      v0, 0x00B8(s0)             # 000000B8
    sh      v0, 0x0034(s0)             # 00000034
    sh      v0, 0x0018(s0)             # 00000018
    lw      $ra, 0x0034($sp)           
lbl_808796F0:
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80879700:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lw      t6, 0x01E0(s0)             # 000001E0
    sll     t7, t6,  4                 
    bgezl   t7, lbl_80879730           
    lw      a0, 0x0024($sp)            
    jal     func_800C9568              
    addiu   a0, s0, 0x020C             # a0 = 0000020C
    lw      a0, 0x0024($sp)            
lbl_80879730:
    jal     func_8008E6BC              
    addiu   a1, s0, 0x0150             # a1 = 00000150
    lw      a0, 0x0024($sp)            
    jal     func_8004ABCC              
    addiu   a1, s0, 0x0268             # a1 = 00000268
    lw      a0, 0x0024($sp)            
    jal     func_8004ABCC              
    addiu   a1, s0, 0x02B4             # a1 = 000002B4
    lw      a0, 0x0024($sp)            
    jal     func_8004A550              
    addiu   a1, s0, 0x0300             # a1 = 00000300
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80879770:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      a2, 0x1C44(a1)             # 00001C44
    sw      a0, 0x0018($sp)            
    addiu   a3, $zero, 0x0190          # a3 = 00000190
    jal     func_808784E4              
    addiu   a2, a2, 0x0024             # a2 = 00000024
    lw      a0, 0x0018($sp)            
    lw      t6, 0x01E0(a0)             # 000001E0
    andi    t7, t6, 0x4000             # t7 = 00000000
    beql    t7, $zero, lbl_808797D0    
    lh      t1, 0x0032(a0)             # 00000032
    lh      t8, 0x0032(a0)             # 00000032
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f8                   # $f8 = 800.00
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t0, $f16                   
    nop
    sh      t0, 0x0032(a0)             # 00000032
    lh      t1, 0x0032(a0)             # 00000032
lbl_808797D0:
    sh      t1, 0x00B6(a0)             # 000000B6
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_808797E0:
    lw      v0, 0x013C(a0)             # 0000013C
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     v0, $at, lbl_80879858      
    addiu   $at, $zero, 0x0012         # $at = 00000012
    beq     v0, $at, lbl_80879858      
    nop
    lh      v1, 0x001C(a0)             # 0000001C
    lui     t6, %hi(var_8088359C)      # t6 = 80880000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addu    t6, t6, v1                 
    lbu     t6, %lo(var_8088359C)(t6)  
    beql    t6, $zero, lbl_8087982C    
    lbu     t7, 0x027A(a0)             # 0000027A
    beql    v1, $at, lbl_8087982C      
    lbu     t7, 0x027A(a0)             # 0000027A
    sw      $zero, 0x0140(a0)          # 00000140
    sw      $zero, 0x0144(a0)          # 00000144
    lw      v0, 0x013C(a0)             # 0000013C
    lbu     t7, 0x027A(a0)             # 0000027A
lbl_8087982C:
    lbu     t9, 0x02C6(a0)             # 000002C6
    lbu     t1, 0x0312(a0)             # 00000312
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    andi    t0, t9, 0xFFFE             # t0 = 00000000
    andi    t2, t1, 0xFFFE             # t2 = 00000000
    sw      v0, 0x0244(a0)             # 00000244
    sw      $zero, 0x013C(a0)          # 0000013C
    sb      t8, 0x027A(a0)             # 0000027A
    sb      t0, 0x02C6(a0)             # 000002C6
    sb      t2, 0x0312(a0)             # 00000312
    sw      $zero, 0x0200(a0)          # 00000200
lbl_80879858:
    jr      $ra                        
    nop


func_80879860:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      t6, 0x0140(s0)             # 00000140
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sw      t7, 0x0140(s0)             # 00000140
    bgez    t7, lbl_808799BC           
    swc1    $f4, 0x0068(s0)            # 00000068
    lbu     t9, 0x027A(s0)             # 0000027A
    lbu     t1, 0x02C6(s0)             # 000002C6
    lbu     t3, 0x0312(s0)             # 00000312
    lw      t5, 0x01FC(s0)             # 000001FC
    ori     t0, t9, 0x0001             # t0 = 00000001
    ori     t2, t1, 0x0001             # t2 = 00000001
    ori     t4, t3, 0x0001             # t4 = 00000001
    sb      t0, 0x027A(s0)             # 0000027A
    sb      t2, 0x02C6(s0)             # 000002C6
    bne     t5, $at, lbl_80879968      
    sb      t4, 0x0312(s0)             # 00000312
    lw      t6, 0x01E0(s0)             # 000001E0
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFF7F         # $at = FFFFFF7F
    and     t7, t6, $at                
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808798E4      
    sw      t7, 0x01E0(s0)             # 000001E0
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80879958 
    lh      t1, 0x001C(s0)             # 0000001C
lbl_808798E4:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     v0, $at, lbl_8087992C      
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sh      t8, 0x001C(s0)             # 0000001C
    lbu     t9, 0x1D6C(a1)             # 00001D6C
    lui     $at, 0x4100                # $at = 41000000
    beql    t9, $zero, lbl_80879918    
    mtc1    $at, $f6                   # $f6 = 8.00
    jal     func_80879E50              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80879958 
    lh      t1, 0x001C(s0)             # 0000001C
    mtc1    $at, $f6                   # $f6 = 0.00
lbl_80879918:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8087ABA8              
    swc1    $f6, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80879958 
    lh      t1, 0x001C(s0)             # 0000001C
lbl_8087992C:
    lw      t0, 0x0244(s0)             # 00000244
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t0, $at, lbl_8087994C      
    nop
    jal     func_80879E50              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80879958 
    lh      t1, 0x001C(s0)             # 0000001C
lbl_8087994C:
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t1, 0x001C(s0)             # 0000001C
lbl_80879958:
    beql    t1, $zero, lbl_808799C0    
    lw      $ra, 0x001C($sp)           
    beq     $zero, $zero, lbl_808799BC 
    sh      $zero, 0x001C(s0)          # 0000001C
lbl_80879968:
    lw      v0, 0x0244(s0)             # 00000244
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $at, lbl_8087998C      
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8087C270              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    beq     $zero, $zero, lbl_808799C0 
    lw      $ra, 0x001C($sp)           
lbl_8087998C:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_808799B0      
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8087C270              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    beq     $zero, $zero, lbl_808799C0 
    lw      $ra, 0x001C($sp)           
lbl_808799B0:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8087C270              
    addiu   a2, $zero, 0x0000          # a2 = 00000000
lbl_808799BC:
    lw      $ra, 0x001C($sp)           
lbl_808799C0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808799D0:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x004C($sp)            
    sw      a2, 0x0050($sp)            
    sw      a3, 0x0054($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878EF0              
    lw      a1, 0x004C($sp)            
    bne     v0, $zero, lbl_80879A4C    
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lwc1    $f2, 0x0068(s0)            # 00000068
    lwc1    $f6, 0x005C($sp)           
    c.lt.s  $f4, $f2                   
    nop
    bc1fl   lbl_80879A30               
    mtc1    $zero, $f0                 # $f0 = 0.00
    sub.s   $f8, $f2, $f6              
    beq     $zero, $zero, lbl_80879E00 
    swc1    $f8, 0x0068(s0)            # 00000068
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80879A30:
    nop
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80879E04               
    lw      $ra, 0x001C($sp)           
    beq     $zero, $zero, lbl_80879E00 
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_80879A4C:
    jal     func_80878A20              
    lw      a1, 0x004C($sp)            
    lwc1    $f12, 0x0060($sp)          
    addiu   a0, s0, 0x0254             # a0 = 00000254
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFF8
    mul.s   $f12, $f12, $f0            
    addiu   a2, $sp, 0x003E            # a2 = FFFFFFF6
    jal     func_80880084              
    swc1    $f12, 0x0060($sp)          
    jal     func_80063684              # coss?
    lh      a0, 0x003E($sp)            
    lwc1    $f10, 0x0054($sp)          
    lwc1    $f12, 0x0060($sp)          
    lwc1    $f6, 0x0050($sp)           
    c.le.s  $f0, $f10                  
    lwc1    $f10, 0x0040($sp)          
    lwc1    $f4, 0x0058($sp)           
    bc1fl   lbl_80879AD0               
    c.lt.s  $f10, $f4                  
    lwc1    $f4, 0x0068(s0)            # 00000068
    mtc1    $zero, $f0                 # $f0 = 0.00
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f2, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f0                   
    nop
    bc1f    lbl_80879AC4               
    nop
    beq     $zero, $zero, lbl_80879E00 
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_80879AC4:
    beq     $zero, $zero, lbl_80879E00 
    swc1    $f2, 0x0068(s0)            # 00000068
    c.lt.s  $f10, $f4                  
lbl_80879AD0:
    nop
    bc1fl   lbl_80879B2C               
    lw      v0, 0x01E0(s0)             # 000001E0
    lw      t6, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lwc1    $f6, 0x0068(s0)            # 00000068
    and     t7, t6, $at                
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    sw      t7, 0x01E0(s0)             # 000001E0
    and     t9, t7, $at                
    sw      t9, 0x01E0(s0)             # 000001E0
    lwc1    $f8, 0x005C($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
    sub.s   $f10, $f6, $f8             
    swc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f4, 0x0068(s0)            # 00000068
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80879E04               
    lw      $ra, 0x001C($sp)           
    beq     $zero, $zero, lbl_80879E00 
    swc1    $f0, 0x0068(s0)            # 00000068
    lw      v0, 0x01E0(s0)             # 000001E0
lbl_80879B2C:
    andi    t0, v0, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_80879C08    
    andi    t4, v0, 0x0002             # t4 = 00000000
    lw      t1, 0x0230(s0)             # 00000230
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    lw      a1, 0x004C($sp)            
    subu    t3, t2, t1                 
    blez    t3, lbl_80879B94           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878A20              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t4, 0x01F8(s0)             # 000001F8
    lw      t5, 0x0230(s0)             # 00000230
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    mtc1    t4, $f6                    # $f6 = 0.00
    subu    t7, t6, t5                 
    lwc1    $f2, 0x0068(s0)            # 00000068
    cvt.s.w $f8, $f6                   
    mtc1    t7, $f6                    # $f6 = 0.00
    mul.s   $f10, $f0, $f8             
    cvt.s.w $f8, $f6                   
    sub.s   $f4, $f10, $f2             
    div.s   $f10, $f4, $f8             
    add.s   $f6, $f10, $f2             
    beq     $zero, $zero, lbl_80879BB4 
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80879B94:
    jal     func_80878A20              
    lw      a1, 0x004C($sp)            
    lw      t8, 0x01F8(s0)             # 000001F8
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4                   
    mul.s   $f10, $f0, $f8             
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_80879BB4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878A20              
    lw      a1, 0x004C($sp)            
    lw      t9, 0x01F8(s0)             # 000001F8
    lwc1    $f2, 0x0068(s0)            # 00000068
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6                   
    mul.s   $f8, $f0, $f4              
    c.le.s  $f8, $f2                   
    nop
    bc1fl   lbl_80879D04               
    lh      t5, 0x003E($sp)            
    lw      t0, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lwc1    $f2, 0x0068(s0)            # 00000068
    and     t2, t0, $at                
    sw      t2, 0x01E0(s0)             # 000001E0
    ori     t3, t2, 0x0002             # t3 = 00000002
    beq     $zero, $zero, lbl_80879D00 
    sw      t3, 0x01E0(s0)             # 000001E0
lbl_80879C08:
    beq     t4, $zero, lbl_80879C60    
    lui     $at, %hi(var_80883768)     # $at = 80880000
    lwc1    $f2, 0x0068(s0)            # 00000068
    lui     $at, %hi(var_80883764)     # $at = 80880000
    c.lt.s  $f12, $f2                  
    nop
    bc1fl   lbl_80879C40               
    c.lt.s  $f2, $f12                  
    lwc1    $f10, %lo(var_80883764)($at) 
    sub.s   $f6, $f2, $f10             
    swc1    $f6, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80879D00 
    lwc1    $f2, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f12                  
lbl_80879C40:
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    and     t6, v0, $at                
    bc1fl   lbl_80879D04               
    lh      t5, 0x003E($sp)            
    swc1    $f12, 0x0068(s0)           # 00000068
    lwc1    $f2, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80879D00 
    sw      t6, 0x01E0(s0)             # 000001E0
lbl_80879C60:
    lwc1    $f4, %lo(var_80883768)($at) 
    lwc1    $f10, 0x0040($sp)          
    lwc1    $f2, 0x0068(s0)            # 00000068
    mul.s   $f8, $f12, $f4             
    lui     $at, 0xBF80                # $at = BF800000
    mul.s   $f6, $f8, $f10             
    c.le.s  $f2, $f6                   
    nop
    bc1fl   lbl_80879C9C               
    mtc1    $at, $f0                   # $f0 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    beq     $zero, $zero, lbl_80879CA4 
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
lbl_80879C9C:
    nop
    lui     $at, 0x4248                # $at = 42480000
lbl_80879CA4:
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     $at, %hi(var_8088376C)     # $at = 80880000
    lwc1    $f10, %lo(var_8088376C)($at) 
    mul.s   $f8, $f0, $f4              
    nop
    mul.s   $f6, $f8, $f10             
    add.s   $f4, $f2, $f6              
    swc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f2, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x005C($sp)           
    c.lt.s  $f12, $f2                  
    nop
    bc1f    lbl_80879D00               
    nop
    sub.s   $f10, $f2, $f8             
    swc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f2, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f12                  
    nop
    bc1fl   lbl_80879D04               
    lh      t5, 0x003E($sp)            
    swc1    $f12, 0x0068(s0)           # 00000068
    lwc1    $f2, 0x0068(s0)            # 00000068
lbl_80879D00:
    lh      t5, 0x003E($sp)            
lbl_80879D04:
    lw      t7, 0x01F8(s0)             # 000001F8
    lui     $at, %hi(var_80883770)     # $at = 80880000
    mtc1    t5, $f6                    # $f6 = 0.00
    mtc1    t7, $f10                   # $f10 = 0.00
    lwc1    $f4, %lo(var_80883770)($at) 
    cvt.s.w $f0, $f6                   
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, %hi(var_80883774)     # $at = 80880000
    lh      v1, 0x0066($sp)            
    cvt.s.w $f6, $f10                  
    mul.s   $f12, $f0, $f4             
    subu    t9, $zero, v1              
    div.s   $f4, $f8, $f6              
    lwc1    $f8, %lo(var_80883774)($at) 
    mul.s   $f10, $f2, $f4             
    nop
    mul.s   $f6, $f0, $f12             
    sub.s   $f14, $f8, $f10            
    mul.s   $f4, $f6, $f12             
    nop
    mul.s   $f8, $f4, $f14             
    mtc1    t9, $f4                    # $f4 = 0.00
    trunc.w.s $f10, $f8                  
    cvt.s.w $f8, $f4                   
    mfc1    v0, $f10                   
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    mtc1    v0, $f6                    # $f6 = 0.00
    mul.s   $f18, $f8, $f14            
    cvt.s.w $f16, $f6                  
    c.lt.s  $f16, $f18                 
    nop
    bc1f    lbl_80879DAC               
    nop
    trunc.w.s $f10, $f18                 
    mfc1    v0, $f10                   
    nop
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_80879DEC 
    sra     v0, v0, 16                 
lbl_80879DAC:
    mtc1    v1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f4, $f6                   
    mul.s   $f2, $f4, $f14             
    c.lt.s  $f2, $f16                  
    nop
    bc1fl   lbl_80879DD8               
    mov.s   $f0, $f16                  
    beq     $zero, $zero, lbl_80879DD8 
    mov.s   $f0, $f2                   
    mov.s   $f0, $f16                  
lbl_80879DD8:
    trunc.w.s $f8, $f0                   
    mfc1    v0, $f8                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_80879DEC:
    lh      t1, 0x0032(s0)             # 00000032
    addu    t3, t1, v0                 
    sh      t3, 0x0032(s0)             # 00000032
    lh      t4, 0x0032(s0)             # 00000032
    sh      t4, 0x00B6(s0)             # 000000B6
lbl_80879E00:
    lw      $ra, 0x001C($sp)           
lbl_80879E04:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80879E14:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x01B4(a0)            # 000001B4
    jal     func_80879E50              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0xEFFF         # $at = FFFFEFFF
    lw      t6, 0x01E0(a0)             # 000001E0
    and     t7, t6, $at                
    sw      t7, 0x01E0(a0)             # 000001E0
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80879E50:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0x420C                # $at = 420C0000
    mtc1    $at, $f4                   # $f4 = 35.00
    lwc1    $f0, 0x0204(s0)            # 00000204
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x013C(s0)             # 0000013C
    c.lt.s  $f4, $f0                   
    sw      $zero, 0x0200(s0)          # 00000200
    lui     $at, 0x41E0                # $at = 41E00000
    bc1fl   lbl_80879E98               
    mtc1    $at, $f6                   # $f6 = 28.00
    lw      v0, 0x0148(s0)             # 00000148
    beql    v0, $zero, lbl_80879EBC    
    lw      v1, 0x01E0(s0)             # 000001E0
    mtc1    $at, $f6                   # $f6 = 28.00
lbl_80879E98:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      v0, 0x0148(s0)             # 00000148
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80879EFC               
    lwc1    $f8, 0x01B4(s0)            # 000001B4
    bnel    v0, $at, lbl_80879EFC      
    lwc1    $f8, 0x01B4(s0)            # 000001B4
    lw      v1, 0x01E0(s0)             # 000001E0
lbl_80879EBC:
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t7, v1, 0x1000             # t7 = 00000000
    bne     t7, $zero, lbl_80879EF8    
    ori     t8, v1, 0x1000             # t8 = 00001000
    lui     t9, 0x8010                 # t9 = 80100000
    sw      t8, 0x01E0(s0)             # 000001E0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    sw      t9, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x282C          # a0 = 0000282C
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      v0, 0x0148(s0)             # 00000148
lbl_80879EF8:
    lwc1    $f8, 0x01B4(s0)            # 000001B4
lbl_80879EFC:
    sll     t0, v0,  2                 
    lui     t1, %hi(var_80882D88)      # t1 = 80880000
    swc1    $f8, 0x0034($sp)           
    lw      t2, 0x0200(s0)             # 00000200
    addu    t1, t1, t0                 
    lw      t1, %lo(var_80882D88)(t1)  
    sll     t3, t2,  2                 
    addu    t4, t1, t3                 
    jal     func_8008A194              
    lw      a0, 0x0000(t4)             # 00000000
    lw      t5, 0x0148(s0)             # 00000148
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     t7, %hi(var_80882D88)      # t7 = 80880000
    sll     t6, t5,  2                 
    lw      t8, 0x0200(s0)             # 00000200
    addu    t7, t7, t6                 
    lw      t7, %lo(var_80882D88)(t7)  
    cvt.s.w $f16, $f10                 
    sll     t9, t8,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t0, t7, t9                 
    mtc1    $at, $f18                  # $f18 = -3.00
    lw      a1, 0x0000(t0)             # 00000000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0014($sp)            
    swc1    $f16, 0x0010($sp)          
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a3, 0x0034($sp)            
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80879F8C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      $zero, 0x0022($sp)         
    addiu   a0, s0, 0x0254             # a0 = 00000254
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    addiu   a2, $sp, 0x0022            # a2 = FFFFFFFA
    jal     func_80880084              
    swc1    $f4, 0x0068(s0)            # 00000068
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f8, 0x0024($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_8087A060               
    nop
    jal     func_80878EF0              
    lw      a1, 0x002C($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8087A060      
    nop
    jal     func_80063684              # coss?
    lh      a0, 0x0022($sp)            
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f10                  # $f10 = -0.50
    nop
    c.le.s  $f0, $f10                  
    nop
    bc1f    lbl_8087A024               
    nop
    jal     func_8087B47C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087A060 
    nop
lbl_8087A024:
    jal     func_80063684              # coss?
    lh      a0, 0x0022($sp)            
    lui     $at, %hi(var_80883778)     # $at = 80880000
    ldc1    $f16, %lo(var_80883778)($at) 
    cvt.d.s $f18, $f0                  
    c.le.d  $f18, $f16                 
    nop
    bc1f    lbl_8087A058               
    nop
    jal     func_8087A2AC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087A060 
    nop
lbl_8087A058:
    jal     func_8087A518              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087A060:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    beql    v0, $zero, lbl_8087A07C    
    lw      $ra, 0x001C($sp)           
    jal     func_8087A08C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_8087A07C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8087A08C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    jal     func_8087A0B0              
    swc1    $f4, 0x01B4(a0)            # 000001B4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087A0B0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lwc1    $f4, 0x01B4(s0)            # 000001B4
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t7, 0x0200(s0)             # 00000200
    swc1    $f4, 0x0034($sp)           
    lw      t8, 0x0148(s0)             # 00000148
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    jal     func_8008A194              
    lw      a0, 0x0004(t0)             # 80880004
    lw      t1, 0x0148(s0)             # 00000148
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    cvt.s.w $f8, $f6                   
    sll     t5, t4,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t6, t3, t5                 
    mtc1    $at, $f10                  # $f10 = -3.00
    lw      a1, 0x0000(t6)             # 00000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)            
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a3, 0x0034($sp)            
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lw      t9, 0x0218(s0)             # 00000218
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    lui     a3, 0x8010                 # a3 = 80100000
    sw      t9, 0x0000(a1)             # 0000020C
    lw      t8, 0x021C(s0)             # 0000021C
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t8, 0x0004(a1)             # 00000210
    lw      t9, 0x0220(s0)             # 00000220
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    addiu   a0, $zero, 0x2816          # a0 = 00002816
    sw      t9, 0x0008(a1)             # 00000214
    lw      t0, 0x01E0(s0)             # 000001E0
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t1, t0,  4                 
    bgezl   t1, lbl_8087A19C           
    lw      $ra, 0x002C($sp)           
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t2, 0x0014($sp)            
    lw      $ra, 0x002C($sp)           
lbl_8087A19C:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087A1AC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      $zero, 0x0022($sp)         
    addiu   a0, s0, 0x0254             # a0 = 00000254
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFFC
    addiu   a2, $sp, 0x0022            # a2 = FFFFFFFA
    jal     func_80880084              
    swc1    $f4, 0x0068(s0)            # 00000068
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f8, 0x0024($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_8087A280               
    nop
    jal     func_80878EF0              
    lw      a1, 0x002C($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8087A280      
    nop
    jal     func_80063684              # coss?
    lh      a0, 0x0022($sp)            
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f10                  # $f10 = -0.50
    nop
    c.le.s  $f0, $f10                  
    nop
    bc1f    lbl_8087A244               
    nop
    jal     func_8087B47C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087A280 
    nop
lbl_8087A244:
    jal     func_80063684              # coss?
    lh      a0, 0x0022($sp)            
    lui     $at, %hi(var_80883780)     # $at = 80880000
    ldc1    $f16, %lo(var_80883780)($at) 
    cvt.d.s $f18, $f0                  
    c.le.d  $f18, $f16                 
    nop
    bc1f    lbl_8087A278               
    nop
    jal     func_8087A2AC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087A280 
    nop
lbl_8087A278:
    jal     func_8087A518              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087A280:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    beql    v0, $zero, lbl_8087A29C    
    lw      $ra, 0x001C($sp)           
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_8087A29C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8087A2AC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      t8, 0x0148(s0)             # 00000148
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    sw      t6, 0x013C(s0)             # 0000013C
    sw      $zero, 0x0208(s0)          # 00000208
    sw      t7, 0x0200(s0)             # 00000200
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    jal     func_8008A194              
    lw      a0, 0x0010(t0)             # 80880010
    lw      t1, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    cvt.s.w $f6, $f4                   
    sll     t5, t4,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t6, t3, t5                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t6)             # 00000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8087A354:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808788D4              
    swc1    $f4, 0x0068(s0)            # 00000068
    addiu   a0, s0, 0x0254             # a0 = 00000254
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFFC
    jal     func_80880084              
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFF8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f8, 0x002C($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_8087A4B8               
    nop
    jal     func_80878EF0              
    lw      a1, 0x0034($sp)            
    bne     v0, $zero, lbl_8087A3C8    
    nop
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087A4B8 
    nop
lbl_8087A3C8:
    jal     func_80063684              # coss?
    lh      a0, 0x0028($sp)            
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f10                  # $f10 = -0.50
    nop
    c.le.s  $f0, $f10                  
    nop
    bc1f    lbl_8087A3FC               
    nop
    jal     func_8087B47C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087A4B8 
    nop
lbl_8087A3FC:
    jal     func_80063684              # coss?
    lh      a0, 0x0028($sp)            
    lui     $at, %hi(var_80883788)     # $at = 80880000
    ldc1    $f16, %lo(var_80883788)($at) 
    cvt.d.s $f18, $f0                  
    lh      t6, 0x0028($sp)            
    c.le.d  $f18, $f16                 
    nop
    bc1f    lbl_8087A4B0               
    nop
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     $at, 0xC448                # $at = C4480000
    mtc1    $at, $f2                   # $f2 = -800.00
    cvt.s.w $f0, $f4                   
    lui     $at, 0x4448                # $at = 44480000
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_8087A464               
    mtc1    $at, $f12                  # $f12 = 800.00
    trunc.w.s $f6, $f2                   
    mfc1    v0, $f6                    
    nop
    sll     v0, v0, 16                 
    beq     $zero, $zero, lbl_8087A498 
    sra     v0, v0, 16                 
    mtc1    $at, $f12                  # $f12 = 800.00
lbl_8087A464:
    nop
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_8087A484               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_8087A484 
    mov.s   $f2, $f12                  
    mov.s   $f2, $f0                   
lbl_8087A484:
    trunc.w.s $f8, $f2                   
    mfc1    v0, $f8                    
    nop
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_8087A498:
    lh      t9, 0x0032(s0)             # 00000032
    addu    t0, t9, v0                 
    sh      t0, 0x0032(s0)             # 00000032
    lh      t1, 0x0032(s0)             # 00000032
    beq     $zero, $zero, lbl_8087A4B8 
    sh      t1, 0x00B6(s0)             # 000000B6
lbl_8087A4B0:
    jal     func_8087A568              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087A4B8:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    beql    v0, $zero, lbl_8087A508    
    lw      $ra, 0x001C($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0028($sp)            
    lui     $at, %hi(var_80883790)     # $at = 80880000
    ldc1    $f10, %lo(var_80883790)($at) 
    cvt.d.s $f16, $f0                  
    c.le.d  $f16, $f10                 
    nop
    bc1f    lbl_8087A4FC               
    nop
    jal     func_8087A2AC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087A508 
    lw      $ra, 0x001C($sp)           
lbl_8087A4FC:
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_8087A508:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8087A518:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_8087A568              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lw      v0, 0x01E0(a0)             # 000001E0
    andi    t6, v0, 0x0100             # t6 = 00000000
    bne     t6, $zero, lbl_8087A554    
    andi    t7, v0, 0x0200             # t7 = 00000000
    bne     t7, $zero, lbl_8087A554    
    ori     t8, v0, 0x0200             # t8 = 00000200
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    sw      t8, 0x01E0(a0)             # 000001E0
    beq     $zero, $zero, lbl_8087A558 
    sh      t9, 0x036C(a0)             # 0000036C
lbl_8087A554:
    sh      $zero, 0x036C(a0)          # 0000036C
lbl_8087A558:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087A568:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      $zero, 0x0140(a0)          # 00000140
    jal     func_8087A58C              
    sw      $zero, 0x0144(a0)          # 00000144
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087A58C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      t8, 0x0148(s0)             # 00000148
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    sw      t6, 0x013C(s0)             # 0000013C
    sw      $zero, 0x0208(s0)          # 00000208
    sw      t7, 0x0200(s0)             # 00000200
    sh      $zero, 0x036C(s0)          # 0000036C
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    jal     func_8008A194              
    lw      a0, 0x0010(t0)             # 80880010
    lw      t1, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    cvt.s.w $f6, $f4                   
    sll     t5, t4,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t6, t3, t5                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t6)             # 00000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8087A638:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lw      t8, 0x0148(a2)             # 00000148
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    sw      t6, 0x013C(a2)             # 0000013C
    sw      $zero, 0x0208(a2)          # 00000208
    sw      t7, 0x0200(a2)             # 00000200
    sh      $zero, 0x036C(a2)          # 0000036C
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    addiu   a0, a2, 0x019C             # a0 = 0000019C
    jal     func_8008D1C4              
    lw      a1, 0x0010(t0)             # 80880010
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087A68C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    jal     func_808788D4              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x0254             # a0 = 00000254
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFFC
    jal     func_80880084              
    addiu   a2, $sp, 0x003A            # a2 = FFFFFFFA
    lw      t6, 0x0144(s0)             # 00000144
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     a2, 0x3E99                 # a2 = 3E990000
    mtc1    t6, $f4                    # $f4 = 0.00
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f0, $f4                   
    lw      a1, 0x0044($sp)            
    lui     a3, 0xBF00                 # a3 = BF000000
    addiu   t8, $zero, 0x0190          # t8 = 00000190
    c.eq.s  $f12, $f0                  
    nop
    bc1tl   lbl_8087A730               
    lui     $at, 0x4120                # $at = 41200000
    lw      t7, 0x0140(s0)             # 00000140
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f2, $f6                   
    c.lt.s  $f12, $f2                  
    nop
    bc1fl   lbl_8087A768               
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    nop
    sub.s   $f10, $f0, $f8             
    c.lt.s  $f2, $f10                  
    nop
    bc1f    lbl_8087A764               
    lui     $at, 0x4120                # $at = 41200000
lbl_8087A730:
    mtc1    $at, $f16                  # $f16 = 10.00
    lui     $at, %hi(var_80883798)     # $at = 80880000
    lwc1    $f18, %lo(var_80883798)($at) 
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    sw      t8, 0x001C($sp)            
    swc1    $f16, 0x0010($sp)          
    swc1    $f18, 0x0014($sp)          
    jal     func_808799D0              
    swc1    $f4, 0x0018($sp)           
    mtc1    $zero, $f12                # $f12 = 0.00
    beq     $zero, $zero, lbl_8087A778 
    lwc1    $f0, 0x0068(s0)            # 00000068
lbl_8087A764:
    lui     $at, 0x4040                # $at = 40400000
lbl_8087A768:
    mtc1    $at, $f6                   # $f6 = 3.00
    nop
    swc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
lbl_8087A778:
    lui     $at, 0x4040                # $at = 40400000
    c.eq.s  $f12, $f0                  
    nop
    bc1fl   lbl_8087A7B8               
    mtc1    $at, $f8                   # $f8 = 3.00
    lw      t9, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xFDFF         # $at = FFFFFDFF
    or      a0, s0, $zero              # a0 = 00000000
    and     t0, t9, $at                
    jal     func_80879E14              
    sw      t0, 0x01E0(s0)             # 000001E0
    mtc1    $zero, $f12                # $f12 = 0.00
    sw      $zero, 0x0140(s0)          # 00000140
    beq     $zero, $zero, lbl_8087A7F0 
    sw      $zero, 0x0144(s0)          # 00000144
    mtc1    $at, $f8                   # $f8 = 0.00
lbl_8087A7B8:
    nop
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_8087A7F4               
    lw      v0, 0x0140(s0)             # 00000140
    lw      t1, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xFDFF         # $at = FFFFFDFF
    or      a0, s0, $zero              # a0 = 00000000
    and     t2, t1, $at                
    jal     func_8087A95C              
    sw      t2, 0x01E0(s0)             # 000001E0
    mtc1    $zero, $f12                # $f12 = 0.00
    sw      $zero, 0x0140(s0)          # 00000140
    sw      $zero, 0x0144(s0)          # 00000144
lbl_8087A7F0:
    lw      v0, 0x0140(s0)             # 00000140
lbl_8087A7F4:
    mtc1    v0, $f10                   # $f10 = 0.00
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    cvt.s.w $f16, $f10                 
    c.lt.s  $f12, $f16                 
    nop
    bc1fl   lbl_8087A834               
    lh      v0, 0x036C(s0)             # 0000036C
    mtc1    t4, $f18                   # $f18 = NaN
    sw      t4, 0x0140(s0)             # 00000140
    cvt.s.w $f4, $f18                  
    c.le.s  $f4, $f12                  
    nop
    bc1fl   lbl_8087A834               
    lh      v0, 0x036C(s0)             # 0000036C
    sw      $zero, 0x0144(s0)          # 00000144
    lh      v0, 0x036C(s0)             # 0000036C
lbl_8087A834:
    bgtz    v0, lbl_8087A940           
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    lw      t5, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xFDFF         # $at = FFFFFDFF
    lwc1    $f6, 0x0068(s0)            # 00000068
    and     t6, t5, $at                
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f8                   # $f8 = 0.75
    sw      t6, 0x01E0(s0)             # 000001E0
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    mul.s   $f10, $f6, $f8             
    jal     func_8008C9C0              
    swc1    $f10, 0x01B8(s0)           # 000001B8
    mtc1    $zero, $f12                # $f12 = 0.00
    bnel    v0, $zero, lbl_8087A88C    
    lw      t7, 0x0140(s0)             # 00000140
    lwc1    $f16, 0x0068(s0)           # 00000068
    c.eq.s  $f12, $f16                 
    nop
    bc1fl   lbl_8087A94C               
    lw      $ra, 0x002C($sp)           
    lw      t7, 0x0140(s0)             # 00000140
lbl_8087A88C:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    c.le.s  $f4, $f12                  
    nop
    bc1fl   lbl_8087A94C               
    lw      $ra, 0x002C($sp)           
    mtc1    $at, $f6                   # $f6 = 3.00
    lwc1    $f8, 0x0068(s0)            # 00000068
    lui     $at, 0x4120                # $at = 41200000
    lwc1    $f10, 0x003C($sp)          
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_8087A8E4               
    mtc1    $at, $f16                  # $f16 = 10.00
    jal     func_8087A95C              
    or      a0, s0, $zero              # a0 = 00000000
    sw      $zero, 0x0140(s0)          # 00000140
    beq     $zero, $zero, lbl_8087A948 
    sw      $zero, 0x0144(s0)          # 00000144
    mtc1    $at, $f16                  # $f16 = 0.00
lbl_8087A8E4:
    nop
    c.lt.s  $f10, $f16                 
    nop
    bc1t    lbl_8087A91C               
    nop
    jal     func_80063684              # coss?
    lh      a0, 0x003A($sp)            
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f18                  # $f18 = -0.50
    nop
    c.le.s  $f0, $f18                  
    nop
    bc1f    lbl_8087A930               
    nop
lbl_8087A91C:
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
    sw      $zero, 0x0140(s0)          # 00000140
    beq     $zero, $zero, lbl_8087A948 
    sw      $zero, 0x0144(s0)          # 00000144
lbl_8087A930:
    jal     func_8087A638              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087A94C 
    lw      $ra, 0x002C($sp)           
lbl_8087A940:
    swc1    $f12, 0x0068(s0)           # 00000068
    sh      t8, 0x036C(s0)             # 0000036C
lbl_8087A948:
    lw      $ra, 0x002C($sp)           
lbl_8087A94C:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8087A95C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      t8, 0x0148(s0)             # 00000148
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t7, 0x0200(s0)             # 00000200
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    jal     func_8008A194              
    lw      a0, 0x0014(t0)             # 80880014
    lw      t1, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    cvt.s.w $f6, $f4                   
    sll     t5, t4,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t6, t3, t5                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t6)             # 00000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8087AA00:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lw      t8, 0x0148(a2)             # 00000148
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    sw      t6, 0x013C(a2)             # 0000013C
    sw      t7, 0x0200(a2)             # 00000200
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    addiu   a0, a2, 0x019C             # a0 = 0000019C
    jal     func_8008D1C4              
    lw      a1, 0x0014(t0)             # 80880014
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087AA4C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, %hi(var_8088379C)     # $at = 80880000
    lwc1    $f6, %lo(var_8088379C)($at) 
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    lui     a2, 0x3E99                 # a2 = 3E990000
    addiu   t6, $zero, 0x0190          # t6 = 00000190
    sw      t6, 0x001C($sp)            
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    or      a0, s0, $zero              # a0 = 00000000
    lui     a3, 0xBF00                 # a3 = BF000000
    swc1    $f4, 0x0010($sp)           
    swc1    $f6, 0x0014($sp)           
    jal     func_808799D0              
    swc1    $f8, 0x0018($sp)           
    addiu   a0, s0, 0x0254             # a0 = 00000254
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFFC
    jal     func_80880084              
    addiu   a2, $sp, 0x003A            # a2 = FFFFFFFA
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_8087AAD8               
    lui     $at, 0x3EC0                # $at = 3EC00000
    jal     func_8087A568              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, 0x3EC0                # $at = 3EC00000
lbl_8087AAD8:
    mtc1    $at, $f16                  # $f16 = 0.38
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    mul.s   $f18, $f0, $f16            
    jal     func_8008C9C0              
    swc1    $f18, 0x01B8(s0)           # 000001B8
    beql    v0, $zero, lbl_8087AB74    
    lw      $ra, 0x002C($sp)           
    jal     func_80878990              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800915CC              
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, 0x4040                # $at = 40400000
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_8087AB44               
    mtc1    $at, $f6                   # $f6 = 3.00
    jal     func_8087AB84              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087AB74 
    lw      $ra, 0x002C($sp)           
    mtc1    $at, $f6                   # $f6 = 0.00
lbl_8087AB44:
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_8087AB68               
    nop
    jal     func_8087A568              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087AB74 
    lw      $ra, 0x002C($sp)           
lbl_8087AB68:
    jal     func_8087AA00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_8087AB74:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8087AB84:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      $zero, 0x0140(a0)          # 00000140
    jal     func_8087ABA8              
    sw      $zero, 0x0144(a0)          # 00000144
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087ABA8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      t8, 0x0148(s0)             # 00000148
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t7, 0x0200(s0)             # 00000200
    sw      $zero, 0x0224(s0)          # 00000224
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    jal     func_8008A194              
    lw      a0, 0x0018(t0)             # 80880018
    lw      t1, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    cvt.s.w $f6, $f4                   
    sll     t5, t4,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t6, t3, t5                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t6)             # 00000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8087AC50:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lw      t8, 0x0148(a2)             # 00000148
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    sw      $zero, 0x0140(a2)          # 00000140
    sw      $zero, 0x0144(a2)          # 00000144
    sw      t6, 0x013C(a2)             # 0000013C
    sw      t7, 0x0200(a2)             # 00000200
    sw      $zero, 0x0224(a2)          # 00000224
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    addiu   a0, a2, 0x019C             # a0 = 0000019C
    jal     func_8008D1C4              
    lw      a1, 0x0018(t0)             # 80880018
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087ACA8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      t8, 0x0148(a2)             # 00000148
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    sw      t6, 0x013C(a2)             # 0000013C
    sw      t7, 0x0200(a2)             # 00000200
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    addiu   a0, a2, 0x019C             # a0 = 0000019C
    lw      a1, 0x0018(t0)             # 80880018
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     $at, %hi(var_808837A0)     # $at = 80880000
    lwc1    $f8, %lo(var_808837A0)($at) 
    lw      v0, 0x01BC(a2)             # 000001BC
    lwc1    $f6, 0x024C(a2)            # 0000024C
    lh      t1, 0x0002(v0)             # 00000002
    sw      $zero, 0x0234(a2)          # 00000234
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f0, $f4                   
    mul.s   $f10, $f0, $f8             
    add.s   $f16, $f6, $f10            
    swc1    $f16, 0x024C(a2)           # 0000024C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8087AD2C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    addiu   a0, s0, 0x0254             # a0 = 00000254
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFFC
    jal     func_80880084              
    addiu   a2, $sp, 0x003A            # a2 = FFFFFFFA
    lw      v0, 0x0140(s0)             # 00000140
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a2, 0x3E99                 # a2 = 3E990000
    mtc1    v0, $f4                    # $f4 = 0.00
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f0, $f4                   
    lw      a1, 0x0044($sp)            
    lui     a3, 0xBF00                 # a3 = BF000000
    lui     $at, 0x4120                # $at = 41200000
    addiu   t6, $zero, 0x0190          # t6 = 00000190
    c.le.s  $f0, $f2                   
    nop
    bc1fl   lbl_8087ADC0               
    c.lt.s  $f2, $f0                   
    mtc1    $at, $f6                   # $f6 = 10.00
    lui     $at, %hi(var_808837A4)     # $at = 80880000
    lwc1    $f8, %lo(var_808837A4)($at) 
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f10                  # $f10 = 8.00
    sw      t6, 0x001C($sp)            
    swc1    $f6, 0x0010($sp)           
    swc1    $f8, 0x0014($sp)           
    jal     func_808799D0              
    swc1    $f10, 0x0018($sp)          
    beq     $zero, $zero, lbl_8087ADE0 
    lui     $at, 0x40C0                # $at = 40C00000
    c.lt.s  $f2, $f0                   
lbl_8087ADC0:
    lui     $at, 0x4100                # $at = 41000000
    bc1fl   lbl_8087ADE0               
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f16                  # $f16 = 6.00
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sw      t7, 0x0140(s0)             # 00000140
    swc1    $f16, 0x0068(s0)           # 00000068
    lui     $at, 0x40C0                # $at = 40C00000
lbl_8087ADE0:
    mtc1    $at, $f18                  # $f18 = 6.00
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f18                  
    nop
    bc1f    lbl_8087AE04               
    nop
    jal     func_8087A95C              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f0, 0x0068(s0)            # 00000068
lbl_8087AE04:
    lui     $at, %hi(var_808837A8)     # $at = 80880000
    lwc1    $f4, %lo(var_808837A8)($at) 
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    mul.s   $f6, $f0, $f4              
    jal     func_8008C9C0              
    swc1    $f6, 0x01B8(s0)            # 000001B8
    beql    v0, $zero, lbl_8087AEF0    
    lw      $ra, 0x002C($sp)           
    jal     func_808789D8              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800915CC              
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878EF0              
    lw      a1, 0x0044($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8087AEE4      
    lwc1    $f8, 0x003C($sp)           
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    nop
    c.le.s  $f10, $f8                  
    nop
    bc1fl   lbl_8087AEAC               
    lui     $at, 0x40C0                # $at = 40C00000
    jal     func_80063684              # coss?
    lh      a0, 0x003A($sp)            
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f16                  # $f16 = -0.50
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f0, $f16                  
    nop
    bc1fl   lbl_8087AEAC               
    lui     $at, 0x40C0                # $at = 40C00000
    jal     func_8087B1A0              
    lw      a1, 0x0044($sp)            
    beq     $zero, $zero, lbl_8087AEF0 
    lw      $ra, 0x002C($sp)           
    lui     $at, 0x40C0                # $at = 40C00000
lbl_8087AEAC:
    mtc1    $at, $f4                   # $f4 = 6.00
    lwc1    $f18, 0x0068(s0)           # 00000068
    c.lt.s  $f18, $f4                  
    nop
    bc1f    lbl_8087AED4               
    nop
    jal     func_8087A95C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087AEF0 
    lw      $ra, 0x002C($sp)           
lbl_8087AED4:
    jal     func_8087AC50              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087AEF0 
    lw      $ra, 0x002C($sp)           
lbl_8087AEE4:
    jal     func_8087AC50              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_8087AEF0:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8087AF00:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      t8, 0x01E0(s0)             # 000001E0
    lw      t1, 0x0218(s0)             # 00000218
    addiu   $at, $zero, 0xF7FF         # $at = FFFFF7FF
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    and     t9, t8, $at                
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t7, 0x0200(s0)             # 00000200
    sw      t9, 0x01E0(s0)             # 000001E0
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    sw      t1, 0x0000(a1)             # 0000020C
    lw      t0, 0x021C(s0)             # 0000021C
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t4, 0x8010                 # t4 = 80100000
    sw      t0, 0x0004(a1)             # 00000210
    lw      t1, 0x0220(s0)             # 00000220
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    sw      t1, 0x0008(a1)             # 00000214
    lw      t2, 0x01E0(s0)             # 000001E0
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t3, t2,  4                 
    bgezl   t3, lbl_8087AF84           
    mtc1    $zero, $f12                # $f12 = 0.00
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t4, 0x0014($sp)            
    mtc1    $zero, $f12                # $f12 = 0.00
lbl_8087AF84:
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC              
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    lw      t5, 0x0148(s0)             # 00000148
    lui     t7, %hi(var_80882D88)      # t7 = 80880000
    lw      t8, 0x0200(s0)             # 00000200
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, %lo(var_80882D88)(t7)  
    sll     t9, t8,  2                 
    addu    t0, t7, t9                 
    jal     func_8008A194              
    lw      a0, 0x0000(t0)             # 00000000
    lw      t1, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    cvt.s.w $f6, $f4                   
    sll     t5, t4,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t6, t3, t5                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t6)             # 00000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8087B024:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    lwc1    $f8, 0x0204(s0)            # 00000204
    mtc1    $zero, $f4                 # $f4 = 0.00
    c.lt.s  $f6, $f8                   
    swc1    $f4, 0x0068(s0)            # 00000068
    bc1fl   lbl_8087B0AC               
    addiu   a0, s0, 0x0254             # a0 = 00000254
    lw      v0, 0x01E0(s0)             # 000001E0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t6, v0, 0x0800             # t6 = 00000000
    bne     t6, $zero, lbl_8087B0A8    
    ori     t7, v0, 0x0800             # t7 = 00000800
    lui     t8, 0x8010                 # t8 = 80100000
    sw      t7, 0x01E0(s0)             # 000001E0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x282B          # a0 = 0000282B
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC              
    addiu   a3, $zero, 0x0064          # a3 = 00000064
lbl_8087B0A8:
    addiu   a0, s0, 0x0254             # a0 = 00000254
lbl_8087B0AC:
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFFC
    jal     func_80880084              
    addiu   a2, $sp, 0x0032            # a2 = FFFFFFFA
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    beq     v0, $zero, lbl_8087B18C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878EF0              
    lw      a1, 0x003C($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8087B184      
    nop
    lw      v0, 0x01E0(s0)             # 000001E0
    addiu   v1, $zero, 0x0064          # v1 = 00000064
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    andi    t9, v0, 0x0010             # t9 = 00000000
    beq     t9, $zero, lbl_8087B114    
    andi    t1, v0, 0x0020             # t1 = 00000000
    and     t0, v0, $at                
    sw      v1, 0x0140(s0)             # 00000140
    sw      v1, 0x0144(s0)             # 00000144
    sw      t0, 0x01E0(s0)             # 000001E0
    jal     func_8087B4A0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087B190 
    lw      $ra, 0x0024($sp)           
lbl_8087B114:
    beq     t1, $zero, lbl_8087B140    
    addiu   v1, $zero, 0x0064          # v1 = 00000064
    addiu   $at, $zero, 0xFFDF         # $at = FFFFFFDF
    and     t2, v0, $at                
    sw      v1, 0x0140(s0)             # 00000140
    sw      v1, 0x0144(s0)             # 00000144
    sw      t2, 0x01E0(s0)             # 000001E0
    jal     func_8087A58C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087B190 
    lw      $ra, 0x0024($sp)           
lbl_8087B140:
    jal     func_80063684              # coss?
    lh      a0, 0x0032($sp)            
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f10                  # $f10 = -0.50
    nop
    c.le.s  $f0, $f10                  
    nop
    bc1f    lbl_8087B174               
    nop
    jal     func_8087B47C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087B190 
    lw      $ra, 0x0024($sp)           
lbl_8087B174:
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087B190 
    lw      $ra, 0x0024($sp)           
lbl_8087B184:
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087B18C:
    lw      $ra, 0x0024($sp)           
lbl_8087B190:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087B1A0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    lui     t8, 0x8010                 # t8 = 80100000
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t7, 0x0200(s0)             # 00000200
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x281A          # a0 = 0000281A
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      t9, 0x0148(s0)             # 00000148
    lui     t1, %hi(var_80882D88)      # t1 = 80880000
    lw      t2, 0x0200(s0)             # 00000200
    sll     t0, t9,  2                 
    addu    t1, t1, t0                 
    lw      t1, %lo(var_80882D88)(t1)  
    sll     t3, t2,  2                 
    addu    t4, t1, t3                 
    jal     func_8008A194              
    lw      a0, 0x0000(t4)             # 00000000
    lw      t5, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t7, %hi(var_80882D88)      # t7 = 80880000
    sll     t6, t5,  2                 
    lw      t8, 0x0200(s0)             # 00000200
    addu    t7, t7, t6                 
    lw      t7, %lo(var_80882D88)(t7)  
    cvt.s.w $f6, $f4                   
    sll     t9, t8,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t0, t7, t9                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t0)             # 00000000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      t1, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    ori     t3, t1, 0x0400             # t3 = 00000400
    sw      t3, 0x01E0(s0)             # 000001E0
    and     t5, t3, $at                
    sw      t5, 0x01E0(s0)             # 000001E0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_8087B290:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    mtc1    $zero, $f2                 # $f2 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, %hi(var_808837AC)     # $at = 80880000
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_8087B2E8               
    lw      t6, 0x01E0(s0)             # 000001E0
    lwc1    $f4, %lo(var_808837AC)($at) 
    sub.s   $f6, $f0, $f4              
    swc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x0068(s0)            # 00000068
    c.lt.s  $f8, $f2                   
    nop
    bc1fl   lbl_8087B2E8               
    lw      t6, 0x01E0(s0)             # 000001E0
    swc1    $f2, 0x0068(s0)            # 00000068
    lw      t6, 0x01E0(s0)             # 000001E0
lbl_8087B2E8:
    lui     $at, 0x41E8                # $at = 41E80000
    andi    t7, t6, 0x0400             # t7 = 00000000
    beql    t7, $zero, lbl_8087B3C8    
    lui     $at, 0x41E8                # $at = 41E80000
    mtc1    $at, $f10                  # $f10 = 29.00
    lwc1    $f16, 0x01B4(s0)           # 000001B4
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_8087B3C8               
    lui     $at, 0x41E8                # $at = 41E80000
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0068(s0)            # 00000068
    lui     $at, 0x3FE0                # $at = 3FE00000
    mtc1    $at, $f19                  # $f19 = 1.75
    mtc1    $zero, $f18                # $f18 = 0.00
    cvt.d.s $f4, $f0                   
    c.lt.d  $f18, $f4                  
    nop
    bc1f    lbl_8087B3B4               
    nop
    lw      t9, 0x0218(s0)             # 00000218
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    lui     a3, 0x8010                 # a3 = 80100000
    sw      t9, 0x0000(a1)             # 0000020C
    lw      t8, 0x021C(s0)             # 0000021C
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t8, 0x0004(a1)             # 00000210
    lw      t9, 0x0220(s0)             # 00000220
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    sw      t9, 0x0008(a1)             # 00000214
    lw      t0, 0x01E0(s0)             # 000001E0
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t1, t0,  4                 
    bgezl   t1, lbl_8087B38C           
    mtc1    $zero, $f12                # $f12 = 0.00
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t2, 0x0014($sp)            
    mtc1    $zero, $f12                # $f12 = 0.00
lbl_8087B38C:
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC              
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    lw      t3, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xFBFF         # $at = FFFFFBFF
    mtc1    $zero, $f2                 # $f2 = 0.00
    and     t4, t3, $at                
    beq     $zero, $zero, lbl_8087B3C4 
    sw      t4, 0x01E0(s0)             # 000001E0
lbl_8087B3B4:
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
lbl_8087B3C4:
    lui     $at, 0x41E8                # $at = 41E80000
lbl_8087B3C8:
    mtc1    $at, $f6                   # $f6 = 29.00
    lwc1    $f8, 0x01B4(s0)            # 000001B4
    lui     $at, 0x4040                # $at = 40400000
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_8087B3F0               
    mtc1    $at, $f0                   # $f0 = 3.00
    beq     $zero, $zero, lbl_8087B418 
    swc1    $f2, 0x0068(s0)            # 00000068
    mtc1    $at, $f0                   # $f0 = 3.00
lbl_8087B3F0:
    lwc1    $f10, 0x0068(s0)           # 00000068
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_8087B418               
    nop
    lw      t5, 0x01E0(s0)             # 000001E0
    andi    t6, t5, 0x0010             # t6 = 00000000
    beq     t6, $zero, lbl_8087B418    
    nop
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_8087B418:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    beql    v0, $zero, lbl_8087B46C    
    lw      $ra, 0x0024($sp)           
    lw      t7, 0x01E0(s0)             # 000001E0
    addiu   v0, $zero, 0x0064          # v0 = 00000064
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0010             # t8 = 00000000
    beq     t8, $zero, lbl_8087B460    
    nop
    sw      v0, 0x0140(s0)             # 00000140
    jal     func_8087B4A0              
    sw      v0, 0x0144(s0)             # 00000144
    lw      t9, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t0, t9, $at                
    beq     $zero, $zero, lbl_8087B468 
    sw      t0, 0x01E0(s0)             # 000001E0
lbl_8087B460:
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087B468:
    lw      $ra, 0x0024($sp)           
lbl_8087B46C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8087B47C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      $zero, 0x0140(a0)          # 00000140
    jal     func_8087B4A0              
    sw      $zero, 0x0144(a0)          # 00000144
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087B4A0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      t8, 0x0148(s0)             # 00000148
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t7, 0x0200(s0)             # 00000200
    sw      $zero, 0x0208(s0)          # 00000208
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    jal     func_8008A194              
    lw      a0, 0x0010(t0)             # 80880010
    lw      t1, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    cvt.s.w $f6, $f4                   
    sll     t5, t4,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t6, t3, t5                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t6)             # 00000000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8087B544:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x003C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_808788D4              
    sw      t7, 0x002C($sp)            
    addiu   a0, s0, 0x0254             # a0 = 00000254
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFFC
    jal     func_80880084              
    addiu   a2, $sp, 0x0032            # a2 = FFFFFFFA
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878EF0              
    lw      a1, 0x003C($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8087B6D0      
    lw      t3, 0x002C($sp)            
    lw      t8, 0x0144(s0)             # 00000144
    mtc1    $zero, $f12                # $f12 = 0.00
    lwc1    $f16, 0x0034($sp)          
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f0, $f4                   
    c.eq.s  $f12, $f0                  
    nop
    bc1tl   lbl_8087B600               
    lui     $at, 0x4120                # $at = 41200000
    lw      t9, 0x0140(s0)             # 00000140
    lui     $at, 0x41A0                # $at = 41A00000
    lwc1    $f18, 0x0034($sp)          
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f2, $f6                   
    c.lt.s  $f12, $f2                  
    nop
    bc1fl   lbl_8087B6B0               
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    nop
    sub.s   $f10, $f0, $f8             
    c.lt.s  $f2, $f10                  
    nop
    bc1f    lbl_8087B6AC               
    lui     $at, 0x4120                # $at = 41200000
lbl_8087B600:
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     $at, 0x4120                # $at = 41200000
    lwc1    $f8, 0x0034($sp)           
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_8087B654               
    mtc1    $at, $f10                  # $f10 = 10.00
    lw      t0, 0x0140(s0)             # 00000140
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.le.s  $f6, $f12                  
    nop
    bc1fl   lbl_8087B654               
    mtc1    $at, $f10                  # $f10 = 10.00
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    beq     $zero, $zero, lbl_8087B8E0 
    swc1    $f12, 0x0068(s0)           # 00000068
    mtc1    $at, $f10                  # $f10 = 0.00
lbl_8087B654:
    addiu   t1, $zero, 0x8001          # t1 = FFFF8001
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_8087B670               
    nop
    beq     $zero, $zero, lbl_8087B700 
    sh      t1, 0x0032($sp)            
lbl_8087B670:
    jal     func_80063684              # coss?
    lh      a0, 0x0032($sp)            
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f16                  # $f16 = -0.50
    mtc1    $zero, $f12                # $f12 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_8087B704               
    lui     $at, 0xC496                # $at = C4960000
    jal     func_80879E14              
    sw      $zero, 0x0144(s0)          # 00000144
    mtc1    $zero, $f12                # $f12 = 0.00
    beq     $zero, $zero, lbl_8087B8E0 
    swc1    $f12, 0x0068(s0)           # 00000068
lbl_8087B6AC:
    lui     $at, 0x4120                # $at = 41200000
lbl_8087B6B0:
    mtc1    $at, $f4                   # $f4 = 10.00
    addiu   t2, $zero, 0x8001          # t2 = FFFF8001
    c.lt.s  $f18, $f4                  
    nop
    bc1fl   lbl_8087B704               
    lui     $at, 0xC496                # $at = C4960000
    beq     $zero, $zero, lbl_8087B700 
    sh      t2, 0x0032($sp)            
lbl_8087B6D0:
    lw      t4, 0x0004(t3)             # 00000004
    addiu   t6, $zero, 0x8001          # t6 = FFFF8001
    andi    t5, t4, 0x0100             # t5 = 00000000
    beql    t5, $zero, lbl_8087B6FC    
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_80879E14              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    beq     $zero, $zero, lbl_8087B8E0 
    swc1    $f12, 0x0068(s0)           # 00000068
    mtc1    $zero, $f12                # $f12 = 0.00
lbl_8087B6FC:
    sh      t6, 0x0032($sp)            
lbl_8087B700:
    lui     $at, 0xC496                # $at = C4960000
lbl_8087B704:
    mtc1    $at, $f2                   # $f2 = -1200.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f6                   # $f6 = -2.00
    addiu   t8, $zero, 0x7FFF          # t8 = 00007FFF
    lui     $at, 0x4496                # $at = 44960000
    swc1    $f6, 0x0068(s0)            # 00000068
    lh      t7, 0x0032($sp)            
    subu    t9, t8, t7                 
    sll     t0, t9, 16                 
    sra     t1, t0, 16                 
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f0, $f8                   
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_8087B764               
    mtc1    $at, $f14                  # $f14 = 1200.00
    trunc.w.s $f10, $f2                  
    mfc1    v1, $f10                   
    nop
    sll     v1, v1, 16                 
    beq     $zero, $zero, lbl_8087B798 
    sra     v1, v1, 16                 
    mtc1    $at, $f14                  # $f14 = 1200.00
lbl_8087B764:
    nop
    c.lt.s  $f14, $f0                  
    nop
    bc1fl   lbl_8087B784               
    mov.s   $f2, $f0                   
    beq     $zero, $zero, lbl_8087B784 
    mov.s   $f2, $f14                  
    mov.s   $f2, $f0                   
lbl_8087B784:
    trunc.w.s $f16, $f2                  
    mfc1    v1, $f16                   
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_8087B798:
    lw      v0, 0x0140(s0)             # 00000140
    lh      t4, 0x0032(s0)             # 00000032
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    v0, $f18                   # $f18 = 0.00
    addu    t5, t4, v1                 
    sh      t5, 0x0032(s0)             # 00000032
    cvt.s.w $f4, $f18                  
    lh      t6, 0x0032(s0)             # 00000032
    mtc1    $at, $f16                  # $f16 = 0.50
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t6, 0x00B6(s0)             # 000000B6
    c.lt.s  $f12, $f4                  
    nop
    bc1fl   lbl_8087B7F8               
    lwc1    $f10, 0x0068(s0)           # 00000068
    mtc1    t7, $f6                    # $f6 = NaN
    sw      t7, 0x0140(s0)             # 00000140
    cvt.s.w $f8, $f6                   
    c.le.s  $f8, $f12                  
    nop
    bc1fl   lbl_8087B7F8               
    lwc1    $f10, 0x0068(s0)           # 00000068
    sw      $zero, 0x0144(s0)          # 00000144
    lwc1    $f10, 0x0068(s0)           # 00000068
lbl_8087B7F8:
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    mul.s   $f18, $f10, $f16           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    mul.s   $f6, $f18, $f4             
    jal     func_8008C9C0              
    swc1    $f6, 0x01B8(s0)            # 000001B8
    mtc1    $zero, $f12                # $f12 = 0.00
    beql    v0, $zero, lbl_8087B8E4    
    lw      $ra, 0x001C($sp)           
    lw      t9, 0x0140(s0)             # 00000140
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.le.s  $f10, $f12                 
    nop
    bc1fl   lbl_8087B8E4               
    lw      $ra, 0x001C($sp)           
    jal     func_80878EF0              
    lw      a1, 0x003C($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8087B8E0      
    lwc1    $f18, 0x0034($sp)          
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    nop
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_8087B8AC               
    lui     $at, 0x4120                # $at = 41200000
    jal     func_80063684              # coss?
    lh      a0, 0x0032($sp)            
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f4                   # $f4 = -0.50
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f0, $f4                   
    nop
    bc1fl   lbl_8087B8AC               
    lui     $at, 0x4120                # $at = 41200000
    jal     func_8087B47C              
    sw      $zero, 0x0144(s0)          # 00000144
    beq     $zero, $zero, lbl_8087B8E4 
    lw      $ra, 0x001C($sp)           
    lui     $at, 0x4120                # $at = 41200000
lbl_8087B8AC:
    mtc1    $at, $f8                   # $f8 = 10.00
    lwc1    $f6, 0x0034($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f6, $f8                   
    nop
    bc1f    lbl_8087B8D8               
    nop
    jal     func_80879E14              
    sw      $zero, 0x0144(s0)          # 00000144
    beq     $zero, $zero, lbl_8087B8E4 
    lw      $ra, 0x001C($sp)           
lbl_8087B8D8:
    jal     func_8087B4A0              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087B8E0:
    lw      $ra, 0x001C($sp)           
lbl_8087B8E4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087B8F4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    jal     func_8087B918              
    swc1    $f4, 0x01B4(a0)            # 000001B4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087B918:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lwc1    $f4, 0x01B4(s0)            # 000001B4
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t7, 0x0200(s0)             # 00000200
    swc1    $f4, 0x0034($sp)           
    lw      t8, 0x0148(s0)             # 00000148
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    jal     func_8008A194              
    lw      a0, 0x001C(t0)             # 8088001C
    lw      t1, 0x0148(s0)             # 00000148
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    cvt.s.w $f8, $f6                   
    sll     t5, t4,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t6, t3, t5                 
    mtc1    $at, $f10                  # $f10 = -3.00
    lw      a1, 0x0000(t6)             # 00000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)            
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    lw      a3, 0x0034($sp)            
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      v0, 0x01BC(s0)             # 000001BC
    sw      $zero, 0x0234(s0)          # 00000234
    swc1    $f16, 0x0264(s0)           # 00000264
    swc1    $f18, 0x006C(s0)           # 0000006C
    swc1    $f4, 0x0060(s0)            # 00000060
    lh      t8, 0x0002(v0)             # 00000002
    lui     $at, %hi(var_808837B0)     # $at = 80880000
    lwc1    $f10, %lo(var_808837B0)($at) 
    mtc1    t8, $f6                    # $f6 = 0.00
    lwc1    $f8, 0x024C(s0)            # 0000024C
    lui     a3, 0x8010                 # a3 = 80100000
    cvt.s.w $f0, $f6                   
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    addiu   a0, $zero, 0x2818          # a0 = 00002818
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    mul.s   $f16, $f0, $f10            
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sub.s   $f18, $f8, $f16            
    swc1    $f18, 0x024C(s0)           # 0000024C
    sw      t9, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00AA          # a1 = 000000AA
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_800915CC              
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087BA48:
    sw      a0, 0x0000($sp)            
    jr      $ra                        
    nop


func_8087BA54:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f4                   # $f4 = 12.00
    lui     $at, 0x4188                # $at = 41880000
    lwc1    $f2, 0x01B4(s0)            # 000001B4
    mtc1    $at, $f6                   # $f6 = 17.00
    lw      t6, 0x01E0(s0)             # 000001E0
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    c.lt.s  $f6, $f2                   
    ori     t7, t6, 0x0004             # t7 = 00000004
    sw      t7, 0x01E0(s0)             # 000001E0
    swc1    $f4, 0x0068(s0)            # 00000068
    bc1fl   lbl_8087BB0C               
    lw      v0, 0x01BC(s0)             # 000001BC
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f10, 0x0060(s0)           # 00000060
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f8                   # $f8 = -3.50
    c.eq.s  $f0, $f10                  
    lui     $at, 0xC0C0                # $at = C0C00000
    swc1    $f8, 0x006C(s0)            # 0000006C
    bc1fl   lbl_8087BAD0               
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f16                  # $f16 = 90.00
    nop
    swc1    $f16, 0x0060(s0)           # 00000060
    lui     $at, 0x42B4                # $at = 42B40000
lbl_8087BAD0:
    mtc1    $at, $f6                   # $f6 = 90.00
    lwc1    $f4, 0x0080(s0)            # 00000080
    lwc1    $f18, 0x0028(s0)           # 00000028
    lui     $at, 0x3FC0                # $at = 3FC00000
    add.s   $f8, $f4, $f6              
    c.lt.s  $f18, $f8                  
    nop
    bc1f    lbl_8087BB00               
    nop
    mtc1    $at, $f10                  # $f10 = 1.50
    beq     $zero, $zero, lbl_8087BB34 
    swc1    $f10, 0x01B8(s0)           # 000001B8
lbl_8087BB00:
    beq     $zero, $zero, lbl_8087BB34 
    swc1    $f0, 0x01B8(s0)            # 000001B8
    lw      v0, 0x01BC(s0)             # 000001BC
lbl_8087BB0C:
    lui     $at, %hi(var_808837B4)     # $at = 80880000
    lwc1    $f6, %lo(var_808837B4)($at) 
    lh      t8, 0x0002(v0)             # 00000002
    lwc1    $f4, 0x0264(s0)            # 00000264
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f0, $f16                  
    mul.s   $f18, $f0, $f6             
    add.s   $f8, $f4, $f18             
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_8087BB34:
    jal     func_8008C9C0              
    swc1    $f2, 0x002C($sp)           
    bne     v0, $zero, lbl_8087BB88    
    lwc1    $f2, 0x002C($sp)           
    lui     $at, 0x4188                # $at = 41880000
    mtc1    $at, $f10                  # $f10 = 17.00
    nop
    c.lt.s  $f10, $f2                  
    nop
    bc1fl   lbl_8087BC08               
    lw      $ra, 0x0024($sp)           
    lwc1    $f6, 0x0080(s0)            # 00000080
    lwc1    $f4, 0x0060(s0)            # 00000060
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    sub.s   $f18, $f6, $f4             
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f10, $f18, $f8            
    c.lt.s  $f16, $f10                 
    nop
    bc1f    lbl_8087BC04               
lbl_8087BB88:
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    sw      t9, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2819          # a0 = 00002819
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_800915CC              
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    lw      t0, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    lwc1    $f4, 0x0080(s0)            # 00000080
    and     t1, t0, $at                
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f6                   # $f6 = -3.50
    sw      t1, 0x01E0(s0)             # 000001E0
    swc1    $f4, 0x0028(s0)            # 00000028
    swc1    $f6, 0x006C(s0)            # 0000006C
    lw      a0, 0x0044($sp)            
    lui     a1, 0x41C8                 # a1 = 41C80000
    jal     func_8001C54C              
    addiu   a2, s0, 0x0024             # a2 = 00000024
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8087ACA8              
    lw      a1, 0x0044($sp)            
lbl_8087BC04:
    lw      $ra, 0x0024($sp)           
lbl_8087BC08:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8087BC18:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    jal     func_8087BC3C              
    swc1    $f4, 0x01B4(a0)            # 000001B4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087BC3C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lwc1    $f4, 0x01B4(s0)            # 000001B4
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t7, 0x0200(s0)             # 00000200
    swc1    $f4, 0x0034($sp)           
    lw      t8, 0x0148(s0)             # 00000148
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    jal     func_8008A194              
    lw      a0, 0x0020(t0)             # 80880020
    lw      t1, 0x0148(s0)             # 00000148
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    cvt.s.w $f8, $f6                   
    sll     t5, t4,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t6, t3, t5                 
    mtc1    $at, $f10                  # $f10 = -3.00
    lw      a1, 0x0000(t6)             # 00000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)            
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    lw      a3, 0x0034($sp)            
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      v0, 0x01BC(s0)             # 000001BC
    sw      $zero, 0x0234(s0)          # 00000234
    swc1    $f16, 0x0264(s0)           # 00000264
    swc1    $f18, 0x006C(s0)           # 0000006C
    swc1    $f4, 0x0060(s0)            # 00000060
    lh      t8, 0x0002(v0)             # 00000002
    lui     $at, %hi(var_808837B8)     # $at = 80880000
    lwc1    $f10, %lo(var_808837B8)($at) 
    mtc1    t8, $f6                    # $f6 = 0.00
    lwc1    $f8, 0x024C(s0)            # 0000024C
    lw      t9, 0x01E0(s0)             # 000001E0
    cvt.s.w $f0, $f6                   
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t1, 0x8010                 # t1 = 80100000
    ori     t0, t9, 0x0008             # t0 = 00000008
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t0, 0x01E0(s0)             # 000001E0
    mul.s   $f16, $f0, $f10            
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    addiu   a0, $zero, 0x2818          # a0 = 00002818
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sub.s   $f18, $f8, $f16            
    swc1    $f18, 0x024C(s0)           # 0000024C
    sw      t1, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00AA          # a1 = 000000AA
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_800915CC              
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087BD78:
    sw      a0, 0x0000($sp)            
    jr      $ra                        
    nop


func_8087BD84:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f4                   # $f4 = 13.00
    lui     $at, 0x41B8                # $at = 41B80000
    lwc1    $f2, 0x01B4(s0)            # 000001B4
    mtc1    $at, $f6                   # $f6 = 23.00
    lw      t6, 0x01E0(s0)             # 000001E0
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    c.lt.s  $f6, $f2                   
    ori     t7, t6, 0x0004             # t7 = 00000004
    sw      t7, 0x01E0(s0)             # 000001E0
    swc1    $f4, 0x0068(s0)            # 00000068
    bc1fl   lbl_8087BE3C               
    lw      v0, 0x01BC(s0)             # 000001BC
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f10, 0x0060(s0)           # 00000060
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f8                   # $f8 = -3.50
    c.eq.s  $f0, $f10                  
    lui     $at, 0xC128                # $at = C1280000
    swc1    $f8, 0x006C(s0)            # 0000006C
    bc1fl   lbl_8087BE00               
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f16                  # $f16 = 90.00
    nop
    swc1    $f16, 0x0060(s0)           # 00000060
    lui     $at, 0x42B4                # $at = 42B40000
lbl_8087BE00:
    mtc1    $at, $f6                   # $f6 = 90.00
    lwc1    $f4, 0x0080(s0)            # 00000080
    lwc1    $f18, 0x0028(s0)           # 00000028
    lui     $at, 0x3FC0                # $at = 3FC00000
    add.s   $f8, $f4, $f6              
    c.lt.s  $f18, $f8                  
    nop
    bc1f    lbl_8087BE30               
    nop
    mtc1    $at, $f10                  # $f10 = 1.50
    beq     $zero, $zero, lbl_8087BE64 
    swc1    $f10, 0x01B8(s0)           # 000001B8
lbl_8087BE30:
    beq     $zero, $zero, lbl_8087BE64 
    swc1    $f0, 0x01B8(s0)            # 000001B8
    lw      v0, 0x01BC(s0)             # 000001BC
lbl_8087BE3C:
    lui     $at, %hi(var_808837BC)     # $at = 80880000
    lwc1    $f6, %lo(var_808837BC)($at) 
    lh      t8, 0x0002(v0)             # 00000002
    lwc1    $f4, 0x0264(s0)            # 00000264
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f0, $f16                  
    mul.s   $f18, $f0, $f6             
    add.s   $f8, $f4, $f18             
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_8087BE64:
    jal     func_8008C9C0              
    swc1    $f2, 0x002C($sp)           
    bne     v0, $zero, lbl_8087BEB8    
    lwc1    $f2, 0x002C($sp)           
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f10                  # $f10 = 23.00
    nop
    c.lt.s  $f10, $f2                  
    nop
    bc1fl   lbl_8087BF38               
    lw      $ra, 0x0024($sp)           
    lwc1    $f6, 0x0080(s0)            # 00000080
    lwc1    $f4, 0x0060(s0)            # 00000060
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    sub.s   $f18, $f6, $f4             
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f10, $f18, $f8            
    c.lt.s  $f16, $f10                 
    nop
    bc1f    lbl_8087BF34               
lbl_8087BEB8:
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    sw      t9, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2819          # a0 = 00002819
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_800915CC              
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    lw      t0, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    lwc1    $f4, 0x0080(s0)            # 00000080
    and     t1, t0, $at                
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f6                   # $f6 = -3.50
    sw      t1, 0x01E0(s0)             # 000001E0
    swc1    $f4, 0x0028(s0)            # 00000028
    swc1    $f6, 0x006C(s0)            # 0000006C
    lw      a0, 0x0044($sp)            
    lui     a1, 0x41C8                 # a1 = 41C80000
    jal     func_8001C54C              
    addiu   a2, s0, 0x0024             # a2 = 00000024
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8087ACA8              
    lw      a1, 0x0044($sp)            
lbl_8087BF34:
    lw      $ra, 0x0024($sp)           
lbl_8087BF38:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8087BF48:
    addiu   v0, $zero, 0xFFFE          # v0 = FFFFFFFE
    lbu     t6, 0x027A(a0)             # 0000027A
    lbu     t8, 0x02C6(a0)             # 000002C6
    lbu     t0, 0x0312(a0)             # 00000312
    lw      t4, 0x01E0(a0)             # 000001E0
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    and     t7, t6, v0                 
    and     t9, t8, v0                 
    and     t1, t0, v0                 
    ori     t5, t4, 0x2000             # t5 = 00002000
    sb      t7, 0x027A(a0)             # 0000027A
    sb      t9, 0x02C6(a0)             # 000002C6
    sb      t1, 0x0312(a0)             # 00000312
    sw      t2, 0x013C(a0)             # 0000013C
    sw      t3, 0x0200(a0)             # 00000200
    sw      t5, 0x01E0(a0)             # 000001E0
    sh      $zero, 0x0240(a0)          # 00000240
    jr      $ra                        
    nop


func_8087BF98:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lh      t6, 0x05BE(v0)             # 801205BE
    beql    t6, $zero, lbl_8087C048    
    lw      t2, 0x01E0(s0)             # 000001E0
    lw      t7, 0x0148(s0)             # 00000148
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    bnel    t7, $zero, lbl_8087C048    
    lw      t2, 0x01E0(s0)             # 000001E0
    jal     func_80878CAC              
    sh      $zero, 0x05BE(v0)          # 801205BE
    beql    v0, $zero, lbl_8087C048    
    lw      t2, 0x01E0(s0)             # 000001E0
    lw      t8, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xDFFF         # $at = FFFFDFFF
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    and     t9, t8, $at                
    sw      t9, 0x01E0(s0)             # 000001E0
    lh      t0, 0x00A4(s1)             # 000000A4
    lui     $at, 0x8012                # $at = 80120000
    or      a2, s0, $zero              # a2 = 00000000
    sh      t0, -0x46E8($at)           # 8011B918
    jal     func_80049818              
    lw      a0, 0x0790(s1)             # 00000790
    lw      a0, 0x0790(s1)             # 00000790
    jal     func_800495BC              
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    lw      a0, 0x0790(s1)             # 00000790
    addiu   t1, $zero, 0x0051          # t1 = 00000051
    sw      t1, 0x0010($sp)            
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80049D58              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      t2, 0x01E0(s0)             # 000001E0
lbl_8087C048:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    andi    t3, t2, 0x2000             # t3 = 00000000
    bnel    t3, $zero, lbl_8087C090    
    lw      $ra, 0x002C($sp)           
    jal     func_8087C628              
    sh      $zero, 0x0240(s0)          # 00000240
    lbu     t4, 0x027A(s0)             # 0000027A
    lbu     t6, 0x02C6(s0)             # 000002C6
    lbu     t8, 0x0312(s0)             # 00000312
    ori     t5, t4, 0x0001             # t5 = 00000001
    ori     t7, t6, 0x0001             # t7 = 00000001
    ori     t9, t8, 0x0001             # t9 = 00000001
    sh      $zero, 0x001C(s0)          # 0000001C
    sb      t5, 0x027A(s0)             # 0000027A
    sb      t7, 0x02C6(s0)             # 000002C6
    sb      t9, 0x0312(s0)             # 00000312
    lw      $ra, 0x002C($sp)           
lbl_8087C090:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_8087C0A0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a2, 0x0038($sp)            
    sw      a3, 0x003C($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x013C(s0)             # 0000013C
    beq     a1, $zero, lbl_8087C0E4    
    swc1    $f4, 0x0068(s0)            # 00000068
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a1, $at, lbl_8087C0E4      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    a1, $at, lbl_8087C0E8      
    lw      t7, 0x0200(s0)             # 00000200
    or      a1, $zero, $zero           # a1 = 00000000
lbl_8087C0E4:
    lw      t7, 0x0200(s0)             # 00000200
lbl_8087C0E8:
    beql    a1, t7, lbl_8087C260       
    lw      $ra, 0x002C($sp)           
    bne     a1, $zero, lbl_8087C110    
    sw      a1, 0x0200(s0)             # 00000200
    lw      t8, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xEFFF         # $at = FFFFEFFF
    or      v0, a1, $zero              # v0 = 00000000
    and     t9, t8, $at                
    beq     $zero, $zero, lbl_8087C1E8 
    sw      t9, 0x01E0(s0)             # 000001E0
lbl_8087C110:
    lw      v0, 0x0200(s0)             # 00000200
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_8087C17C      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      t1, 0x0218(s0)             # 00000218
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    lui     a3, 0x8010                 # a3 = 80100000
    sw      t1, 0x0000(a1)             # 0000020C
    lw      t0, 0x021C(s0)             # 0000021C
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t0, 0x0004(a1)             # 00000210
    lw      t1, 0x0220(s0)             # 00000220
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    addiu   a0, $zero, 0x2816          # a0 = 00002816
    sw      t1, 0x0008(a1)             # 00000214
    lw      t2, 0x01E0(s0)             # 000001E0
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t3, t2,  4                 
    bgez    t3, lbl_8087C170           
    nop
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t4, 0x0014($sp)            
lbl_8087C170:
    beq     $zero, $zero, lbl_8087C1E8 
    lw      v0, 0x0200(s0)             # 00000200
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8087C17C:
    bnel    v0, $at, lbl_8087C1EC      
    lw      t0, 0x0148(s0)             # 00000148
    lw      t6, 0x0218(s0)             # 00000218
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    lui     a3, 0x8010                 # a3 = 80100000
    sw      t6, 0x0000(a1)             # 0000020C
    lw      t5, 0x021C(s0)             # 0000021C
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t5, 0x0004(a1)             # 00000210
    lw      t6, 0x0220(s0)             # 00000220
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    sw      t6, 0x0008(a1)             # 00000214
    lw      v1, 0x01E0(s0)             # 000001E0
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t7, v1,  4                 
    bgezl   t7, lbl_8087C1DC           
    addiu   $at, $zero, 0xF7FF         # $at = FFFFF7FF
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t8, 0x0014($sp)            
    lw      v1, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xF7FF         # $at = FFFFF7FF
lbl_8087C1DC:
    and     t9, v1, $at                
    sw      t9, 0x01E0(s0)             # 000001E0
    lw      v0, 0x0200(s0)             # 00000200
lbl_8087C1E8:
    lw      t0, 0x0148(s0)             # 00000148
lbl_8087C1EC:
    lui     t2, %hi(var_80882D88)      # t2 = 80880000
    sll     t3, v0,  2                 
    sll     t1, t0,  2                 
    addu    t2, t2, t1                 
    lw      t2, %lo(var_80882D88)(t2)  
    addu    t4, t2, t3                 
    jal     func_8008A194              
    lw      a0, 0x0000(t4)             # 00000000
    lw      t5, 0x0148(s0)             # 00000148
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     t7, %hi(var_80882D88)      # t7 = 80880000
    sll     t6, t5,  2                 
    lw      t8, 0x0200(s0)             # 00000200
    addu    t7, t7, t6                 
    lw      t7, %lo(var_80882D88)(t7)  
    cvt.s.w $f8, $f6                   
    sll     t9, t8,  2                 
    addu    t0, t7, t9                 
    lwc1    $f10, 0x0038($sp)          
    lw      a1, 0x0000(t0)             # 00000000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t1, 0x0014($sp)            
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a3, 0x003C($sp)            
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lw      $ra, 0x002C($sp)           
lbl_8087C260:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8087C270:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      $ra, 0x0014($sp)           
    mfc1    a2, $f12                   
    jal     func_8087C0A0              
    lw      a3, 0x0204(a0)             # 00000204
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087C298:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)           
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t6, 0x0200(a0)             # 00000200
    jal     func_8087C0A0              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087C2CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_8087C298              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lw      t6, 0x01E0(a0)             # 000001E0
    and     t7, t6, $at                
    sw      t7, 0x01E0(a0)             # 000001E0
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8087C300:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x0068(s0)            # 00000068
    jal     func_80878B80              
    lw      a1, 0x003C($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lh      t6, 0x05BE(v0)             # 801205BE
    beq     t6, $zero, lbl_8087C414    
    nop
    lw      t7, 0x0148(s0)             # 00000148
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    bne     t7, $zero, lbl_8087C414    
    nop
    sh      $zero, 0x05BE(v0)          # 801205BE
    jal     func_80878AD0              
    lw      a0, 0x003C($sp)            
    bne     v0, $zero, lbl_8087C3D8    
    lui     a3, 0x8010                 # a3 = 80100000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878CAC              
    lw      a1, 0x003C($sp)            
    beq     v0, $zero, lbl_8087C414    
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x0240(s0)          # 00000240
    jal     func_8087C628              
    lw      a1, 0x003C($sp)            
    lw      t8, 0x003C($sp)            
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80049818              
    lw      a0, 0x0790(t8)             # 00000790
    lw      t9, 0x003C($sp)            
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    jal     func_800495BC              
    lw      a0, 0x0790(t9)             # 00000790
    lw      t0, 0x003C($sp)            
    addiu   t1, $zero, 0x0051          # t1 = 00000051
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      a0, 0x0790(t0)             # 00000790
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      t1, 0x0010($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80049D58              
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_8087C414 
    nop
lbl_8087C3D8:
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 000043A0
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    sw      t2, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sh      $zero, 0x0240(s0)          # 00000240
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8087C4C0              
    addiu   a3, $zero, 0x0000          # a3 = 00000000
lbl_8087C414:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    beql    v0, $zero, lbl_8087C4B0    
    lw      $ra, 0x002C($sp)           
    lw      v0, 0x0200(s0)             # 00000200
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_8087C458    
    nop
    bnel    v0, $at, lbl_8087C44C      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     $zero, $zero, lbl_8087C458 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8087C44C:
    bne     v0, $at, lbl_8087C458      
    nop
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_8087C458:
    jal     func_800CDCCC              # Rand.Next() float
    sw      v1, 0x0034($sp)            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lw      v1, 0x0034($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f6, $f0                   
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, %hi(var_808835A8)      # a1 = 80880000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bc1f    lbl_8087C490               
    sll     t5, v1,  3                 
    beq     $zero, $zero, lbl_8087C490 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8087C490:
    sll     t3, v0,  2                 
    addu    t6, t3, t5                 
    addu    a1, a1, t6                 
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    jal     func_8087C0A0              
    lw      a1, %lo(var_808835A8)(a1)  
    lw      $ra, 0x002C($sp)           
lbl_8087C4B0:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087C4C0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a2, 0x0038($sp)            
    sw      a3, 0x003C($sp)            
    lw      t7, 0x01E0(s0)             # 000001E0
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t8, t7, $at                
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   $at, $zero, 0x0005         # $at = 00000005
    sw      t6, 0x013C(s0)             # 0000013C
    beq     a1, $at, lbl_8087C514      
    sw      t8, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     a1, $at, lbl_8087C514      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    a1, $at, lbl_8087C518      
    lw      v0, 0x0200(s0)             # 00000200
    addiu   a1, $zero, 0x0004          # a1 = 00000004
lbl_8087C514:
    lw      v0, 0x0200(s0)             # 00000200
lbl_8087C518:
    beql    a1, v0, lbl_8087C5A4       
    lw      t1, 0x0148(s0)             # 00000148
    lw      t9, 0x0148(s0)             # 00000148
    lui     t1, %hi(var_80882D88)      # t1 = 80880000
    sw      a1, 0x0200(s0)             # 00000200
    sll     t0, t9,  2                 
    addu    t1, t1, t0                 
    lw      t1, %lo(var_80882D88)(t1)  
    sll     t2, a1,  2                 
    addu    t3, t1, t2                 
    jal     func_8008A194              
    lw      a0, 0x0000(t3)             # 00000000
    lw      t4, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t6, %hi(var_80882D88)      # t6 = 80880000
    sll     t5, t4,  2                 
    lw      t7, 0x0200(s0)             # 00000200
    addu    t6, t6, t5                 
    lw      t6, %lo(var_80882D88)(t6)  
    cvt.s.w $f6, $f4                   
    sll     t8, t7,  2                 
    addu    t9, t6, t8                 
    lwc1    $f8, 0x0038($sp)           
    lw      a1, 0x0000(t9)             # 00000000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sw      t0, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a3, 0x003C($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    beq     $zero, $zero, lbl_8087C618 
    lw      $ra, 0x002C($sp)           
    lw      t1, 0x0148(s0)             # 00000148
lbl_8087C5A4:
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t4, v0,  2                 
    sll     t2, t1,  2                 
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    addu    t5, t3, t4                 
    jal     func_8008A194              
    lw      a0, 0x0000(t5)             # 00000000
    lw      t7, 0x0148(s0)             # 00000148
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     t8, %hi(var_80882D88)      # t8 = 80880000
    sll     t6, t7,  2                 
    lw      t9, 0x0200(s0)             # 00000200
    addu    t8, t8, t6                 
    lw      t8, %lo(var_80882D88)(t8)  
    cvt.s.w $f16, $f10                 
    sll     t0, t9,  2                 
    addu    t1, t8, t0                 
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      a1, 0x0000(t1)             # 00000000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0014($sp)            
    swc1    $f16, 0x0010($sp)          
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a3, 0x003C($sp)            
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    lw      $ra, 0x002C($sp)           
lbl_8087C618:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8087C628:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      a1, 0x1C44(a2)             # 00001C44
    addiu   s0, $zero, 0x0004          # s0 = 00000004
    jal     func_800214FC              
    sw      a0, 0x0020($sp)            
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f2                   # $f2 = 400.00
    lw      a0, 0x0020($sp)            
    lui     $at, 0x4396                # $at = 43960000
    c.lt.s  $f2, $f0                   
    lui     a2, 0xC040                 # a2 = C0400000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    bc1fl   lbl_8087C680               
    mtc1    $at, $f12                  # $f12 = 300.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f12                  # $f12 = 300.00
    beq     $zero, $zero, lbl_8087C6A8 
    addiu   s0, $zero, 0x0006          # s0 = 00000006
    mtc1    $at, $f12                  # $f12 = 300.00
lbl_8087C680:
    nop
    c.le.s  $f0, $f12                  
    nop
    bc1tl   lbl_8087C6AC               
    lw      v0, 0x0200(a0)             # 00000200
    c.le.s  $f0, $f2                   
    nop
    bc1fl   lbl_8087C6AC               
    lw      v0, 0x0200(a0)             # 00000200
    addiu   s0, $zero, 0x0005          # s0 = 00000005
lbl_8087C6A8:
    lw      v0, 0x0200(a0)             # 00000200
lbl_8087C6AC:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_8087C6DC      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    c.lt.s  $f2, $f0                   
    nop
    bc1f    lbl_8087C6D0               
    nop
    beq     $zero, $zero, lbl_8087C740 
    addiu   s0, $zero, 0x0006          # s0 = 00000006
lbl_8087C6D0:
    beq     $zero, $zero, lbl_8087C740 
    addiu   s0, $zero, 0x0005          # s0 = 00000005
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_8087C6DC:
    bnel    v0, $at, lbl_8087C720      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_8087C700               
    c.lt.s  $f0, $f12                  
    beq     $zero, $zero, lbl_8087C740 
    addiu   s0, $zero, 0x0006          # s0 = 00000006
    c.lt.s  $f0, $f12                  
lbl_8087C700:
    nop
    bc1f    lbl_8087C714               
    nop
    beq     $zero, $zero, lbl_8087C740 
    addiu   s0, $zero, 0x0004          # s0 = 00000004
lbl_8087C714:
    beq     $zero, $zero, lbl_8087C740 
    addiu   s0, $zero, 0x0005          # s0 = 00000005
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_8087C720:
    bne     v0, $at, lbl_8087C740      
    nop
    c.lt.s  $f12, $f0                  
    addiu   s0, $zero, 0x0004          # s0 = 00000004
    bc1f    lbl_8087C740               
    nop
    beq     $zero, $zero, lbl_8087C740 
    addiu   s0, $zero, 0x0005          # s0 = 00000005
lbl_8087C740:
    jal     func_8087C4C0              
    or      a1, s0, $zero              # a1 = 00000005
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8087C75C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x05BE(t6)          # 801205BE
    lw      t7, 0x0044($sp)            
    jal     func_800214FC              
    lw      a1, 0x1C44(t7)             # 00001C44
    swc1    $f0, 0x003C($sp)           
    lw      v0, 0x0360(s0)             # 00000360
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8087C7A4      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_8087C948      
lbl_8087C7A4:
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    nop
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_8087C94C               
    lw      t4, 0x01E0(s0)             # 000001E0
    lw      v0, 0x01E0(s0)             # 000001E0
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    andi    t8, v0, 0x8000             # t8 = 00000000
    bne     t8, $zero, lbl_8087C948    
    ori     t0, v0, 0x8000             # t0 = 00008000
    sw      t9, 0x0200(s0)             # 00000200
    sw      t0, 0x01E0(s0)             # 000001E0
    lw      t1, 0x0044($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4              
    lw      a1, 0x1C44(t1)             # 00001C44
    sh      v0, 0x0366(s0)             # 00000366
    lh      t2, 0x0366(s0)             # 00000366
    lh      t3, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_808837C0)     # $at = 80880000
    mtc1    t2, $f6                    # $f6 = 0.00
    mtc1    t3, $f10                   # $f10 = 0.00
    lwc1    $f18, %lo(var_808837C0)($at) 
    cvt.s.w $f8, $f6                   
    lui     $at, %hi(var_808837C8)     # $at = 80880000
    cvt.s.w $f16, $f10                 
    sub.s   $f0, $f8, $f16             
    c.lt.s  $f18, $f0                  
    nop
    bc1f    lbl_8087C838               
    nop
    lui     $at, %hi(var_808837C4)     # $at = 80880000
    lwc1    $f4, %lo(var_808837C4)($at) 
    beq     $zero, $zero, lbl_8087C858 
    sub.s   $f0, $f0, $f4              
lbl_8087C838:
    lwc1    $f6, %lo(var_808837C8)($at) 
    lui     $at, %hi(var_808837CC)     # $at = 80880000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_8087C85C               
    lw      t4, 0x0148(s0)             # 00000148
    lwc1    $f10, %lo(var_808837CC)($at) 
    add.s   $f0, $f0, $f10             
lbl_8087C858:
    lw      t4, 0x0148(s0)             # 00000148
lbl_8087C85C:
    lui     t6, %hi(var_80882D88)      # t6 = 80880000
    lw      t7, 0x0200(s0)             # 00000200
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, %lo(var_80882D88)(t6)  
    sll     t8, t7,  2                 
    addu    t9, t6, t8                 
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_8008A194              
    swc1    $f0, 0x0038($sp)           
    mtc1    v0, $f8                    # $f8 = 0.00
    lwc1    $f0, 0x0038($sp)           
    lw      t2, 0x0148(s0)             # 00000148
    cvt.s.w $f16, $f8                  
    lui     t4, %hi(var_80882D88)      # t4 = 80880000
    sll     t3, t2,  2                 
    lw      t5, 0x0200(s0)             # 00000200
    addu    t4, t4, t3                 
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    div.s   $f18, $f0, $f16            
    sll     t7, t5,  2                 
    trunc.w.s $f4, $f18                  
    mfc1    t1, $f4                    
    nop
    sh      t1, 0x0368(s0)             # 00000368
    lw      t4, %lo(var_80882D88)(t4)  
    addu    t6, t4, t7                 
    lw      a1, 0x0000(t6)             # 00000000
    jal     func_8008D1C4              
    sw      a0, 0x0030($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lw      t8, 0x01E0(s0)             # 000001E0
    lw      t1, 0x0218(s0)             # 00000218
    addiu   $at, $zero, 0xF7FF         # $at = FFFFF7FF
    and     t9, t8, $at                
    sw      t9, 0x01E0(s0)             # 000001E0
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    swc1    $f6, 0x01B8(s0)            # 000001B8
    sw      t1, 0x0000(a1)             # 0000020C
    lw      t0, 0x021C(s0)             # 0000021C
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    sw      t0, 0x0004(a1)             # 00000210
    lw      t1, 0x0220(s0)             # 00000220
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    sw      t1, 0x0008(a1)             # 00000214
    lw      t2, 0x01E0(s0)             # 000001E0
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t3, t2,  4                 
    bgezl   t3, lbl_8087C9E4           
    lw      v0, 0x0200(s0)             # 00000200
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t5, 0x0014($sp)            
    beq     $zero, $zero, lbl_8087C9E4 
    lw      v0, 0x0200(s0)             # 00000200
lbl_8087C948:
    lw      t4, 0x01E0(s0)             # 000001E0
lbl_8087C94C:
    lui     $at, 0x41C8                # $at = 41C80000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t4, 0x8000             # t7 = 00000000
    beq     t7, $zero, lbl_8087C9D0    
    nop
    lh      t6, 0x0032(s0)             # 00000032
    lh      t8, 0x0368(s0)             # 00000368
    mtc1    $at, $f10                  # $f10 = 25.00
    lwc1    $f8, 0x0204(s0)            # 00000204
    addu    t9, t6, t8                 
    sh      t9, 0x0032(s0)             # 00000032
    c.lt.s  $f10, $f8                  
    lh      t0, 0x0032(s0)             # 00000032
    bc1f    lbl_8087C9C4               
    sh      t0, 0x00B6(s0)             # 000000B6
    lw      v0, 0x01E0(s0)             # 000001E0
    addiu   a0, $zero, 0x282B          # a0 = 0000282B
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    andi    t1, v0, 0x0800             # t1 = 00000000
    bne     t1, $zero, lbl_8087C9C4    
    ori     t2, v0, 0x0800             # t2 = 00000800
    lui     t3, 0x8010                 # t3 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    sw      t2, 0x01E0(s0)             # 000001E0
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    addiu   a3, t3, 0x43A0             # a3 = 801043A0
    sw      a3, 0x0010($sp)            
    sw      t5, 0x0014($sp)            
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_8087C9C4:
    addiu   t4, s0, 0x019C             # t4 = 0000019C
    beq     $zero, $zero, lbl_8087C9E0 
    sw      t4, 0x0030($sp)            
lbl_8087C9D0:
    jal     func_80879770              
    lw      a1, 0x0044($sp)            
    addiu   t7, s0, 0x019C             # t7 = 0000019C
    sw      t7, 0x0030($sp)            
lbl_8087C9E0:
    lw      v0, 0x0200(s0)             # 00000200
lbl_8087C9E4:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_8087CA0C      
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f0                   # $f0 = 8.00
    lui     $at, %hi(var_808837D0)     # $at = 80880000
    swc1    $f0, 0x0068(s0)            # 00000068
    lwc1    $f16, %lo(var_808837D0)($at) 
    mul.s   $f18, $f0, $f16            
    beq     $zero, $zero, lbl_8087CA7C 
    swc1    $f18, 0x01B8(s0)           # 000001B8
lbl_8087CA0C:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_8087CA34      
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f0                   # $f0 = 6.00
    lui     $at, 0x3EC0                # $at = 3EC00000
    mtc1    $at, $f4                   # $f4 = 0.38
    swc1    $f0, 0x0068(s0)            # 00000068
    mul.s   $f6, $f0, $f4              
    beq     $zero, $zero, lbl_8087CA7C 
    swc1    $f6, 0x01B8(s0)            # 000001B8
lbl_8087CA34:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_8087CA68      
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808788D4              
    swc1    $f10, 0x0068(s0)           # 00000068
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f16                  # $f16 = 0.75
    lwc1    $f8, 0x0068(s0)            # 00000068
    mul.s   $f18, $f8, $f16            
    beq     $zero, $zero, lbl_8087CA7C 
    swc1    $f18, 0x01B8(s0)           # 000001B8
lbl_8087CA68:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 1.00
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f6, 0x01B8(s0)            # 000001B8
lbl_8087CA7C:
    lw      t6, 0x01E0(s0)             # 000001E0
    andi    t8, t6, 0x8000             # t8 = 00000000
    bne     t8, $zero, lbl_8087CB14    
    nop
    lh      t9, 0x0240(s0)             # 00000240
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0240(s0)             # 00000240
    lh      t1, 0x0240(s0)             # 00000240
    addiu   t2, s0, 0x0218             # t2 = 00000218
    slti    $at, t1, 0x012D            
    bne     $at, $zero, lbl_8087CB14   
    nop
    sw      t2, 0x002C($sp)            
    jal     func_8087C2CC              
    sw      a1, 0x0034($sp)            
    lw      t3, 0x002C($sp)            
    lw      a1, 0x0034($sp)            
    lui     t8, 0x8010                 # t8 = 80100000
    lw      t4, 0x0000(t3)             # 00000000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    sw      t4, 0x0000(a1)             # 00000000
    lw      t5, 0x0004(t3)             # 00000004
    addiu   a3, t8, 0x43A0             # a3 = 801043A0
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    sw      t5, 0x0004(a1)             # 00000004
    lw      t4, 0x0008(t3)             # 00000008
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      t4, 0x0008(a1)             # 00000008
    lw      t7, 0x01E0(s0)             # 000001E0
    sll     t6, t7,  4                 
    bgez    t6, lbl_8087CB14           
    nop
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t9, 0x0014($sp)            
lbl_8087CB14:
    jal     func_8008C9C0              
    lw      a0, 0x0030($sp)            
    beql    v0, $zero, lbl_8087CBA8    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x0200(s0)             # 00000200
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_8087CB48      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    jal     func_808789D8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087CB5C 
    lw      t0, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_8087CB48:
    bnel    v0, $at, lbl_8087CB5C      
    lw      t0, 0x01E0(s0)             # 000001E0
    jal     func_80878990              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x01E0(s0)             # 000001E0
lbl_8087CB5C:
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t1, t0, $at                
    sw      t1, 0x01E0(s0)             # 000001E0
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lwc1    $f10, 0x003C($sp)          
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f10, $f8                  
    nop
    bc1f    lbl_8087CB9C               
    nop
    jal     func_8087C2CC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087CBA8 
    lw      $ra, 0x0024($sp)           
lbl_8087CB9C:
    jal     func_8087C628              
    lw      a1, 0x0044($sp)            
    lw      $ra, 0x0024($sp)           
lbl_8087CBA8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8087CBB8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      $zero, 0x01F4(a0)          # 000001F4
    sw      $zero, 0x0208(a0)          # 00000208
    swc1    $f4, 0x0068(a0)            # 00000068
    jal     func_8087CCE0              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t0, 0x8010                 # t0 = 80100000
    lw      t7, 0x0218(a0)             # 00000218
    addiu   a1, a0, 0x020C             # a1 = 0000020C
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t7, 0x0000(a1)             # 0000020C
    lw      t6, 0x021C(a0)             # 0000021C
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      t6, 0x0004(a1)             # 00000210
    lw      t7, 0x0220(a0)             # 00000220
    sw      t7, 0x0008(a1)             # 00000214
    lw      t8, 0x01E0(a0)             # 000001E0
    addiu   a0, $zero, 0x1844          # a0 = 00001844
    sll     t9, t8,  4                 
    bgezl   t9, lbl_8087CC30           
    lw      $ra, 0x001C($sp)           
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t0, 0x0014($sp)            
    lw      $ra, 0x001C($sp)           
lbl_8087CC30:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8087CC3C:
    mtc1    a1, $f12                   # $f12 = 0.00
    lw      a1, 0x0010($sp)            
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    lui     t7, %hi(var_808835C0)      # t7 = 80880000
    addiu   t7, t7, %lo(var_808835C0)  # t7 = 808835C0
    sll     t6, a0,  1                 
    addu    v0, t6, t7                 
    lh      t8, 0x0000(v0)             # 00000000
    lui     t9, %hi(var_808835CE)      # t9 = 80880000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sh      t8, 0x0000(a3)             # 00000000
    beq     a0, v1, lbl_8087CC94       
    swc1    $f12, 0x0000(a1)           # 00000000
    addiu   t9, t9, %lo(var_808835CE)  # t9 = 808835CE
    beq     v0, t9, lbl_8087CC94       
    lui     t0, %hi(var_808835D0)      # t0 = 80880000
    addiu   t0, t0, %lo(var_808835D0)  # t0 = 808835D0
    beq     v0, t0, lbl_8087CC94       
    lui     t1, %hi(var_808835C8)      # t1 = 80880000
    addiu   t1, t1, %lo(var_808835C8)  # t1 = 808835C8
    bne     v0, t1, lbl_8087CCA0       
    nop
lbl_8087CC94:
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x0000(a1)            # 00000000
lbl_8087CCA0:
    bne     a2, $at, lbl_8087CCD8      
    lui     t2, %hi(var_808835CA)      # t2 = 80880000
    addiu   t2, t2, %lo(var_808835CA)  # t2 = 808835CA
    bne     v0, t2, lbl_8087CCC4       
    lui     t4, %hi(var_808835CC)      # t4 = 80880000
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    sh      t3, 0x0000(a3)             # 00000000
    jr      $ra                        
    swc1    $f12, 0x0000(a1)           # 00000000
lbl_8087CCC4:
    addiu   t4, t4, %lo(var_808835CC)  # t4 = 808835CC
    bne     v0, t4, lbl_8087CCD8       
    nop
    sh      v1, 0x0000(a3)             # 00000000
    swc1    $f12, 0x0000(a1)           # 00000000
lbl_8087CCD8:
    jr      $ra                        
    nop


func_8087CCE0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lwc1    $f0, 0x0068(s0)            # 00000068
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t6, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xEFFF         # $at = FFFFEFFF
    c.eq.s  $f4, $f0                   
    and     t7, t6, $at                
    or      v1, $zero, $zero           # v1 = 00000000
    sw      a1, 0x013C(s0)             # 0000013C
    bc1f    lbl_8087CD3C               
    sw      t7, 0x01E0(s0)             # 000001E0
    lw      t8, 0x0200(s0)             # 00000200
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    beq     t8, $zero, lbl_8087CD34    
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8087CD34:
    beq     $zero, $zero, lbl_8087CDC4 
    sw      $zero, 0x0200(s0)          # 00000200
lbl_8087CD3C:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    c.le.s  $f0, $f6                   
    lui     $at, 0x40C0                # $at = 40C00000
    bc1fl   lbl_8087CD78               
    mtc1    $at, $f8                   # $f8 = 6.00
    lw      t9, 0x0200(s0)             # 00000200
    beq     a1, t9, lbl_8087CD6C       
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8087CD6C:
    beq     $zero, $zero, lbl_8087CDC4 
    sw      a1, 0x0200(s0)             # 00000200
    mtc1    $at, $f8                   # $f8 = 6.00
lbl_8087CD78:
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    c.le.s  $f0, $f8                   
    nop
    bc1fl   lbl_8087CDB0               
    lw      t1, 0x0200(s0)             # 00000200
    lw      t0, 0x0200(s0)             # 00000200
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    beq     a0, t0, lbl_8087CDA4       
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8087CDA4:
    beq     $zero, $zero, lbl_8087CDC4 
    sw      a0, 0x0200(s0)             # 00000200
    lw      t1, 0x0200(s0)             # 00000200
lbl_8087CDB0:
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    beql    a2, t1, lbl_8087CDC4       
    sw      a2, 0x0200(s0)             # 00000200
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sw      a2, 0x0200(s0)             # 00000200
lbl_8087CDC4:
    lw      v0, 0x0200(s0)             # 00000200
    lui     $at, 0x3F00                # $at = 3F000000
    bne     a1, v0, lbl_8087CDEC       
    nop
    lwc1    $f10, 0x0068(s0)           # 00000068
    mtc1    $at, $f16                  # $f16 = 0.50
    nop
    mul.s   $f18, $f10, $f16           
    beq     $zero, $zero, lbl_8087CE9C 
    swc1    $f18, 0x0030($sp)          
lbl_8087CDEC:
    bne     a0, v0, lbl_8087CE3C       
    lui     a3, 0x8010                 # a3 = 80100000
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    lwc1    $f4, 0x0068(s0)            # 00000068
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    mul.s   $f8, $f4, $f6              
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    sw      t2, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    sw      v1, 0x0034($sp)            
    addiu   a0, $zero, 0x2804          # a0 = 00002804
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    swc1    $f8, 0x0030($sp)           
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      v1, 0x0034($sp)            
    beq     $zero, $zero, lbl_8087CE9C 
    lw      v0, 0x0200(s0)             # 00000200
lbl_8087CE3C:
    bne     a2, v0, lbl_8087CE90       
    lui     $at, 0x3F80                # $at = 3F800000
    lui     $at, %hi(var_808837D4)     # $at = 80880000
    lwc1    $f16, %lo(var_808837D4)($at) 
    lwc1    $f10, 0x0068(s0)           # 00000068
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    mul.s   $f18, $f10, $f16           
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sw      t3, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    sw      v1, 0x0034($sp)            
    addiu   a0, $zero, 0x2804          # a0 = 00002804
    swc1    $f18, 0x0030($sp)          
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      v1, 0x0034($sp)            
    beq     $zero, $zero, lbl_8087CE9C 
    lw      v0, 0x0200(s0)             # 00000200
lbl_8087CE90:
    mtc1    $at, $f4                   # $f4 = 0.00
    nop
    swc1    $f4, 0x0030($sp)           
lbl_8087CE9C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v1, $at, lbl_8087CF50      
    lw      t4, 0x0148(s0)             # 00000148
    lw      t4, 0x0148(s0)             # 00000148
    lui     t6, %hi(var_80882D88)      # t6 = 80880000
    sll     t7, v0,  2                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, %lo(var_80882D88)(t6)  
    addu    t8, t6, t7                 
    jal     func_8008A194              
    lw      a0, 0x0000(t8)             # 00000000
    lw      v1, 0x0200(s0)             # 00000200
    lui     $at, %hi(var_80882D90)     # $at = 80880000
    lwc1    $f8, 0x0030($sp)           
    sll     v1, v1,  2                 
    addu    $at, $at, v1               
    lwc1    $f6, %lo(var_80882D90)($at) 
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    mul.s   $f10, $f6, $f8             
    lw      t9, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t1, %hi(var_80882D88)      # t1 = 80880000
    sll     t0, t9,  2                 
    addu    t1, t1, t0                 
    lw      t1, %lo(var_80882D88)(t1)  
    mul.s   $f18, $f10, $f16           
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    addu    t2, t1, v1                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t2)             # 00000000
    cvt.s.w $f6, $f4                   
    mfc1    a2, $f18                   
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    mfc1    a3, $f0                    
    sw      t3, 0x0014($sp)            
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    beq     $zero, $zero, lbl_8087CFE4 
    lw      $ra, 0x002C($sp)           
    lw      t4, 0x0148(s0)             # 00000148
lbl_8087CF50:
    lui     t6, %hi(var_80882D88)      # t6 = 80880000
    sll     t7, v0,  2                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, %lo(var_80882D88)(t6)  
    addu    t8, t6, t7                 
    jal     func_8008A194              
    lw      a0, 0x0000(t8)             # 00000000
    lw      v1, 0x0200(s0)             # 00000200
    lui     $at, %hi(var_80882D90)     # $at = 80880000
    lwc1    $f16, 0x0030($sp)          
    sll     v1, v1,  2                 
    addu    $at, $at, v1               
    lwc1    $f10, %lo(var_80882D90)($at) 
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    mul.s   $f18, $f10, $f16           
    lw      t9, 0x0148(s0)             # 00000148
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     t1, %hi(var_80882D88)      # t1 = 80880000
    sll     t0, t9,  2                 
    addu    t1, t1, t0                 
    lw      t1, %lo(var_80882D88)(t1)  
    mul.s   $f6, $f18, $f4             
    mtc1    $zero, $f0                 # $f0 = 0.00
    addu    t2, t1, v1                 
    lw      a1, 0x0000(t2)             # 00000000
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    mfc1    a3, $f0                    
    cvt.s.w $f10, $f8                  
    mfc1    a2, $f6                    
    sw      t3, 0x0014($sp)            
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    swc1    $f0, 0x0018($sp)           
    jal     func_8008D17C              
    swc1    $f10, 0x0010($sp)          
    lw      $ra, 0x002C($sp)           
lbl_8087CFE4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087CFF4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      v0, 0x0200(s0)             # 00000200
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8087D024    
    nop
    bnel    v0, $at, lbl_8087D038      
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_8087D024:
    jal     func_80878B80              
    lw      a1, 0x002C($sp)            
    beq     $zero, $zero, lbl_8087D048 
    nop
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_8087D038:
    bne     v0, $at, lbl_8087D048      
    nop
    jal     func_808788D4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087D048:
    lui     a2, %hi(var_80883584)      # a2 = 80880000
    addiu   a2, a2, %lo(var_80883584)  # a2 = 80883584
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878520              
    lw      a1, 0x002C($sp)            
    lw      t6, 0x0378(s0)             # 00000378
    bnel    t6, $zero, lbl_8087D094    
    lw      v0, 0x0200(s0)             # 00000200
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lw      t7, 0x037C(s0)             # 0000037C
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f6, 0x0068(t7)            # 00000068
    lw      t8, 0x0200(s0)             # 00000200
    beql    t8, $zero, lbl_8087D094    
    lw      v0, 0x0200(s0)             # 00000200
    jal     func_8087CCE0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x0200(s0)             # 00000200
lbl_8087D094:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    bne     v0, $at, lbl_8087D0B8      
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lwc1    $f8, 0x0068(s0)            # 00000068
    mul.s   $f0, $f8, $f10             
    beq     $zero, $zero, lbl_8087D104 
    nop
lbl_8087D0B8:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_8087D0D8      
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f18                  # $f18 = 0.25
    lwc1    $f16, 0x0068(s0)           # 00000068
    mul.s   $f0, $f16, $f18            
    beq     $zero, $zero, lbl_8087D104 
    nop
lbl_8087D0D8:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_8087D0F8      
    lui     $at, %hi(var_808837D8)     # $at = 80880000
    lwc1    $f6, %lo(var_808837D8)($at) 
    lwc1    $f4, 0x0068(s0)            # 00000068
    mul.s   $f0, $f4, $f6              
    beq     $zero, $zero, lbl_8087D104 
    nop
lbl_8087D0F8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
lbl_8087D104:
    jal     func_8008C9C0              
    swc1    $f0, 0x01B8(s0)            # 000001B8
    bne     v0, $zero, lbl_8087D138    
    nop
    lw      t9, 0x0200(s0)             # 00000200
    bnel    t9, $zero, lbl_8087D144    
    lw      t0, 0x01E0(s0)             # 000001E0
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    c.eq.s  $f8, $f10                  
    nop
    bc1tl   lbl_8087D144               
    lw      t0, 0x01E0(s0)             # 000001E0
lbl_8087D138:
    jal     func_8087CCE0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x01E0(s0)             # 000001E0
lbl_8087D144:
    sll     t1, t0,  8                 
    bgezl   t1, lbl_8087D170           
    lw      v0, 0x037C(s0)             # 0000037C
    lw      t3, 0x037C(s0)             # 0000037C
    addiu   t2, $zero, 0x0007          # t2 = 00000007
    mtc1    $zero, $f16                # $f16 = 0.00
    sh      t2, 0x01D6(t3)             # 000001D6
    lw      t4, 0x037C(s0)             # 0000037C
    beq     $zero, $zero, lbl_8087D190 
    swc1    $f16, 0x01D0(t4)           # 000001D0
    lw      v0, 0x037C(s0)             # 0000037C
lbl_8087D170:
    lhu     a2, 0x0384(s0)             # 00000384
    lw      a0, 0x0200(s0)             # 00000200
    lw      a1, 0x01B4(s0)             # 000001B4
    addiu   t5, v0, 0x01D0             # t5 = 000001D0
    sw      t5, 0x0010($sp)            
    addiu   a3, v0, 0x01D6             # a3 = 000001D6
    jal     func_8087CC3C              
    andi    a2, a2, 0x0001             # a2 = 00000000
lbl_8087D190:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8087D1A4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0200(a3)             # 00000200
    sw      t7, 0x0370(a3)             # 00000370
    lui     $at, %hi(var_808837DC)     # $at = 80880000
    lwc1    $f6, %lo(var_808837DC)($at) 
    lwc1    $f4, 0x0068(a3)            # 00000068
    lw      t8, 0x0148(a3)             # 00000148
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    mul.s   $f8, $f4, $f6              
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    addiu   a0, a3, 0x019C             # a0 = 0000019C
    lw      a1, 0x0018(t0)             # 80880018
    mfc1    a2, $f8                    
    jal     func_8008D278              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087D210:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x0018(a2)             # 00000018
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFF4
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x002C($sp)           
    lw      t7, 0x001C(a2)             # 0000001C
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0030($sp)          
    lw      t8, 0x0020(a2)             # 00000020
    sw      a1, 0x0024($sp)            
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    jal     func_800A5560              
    swc1    $f18, 0x0034($sp)          
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f2                   # $f2 = 8.00
    lw      a1, 0x0024($sp)            
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFF4
    c.lt.s  $f2, $f0                   
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a3, $zero, 0x0190          # a3 = 00000190
    bc1fl   lbl_8087D2C0               
    lw      t0, 0x0000(a2)             # FFFFFFF4
    jal     func_808784E4              
    lw      a1, 0x003C($sp)            
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f2                   # $f2 = 8.00
    lui     $at, %hi(var_808837E0)     # $at = 80880000
    swc1    $f2, 0x0068(s0)            # 00000068
    lwc1    $f4, %lo(var_808837E0)($at) 
    mul.s   $f6, $f2, $f4              
    beq     $zero, $zero, lbl_8087D2DC 
    swc1    $f6, 0x01B8(s0)            # 000001B8
    lw      t0, 0x0000(a2)             # 00000000
lbl_8087D2C0:
    mtc1    $zero, $f8                 # $f8 = 0.00
    sw      t0, 0x0000(a1)             # 00000000
    lw      t9, 0x0004(a2)             # 00000004
    sw      t9, 0x0004(a1)             # 00000004
    lw      t0, 0x0008(a2)             # 00000008
    sw      t0, 0x0008(a1)             # 00000008
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_8087D2DC:
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    beql    v0, $zero, lbl_8087D350    
    lw      $ra, 0x001C($sp)           
    jal     func_808789D8              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800915CC              
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    lui     $at, %hi(var_808837E4)     # $at = 80880000
    lwc1    $f16, %lo(var_808837E4)($at) 
    lwc1    $f10, 0x0068(s0)           # 00000068
    lw      t1, 0x0148(s0)             # 00000148
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    mul.s   $f18, $f10, $f16           
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    sll     t5, t4,  2                 
    lw      a0, 0x0024($sp)            
    mfc1    a2, $f18                   
    addu    t6, t3, t5                 
    jal     func_8008D278              
    lw      a1, 0x0000(t6)             # 00000000
    lw      $ra, 0x001C($sp)           
lbl_8087D350:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087D360:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    jal     func_8087D384              
    swc1    $f4, 0x01B4(a0)            # 000001B4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087D384:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lwc1    $f4, 0x01B4(s0)            # 000001B4
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sw      t6, 0x0200(s0)             # 00000200
    swc1    $f4, 0x0034($sp)           
    lw      t7, 0x0148(s0)             # 00000148
    lui     t9, %hi(var_80882D88)      # t9 = 80880000
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, %lo(var_80882D88)(t9)  
    jal     func_8008A194              
    lw      a0, 0x0020(t9)             # 80880020
    lw      t0, 0x0148(s0)             # 00000148
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     t2, %hi(var_80882D88)      # t2 = 80880000
    sll     t1, t0,  2                 
    lw      t3, 0x0200(s0)             # 00000200
    addu    t2, t2, t1                 
    lw      t2, %lo(var_80882D88)(t2)  
    cvt.s.w $f8, $f6                   
    sll     t4, t3,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t5, t2, t4                 
    mtc1    $at, $f10                  # $f10 = -3.00
    lw      a1, 0x0000(t5)             # 00000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    lw      a3, 0x0034($sp)            
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      v0, 0x01BC(s0)             # 000001BC
    sw      $zero, 0x0234(s0)          # 00000234
    swc1    $f16, 0x0264(s0)           # 00000264
    swc1    $f18, 0x006C(s0)           # 0000006C
    swc1    $f4, 0x0060(s0)            # 00000060
    lh      t7, 0x0002(v0)             # 00000002
    lui     $at, %hi(var_808837E8)     # $at = 80880000
    lwc1    $f10, %lo(var_808837E8)($at) 
    mtc1    t7, $f6                    # $f6 = 0.00
    lwc1    $f8, 0x024C(s0)            # 0000024C
    lw      t8, 0x01E0(s0)             # 000001E0
    cvt.s.w $f0, $f6                   
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t0, 0x8010                 # t0 = 80100000
    ori     t9, t8, 0x0008             # t9 = 00000008
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t9, 0x01E0(s0)             # 000001E0
    mul.s   $f16, $f0, $f10            
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    addiu   a0, $zero, 0x2818          # a0 = 00002818
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sub.s   $f18, $f8, $f16            
    swc1    $f18, 0x024C(s0)           # 0000024C
    sw      t0, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00AA          # a1 = 000000AA
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_800915CC              
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087D4B8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0020($sp)            
    jal     func_8087D360              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lhu     t7, 0x0374(a0)             # 00000374
    sw      t6, 0x0370(a0)             # 00000370
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sh      t8, 0x0374(a0)             # 00000374
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8087D4F0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lhu     t6, 0x0374(s0)             # 00000374
    lw      a1, 0x0044($sp)            
    lui     $at, 0x4150                # $at = 41500000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_8087D52C    
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    jal     func_8087D210              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087D738 
    lw      $ra, 0x0024($sp)           
lbl_8087D52C:
    mtc1    $at, $f4                   # $f4 = 0.00
    lui     $at, 0x4198                # $at = 41980000
    lwc1    $f2, 0x01B4(s0)            # 000001B4
    mtc1    $at, $f6                   # $f6 = 19.00
    lw      t8, 0x01E0(s0)             # 000001E0
    swc1    $f4, 0x0068(s0)            # 00000068
    c.lt.s  $f6, $f2                   
    ori     t9, t8, 0x0004             # t9 = 00000004
    sw      t9, 0x01E0(s0)             # 000001E0
    bc1fl   lbl_8087D5CC               
    lw      v0, 0x01BC(s0)             # 000001BC
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f16, 0x0060(s0)           # 00000060
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f8                   # $f8 = -3.50
    c.eq.s  $f10, $f16                 
    lui     $at, 0xC128                # $at = C1280000
    swc1    $f8, 0x006C(s0)            # 0000006C
    bc1fl   lbl_8087D58C               
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f18                  # $f18 = 90.00
    nop
    swc1    $f18, 0x0060(s0)           # 00000060
    lui     $at, 0x42B4                # $at = 42B40000
lbl_8087D58C:
    mtc1    $at, $f8                   # $f8 = 90.00
    lwc1    $f6, 0x0080(s0)            # 00000080
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x3FC0                # $at = 3FC00000
    add.s   $f10, $f6, $f8             
    c.lt.s  $f4, $f10                  
    nop
    bc1fl   lbl_8087D5C0               
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $at, $f16                  # $f16 = 1.50
    beq     $zero, $zero, lbl_8087D5F4 
    swc1    $f16, 0x01B8(s0)           # 000001B8
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_8087D5C0:
    beq     $zero, $zero, lbl_8087D5F4 
    swc1    $f18, 0x01B8(s0)           # 000001B8
    lw      v0, 0x01BC(s0)             # 000001BC
lbl_8087D5CC:
    lui     $at, %hi(var_808837EC)     # $at = 80880000
    lwc1    $f4, %lo(var_808837EC)($at) 
    lh      t0, 0x0002(v0)             # 00000002
    lwc1    $f8, 0x0264(s0)            # 00000264
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f0, $f6                   
    mul.s   $f10, $f0, $f4             
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0028(s0)           # 00000028
lbl_8087D5F4:
    sw      a0, 0x0028($sp)            
    jal     func_8008C9C0              
    swc1    $f2, 0x003C($sp)           
    bne     v0, $zero, lbl_8087D650    
    lwc1    $f2, 0x003C($sp)           
    lui     $at, 0x4198                # $at = 41980000
    mtc1    $at, $f18                  # $f18 = 19.00
    nop
    c.lt.s  $f18, $f2                  
    nop
    bc1fl   lbl_8087D738               
    lw      $ra, 0x0024($sp)           
    lwc1    $f4, 0x0080(s0)            # 00000080
    lwc1    $f8, 0x0060(s0)            # 00000060
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f16                  # $f16 = 80.00
    sub.s   $f10, $f4, $f8             
    lwc1    $f6, 0x0028(s0)            # 00000028
    add.s   $f18, $f10, $f16           
    c.lt.s  $f6, $f18                  
    nop
    bc1fl   lbl_8087D738               
    lw      $ra, 0x0024($sp)           
lbl_8087D650:
    lhu     t1, 0x0374(s0)             # 00000374
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    ori     t2, t1, 0x0001             # t2 = 00000001
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sh      t2, 0x0374(s0)             # 00000374
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sw      t3, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2819          # a0 = 00002819
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_800915CC              
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    lw      t4, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    mtc1    $zero, $f8                 # $f8 = 0.00
    and     t5, t4, $at                
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f4                   # $f4 = -3.50
    lwc1    $f10, 0x0080(s0)           # 00000080
    sw      t5, 0x01E0(s0)             # 000001E0
    swc1    $f8, 0x0060(s0)            # 00000060
    swc1    $f4, 0x006C(s0)            # 0000006C
    swc1    $f10, 0x0028(s0)           # 00000028
    lw      a0, 0x0044($sp)            
    lui     a1, 0x41C8                 # a1 = 41C80000
    jal     func_8001C54C              
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lw      t7, 0x0148(s0)             # 00000148
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    lui     t9, %hi(var_80882D88)      # t9 = 80880000
    sll     t8, t7,  2                 
    sw      t6, 0x0200(s0)             # 00000200
    addu    t9, t9, t8                 
    lw      t9, %lo(var_80882D88)(t9)  
    lui     a2, %hi(var_80882DA8)      # a2 = 80880000
    lw      a2, %lo(var_80882DA8)(a2)  
    lw      a0, 0x0028($sp)            
    jal     func_8008D278              
    lw      a1, 0x0018(t9)             # 80880018
    lw      v0, 0x01BC(s0)             # 000001BC
    lui     $at, %hi(var_808837F0)     # $at = 80880000
    lwc1    $f18, %lo(var_808837F0)($at) 
    lh      t0, 0x0002(v0)             # 00000002
    lwc1    $f6, 0x024C(s0)            # 0000024C
    sw      $zero, 0x0234(s0)          # 00000234
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f0, $f16                  
    mul.s   $f4, $f0, $f18             
    add.s   $f8, $f6, $f4              
    swc1    $f8, 0x024C(s0)            # 0000024C
    lw      $ra, 0x0024($sp)           
lbl_8087D738:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8087D748:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    sw      a2, 0x0038($sp)            
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    lhu     t6, 0x0374(s0)             # 00000374
    lw      t8, 0x01E0(s0)             # 000001E0
    lw      t1, 0x0218(s0)             # 00000218
    addiu   $at, $zero, 0xF7FF         # $at = FFFFF7FF
    andi    t7, t6, 0xFFFB             # t7 = 00000000
    and     t9, t8, $at                
    sw      v0, 0x0200(s0)             # 00000200
    sw      v0, 0x0370(s0)             # 00000370
    sh      t7, 0x0374(s0)             # 00000374
    sw      t9, 0x01E0(s0)             # 000001E0
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    sw      t1, 0x0000(a1)             # 0000020C
    lw      t0, 0x021C(s0)             # 0000021C
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t4, 0x8010                 # t4 = 80100000
    sw      t0, 0x0004(a1)             # 00000210
    lw      t1, 0x0220(s0)             # 00000220
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    sw      t1, 0x0008(a1)             # 00000214
    lw      t2, 0x01E0(s0)             # 000001E0
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t3, t2,  4                 
    bgezl   t3, lbl_8087D7DC           
    lw      t5, 0x0148(s0)             # 00000148
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t4, 0x0014($sp)            
    lw      t5, 0x0148(s0)             # 00000148
lbl_8087D7DC:
    lui     t7, %hi(var_80882D88)      # t7 = 80880000
    lw      t8, 0x0200(s0)             # 00000200
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, %lo(var_80882D88)(t7)  
    sll     t9, t8,  2                 
    addu    t0, t7, t9                 
    jal     func_8008A194              
    lw      a0, 0x0000(t0)             # 00000000
    lw      t1, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    cvt.s.w $f6, $f4                   
    sll     t5, t4,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t6, t3, t5                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t6)             # 00000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8087D868:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    sw      a2, 0x0040($sp)            
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    lwc1    $f8, 0x0204(s0)            # 00000204
    mtc1    $zero, $f4                 # $f4 = 0.00
    c.lt.s  $f6, $f8                   
    swc1    $f4, 0x0068(s0)            # 00000068
    bc1fl   lbl_8087D8E0               
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lw      v0, 0x01E0(s0)             # 000001E0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t6, v0, 0x0800             # t6 = 00000000
    bne     t6, $zero, lbl_8087D8DC    
    ori     t7, v0, 0x0800             # t7 = 00000800
    lui     t8, 0x8010                 # t8 = 80100000
    sw      t7, 0x01E0(s0)             # 000001E0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x282B          # a0 = 0000282B
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_8087D8DC:
    addiu   a0, s0, 0x019C             # a0 = 0000019C
lbl_8087D8E0:
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    beql    v0, $zero, lbl_8087DA00    
    lw      $ra, 0x002C($sp)           
    lhu     v0, 0x0374(s0)             # 00000374
    sw      $zero, 0x0200(s0)          # 00000200
    andi    t9, v0, 0x0004             # t9 = 00000000
    bne     t9, $zero, lbl_8087D988    
    ori     t0, v0, 0x0004             # t0 = 00000004
    lw      t1, 0x0148(s0)             # 00000148
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sh      t0, 0x0374(s0)             # 00000374
    sll     t2, t1,  2                 
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    sll     t5, $zero,  2              
    addu    t6, t3, t5                 
    jal     func_8008A194              
    lw      a0, 0x0000(t6)             # 00000000
    lw      t7, 0x0148(s0)             # 00000148
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     t9, %hi(var_80882D88)      # t9 = 80880000
    sll     t8, t7,  2                 
    lw      t0, 0x0200(s0)             # 00000200
    addu    t9, t9, t8                 
    lw      t9, %lo(var_80882D88)(t9)  
    cvt.s.w $f16, $f10                 
    sll     t1, t0,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t2, t9, t1                 
    mtc1    $at, $f18                  # $f18 = -3.00
    lw      a1, 0x0000(t2)             # 00000000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sw      t4, 0x0014($sp)            
    swc1    $f16, 0x0010($sp)          
    lw      a0, 0x0030($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    beq     $zero, $zero, lbl_8087DA00 
    lw      $ra, 0x002C($sp)           
lbl_8087D988:
    lw      t3, 0x0148(s0)             # 00000148
    lui     t6, %hi(var_80882D88)      # t6 = 80880000
    lw      t7, 0x0200(s0)             # 00000200
    sll     t5, t3,  2                 
    addu    t6, t6, t5                 
    lw      t6, %lo(var_80882D88)(t6)  
    sll     t8, t7,  2                 
    addu    t0, t6, t8                 
    jal     func_8008A194              
    lw      a0, 0x0000(t0)             # 00000000
    lw      t9, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t2, %hi(var_80882D88)      # t2 = 80880000
    sll     t1, t9,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t2, t2, t1                 
    lw      t2, %lo(var_80882D88)(t2)  
    cvt.s.w $f6, $f4                   
    sll     t3, t4,  2                 
    addu    t5, t2, t3                 
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      a1, 0x0000(t5)             # 00000000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    lw      a0, 0x0030($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
lbl_8087DA00:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087DA10:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0020($sp)            
    lui     $at, %hi(var_808837F4)     # $at = 80880000
    addiu   a0, a3, 0x019C             # a0 = 0000019C
    lw      t7, 0x000C(t6)             # 0000000C
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    lwc1    $f4, 0x0068(a3)            # 00000068
    swc1    $f6, 0x0024(a3)            # 00000024
    lw      t8, 0x0020($sp)            
    lw      t3, 0x0024(a3)             # 00000024
    lw      t9, 0x0010(t8)             # 00000010
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    mtc1    t9, $f8                    # $f8 = 0.00
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(a3)           # 00000028
    lw      t0, 0x0020($sp)            
    lw      t2, 0x0028(a3)             # 00000028
    lw      t1, 0x0014(t0)             # 00000014
    sw      t3, 0x0100(a3)             # 00000100
    sw      t2, 0x0104(a3)             # 00000104
    mtc1    t1, $f16                   # $f16 = 0.00
    lw      t0, 0x0148(a3)             # 00000148
    lui     t2, %hi(var_80882D88)      # t2 = 80880000
    cvt.s.w $f18, $f16                 
    sll     t1, t0,  2                 
    addu    t2, t2, t1                 
    swc1    $f18, 0x002C(a3)           # 0000002C
    lw      t3, 0x002C(a3)             # 0000002C
    sw      t3, 0x0108(a3)             # 00000108
    lw      t4, 0x0020($sp)            
    lhu     t5, 0x0008(t4)             # 00000008
    sw      t8, 0x0200(a3)             # 00000200
    sw      t9, 0x0370(a3)             # 00000370
    sh      t5, 0x0032(a3)             # 00000032
    lwl     t7, 0x0030(a3)             # 00000030
    lwr     t7, 0x0033(a3)             # 00000033
    swl     t7, 0x00B4(a3)             # 000000B4
    swr     t7, 0x00B7(a3)             # 000000B7
    lhu     t7, 0x0034(a3)             # 00000034
    sh      t7, 0x00B8(a3)             # 000000B8
    lwc1    $f6, %lo(var_808837F4)($at) 
    lw      t2, %lo(var_80882D88)(t2)  
    mul.s   $f8, $f4, $f6              
    lw      a1, 0x0018(t2)             # 80880018
    mfc1    a2, $f8                    
    jal     func_8008D278              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087DAF8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x0018(a2)             # 00000018
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFF4
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x002C($sp)           
    lw      t7, 0x001C(a2)             # 0000001C
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0030($sp)          
    lw      t8, 0x0020(a2)             # 00000020
    sw      a1, 0x0024($sp)            
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    jal     func_800A5560              
    swc1    $f18, 0x0034($sp)          
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f2                   # $f2 = 8.00
    lw      a1, 0x0024($sp)            
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFF4
    c.lt.s  $f2, $f0                   
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a3, $zero, 0x0190          # a3 = 00000190
    bc1fl   lbl_8087DBA8               
    lw      t0, 0x0000(a2)             # FFFFFFF4
    jal     func_808784E4              
    lw      a1, 0x003C($sp)            
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f2                   # $f2 = 8.00
    lui     $at, %hi(var_808837F8)     # $at = 80880000
    swc1    $f2, 0x0068(s0)            # 00000068
    lwc1    $f4, %lo(var_808837F8)($at) 
    mul.s   $f6, $f2, $f4              
    beq     $zero, $zero, lbl_8087DBC4 
    swc1    $f6, 0x01B8(s0)            # 000001B8
    lw      t0, 0x0000(a2)             # 00000000
lbl_8087DBA8:
    mtc1    $zero, $f8                 # $f8 = 0.00
    sw      t0, 0x0000(a1)             # 00000000
    lw      t9, 0x0004(a2)             # 00000004
    sw      t9, 0x0004(a1)             # 00000004
    lw      t0, 0x0008(a2)             # 00000008
    sw      t0, 0x0008(a1)             # 00000008
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_8087DBC4:
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    jal     func_8008C9C0              
    sw      a0, 0x0024($sp)            
    beql    v0, $zero, lbl_8087DC38    
    lw      $ra, 0x001C($sp)           
    jal     func_808789D8              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800915CC              
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    lui     $at, %hi(var_808837FC)     # $at = 80880000
    lwc1    $f16, %lo(var_808837FC)($at) 
    lwc1    $f10, 0x0068(s0)           # 00000068
    lw      t1, 0x0148(s0)             # 00000148
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    mul.s   $f18, $f10, $f16           
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    sll     t5, t4,  2                 
    lw      a0, 0x0024($sp)            
    mfc1    a2, $f18                   
    addu    t6, t3, t5                 
    jal     func_8008D278              
    lw      a1, 0x0000(t6)             # 00000000
    lw      $ra, 0x001C($sp)           
lbl_8087DC38:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087DC48:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x000C(a2)             # 0000000C
    addiu   $at, $zero, 0xF7FF         # $at = FFFFF7FF
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    mtc1    t6, $f4                    # $f4 = 0.00
    lhu     t6, 0x0374(s0)             # 00000374
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    cvt.s.w $f6, $f4                   
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    swc1    $f6, 0x0024(s0)            # 00000024
    lw      t7, 0x0010(a2)             # 00000010
    lw      t0, 0x0024(s0)             # 00000024
    mtc1    t7, $f8                    # $f8 = 0.00
    andi    t7, t6, 0xFFFB             # t7 = 00000000
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(s0)           # 00000028
    lw      t8, 0x0014(a2)             # 00000014
    sw      t0, 0x0100(s0)             # 00000100
    lw      t9, 0x0028(s0)             # 00000028
    mtc1    t8, $f16                   # $f16 = 0.00
    lw      t8, 0x01E0(s0)             # 000001E0
    sw      t9, 0x0104(s0)             # 00000104
    cvt.s.w $f18, $f16                 
    and     t9, t8, $at                
    swc1    $f18, 0x002C(s0)           # 0000002C
    lw      t0, 0x002C(s0)             # 0000002C
    sw      t0, 0x0108(s0)             # 00000108
    lhu     t1, 0x0008(a2)             # 00000008
    sw      t4, 0x0200(s0)             # 00000200
    sw      t5, 0x0370(s0)             # 00000370
    sh      t1, 0x0032(s0)             # 00000032
    lwl     t3, 0x0030(s0)             # 00000030
    lwr     t3, 0x0033(s0)             # 00000033
    lw      t1, 0x0218(s0)             # 00000218
    sh      t7, 0x0374(s0)             # 00000374
    swl     t3, 0x00B4(s0)             # 000000B4
    swr     t3, 0x00B7(s0)             # 000000B7
    lhu     t3, 0x0034(s0)             # 00000034
    sw      t9, 0x01E0(s0)             # 000001E0
    lui     t4, 0x8010                 # t4 = 80100000
    sh      t3, 0x00B8(s0)             # 000000B8
    sw      t1, 0x0000(a1)             # 0000020C
    lw      t0, 0x021C(s0)             # 0000021C
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      t0, 0x0004(a1)             # 00000210
    lw      t1, 0x0220(s0)             # 00000220
    sw      t1, 0x0008(a1)             # 00000214
    lw      t2, 0x01E0(s0)             # 000001E0
    sll     t3, t2,  4                 
    bgezl   t3, lbl_8087DD44           
    lw      t5, 0x0148(s0)             # 00000148
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t4, 0x0014($sp)            
    lw      t5, 0x0148(s0)             # 00000148
lbl_8087DD44:
    lui     t7, %hi(var_80882D88)      # t7 = 80880000
    lw      t8, 0x0200(s0)             # 00000200
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, %lo(var_80882D88)(t7)  
    sll     t9, t8,  2                 
    addu    t0, t7, t9                 
    jal     func_8008A194              
    lw      a0, 0x0000(t0)             # 00000000
    lw      t1, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sll     t2, t1,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    cvt.s.w $f6, $f4                   
    sll     t5, t4,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t6, t3, t5                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t6)             # 00000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8087DDD0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    sw      a2, 0x0040($sp)            
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    lwc1    $f8, 0x0204(s0)            # 00000204
    mtc1    $zero, $f4                 # $f4 = 0.00
    c.lt.s  $f6, $f8                   
    swc1    $f4, 0x0068(s0)            # 00000068
    bc1fl   lbl_8087DE48               
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lw      v0, 0x01E0(s0)             # 000001E0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t6, v0, 0x0800             # t6 = 00000000
    bne     t6, $zero, lbl_8087DE44    
    ori     t7, v0, 0x0800             # t7 = 00000800
    lui     t8, 0x8010                 # t8 = 80100000
    sw      t7, 0x01E0(s0)             # 000001E0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x282B          # a0 = 0000282B
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_8087DE44:
    addiu   a0, s0, 0x019C             # a0 = 0000019C
lbl_8087DE48:
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    beql    v0, $zero, lbl_8087DF68    
    lw      $ra, 0x002C($sp)           
    lhu     v0, 0x0374(s0)             # 00000374
    sw      $zero, 0x0200(s0)          # 00000200
    andi    t9, v0, 0x0004             # t9 = 00000000
    bne     t9, $zero, lbl_8087DEF0    
    ori     t0, v0, 0x0004             # t0 = 00000004
    lw      t1, 0x0148(s0)             # 00000148
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    sh      t0, 0x0374(s0)             # 00000374
    sll     t2, t1,  2                 
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    sll     t5, $zero,  2              
    addu    t6, t3, t5                 
    jal     func_8008A194              
    lw      a0, 0x0000(t6)             # 00000000
    lw      t7, 0x0148(s0)             # 00000148
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     t9, %hi(var_80882D88)      # t9 = 80880000
    sll     t8, t7,  2                 
    lw      t0, 0x0200(s0)             # 00000200
    addu    t9, t9, t8                 
    lw      t9, %lo(var_80882D88)(t9)  
    cvt.s.w $f16, $f10                 
    sll     t1, t0,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t2, t9, t1                 
    mtc1    $at, $f18                  # $f18 = -3.00
    lw      a1, 0x0000(t2)             # 00000000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sw      t4, 0x0014($sp)            
    swc1    $f16, 0x0010($sp)          
    lw      a0, 0x0030($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    beq     $zero, $zero, lbl_8087DF68 
    lw      $ra, 0x002C($sp)           
lbl_8087DEF0:
    lw      t3, 0x0148(s0)             # 00000148
    lui     t6, %hi(var_80882D88)      # t6 = 80880000
    lw      t7, 0x0200(s0)             # 00000200
    sll     t5, t3,  2                 
    addu    t6, t6, t5                 
    lw      t6, %lo(var_80882D88)(t6)  
    sll     t8, t7,  2                 
    addu    t0, t6, t8                 
    jal     func_8008A194              
    lw      a0, 0x0000(t0)             # 00000000
    lw      t9, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t2, %hi(var_80882D88)      # t2 = 80880000
    sll     t1, t9,  2                 
    lw      t4, 0x0200(s0)             # 00000200
    addu    t2, t2, t1                 
    lw      t2, %lo(var_80882D88)(t2)  
    cvt.s.w $f6, $f4                   
    sll     t3, t4,  2                 
    addu    t5, t2, t3                 
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      a1, 0x0000(t5)             # 00000000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    lw      a0, 0x0030($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
lbl_8087DF68:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087DF78:
    sw      a1, 0x0004($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0011          # t6 = 00000011
    sw      $zero, 0x01FC(a0)          # 000001FC
    sw      t6, 0x013C(a0)             # 0000013C
    sw      $zero, 0x0370(a0)          # 00000370
    swc1    $f4, 0x0068(a0)            # 00000068
    jr      $ra                        
    nop


func_8087DF9C:
    lui     a1, %hi(var_80883604)      # a1 = 80880000
    addiu   v0, $zero, 0x0005          # v0 = 00000005
    addiu   a1, a1, %lo(var_80883604)  # a1 = 80883604
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8087DFAC:
    lw      a2, 0x0000(a1)             # 80883604
    addiu   v1, v1, 0x0001             # v1 = 00000001
    bne     a0, a2, lbl_8087DFC4       
    slt     $at, a0, a2                
    jr      $ra                        
    lw      v0, 0x0004(a1)             # 80883608
lbl_8087DFC4:
    beql    $at, $zero, lbl_8087DFD8   
    slt     $at, v1, v0                
    jr      $ra                        
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8087DFD4:
    slt     $at, v1, v0                
lbl_8087DFD8:
    bne     $at, $zero, lbl_8087DFAC   
    addiu   a1, a1, 0x0008             # a1 = 8088360C
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_8087DFEC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a2, 0x1D88(a1)             # 00001D88
    bne     t6, $at, lbl_8087E030      
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sw      t7, 0x01FC(a3)             # 000001FC
    sh      t8, 0x001C(a3)             # 0000001C
    sw      t9, 0x013C(a3)             # 0000013C
    jal     func_808797E0              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087E138 
    lw      $ra, 0x0014($sp)           
lbl_8087E030:
    beql    a2, $zero, lbl_8087E138    
    lw      $ra, 0x0014($sp)           
    lhu     a0, 0x0000(a2)             # 00000000
    sw      a3, 0x0020($sp)            
    sw      a2, 0x0018($sp)            
    jal     func_8087DF9C              
    sw      a1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    lw      a2, 0x0018($sp)            
    lw      a3, 0x0020($sp)            
    beq     v0, $zero, lbl_8087E134    
    or      t0, v0, $zero              # t0 = 00000000
    lw      v1, 0x0370(a3)             # 00000370
    or      a0, a3, $zero              # a0 = 00000000
    sll     t9, t0,  2                 
    beq     v0, v1, lbl_8087E118       
    lui     $at, %hi(var_808835D4)     # $at = 80880000
    bne     v1, $zero, lbl_8087E0F0    
    addu    $at, $at, t9               
    lw      t1, 0x000C(a2)             # 0000000C
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0024(a3)            # 00000024
    lw      t2, 0x0010(a2)             # 00000010
    lw      t8, 0x0024(a3)             # 00000024
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(a3)           # 00000028
    lw      t3, 0x0014(a2)             # 00000014
    lw      t7, 0x0028(a3)             # 00000028
    mtc1    t3, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(a3)           # 0000002C
    lhu     t4, 0x0008(a2)             # 00000008
    sw      t8, 0x0100(a3)             # 00000100
    lw      t8, 0x002C(a3)             # 0000002C
    sh      t4, 0x0032(a3)             # 00000032
    lwl     t6, 0x0030(a3)             # 00000030
    lwr     t6, 0x0033(a3)             # 00000033
    sw      t7, 0x0104(a3)             # 00000104
    sw      t8, 0x0108(a3)             # 00000108
    swl     t6, 0x00B4(a3)             # 000000B4
    swr     t6, 0x00B7(a3)             # 000000B7
    lhu     t6, 0x0034(a3)             # 00000034
    sh      t6, 0x00B8(a3)             # 000000B8
lbl_8087E0F0:
    sw      t0, 0x0370(a3)             # 00000370
    lw      t9, %lo(var_808835D4)($at) 
    sw      a3, 0x0020($sp)            
    sw      a2, 0x0018($sp)            
    jalr    $ra, t9                    
    sw      a1, 0x0024($sp)            
    lw      a3, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    lw      a2, 0x0018($sp)            
    lw      v1, 0x0370(a3)             # 00000370
lbl_8087E118:
    sll     t1, v1,  2                 
    lui     t9, %hi(var_808835EC)      # t9 = 80880000
    addu    t9, t9, t1                 
    lw      t9, %lo(var_808835EC)(t9)  
    or      a0, a3, $zero              # a0 = 00000000
    jalr    $ra, t9                    
    nop
lbl_8087E134:
    lw      $ra, 0x0014($sp)           
lbl_8087E138:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8087E144:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x004C($sp)            
    lw      a0, 0x0004(s1)             # 00000004
    lw      a1, 0x01F4(s0)             # 000001F4
    jal     func_80878490              
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFF4
    lw      t7, 0x01F4(s0)             # 000001F4
    lw      t6, 0x0004(s1)             # 00000004
    addiu   t0, $sp, 0x0030            # t0 = FFFFFFE8
    sll     t8, t7,  2                 
    addu    t8, t8, t7                 
    sll     t8, t8,  1                 
    addu    t9, t6, t8                 
    lh      a1, 0x0008(t9)             # 00000008
    sw      t0, 0x0010($sp)            
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFF4
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFF0
    jal     func_800A6750              
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFEC
    lw      t2, 0x0000(s1)             # 00000000
    lw      t1, 0x01F4(s0)             # 000001F4
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFF4
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    slt     $at, t1, t3                
    bnel    $at, $zero, lbl_8087E200   
    lwc1    $f8, 0x0024(s0)            # 00000024
    jal     func_800A5560              
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    lh      t5, 0x0564(t4)             # 80120564
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_8087E200               
    lwc1    $f8, 0x0024(s0)            # 00000024
    lw      t7, 0x0394(s0)             # 00000394
    ori     t6, t7, 0x0002             # t6 = 00000002
    sw      t6, 0x0394(s0)             # 00000394
    lwc1    $f8, 0x0024(s0)            # 00000024
lbl_8087E200:
    lwc1    $f10, 0x0038($sp)          
    lwc1    $f18, 0x0034($sp)          
    lwc1    $f4, 0x002C(s0)            # 0000002C
    mul.s   $f16, $f8, $f10            
    lwc1    $f10, 0x0030($sp)          
    mtc1    $zero, $f2                 # $f2 = 0.00
    mul.s   $f6, $f18, $f4             
    add.s   $f8, $f16, $f6             
    add.s   $f18, $f8, $f10            
    c.lt.s  $f2, $f18                  
    nop
    bc1fl   lbl_8087E268               
    lw      t4, 0x0394(s0)             # 00000394
    lw      t8, 0x01F4(s0)             # 000001F4
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x01F4(s0)             # 000001F4
    lw      t2, 0x0000(s1)             # 00000000
    slt     $at, t9, t2                
    bnel    $at, $zero, lbl_8087E268   
    lw      t4, 0x0394(s0)             # 00000394
    lw      t1, 0x0394(s0)             # 00000394
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ori     t3, t1, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_8087E320 
    sw      t3, 0x0394(s0)             # 00000394
    lw      t4, 0x0394(s0)             # 00000394
lbl_8087E268:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)            
    andi    t5, t4, 0x0001             # t5 = 00000000
    bne     t5, $zero, lbl_8087E28C    
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFF4
    jal     func_808784E4              
    addiu   a3, $zero, 0x0320          # a3 = 00000320
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
lbl_8087E28C:
    lh      t7, 0x0032(s0)             # 00000032
    lw      t8, 0x01F4(s0)             # 000001F4
    lwc1    $f0, 0x0068(s0)            # 00000068
    sh      t7, 0x00B6(s0)             # 000000B6
    lw      t6, 0x0004(s1)             # 00000004
    sll     t9, t8,  2                 
    addu    t9, t9, t8                 
    sll     t9, t9,  1                 
    addu    t0, t6, t9                 
    lh      t2, 0x0006(t0)             # 00000006
    lui     $at, %hi(var_80883804)     # $at = 80880000
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f16, $f4                  
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_8087E2FC               
    nop
    lw      t1, 0x0394(s0)             # 00000394
    andi    t3, t1, 0x0001             # t3 = 00000000
    bne     t3, $zero, lbl_8087E2FC    
    nop
    lui     $at, %hi(var_80883800)     # $at = 80880000
    lwc1    $f6, %lo(var_80883800)($at) 
    add.s   $f8, $f0, $f6              
    beq     $zero, $zero, lbl_8087E320 
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_8087E2FC:
    lwc1    $f10, %lo(var_80883804)($at) 
    sub.s   $f18, $f0, $f10            
    swc1    $f18, 0x0068(s0)           # 00000068
    lwc1    $f4, 0x0068(s0)            # 00000068
    c.lt.s  $f4, $f2                   
    nop
    bc1f    lbl_8087E320               
    nop
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_8087E320:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_8087E334:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      $zero, 0x0390(a0)          # 00000390
    sw      $zero, 0x0208(a0)          # 00000208
    sw      $zero, 0x01F4(a0)          # 000001F4
    sw      $zero, 0x0398(a0)          # 00000398
    jal     func_8087E368              
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087E368:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lwc1    $f0, 0x0068(s0)            # 00000068
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    or      v1, $zero, $zero           # v1 = 00000000
    c.eq.s  $f4, $f0                   
    sw      t6, 0x013C(s0)             # 0000013C
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    bc1f    lbl_8087E3BC               
    lui     $at, 0x4040                # $at = 40400000
    lw      t7, 0x0200(s0)             # 00000200
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    beq     t7, $zero, lbl_8087E3B4    
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8087E3B4:
    beq     $zero, $zero, lbl_8087E448 
    sw      $zero, 0x0200(s0)          # 00000200
lbl_8087E3BC:
    mtc1    $at, $f6                   # $f6 = 3.00
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    c.le.s  $f0, $f6                   
    lui     $at, 0x40C0                # $at = 40C00000
    bc1fl   lbl_8087E3F8               
    mtc1    $at, $f8                   # $f8 = 6.00
    lw      t8, 0x0200(s0)             # 00000200
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    beq     a0, t8, lbl_8087E3EC       
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8087E3EC:
    beq     $zero, $zero, lbl_8087E448 
    sw      a0, 0x0200(s0)             # 00000200
    mtc1    $at, $f8                   # $f8 = 6.00
lbl_8087E3F8:
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    c.le.s  $f0, $f8                   
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    bc1fl   lbl_8087E434               
    lw      t0, 0x0200(s0)             # 00000200
    lw      t9, 0x0200(s0)             # 00000200
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    beq     a1, t9, lbl_8087E428       
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8087E428:
    beq     $zero, $zero, lbl_8087E448 
    sw      a1, 0x0200(s0)             # 00000200
    lw      t0, 0x0200(s0)             # 00000200
lbl_8087E434:
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    beql    a2, t0, lbl_8087E448       
    sw      a2, 0x0200(s0)             # 00000200
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sw      a2, 0x0200(s0)             # 00000200
lbl_8087E448:
    lw      v0, 0x0200(s0)             # 00000200
    lui     $at, 0x3F00                # $at = 3F000000
    bne     a0, v0, lbl_8087E470       
    nop
    lwc1    $f10, 0x0068(s0)           # 00000068
    mtc1    $at, $f16                  # $f16 = 0.50
    nop
    mul.s   $f18, $f10, $f16           
    beq     $zero, $zero, lbl_8087E548 
    swc1    $f18, 0x0030($sp)          
lbl_8087E470:
    bne     a1, v0, lbl_8087E4D4       
    lui     a3, 0x8010                 # a3 = 80100000
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    lwc1    $f4, 0x0068(s0)            # 00000068
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    mul.s   $f8, $f4, $f6              
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    sw      t1, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    sw      v1, 0x0034($sp)            
    addiu   a0, $zero, 0x2804          # a0 = 00002804
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    swc1    $f8, 0x0030($sp)           
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800915CC              
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    lw      v1, 0x0034($sp)            
    beq     $zero, $zero, lbl_8087E548 
    lw      v0, 0x0200(s0)             # 00000200
lbl_8087E4D4:
    bne     a2, v0, lbl_8087E53C       
    lui     $at, 0x3F80                # $at = 3F800000
    lui     $at, %hi(var_80883808)     # $at = 80880000
    lwc1    $f16, %lo(var_80883808)($at) 
    lwc1    $f10, 0x0068(s0)           # 00000068
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t2, 0x8010                 # t2 = 80100000
    mul.s   $f18, $f10, $f16           
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    sw      t2, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    sw      v1, 0x0034($sp)            
    addiu   a0, $zero, 0x2804          # a0 = 00002804
    swc1    $f18, 0x0030($sp)          
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800915CC              
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    lw      v1, 0x0034($sp)            
    beq     $zero, $zero, lbl_8087E548 
    lw      v0, 0x0200(s0)             # 00000200
lbl_8087E53C:
    mtc1    $at, $f4                   # $f4 = 0.00
    nop
    swc1    $f4, 0x0030($sp)           
lbl_8087E548:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v1, $at, lbl_8087E5FC      
    lw      t3, 0x0148(s0)             # 00000148
    lw      t3, 0x0148(s0)             # 00000148
    lui     t5, %hi(var_80882D88)      # t5 = 80880000
    sll     t6, v0,  2                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    lw      t5, %lo(var_80882D88)(t5)  
    addu    t7, t5, t6                 
    jal     func_8008A194              
    lw      a0, 0x0000(t7)             # 00000000
    lw      v1, 0x0200(s0)             # 00000200
    lui     $at, %hi(var_80882D90)     # $at = 80880000
    lwc1    $f8, 0x0030($sp)           
    sll     v1, v1,  2                 
    addu    $at, $at, v1               
    lwc1    $f6, %lo(var_80882D90)($at) 
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    mul.s   $f10, $f6, $f8             
    lw      t8, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    mul.s   $f18, $f10, $f16           
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    addu    t1, t0, v1                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t1)             # 00000000
    cvt.s.w $f6, $f4                   
    mfc1    a2, $f18                   
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    mfc1    a3, $f0                    
    sw      t2, 0x0014($sp)            
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    swc1    $f6, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    beq     $zero, $zero, lbl_8087E690 
    lw      $ra, 0x002C($sp)           
    lw      t3, 0x0148(s0)             # 00000148
lbl_8087E5FC:
    lui     t5, %hi(var_80882D88)      # t5 = 80880000
    sll     t6, v0,  2                 
    sll     t4, t3,  2                 
    addu    t5, t5, t4                 
    lw      t5, %lo(var_80882D88)(t5)  
    addu    t7, t5, t6                 
    jal     func_8008A194              
    lw      a0, 0x0000(t7)             # 00000000
    lw      v1, 0x0200(s0)             # 00000200
    lui     $at, %hi(var_80882D90)     # $at = 80880000
    lwc1    $f16, 0x0030($sp)          
    sll     v1, v1,  2                 
    addu    $at, $at, v1               
    lwc1    $f10, %lo(var_80882D90)($at) 
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    mul.s   $f18, $f10, $f16           
    lw      t8, 0x0148(s0)             # 00000148
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    mul.s   $f6, $f18, $f4             
    mtc1    $zero, $f0                 # $f0 = 0.00
    addu    t1, t0, v1                 
    lw      a1, 0x0000(t1)             # 00000000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    mfc1    a3, $f0                    
    cvt.s.w $f10, $f8                  
    mfc1    a2, $f6                    
    sw      t2, 0x0014($sp)            
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    swc1    $f0, 0x0018($sp)           
    jal     func_8008D17C              
    swc1    $f10, 0x0010($sp)          
    lw      $ra, 0x002C($sp)           
lbl_8087E690:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8087E6A0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0200(a3)             # 00000200
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     t6, $at, lbl_8087E6D0      
    or      a0, a3, $zero              # a0 = 00000000
    sw      a1, 0x002C($sp)            
    jal     func_808788D4              
    sw      a3, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    lw      a3, 0x0028($sp)            
lbl_8087E6D0:
    lui     $at, 0x0001                # $at = 00010000
    addu    t0, a1, $at                
    lhu     t7, 0x072E(t0)             # 0000072E
    addiu   a0, $zero, 0x0041          # a0 = 00000041
    bnel    t7, $zero, lbl_8087E6F8    
    sw      a1, 0x002C($sp)            
    lw      t8, 0x0398(a3)             # 00000398
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0398(a3)             # 00000398
    sw      a1, 0x002C($sp)            
lbl_8087E6F8:
    sw      a3, 0x0028($sp)            
    jal     func_800C67AC              
    sw      t0, 0x001C($sp)            
    lui     a2, %hi(var_80883660)      # a2 = 80880000
    lw      a1, 0x002C($sp)            
    lw      a0, 0x0028($sp)            
    sw      v0, 0x0020($sp)            
    jal     func_8087E144              
    addiu   a2, a2, %lo(var_80883660)  # a2 = 80883660
    lw      a3, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    lw      t0, 0x001C($sp)            
    lw      v1, 0x0394(a3)             # 00000394
    lw      t3, 0x0020($sp)            
    andi    t1, v1, 0x0001             # t1 = 00000000
    bnel    t1, $zero, lbl_8087E74C    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t2, 0x0398(a3)             # 00000398
    slti    $at, t2, 0x002E            
    bne     $at, $zero, lbl_8087E79C   
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_8087E74C:
    beq     t3, $at, lbl_8087E79C      
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lhu     t4, 0x1404(a0)             # 8011B9D4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   t5, $zero, 0x03B0          # t5 = 000003B0
    beq     t4, $at, lbl_8087E79C      
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    lui     $at, 0x0001                # $at = 00010000
    sw      $zero, 0x0008(a0)          # 8011A5D8
    addu    $at, $at, a1               
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    sb      t6, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1               
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sb      t7, 0x1E5E($at)            # 00011E5E
    lw      v1, 0x0394(a3)             # 00000394
lbl_8087E79C:
    lhu     v0, 0x072E(t0)             # 0000072E
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    beq     v0, $zero, lbl_8087E80C    
    andi    t8, v1, 0x0002             # t8 = 00000000
    bne     t8, $zero, lbl_8087E80C    
    nop
    lhu     t9, 0x0F2A(a0)             # 8011B4FA
    andi    t1, t9, 0x0001             # t1 = 00000000
    beql    t1, $zero, lbl_8087E7F0    
    lhu     t4, 0x1406(a0)             # 8011B9D6
    lhu     t2, 0x1406(a0)             # 8011B9D6
    ori     t3, v1, 0x0004             # t3 = 00000004
    slti    $at, t2, 0x05DC            
    bne     $at, $zero, lbl_8087E80C   
    nop
    sw      t3, 0x0394(a3)             # 00000394
    lhu     v0, 0x072E(t0)             # 0000072E
    beq     $zero, $zero, lbl_8087E80C 
    or      v1, t3, $zero              # v1 = 00000004
    lhu     t4, 0x1406(a0)             # 8011B9D6
lbl_8087E7F0:
    ori     t5, v1, 0x0004             # t5 = 00000004
    slti    $at, t4, 0x03E8            
    bne     $at, $zero, lbl_8087E80C   
    nop
    sw      t5, 0x0394(a3)             # 00000394
    lhu     v0, 0x072E(t0)             # 0000072E
    or      v1, t5, $zero              # v1 = 00000004
lbl_8087E80C:
    beq     v0, $zero, lbl_8087E818    
    andi    t6, v1, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_8087E83C    
lbl_8087E818:
    andi    t7, v1, 0x0004             # t7 = 00000004
    beq     t7, $zero, lbl_8087E83C    
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    and     t8, v1, $at                
    sw      t8, 0x0394(a3)             # 00000394
    sw      a3, 0x0028($sp)            
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0041          # a0 = 00000041
    lw      a3, 0x0028($sp)            
lbl_8087E83C:
    lw      t9, 0x0390(a3)             # 00000390
    bnel    t9, $zero, lbl_8087E86C    
    lw      v0, 0x0200(a3)             # 00000200
    lw      t1, 0x0200(a3)             # 00000200
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, a3, $zero              # a0 = 00000000
    beq     t1, $zero, lbl_8087E868    
    swc1    $f4, 0x0068(a3)            # 00000068
    jal     func_8087E368              
    sw      a3, 0x0028($sp)            
    lw      a3, 0x0028($sp)            
lbl_8087E868:
    lw      v0, 0x0200(a3)             # 00000200
lbl_8087E86C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   a0, a3, 0x019C             # a0 = 0000019C
    bne     v0, $at, lbl_8087E890      
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lwc1    $f6, 0x0068(a3)            # 00000068
    mul.s   $f0, $f6, $f8              
    beq     $zero, $zero, lbl_8087E8E0 
    swc1    $f0, 0x01B8(a3)            # 000001B8
lbl_8087E890:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_8087E8B0      
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f16                  # $f16 = 0.25
    lwc1    $f10, 0x0068(a3)           # 00000068
    mul.s   $f0, $f10, $f16            
    beq     $zero, $zero, lbl_8087E8E0 
    swc1    $f0, 0x01B8(a3)            # 000001B8
lbl_8087E8B0:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_8087E8D0      
    lui     $at, %hi(var_8088380C)     # $at = 80880000
    lwc1    $f4, %lo(var_8088380C)($at) 
    lwc1    $f18, 0x0068(a3)           # 00000068
    mul.s   $f0, $f18, $f4             
    beq     $zero, $zero, lbl_8087E8E0 
    swc1    $f0, 0x01B8(a3)            # 000001B8
lbl_8087E8D0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
    swc1    $f0, 0x01B8(a3)            # 000001B8
lbl_8087E8E0:
    jal     func_8008C9C0              
    sw      a3, 0x0028($sp)            
    bne     v0, $zero, lbl_8087E914    
    lw      a3, 0x0028($sp)            
    lw      t2, 0x0200(a3)             # 00000200
    bnel    t2, $zero, lbl_8087E920    
    lw      $ra, 0x0014($sp)           
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f8, 0x0068(a3)            # 00000068
    c.eq.s  $f6, $f8                   
    nop
    bc1tl   lbl_8087E920               
    lw      $ra, 0x0014($sp)           
lbl_8087E914:
    jal     func_8087E368              
    or      a0, a3, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_8087E920:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8087E92C:
    lw      t7, 0x01E0(a0)             # 000001E0
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addiu   t6, $zero, 0x0013          # t6 = 00000013
    or      t8, t7, $at                # t8 = 00010000
    sw      t6, 0x013C(a0)             # 0000013C
    sw      t8, 0x01E0(a0)             # 000001E0
    swc1    $f4, 0x0068(a0)            # 00000068
    jr      $ra                        
    nop


func_8087E954:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0064($sp)            
    lw      t6, 0x0064($sp)            
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x005C($sp)            
    lh      t9, 0x05BE(t8)             # 801205BE
    bne     t9, $zero, lbl_8087E998    
    nop
    lw      t0, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t0, $at, lbl_8087E9CC      
    addiu   a0, s0, 0x0008             # a0 = 00000008
lbl_8087E998:
    jal     func_8087C2CC              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    sw      t1, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a0, s0, 0x0008             # a0 = 00000008
lbl_8087E9CC:
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sw      a1, 0x0034($sp)            
    jal     func_800A5560              
    sw      a0, 0x0038($sp)            
    lw      a0, 0x005C($sp)            
    swc1    $f0, 0x0058($sp)           
    lw      a1, 0x0038($sp)            
    addiu   a0, a0, 0x0024             # a0 = 00000024
    jal     func_800A5560              
    sw      a0, 0x0030($sp)            
    lw      a0, 0x0030($sp)            
    swc1    $f0, 0x0054($sp)           
    jal     func_800A5560              
    lw      a1, 0x0034($sp)            
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f12                  # $f12 = 300.00
    lwc1    $f4, 0x0054($sp)           
    lui     $at, 0x4316                # $at = 43160000
    lwc1    $f8, 0x0058($sp)           
    c.lt.s  $f12, $f4                  
    nop
    bc1fl   lbl_8087EABC               
    c.lt.s  $f0, $f12                  
    mtc1    $at, $f6                   # $f6 = 150.00
    lui     $at, %hi(var_80883814)     # $at = 80880000
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_8087EA80               
    lwc1    $f4, 0x0068(s0)            # 00000068
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f2                   # $f2 = 8.00
    lui     $at, %hi(var_80883810)     # $at = 80880000
    lwc1    $f16, %lo(var_80883810)($at) 
    lwc1    $f10, 0x0068(s0)           # 00000068
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0068(s0)           # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_8087EB40               
    lui     $at, 0x40C0                # $at = 40C00000
    swc1    $f2, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_8087EB3C 
    lwc1    $f0, 0x0068(s0)            # 00000068
    lwc1    $f4, 0x0068(s0)            # 00000068
lbl_8087EA80:
    lwc1    $f6, %lo(var_80883814)($at) 
    mtc1    $zero, $f10                # $f10 = 0.00
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_8087EB40               
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
    swc1    $f16, 0x0068(s0)           # 00000068
    beq     $zero, $zero, lbl_8087EB3C 
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f12                  
lbl_8087EABC:
    lui     $at, %hi(var_8088381C)     # $at = 80880000
    bc1fl   lbl_8087EB08               
    lwc1    $f8, 0x0068(s0)            # 00000068
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f2                   # $f2 = 8.00
    lui     $at, %hi(var_80883818)     # $at = 80880000
    lwc1    $f4, %lo(var_80883818)($at) 
    lwc1    $f18, 0x0068(s0)           # 00000068
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_8087EB40               
    lui     $at, 0x40C0                # $at = 40C00000
    swc1    $f2, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_8087EB3C 
    lwc1    $f0, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x0068(s0)            # 00000068
lbl_8087EB08:
    lwc1    $f10, %lo(var_8088381C)($at) 
    mtc1    $zero, $f18                # $f18 = 0.00
    sub.s   $f16, $f8, $f10            
    swc1    $f16, 0x0068(s0)           # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_8087EB40               
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
lbl_8087EB3C:
    lui     $at, 0x40C0                # $at = 40C00000
lbl_8087EB40:
    mtc1    $at, $f6                   # $f6 = 6.00
    lui     $at, 0x4040                # $at = 40400000
    c.le.s  $f6, $f0                   
    nop
    bc1fl   lbl_8087EB74               
    mtc1    $at, $f16                  # $f16 = 3.00
    lui     $at, %hi(var_80883820)     # $at = 80880000
    lwc1    $f8, %lo(var_80883820)($at) 
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    mul.s   $f10, $f0, $f8             
    beq     $zero, $zero, lbl_8087EC34 
    swc1    $f10, 0x01B8(s0)           # 000001B8
    mtc1    $at, $f16                  # $f16 = 0.00
lbl_8087EB74:
    lui     $at, %hi(var_80883824)     # $at = 80880000
    c.le.s  $f16, $f0                  
    nop
    bc1f    lbl_8087EBA0               
    nop
    lui     $at, 0x3EC0                # $at = 3EC00000
    mtc1    $at, $f18                  # $f18 = 0.38
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mul.s   $f4, $f0, $f18             
    beq     $zero, $zero, lbl_8087EC34 
    swc1    $f4, 0x01B8(s0)            # 000001B8
lbl_8087EBA0:
    lwc1    $f6, %lo(var_80883824)($at) 
    lui     $at, 0x3F40                # $at = 3F400000
    c.lt.s  $f6, $f0                   
    nop
    bc1f    lbl_8087EBE4               
    nop
    mtc1    $at, $f8                   # $f8 = 0.75
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f10, $f0, $f8             
    swc1    $f10, 0x01B8(s0)           # 000001B8
    jal     func_808788D4              
    sw      a2, 0x004C($sp)            
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f12                  # $f12 = 300.00
    beq     $zero, $zero, lbl_8087EC34 
    lw      a2, 0x004C($sp)            
lbl_8087EBE4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f16, $f0                  
    lw      a1, 0x0064($sp)            
    bc1f    lbl_8087EC14               
    nop
    beq     $zero, $zero, lbl_8087EC14 
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_8087EC14:
    jal     func_80878B80              
    sw      a2, 0x004C($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, 0x4396                # $at = 43960000
    lw      a2, 0x004C($sp)            
    mtc1    $at, $f12                  # $f12 = 300.00
    swc1    $f18, 0x01B8(s0)           # 000001B8
lbl_8087EC34:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     a2, $at, lbl_8087EC54      
    lwc1    $f4, 0x0054($sp)           
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     a2, $at, lbl_8087EC54      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    a2, $at, lbl_8087ED0C      
    addiu   a0, s0, 0x019C             # a0 = 0000019C
lbl_8087EC54:
    c.lt.s  $f4, $f12                  
    lw      a0, 0x0034($sp)            
    lw      a1, 0x0038($sp)            
    bc1f    lbl_8087ECB4               
    nop
    lw      a1, 0x005C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lh      v1, 0x00B6(a1)             # 000000B6
    sw      a2, 0x004C($sp)            
    jal     func_800213B4              
    sh      v1, 0x0046($sp)            
    lh      v1, 0x0046($sp)            
    blez    v0, lbl_8087EC94           
    lw      a2, 0x004C($sp)            
    beq     $zero, $zero, lbl_8087EC98 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8087EC94:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8087EC98:
    sll     t3, v0, 14                 
    subu    t3, t3, v0                 
    addu    v1, v1, t3                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    beq     $zero, $zero, lbl_8087ECD0 
    lh      a0, 0x0032(s0)             # 00000032
lbl_8087ECB4:
    jal     func_80063F00              
    sw      a2, 0x004C($sp)            
    lh      a0, 0x0032(s0)             # 00000032
    lw      a2, 0x004C($sp)            
    subu    v1, v0, a0                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_8087ECD0:
    slti    $at, v1, 0x0191            
    bne     $at, $zero, lbl_8087ECE4   
    addiu   t4, a0, 0x0190             # t4 = 00000190
    beq     $zero, $zero, lbl_8087ED00 
    sh      t4, 0x0032(s0)             # 00000032
lbl_8087ECE4:
    slti    $at, v1, 0xFE70            
    beq     $at, $zero, lbl_8087ECFC   
    addu    t6, a0, v1                 
    addiu   t5, a0, 0xFE70             # t5 = FFFFFE70
    beq     $zero, $zero, lbl_8087ED00 
    sh      t5, 0x0032(s0)             # 00000032
lbl_8087ECFC:
    sh      t6, 0x0032(s0)             # 00000032
lbl_8087ED00:
    lh      t7, 0x0032(s0)             # 00000032
    sh      t7, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x019C             # a0 = 0000019C
lbl_8087ED0C:
    sw      a0, 0x0034($sp)            
    jal     func_8008C9C0              
    sw      a2, 0x004C($sp)            
    lw      v1, 0x0200(s0)             # 00000200
    lw      a2, 0x004C($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v1, $zero, lbl_8087ED34    
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v1, $at, lbl_8087EE04      
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_8087ED34:
    beq     a2, $at, lbl_8087ED4C      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     a2, $at, lbl_8087ED4C      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a2, $at, lbl_8087EE04      
    nop
lbl_8087ED4C:
    lw      t8, 0x0148(s0)             # 00000148
    lui     t0, %hi(var_80882D88)      # t0 = 80880000
    sw      a2, 0x0200(s0)             # 00000200
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80882D88)(t0)  
    sll     t1, a2,  2                 
    addu    t2, t0, t1                 
    jal     func_8008A194              
    lw      a0, 0x0000(t2)             # 00000000
    lw      t3, 0x0148(s0)             # 00000148
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     t5, %hi(var_80882D88)      # t5 = 80880000
    sll     t4, t3,  2                 
    lw      t6, 0x0200(s0)             # 00000200
    addu    t5, t5, t4                 
    lw      t5, %lo(var_80882D88)(t5)  
    cvt.s.w $f8, $f6                   
    sll     t7, t6,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t8, t5, t7                 
    mtc1    $at, $f10                  # $f10 = -3.00
    lw      a1, 0x0000(t8)             # 00000000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sw      t9, 0x0014($sp)            
    swc1    $f8, 0x0010($sp)           
    lw      a0, 0x0034($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lw      v1, 0x0200(s0)             # 00000200
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v1, $at, lbl_8087EDEC      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    jal     func_808789D8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087F198 
    lw      $ra, 0x002C($sp)           
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_8087EDEC:
    bnel    v1, $at, lbl_8087F198      
    lw      $ra, 0x002C($sp)           
    jal     func_80878990              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8087F198 
    lw      $ra, 0x002C($sp)           
lbl_8087EE04:
    beq     v0, $zero, lbl_8087F100    
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     a2, $at, lbl_8087EE2C      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808789D8              
    sw      a2, 0x004C($sp)            
    lw      a2, 0x004C($sp)            
    beq     $zero, $zero, lbl_8087EE48 
    lw      v1, 0x0200(s0)             # 00000200
lbl_8087EE2C:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a2, $at, lbl_8087EE48      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80878990              
    sw      a2, 0x004C($sp)            
    lw      a2, 0x004C($sp)            
    lw      v1, 0x0200(s0)             # 00000200
lbl_8087EE48:
    beq     v1, $zero, lbl_8087EE58    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_8087EFF8      
    nop
lbl_8087EE58:
    beq     a2, v1, lbl_8087EEE4       
    nop
    lw      t0, 0x0148(s0)             # 00000148
    lui     t2, %hi(var_80882D88)      # t2 = 80880000
    sw      a2, 0x0200(s0)             # 00000200
    sll     t1, t0,  2                 
    addu    t2, t2, t1                 
    lw      t2, %lo(var_80882D88)(t2)  
    sll     t3, a2,  2                 
    addu    t4, t2, t3                 
    jal     func_8008A194              
    lw      a0, 0x0000(t4)             # 00000000
    lw      t6, 0x0148(s0)             # 00000148
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     t7, %hi(var_80882D88)      # t7 = 80880000
    sll     t5, t6,  2                 
    lw      t8, 0x0200(s0)             # 00000200
    addu    t7, t7, t5                 
    lw      t7, %lo(var_80882D88)(t7)  
    cvt.s.w $f18, $f16                 
    sll     t9, t8,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t0, t7, t9                 
    mtc1    $at, $f4                   # $f4 = -3.00
    lw      a1, 0x0000(t0)             # 00000000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t1, 0x0014($sp)            
    swc1    $f18, 0x0010($sp)          
    lw      a0, 0x0034($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    beq     $zero, $zero, lbl_8087F198 
    lw      $ra, 0x002C($sp)           
lbl_8087EEE4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_8087EF24               
    lw      t5, 0x0218(s0)             # 00000218
    lw      t2, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0xEFFF         # $at = FFFFEFFF
    sw      $zero, 0x0200(s0)          # 00000200
    and     t3, t2, $at                
    beq     $zero, $zero, lbl_8087EF74 
    sw      t3, 0x01E0(s0)             # 000001E0
    lw      t5, 0x0218(s0)             # 00000218
lbl_8087EF24:
    sw      t4, 0x0200(s0)             # 00000200
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    sw      t5, 0x0000(a1)             # 0000020C
    lw      t6, 0x021C(s0)             # 0000021C
    lui     t9, 0x8010                 # t9 = 80100000
    lui     t0, 0x8010                 # t0 = 80100000
    sw      t6, 0x0004(a1)             # 00000210
    lw      t5, 0x0220(s0)             # 00000220
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    addiu   a3, t9, 0x43A0             # a3 = 801043A0
    sw      t5, 0x0008(a1)             # 00000214
    lw      t8, 0x01E0(s0)             # 000001E0
    addiu   a0, $zero, 0x2816          # a0 = 00002816
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t7, t8,  4                 
    bgezl   t7, lbl_8087EF78           
    lw      t1, 0x0148(s0)             # 00000148
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t0, 0x0014($sp)            
lbl_8087EF74:
    lw      t1, 0x0148(s0)             # 00000148
lbl_8087EF78:
    lui     t3, %hi(var_80882D88)      # t3 = 80880000
    lw      t4, 0x0200(s0)             # 00000200
    sll     t2, t1,  2                 
    addu    t3, t3, t2                 
    lw      t3, %lo(var_80882D88)(t3)  
    sll     t6, t4,  2                 
    addu    t5, t3, t6                 
    jal     func_8008A194              
    lw      a0, 0x0000(t5)             # 00000000
    lw      t8, 0x0148(s0)             # 00000148
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     t9, %hi(var_80882D88)      # t9 = 80880000
    sll     t7, t8,  2                 
    lw      t0, 0x0200(s0)             # 00000200
    addu    t9, t9, t7                 
    lw      t9, %lo(var_80882D88)(t9)  
    cvt.s.w $f10, $f8                  
    sll     t1, t0,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t2, t9, t1                 
    mtc1    $at, $f16                  # $f16 = -3.00
    lw      a1, 0x0000(t2)             # 00000000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sw      t4, 0x0014($sp)            
    swc1    $f10, 0x0010($sp)          
    lw      a0, 0x0034($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f16, 0x0018($sp)          
    beq     $zero, $zero, lbl_8087F198 
    lw      $ra, 0x002C($sp)           
lbl_8087EFF8:
    beql    a2, v1, lbl_8087F088       
    lw      t5, 0x0148(s0)             # 00000148
    lw      t3, 0x0148(s0)             # 00000148
    lui     t5, %hi(var_80882D88)      # t5 = 80880000
    sw      a2, 0x0200(s0)             # 00000200
    sll     t6, t3,  2                 
    addu    t5, t5, t6                 
    lw      t5, %lo(var_80882D88)(t5)  
    sll     t8, a2,  2                 
    addu    t7, t5, t8                 
    jal     func_8008A194              
    lw      a0, 0x0000(t7)             # 00000000
    lw      t0, 0x0148(s0)             # 00000148
    mtc1    v0, $f18                   # $f18 = 0.00
    lui     t1, %hi(var_80882D88)      # t1 = 80880000
    sll     t9, t0,  2                 
    lw      t2, 0x0200(s0)             # 00000200
    addu    t1, t1, t9                 
    lw      t1, %lo(var_80882D88)(t1)  
    cvt.s.w $f4, $f18                  
    sll     t4, t2,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t3, t1, t4                 
    mtc1    $at, $f6                   # $f6 = -3.00
    lw      a1, 0x0000(t3)             # 00000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    swc1    $f4, 0x0010($sp)           
    lw      a0, 0x0034($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    beq     $zero, $zero, lbl_8087F198 
    lw      $ra, 0x002C($sp)           
    lw      t5, 0x0148(s0)             # 00000148
lbl_8087F088:
    lui     t7, %hi(var_80882D88)      # t7 = 80880000
    sll     t0, v1,  2                 
    sll     t8, t5,  2                 
    addu    t7, t7, t8                 
    lw      t7, %lo(var_80882D88)(t7)  
    addu    t9, t7, t0                 
    jal     func_8008A194              
    lw      a0, 0x0000(t9)             # 00000000
    lw      t2, 0x0148(s0)             # 00000148
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     t4, %hi(var_80882D88)      # t4 = 80880000
    sll     t1, t2,  2                 
    lw      t3, 0x0200(s0)             # 00000200
    addu    t4, t4, t1                 
    lw      t4, %lo(var_80882D88)(t4)  
    cvt.s.w $f10, $f8                  
    mtc1    $zero, $f0                 # $f0 = 0.00
    sll     t6, t3,  2                 
    addu    t5, t4, t6                 
    lw      a1, 0x0000(t5)             # 00000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    swc1    $f10, 0x0010($sp)          
    lw      a0, 0x0034($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    beq     $zero, $zero, lbl_8087F198 
    lw      $ra, 0x002C($sp)           
lbl_8087F100:
    bnel    v1, $at, lbl_8087F198      
    lw      $ra, 0x002C($sp)           
    beq     a2, $zero, lbl_8087F118    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    a2, $at, lbl_8087F198      
    lw      $ra, 0x002C($sp)           
lbl_8087F118:
    lw      t7, 0x0148(s0)             # 00000148
    lui     t9, %hi(var_80882D88)      # t9 = 80880000
    sw      a2, 0x0200(s0)             # 00000200
    sll     t0, t7,  2                 
    addu    t9, t9, t0                 
    lw      t9, %lo(var_80882D88)(t9)  
    sll     t2, a2,  2                 
    addu    t1, t9, t2                 
    jal     func_8008A194              
    lw      a0, 0x0000(t1)             # 00000000
    lw      t3, 0x0148(s0)             # 00000148
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     t6, %hi(var_80882D88)      # t6 = 80880000
    sll     t4, t3,  2                 
    lw      t5, 0x0200(s0)             # 00000200
    addu    t6, t6, t4                 
    lw      t6, %lo(var_80882D88)(t6)  
    cvt.s.w $f18, $f16                 
    sll     t8, t5,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t7, t6, t8                 
    mtc1    $at, $f4                   # $f4 = -3.00
    lw      a1, 0x0000(t7)             # 00000000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sw      t0, 0x0014($sp)            
    swc1    $f18, 0x0010($sp)          
    lw      a0, 0x0034($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
lbl_8087F198:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop


func_8087F1A8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    sw      a2, 0x0034($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8001C54C              
    lui     a1, 0x41C8                 # a1 = 41C80000
    lw      t7, 0x01E0(s0)             # 000001E0
    lw      a2, 0x0034($sp)            
    lw      t0, 0x01BC(s0)             # 000001BC
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    ori     t8, t7, 0x0004             # t8 = 00000004
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t8, 0x01E0(s0)             # 000001E0
    sw      t9, 0x0200(s0)             # 00000200
    lh      t1, 0x0002(t0)             # 00000002
    lw      t3, 0x0000(a2)             # 00000000
    lui     $at, %hi(var_80883828)     # $at = 80880000
    mtc1    t1, $f4                    # $f4 = 0.00
    lwc1    $f6, %lo(var_80883828)($at) 
    sw      t3, 0x03A0(s0)             # 000003A0
    cvt.s.w $f0, $f4                   
    lw      t2, 0x0004(a2)             # 00000004
    lbu     t4, 0x039C(s0)             # 0000039C
    lui     t6, %hi(var_8088350C)      # t6 = 80880000
    sw      t2, 0x03A4(s0)             # 000003A4
    lwc1    $f8, 0x03A4(s0)            # 000003A4
    mul.s   $f0, $f0, $f6              
    lw      t3, 0x0008(a2)             # 00000008
    sll     t5, t4,  2                 
    addu    t5, t5, t4                 
    sll     t5, t5,  2                 
    addiu   t6, t6, %lo(var_8088350C)  # t6 = 8088350C
    addu    v0, t5, t6                 
    add.s   $f10, $f8, $f0             
    sw      t3, 0x03A8(s0)             # 000003A8
    lui     $at, %hi(var_8088382C)     # $at = 80880000
    ori     t9, t8, 0x0008             # t9 = 0000000C
    swc1    $f10, 0x03A4(s0)           # 000003A4
    lh      t7, 0x0010(v0)             # 00000010
    lwc1    $f4, %lo(var_8088382C)($at) 
    lwc1    $f8, 0x03A4(s0)            # 000003A4
    mtc1    t7, $f16                   # $f16 = 0.00
    lui     $at, 0xC3B4                # $at = C3B40000
    sw      t9, 0x01E0(s0)             # 000001E0
    cvt.s.w $f18, $f16                 
    mtc1    $at, $f16                  # $f16 = -360.00
    lui     $at, 0x41F0                # $at = 41F00000
    lh      t0, 0x0032(s0)             # 00000032
    lw      t3, 0x0148(s0)             # 00000148
    lui     t5, %hi(var_80882D88)      # t5 = 80880000
    add.s   $f6, $f18, $f4             
    mtc1    $at, $f4                   # $f4 = 30.00
    sll     t4, t3,  2                 
    lw      t6, 0x0200(s0)             # 00000200
    sub.s   $f10, $f6, $f8             
    lwc1    $f8, 0x024C(s0)            # 0000024C
    addu    t5, t5, t4                 
    sll     t7, t6,  2                 
    sub.s   $f18, $f10, $f16           
    mtc1    $zero, $f16                # $f16 = 0.00
    sub.s   $f10, $f8, $f0             
    div.s   $f6, $f18, $f4             
    swc1    $f10, 0x024C(s0)           # 0000024C
    mtc1    $zero, $f18                # $f18 = 0.00
    swc1    $f6, 0x03B0(s0)            # 000003B0
    lh      t1, 0x000A(v0)             # 0000000A
    sw      $zero, 0x03AC(s0)          # 000003AC
    swc1    $f16, 0x006C(s0)           # 0000006C
    subu    t2, t0, t1                 
    sh      t2, 0x03B4(s0)             # 000003B4
    swc1    $f18, 0x0068(s0)           # 00000068
    lw      t5, %lo(var_80882D88)(t5)  
    addu    t8, t5, t7                 
    jal     func_8008A194              
    lw      a0, 0x0000(t8)             # 00000004
    lw      t9, 0x0148(s0)             # 00000148
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t1, %hi(var_80882D88)      # t1 = 80880000
    sll     t0, t9,  2                 
    lw      t2, 0x0200(s0)             # 00000200
    addu    t1, t1, t0                 
    lw      t1, %lo(var_80882D88)(t1)  
    cvt.s.w $f6, $f4                   
    sll     t3, t2,  2                 
    lui     $at, 0xC040                # $at = C0400000
    addu    t4, t1, t3                 
    mtc1    $at, $f8                   # $f8 = -3.00
    lw      a1, 0x0000(t4)             # 00000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      t7, 0x0218(s0)             # 00000218
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    lui     a3, 0x8010                 # a3 = 80100000
    sw      t7, 0x0000(a1)             # 0000020C
    lw      t5, 0x021C(s0)             # 0000021C
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t5, 0x0004(a1)             # 00000210
    lw      t7, 0x0220(s0)             # 00000220
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    sw      t7, 0x0008(a1)             # 00000214
    lw      t8, 0x01E0(s0)             # 000001E0
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t9, t8,  4                 
    bgez    t9, lbl_8087F38C           
    nop
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t0, 0x0014($sp)            
lbl_8087F38C:
    lui     t2, 0x8010                 # t2 = 80100000
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    addiu   a3, t2, 0x43A0             # a3 = 801043A0
    sw      a3, 0x0010($sp)            
    sw      t1, 0x0014($sp)            
    addiu   a0, $zero, 0x2818          # a0 = 00002818
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00AA          # a1 = 000000AA
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_800915CC              
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    sw      $zero, 0x0234(s0)          # 00000234
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8087F3E0:
    lbu     t7, 0x039C(a0)             # 0000039C
    lui     t6, %hi(func_8087F1A8)     # t6 = 80880000
    addiu   t6, t6, %lo(func_8087F1A8) # t6 = 8087F1A8
    bne     t7, $zero, lbl_8087F440    
    sw      t6, 0x0234(a0)             # 00000234
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x2AC0             # v0 = 02002AC0
    sll     t8, v0,  4                 
    srl     t9, t8, 28                 
    sll     t0, t9,  2                 
    lui     t1, 0x8012                 # t1 = 80120000
    addu    t1, t1, t0                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t1, 0x0C38(t1)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t2, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t1, t2                 
    addu    t4, t3, $at                
    sw      t4, 0x1D68(a1)             # 00001D68
    lui     $at, 0x8012                # $at = 80120000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    jr      $ra                        
    sb      t5, -0x461C($at)           # 8011B9E4
lbl_8087F440:
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x0230             # v0 = 02000230
    sll     t6, v0,  4                 
    srl     t7, t6, 28                 
    sll     t8, t7,  2                 
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0                 
    addu    t2, t1, $at                
    sw      t2, 0x1D68(a1)             # 00001D68
    lui     $at, 0x8012                # $at = 80120000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, -0x461C($at)           # 8011B9E4
    jr      $ra                        
    nop


func_8087F490:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      v0, 0x03AC(a1)             # 000003AC
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    mtc1    v0, $f4                    # $f4 = 0.00
    lbu     t7, 0x039C(a1)             # 0000039C
    lui     t9, %hi(var_8088350C)      # t9 = 80880000
    cvt.s.w $f0, $f4                   
    sll     t8, t7,  2                 
    addu    t8, t8, t7                 
    sll     t8, t8,  2                 
    addiu   t9, t9, %lo(var_8088350C)  # t9 = 8088350C
    addu    v1, t8, t9                 
    div.s   $f14, $f0, $f6             
    lh      t0, 0x000E(v1)             # 0000000E
    multu   v0, v0                     
    lwc1    $f2, 0x03A0(a1)            # 000003A0
    mtc1    t0, $f10                   # $f10 = 0.00
    lwc1    $f12, 0x03A8(a1)           # 000003A8
    lui     $at, %hi(var_80883830)     # $at = 80880000
    cvt.s.w $f18, $f10                 
    lh      t2, 0x03B4(a1)             # 000003B4
    addiu   a0, a1, 0x019C             # a0 = 0000019C
    mflo    t6                         
    mtc1    t6, $f8                    # $f8 = 0.00
    sub.s   $f4, $f18, $f2             
    cvt.s.w $f16, $f8                  
    mul.s   $f6, $f4, $f14             
    add.s   $f8, $f6, $f2              
    swc1    $f8, 0x0024(a1)            # 00000024
    lh      t1, 0x0012(v1)             # 00000012
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10                 
    lwc1    $f10, 0x03A4(a1)           # 000003A4
    sub.s   $f4, $f18, $f12            
    lwc1    $f18, 0x03B0(a1)           # 000003B0
    mul.s   $f6, $f4, $f14             
    add.s   $f8, $f6, $f12             
    mul.s   $f4, $f18, $f0             
    swc1    $f8, 0x002C(a1)            # 0000002C
    lwc1    $f8, %lo(var_80883830)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f18, $f8, $f16            
    add.s   $f6, $f10, $f4             
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x41B8                # $at = 41B80000
    sub.s   $f8, $f4, $f14             
    add.s   $f10, $f6, $f18            
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f18, $f6                  
    swc1    $f10, 0x0028(a1)           # 00000028
    lh      t3, 0x000A(v1)             # 0000000A
    mtc1    t3, $f4                    # $f4 = 0.00
    mul.s   $f10, $f8, $f18            
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f4                   # $f4 = 23.00
    add.s   $f8, $f6, $f10             
    mul.s   $f6, $f4, $f14             
    trunc.w.s $f18, $f8                  
    swc1    $f6, 0x01B4(a1)            # 000001B4
    mfc1    a2, $f18                   
    nop
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sh      a2, 0x00B6(a1)             # 000000B6
    sh      a2, 0x0032(a1)             # 00000032
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    lw      t5, 0x03AC(a1)             # 000003AC
    slti    $at, t5, 0x001E            
    beql    $at, $zero, lbl_8087F5E0   
    lw      $ra, 0x0014($sp)           
    lw      t6, 0x01E0(a1)             # 000001E0
    lui     $at, 0x0100                # $at = 01000000
    or      t7, t6, $at                # t7 = 01000000
    sw      t7, 0x01E0(a1)             # 000001E0
    lw      $ra, 0x0014($sp)           
lbl_8087F5E0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087F5EC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    swc1    $f4, 0x0068(s0)            # 00000068
    jal     func_8008C9C0              
    swc1    $f6, 0x01B8(s0)            # 000001B8
    beq     v0, $zero, lbl_8087F6C4    
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    lw      t6, 0x01E0(s0)             # 000001E0
    lbu     t8, 0x039C(s0)             # 0000039C
    lui     t0, %hi(var_8088351C)      # t0 = 80880000
    and     t7, t6, $at                
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f8                   # $f8 = -3.50
    sll     t9, t8,  2                 
    addu    t9, t9, t8                 
    sll     t9, t9,  2                 
    sw      t7, 0x01E0(s0)             # 000001E0
    addu    t0, t0, t9                 
    swc1    $f8, 0x006C(s0)            # 0000006C
    lh      t0, %lo(var_8088351C)(t0)  
    lui     a1, 0x41C8                 # a1 = 41C80000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    swc1    $f16, 0x0028(s0)           # 00000028
    jal     func_8001C54C              
    lw      a0, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8087ACA8              
    lw      a1, 0x002C($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    sw      t1, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2819          # a0 = 00002819
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_800915CC              
    addiu   a3, $zero, 0x0050          # a3 = 00000050
lbl_8087F6C4:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8087F6D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t6, 0x03AC(a0)             # 000003AC
    addiu   t7, t6, 0x0001             # t7 = 00000001
    slti    $at, t7, 0x001E            
    beq     $at, $zero, lbl_8087F704   
    sw      t7, 0x03AC(a0)             # 000003AC
    jal     func_8087F490              
    nop
    beq     $zero, $zero, lbl_8087F710 
    lw      $ra, 0x0014($sp)           
lbl_8087F704:
    jal     func_8087F5EC              
    nop
    lw      $ra, 0x0014($sp)           
lbl_8087F710:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087F71C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    sw      a3, 0x0024($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x001E($sp)            
    lwc1    $f4, 0x0020($sp)           
    lw      v1, 0x0018($sp)            
    lw      v0, 0x0028($sp)            
    mul.s   $f6, $f0, $f4              
    lwc1    $f8, 0x0000(v1)            # 00000000
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0000(v0)           # 00000000
    lwc1    $f18, 0x0024($sp)          
    lwc1    $f16, 0x0004(v1)           # 00000004
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0004(v0)            # 00000004
    jal     func_80063684              # coss?
    lh      a0, 0x001E($sp)            
    lwc1    $f6, 0x0020($sp)           
    lw      t6, 0x0018($sp)            
    lw      t7, 0x0028($sp)            
    mul.s   $f8, $f0, $f6              
    lwc1    $f10, 0x0008(t6)           # 00000008
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0008(t7)           # 00000008
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8087F798:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)           
    sw      s0, 0x0020($sp)            
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    sw      a2, 0x0048($sp)            
    sw      a3, 0x004C($sp)            
    lw      t6, 0x004C($sp)            
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFFC
    sw      $zero, 0x0000(t6)          # 00000000
    lw      s0, 0x0044($sp)            
    lw      a3, 0x0048($sp)            
    lw      a1, 0x004C($sp)            
    addiu   s0, s0, 0x07C0             # s0 = 000007C0
    jal     func_8002F454              
    or      a0, s0, $zero              # a0 = 000007C0
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    lw      t7, 0x0050($sp)            
    lw      v0, 0x0048($sp)            
    c.eq.s  $f0, $f4                   
    swc1    $f0, 0x0000(t7)            # 00000000
    lw      a0, 0x0044($sp)            
    or      a1, s0, $zero              # a1 = 000007C0
    bc1f    lbl_8087F808               
    addiu   t8, $sp, 0x0038            # t8 = FFFFFFF8
    beq     $zero, $zero, lbl_8087F8C4 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8087F808:
    lw      a2, 0x0000(v0)             # 00000001
    lw      a3, 0x0008(v0)             # 00000009
    addiu   t9, $sp, 0x0034            # t9 = FFFFFFF4
    sw      t9, 0x0014($sp)            
    jal     func_80034908              
    sw      t8, 0x0010($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8087F84C      
    lw      t0, 0x0050($sp)            
    lwc1    $f6, 0x0000(t0)            # 00000000
    lwc1    $f8, 0x0038($sp)           
    c.lt.s  $f6, $f8                   
    nop
    bc1fl   lbl_8087F850               
    lw      t1, 0x004C($sp)            
    beq     $zero, $zero, lbl_8087F8C4 
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_8087F84C:
    lw      t1, 0x004C($sp)            
lbl_8087F850:
    lui     $at, %hi(var_80883834)     # $at = 80880000
    lwc1    $f18, %lo(var_80883834)($at) 
    lw      a1, 0x0000(t1)             # 00000000
    lui     $at, %hi(var_80883838)     # $at = 80880000
    lwc1    $f6, %lo(var_80883838)($at) 
    lh      t2, 0x000A(a1)             # 0000000A
    or      a0, s0, $zero              # a0 = 000007C0
    mtc1    t2, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f4, $f16, $f18            
    c.lt.s  $f4, $f6                   
    nop
    bc1t    lbl_8087F8B8               
    nop
    jal     func_80034590              
    lw      a2, 0x003C($sp)            
    bne     v0, $zero, lbl_8087F8B8    
    or      a0, s0, $zero              # a0 = 000007C0
    lw      t3, 0x004C($sp)            
    lw      a2, 0x003C($sp)            
    jal     func_800343D4              
    lw      a1, 0x0000(t3)             # 00000000
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    v0, $at, lbl_8087F8C4      
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8087F8B8:
    beq     $zero, $zero, lbl_8087F8C4 
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8087F8C4:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8087F8D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a3, 0x0024($sp)            
    lw      t6, 0x013C(a0)             # 0000013C
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beql    t6, $at, lbl_8087F9F4      
    lw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_808781F0              
    sw      a2, 0x0020($sp)            
    lw      a0, 0x0018($sp)            
    bne     v0, $zero, lbl_8087F9F0    
    lw      a2, 0x0020($sp)            
    lw      t8, 0x01E4(a0)             # 000001E4
    lw      t9, 0x01E0(a0)             # 000001E0
    lh      v0, 0x01F0(a0)             # 000001F0
    lw      t1, 0x01FC(a0)             # 000001FC
    sw      t8, 0x0024(a0)             # 00000024
    lw      t8, 0x01EC(a0)             # 000001EC
    lw      t7, 0x01E8(a0)             # 000001E8
    ori     t0, t9, 0x4000             # t0 = 00004000
    sw      t0, 0x01E0(a0)             # 000001E0
    sh      v0, 0x00B6(a0)             # 000000B6
    sh      v0, 0x0032(a0)             # 00000032
    sw      t8, 0x002C(a0)             # 0000002C
    bne     t1, $zero, lbl_8087F95C    
    sw      t7, 0x0028(a0)             # 00000028
    lw      t2, 0x0200(a0)             # 00000200
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    t2, $at, lbl_8087F9F4      
    lw      $ra, 0x0014($sp)           
    beq     $zero, $zero, lbl_8087F9F4 
    lw      $ra, 0x0014($sp)           
lbl_8087F95C:
    lw      t3, 0x013C(a0)             # 0000013C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beql    t3, $at, lbl_8087F9F4      
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x01E0(a0)             # 000001E0
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    andi    t4, v0, 0x0004             # t4 = 00000000
    beq     t4, $zero, lbl_8087F998    
    and     t5, v0, $at                
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f4                   # $f4 = -3.50
    lwc1    $f6, 0x0080(a0)            # 00000080
    sw      t5, 0x01E0(a0)             # 000001E0
    swc1    $f4, 0x006C(a0)            # 0000006C
    swc1    $f6, 0x0028(a0)            # 00000028
lbl_8087F998:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     a2, v0, lbl_8087F9AC       
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    a2, $at, lbl_8087F9C0      
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_8087F9AC:
    lw      t6, 0x01E0(a0)             # 000001E0
    ori     t7, t6, 0x0010             # t7 = 00000010
    beq     $zero, $zero, lbl_8087F9DC 
    sw      t7, 0x01E0(a0)             # 000001E0
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_8087F9C0:
    beq     a2, $at, lbl_8087F9D0      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    a2, $at, lbl_8087F9E0      
    lw      t0, 0x0024($sp)            
lbl_8087F9D0:
    lw      t8, 0x01E0(a0)             # 000001E0
    ori     t9, t8, 0x0020             # t9 = 00000020
    sw      t9, 0x01E0(a0)             # 000001E0
lbl_8087F9DC:
    lw      t0, 0x0024($sp)            
lbl_8087F9E0:
    bnel    t0, v0, lbl_8087F9F4       
    lw      $ra, 0x0014($sp)           
    jal     func_8087AF00              
    nop
lbl_8087F9F0:
    lw      $ra, 0x0014($sp)           
lbl_8087F9F4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8087FA00:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x008C($sp)            
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lwc1    $f6, 0x0068(s0)            # 00000068
    or      t6, $zero, $zero           # t6 = 00000000
    addiu   t8, $sp, 0x003C            # t8 = FFFFFFB4
    c.lt.s  $f4, $f6                   
    addiu   t9, $sp, 0x0038            # t9 = FFFFFFB0
    bc1fl   lbl_8087FA40               
    lw      a0, 0x008C($sp)            
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lw      a0, 0x008C($sp)            
lbl_8087FA40:
    sw      t6, 0x0044($sp)            
    lw      a3, 0x002C(s0)             # 0000002C
    lw      a2, 0x0024(s0)             # 00000024
    addiu   a1, a0, 0x07C0             # a1 = 000007C0
    sw      a1, 0x0030($sp)            
    sw      t9, 0x0014($sp)            
    jal     func_80034908              
    sw      t8, 0x0010($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8087FA98      
    lwc1    $f10, 0x003C($sp)          
    lwc1    $f8, 0x0080(s0)            # 00000080
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x008C($sp)            
    c.lt.s  $f8, $f10                  
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bc1fl   lbl_8087FA9C               
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_8087F8D8              
    lw      a3, 0x0044($sp)            
    beq     $zero, $zero, lbl_8087FF70 
    lw      $ra, 0x0024($sp)           
lbl_8087FA98:
    addiu   a0, s0, 0x0024             # a0 = 00000024
lbl_8087FA9C:
    lh      a1, 0x00B6(s0)             # 000000B6
    addiu   t0, $sp, 0x006C            # t0 = FFFFFFE4
    sw      t0, 0x0010($sp)            
    sw      a0, 0x002C($sp)            
    lui     a2, 0x41F0                 # a2 = 41F00000
    jal     func_8087F71C              
    lui     a3, 0x4270                 # a3 = 42700000
    addiu   t1, s0, 0x0238             # t1 = 00000238
    sw      t1, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x008C($sp)            
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFE4
    jal     func_8087F798              
    addiu   a3, $sp, 0x0080            # a3 = FFFFFFF8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8087FAFC      
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x00B4(s0)          # 000000B4
    lw      a3, 0x0044($sp)            
    lw      a1, 0x008C($sp)            
    jal     func_8087F8D8              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_8087FF70 
    lw      $ra, 0x0024($sp)           
lbl_8087FAFC:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_8087FB20      
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x008C($sp)            
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_8087F8D8              
    lw      a3, 0x0044($sp)            
    beq     $zero, $zero, lbl_8087FF70 
    lw      $ra, 0x0024($sp)           
lbl_8087FB20:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_8087FB48      
    lw      a0, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x008C($sp)            
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_8087F8D8              
    lw      a3, 0x0044($sp)            
    beq     $zero, $zero, lbl_8087FF70 
    lw      $ra, 0x0024($sp)           
lbl_8087FB48:
    lh      a1, 0x00B6(s0)             # 000000B6
    addiu   t2, $sp, 0x0060            # t2 = FFFFFFD8
    sw      t2, 0x0010($sp)            
    lui     a2, 0xC1F0                 # a2 = C1F00000
    jal     func_8087F71C              
    lui     a3, 0x4270                 # a3 = 42700000
    addiu   t3, s0, 0x023C             # t3 = 0000023C
    sw      t3, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x008C($sp)            
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFD8
    jal     func_8087F798              
    addiu   a3, $sp, 0x007C            # a3 = FFFFFFF4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8087FBA4      
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x00B4(s0)          # 000000B4
    lw      a3, 0x0044($sp)            
    lw      a1, 0x008C($sp)            
    jal     func_8087F8D8              
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    beq     $zero, $zero, lbl_8087FF70 
    lw      $ra, 0x0024($sp)           
lbl_8087FBA4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_8087FBC8      
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x008C($sp)            
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_8087F8D8              
    lw      a3, 0x0044($sp)            
    beq     $zero, $zero, lbl_8087FF70 
    lw      $ra, 0x0024($sp)           
lbl_8087FBC8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_8087FBEC      
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x008C($sp)            
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_8087F8D8              
    lw      a3, 0x0044($sp)            
    beq     $zero, $zero, lbl_8087FF70 
    lw      $ra, 0x0024($sp)           
lbl_8087FBEC:
    lwc1    $f16, 0x023C(s0)           # 0000023C
    lwc1    $f18, 0x0238(s0)           # 00000238
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f14                  # $f14 = 60.00
    jal     func_800CD76C              
    sub.s   $f12, $f16, $f18           
    lui     $at, %hi(var_8088383C)     # $at = 80880000
    lwc1    $f4, %lo(var_8088383C)($at) 
    lui     $at, %hi(var_80883840)     # $at = 80880000
    addiu   v1, $sp, 0x0054            # v1 = FFFFFFCC
    mul.s   $f6, $f0, $f4              
    addiu   t9, $sp, 0x006C            # t9 = FFFFFFE4
    trunc.w.s $f8, $f6                   
    mfc1    t5, $f8                    
    nop
    sh      t5, 0x007A($sp)            
    lw      a1, 0x0078(s0)             # 00000078
    beql    a1, $zero, lbl_8087FF70    
    lw      $ra, 0x0024($sp)           
    lw      t1, 0x0000(t9)             # FFFFFFE4
    lwc1    $f0, %lo(var_80883840)($at) 
    lh      t6, 0x0008(a1)             # 00000008
    lh      t7, 0x000A(a1)             # 0000000A
    lh      t8, 0x000C(a1)             # 0000000C
    sw      t1, 0x0000(v1)             # FFFFFFCC
    lw      t0, 0x0004(t9)             # FFFFFFE8
    mtc1    t6, $f10                   # $f10 = 0.00
    mtc1    t7, $f18                   # $f18 = 0.00
    sw      t0, 0x0004(v1)             # FFFFFFD0
    lw      t1, 0x0008(t9)             # FFFFFFEC
    cvt.s.w $f16, $f10                 
    mtc1    t8, $f6                    # $f6 = 0.00
    sw      t1, 0x0008(v1)             # FFFFFFD4
    lwc1    $f10, 0x0238(s0)           # 00000238
    cvt.s.w $f4, $f18                  
    swc1    $f10, 0x0058($sp)          
    lw      t2, 0x0078(s0)             # 00000078
    mul.s   $f12, $f16, $f0            
    lh      t3, 0x000E(t2)             # 0000000E
    mul.s   $f14, $f4, $f0             
    sw      v1, 0x0010($sp)            
    mtc1    t3, $f16                   # $f16 = 0.00
    swc1    $f12, 0x0050($sp)          
    cvt.s.w $f8, $f6                   
    swc1    $f14, 0x004C($sp)          
    cvt.s.w $f16, $f16                 
    mul.s   $f2, $f8, $f0              
    mfc1    a3, $f16                   
    mfc1    a2, $f2                    
    jal     func_800A69A4              
    swc1    $f2, 0x0048($sp)           
    lw      t4, 0x0080($sp)            
    lw      t5, 0x0078(s0)             # 00000078
    addiu   v1, $sp, 0x0054            # v1 = FFFFFFCC
    lwc1    $f2, 0x0048($sp)           
    beq     t4, t5, lbl_8087FD50       
    lwc1    $f12, 0x0050($sp)          
    lwc1    $f18, 0x0068(s0)           # 00000068
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.le.s  $f4, $f18                  
    nop
    bc1fl   lbl_8087FD54               
    addiu   t6, $sp, 0x0060            # t6 = FFFFFFD8
    lw      v0, 0x01E0(s0)             # 000001E0
    lui     $at, 0xC220                # $at = C2200000
    andi    v0, v0, 0x0004             # v0 = 00000000
    bne     v0, $zero, lbl_8087FD18    
    nop
    mtc1    $at, $f6                   # $f6 = -40.00
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1tl   lbl_8087FD38               
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087FD18:
    beq     v0, $zero, lbl_8087FD50    
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f8                   # $f8 = -200.00
    nop
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_8087FD50               
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087FD38:
    lw      a1, 0x008C($sp)            
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_8087F8D8              
    lw      a3, 0x0044($sp)            
    beq     $zero, $zero, lbl_8087FF70 
    lw      $ra, 0x0024($sp)           
lbl_8087FD50:
    addiu   t6, $sp, 0x0060            # t6 = FFFFFFD8
lbl_8087FD54:
    lw      t8, 0x0000(t6)             # FFFFFFD8
    mfc1    a2, $f2                    
    sw      t8, 0x0000(v1)             # 00000000
    lw      t7, 0x0004(t6)             # FFFFFFDC
    sw      t7, 0x0004(v1)             # 00000004
    lw      t8, 0x0008(t6)             # FFFFFFE0
    sw      t8, 0x0008(v1)             # 00000008
    lwc1    $f10, 0x023C(s0)           # 0000023C
    lwc1    $f14, 0x004C($sp)          
    swc1    $f10, 0x0058($sp)          
    lw      t9, 0x0078(s0)             # 00000078
    lh      t0, 0x000E(t9)             # 0000000E
    sw      v1, 0x0010($sp)            
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f16, $f16                 
    mfc1    a3, $f16                   
    jal     func_800A69A4              
    nop
    lw      a1, 0x0078(s0)             # 00000078
    lw      t1, 0x007C($sp)            
    beql    t1, a1, lbl_8087FDF8       
    lw      t4, 0x01E0(s0)             # 000001E0
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f4, 0x0068(s0)            # 00000068
    c.le.s  $f4, $f18                  
    nop
    bc1fl   lbl_8087FDF8               
    lw      t4, 0x01E0(s0)             # 000001E0
    lw      t2, 0x01E0(s0)             # 000001E0
    lui     $at, 0xC220                # $at = C2200000
    andi    t3, t2, 0x0004             # t3 = 00000000
    bnel    t3, $zero, lbl_8087FDF8    
    lw      t4, 0x01E0(s0)             # 000001E0
    mtc1    $at, $f6                   # $f6 = -40.00
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1tl   lbl_8087FE24               
    or      a0, s0, $zero              # a0 = 00000000
    lw      t4, 0x01E0(s0)             # 000001E0
lbl_8087FDF8:
    lui     $at, 0xC348                # $at = C3480000
    lwc1    $f10, 0x004C($sp)          
    andi    t5, t4, 0x0004             # t5 = 00000000
    beq     t5, $zero, lbl_8087FE3C    
    nop
    mtc1    $at, $f8                   # $f8 = -200.00
    nop
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_8087FE3C               
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087FE24:
    lw      a1, 0x008C($sp)            
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_8087F8D8              
    lw      a3, 0x0044($sp)            
    beq     $zero, $zero, lbl_8087FF70 
    lw      $ra, 0x0024($sp)           
lbl_8087FE3C:
    lui     $at, %hi(var_80883844)     # $at = 80880000
    lwc1    $f16, %lo(var_80883844)($at) 
    lw      a0, 0x0030($sp)            
    c.lt.s  $f10, $f16                 
    nop
    bc1tl   lbl_8087FE84               
    lwc1    $f18, 0x0068(s0)           # 00000068
    jal     func_80034590              
    lbu     a2, 0x007D(s0)             # 0000007D
    bne     v0, $zero, lbl_8087FE80    
    lw      a0, 0x0030($sp)            
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800343D4              
    lbu     a2, 0x007D(s0)             # 0000007D
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    v0, $at, lbl_8087FED0      
    lw      t6, 0x01E0(s0)             # 000001E0
lbl_8087FE80:
    lwc1    $f18, 0x0068(s0)           # 00000068
lbl_8087FE84:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      a3, 0x0044($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f4, $f18                  
    lw      a1, 0x008C($sp)            
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    bc1f    lbl_8087FEBC               
    nop
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x008C($sp)            
    jal     func_8087F8D8              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_8087FF70 
    lw      $ra, 0x0024($sp)           
lbl_8087FEBC:
    jal     func_8087F8D8              
    lw      a3, 0x0044($sp)            
    beq     $zero, $zero, lbl_8087FF70 
    lw      $ra, 0x0024($sp)           
    lw      t6, 0x01E0(s0)             # 000001E0
lbl_8087FED0:
    lui     $at, 0x4080                # $at = 40800000
    andi    t7, t6, 0x0004             # t7 = 00000000
    beql    t7, $zero, lbl_8087FEEC    
    lwc1    $f2, 0x0080(s0)            # 00000080
    beq     $zero, $zero, lbl_8087FF6C 
    sh      $zero, 0x00B4(s0)          # 000000B4
    lwc1    $f2, 0x0080(s0)            # 00000080
lbl_8087FEEC:
    mtc1    $at, $f6                   # $f6 = 4.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    lh      v0, 0x007A($sp)            
    add.s   $f8, $f2, $f6              
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_8087FF18               
    mtc1    v0, $f16                   # $f16 = 0.00
    beq     $zero, $zero, lbl_8087FF6C 
    sh      $zero, 0x00B4(s0)          # 000000B4
    mtc1    v0, $f16                   # $f16 = 0.00
lbl_8087FF18:
    lui     $at, %hi(var_80883848)     # $at = 80880000
    lwc1    $f18, %lo(var_80883848)($at) 
    cvt.s.w $f0, $f16                  
    abs.s   $f0, $f0                   
    c.lt.s  $f18, $f0                  
    nop
    bc1tl   lbl_8087FF70               
    lw      $ra, 0x0024($sp)           
    lwc1    $f0, 0x0238(s0)            # 00000238
    lwc1    $f4, 0x023C(s0)            # 0000023C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    sub.s   $f6, $f4, $f0              
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f16                  # $f16 = 45.00
    sh      v0, 0x00B4(s0)             # 000000B4
    mul.s   $f10, $f6, $f8             
    div.s   $f18, $f10, $f16           
    add.s   $f4, $f0, $f18             
    sub.s   $f6, $f4, $f2              
    swc1    $f6, 0x00BC(s0)            # 000000BC
lbl_8087FF6C:
    lw      $ra, 0x0024($sp)           
lbl_8087FF70:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0088           # $sp = 00000000
    jr      $ra                        
    nop


func_8087FF80:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      t6, 0x1C44(s1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80881F7C              
    sw      t6, 0x0020($sp)            
    beq     v0, $zero, lbl_8087FFE0    
    or      a2, v0, $zero              # a2 = 00000000
    lw      t7, 0x01E0(s0)             # 000001E0
    lw      t9, 0x0020($sp)            
    sll     t8, t7, 15                 
    bltzl   t8, lbl_8087FFE4           
    lw      t1, 0x01FC(s0)             # 000001FC
    lw      t0, 0x0430(t9)             # 00000430
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t0, $zero, lbl_8087FFE4    
    lw      t1, 0x01FC(s0)             # 000001FC
    jal     func_80022DE0              
    or      a1, s0, $zero              # a1 = 00000000
lbl_8087FFE0:
    lw      t1, 0x01FC(s0)             # 000001FC
lbl_8087FFE4:
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t1, $zero, lbl_80880024    
    lw      t2, 0x01FC(s0)             # 000001FC
    jal     func_80022DBC              
    or      a1, s0, $zero              # a1 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bne     v0, v1, lbl_80880020       
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, $zero, 0x0037          # v0 = 00000037
    sw      v0, 0x0140(s0)             # 00000140
    sw      v0, 0x0144(s0)             # 00000144
    jal     func_808797E0              
    sw      v1, 0x01FC(s0)             # 000001FC
    beq     $zero, $zero, lbl_80880074 
    lw      $ra, 0x001C($sp)           
lbl_80880020:
    lw      t2, 0x01FC(s0)             # 000001FC
lbl_80880024:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    bnel    v1, t2, lbl_80880074       
    lw      $ra, 0x001C($sp)           
    jal     func_80022E18              
    or      a1, s0, $zero              # a1 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bne     v0, v1, lbl_80880070       
    lui     $at, 0xFFFE                # $at = FFFE0000
    lw      t3, 0x01E0(s0)             # 000001E0
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    addiu   v0, $zero, 0x0023          # v0 = 00000023
    and     t4, t3, $at                
    sw      v0, 0x0140(s0)             # 00000140
    sw      v0, 0x0144(s0)             # 00000144
    sw      t4, 0x01E0(s0)             # 000001E0
    sw      $zero, 0x01FC(s0)          # 000001FC
    jal     func_808797E0              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80880070:
    lw      $ra, 0x001C($sp)           
lbl_80880074:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80880084:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f14                  # $f14 = 60.00
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0020($sp)            
    lwc1    $f2, 0x0000(a0)            # 00000000
    lwc1    $f12, 0x0004(a0)           # 00000004
    mul.s   $f4, $f2, $f2              
    nop
    mul.s   $f6, $f12, $f12            
    add.s   $f0, $f4, $f6              
    sqrt.s  $f0, $f0                   
    c.lt.s  $f14, $f0                  
    swc1    $f0, 0x0000(a1)            # 00000000
    bc1f    lbl_808800CC               
    nop
    beq     $zero, $zero, lbl_808800D4 
    swc1    $f14, 0x0000(a1)           # 00000000
lbl_808800CC:
    lwc1    $f8, 0x0000(a1)            # 00000000
    swc1    $f8, 0x0000(a1)            # 00000000
lbl_808800D4:
    lwc1    $f12, 0x0000(a0)           # 00000000
    lwc1    $f14, 0x0004(a0)           # 00000004
    jal     func_800CD76C              
    neg.s   $f12, $f12                 
    lui     $at, %hi(var_8088384C)     # $at = 80880000
    lwc1    $f10, %lo(var_8088384C)($at) 
    lw      t8, 0x0020($sp)            
    mul.s   $f16, $f0, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t7, $f18                   
    nop
    sh      t7, 0x0000(t8)             # 00000000
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80880110:
    lw      t7, 0x0254(a0)             # 00000254
    lw      t6, 0x0258(a0)             # 00000258
    sw      t7, 0x025C(a0)             # 0000025C
    sw      t6, 0x0260(a0)             # 00000260
    lb      t8, 0x0028(a1)             # 00000028
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0254(a0)            # 00000254
    lb      t9, 0x0029(a1)             # 00000029
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0258(a0)           # 00000258
    jr      $ra                        
    nop


func_80880150:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0030($sp)            
    sw      a1, 0x004C($sp)            
    lui     $at, %hi(var_80883850)     # $at = 80880000
    lwc1    $f0, %lo(var_80883850)($at) 
    or      a1, a2, $zero              # a1 = 00000000
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lh      t6, 0x0008(a1)             # 00000008
    lh      t7, 0x000A(a1)             # 0000000A
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f6                    # $f6 = 0.00
    cvt.s.w $f12, $f4                  
    cvt.s.w $f8, $f6                   
    mul.s   $f20, $f12, $f0            
    nop
    mul.s   $f10, $f8, $f0             
    swc1    $f10, 0x003C($sp)          
    lh      t8, 0x000C(a1)             # 0000000C
    sw      a1, 0x0050($sp)            
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f14, $f16                 
    mul.s   $f22, $f14, $f0            
    jal     func_800CD76C              
    nop
    lui     $at, %hi(var_80883854)     # $at = 80880000
    lwc1    $f18, %lo(var_80883854)($at) 
    lh      t9, 0x0032(s0)             # 00000032
    mul.s   $f4, $f0, $f18             
    trunc.w.s $f6, $f4                   
    mfc1    t3, $f6                    
    nop
    subu    a0, t9, t3                 
    addiu   a0, a0, 0x8001             # a0 = FFFF8001
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80883858)     # $at = 80880000
    lwc1    $f8, %lo(var_80883858)($at) 
    lw      a1, 0x0050($sp)            
    c.lt.s  $f0, $f8                   
    nop
    bc1tl   lbl_80880294               
    lw      $ra, 0x0034($sp)           
    lh      t4, 0x000E(a1)             # 0000000E
    mfc1    a2, $f22                   
    addiu   t5, s0, 0x0024             # t5 = 00000024
    mtc1    t4, $f10                   # $f10 = 0.00
    sw      t5, 0x0010($sp)            
    mov.s   $f12, $f20                 
    cvt.s.w $f10, $f10                 
    lwc1    $f14, 0x003C($sp)          
    mfc1    a3, $f10                   
    jal     func_800A69A4              
    nop
    mul.s   $f16, $f20, $f20           
    mov.s   $f12, $f0                  
    lui     $at, 0x41F0                # $at = 41F00000
    mul.s   $f18, $f22, $f22           
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    sub.s   $f6, $f4, $f12             
    add.s   $f0, $f16, $f18            
    lwc1    $f16, 0x0024(s0)           # 00000024
    sqrt.s  $f0, $f0                   
    div.s   $f10, $f8, $f0             
    lwc1    $f8, 0x002C(s0)            # 0000002C
    mul.s   $f2, $f6, $f10             
    nop
    mul.s   $f18, $f2, $f20            
    nop
    mul.s   $f6, $f2, $f22             
    add.s   $f4, $f16, $f18            
    add.s   $f10, $f8, $f6             
    swc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f10, 0x002C(s0)           # 0000002C
    lw      $ra, 0x0034($sp)           
lbl_80880294:
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_808802A8:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x0074($sp)            
    lw      t6, 0x0074($sp)            
    addiu   $at, $zero, 0x0063         # $at = 00000063
    addiu   a0, $sp, 0x0060            # a0 = FFFFFFF0
    lh      t7, 0x00A4(t6)             # 000000A4
    addiu   a1, s0, 0x0024             # a1 = 00000024
    bne     t7, $at, lbl_808802E4      
    lui     $at, 0x4198                # $at = 41980000
    mtc1    $at, $f0                   # $f0 = 19.00
    beq     $zero, $zero, lbl_808802F0 
    nop
lbl_808802E4:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    nop
lbl_808802F0:
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f0, 0x006C($sp)           
    lwc1    $f0, 0x006C($sp)           
    lwc1    $f4, 0x0064($sp)           
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFE4
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFF0
    add.s   $f6, $f4, $f0              
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f6, 0x0064($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f8, 0x0054($sp)           
    mul.s   $f16, $f10, $f0            
    add.s   $f18, $f8, $f16            
    swc1    $f18, 0x0054($sp)          
    lh      a0, 0x00B4(s0)             # 000000B4
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f4, 0x0058($sp)           
    mul.s   $f10, $f6, $f0             
    add.s   $f8, $f4, $f10             
    swc1    $f8, 0x0058($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    lwc1    $f16, 0x005C($sp)          
    lw      a0, 0x0074($sp)            
    mul.s   $f6, $f18, $f0             
    addiu   t8, $sp, 0x0044            # t8 = FFFFFFD4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $sp, 0x0040            # t1 = FFFFFFD0
    sw      t1, 0x0024($sp)            
    sw      t0, 0x0020($sp)            
    add.s   $f4, $f16, $f6             
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFF0
    swc1    $f4, 0x005C($sp)           
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFE4
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFD8
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    jal     func_800308B4              
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    beq     v0, $zero, lbl_808803D4    
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0074($sp)            
    jal     func_80880150              
    lw      a2, 0x0044($sp)            
lbl_808803D4:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra                        
    nop


func_808803E8:
    addiu   $sp, $sp, 0xFF40           # $sp = FFFFFF40
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a1, 0x00C4($sp)            
    lw      t6, 0x00C4($sp)            
    sw      $zero, 0x0088($sp)         
    sw      $zero, 0x0084($sp)         
    lh      t7, 0x00A4(t6)             # 000000A4
    addiu   $at, $zero, 0x0063         # $at = 00000063
    lw      a0, 0x00C4($sp)            
    bne     t7, $at, lbl_8088042C      
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x4198                # $at = 41980000
    mtc1    $at, $f0                   # $f0 = 19.00
    beq     $zero, $zero, lbl_8088043C 
    lui     $at, 0x42C8                # $at = 42C80000
lbl_8088042C:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    nop
    lui     $at, 0x42C8                # $at = 42C80000
lbl_8088043C:
    mtc1    $at, $f4                   # $f4 = 100.00
    mfc1    a2, $f0                    
    addiu   t8, $zero, 0x001D          # t8 = 0000001D
    sw      t8, 0x0014($sp)            
    lui     a3, 0x420C                 # a3 = 420C0000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808781F0              
    lw      a1, 0x00C4($sp)            
    bnel    v0, $zero, lbl_80880EE4    
    lw      $ra, 0x0034($sp)           
    lhu     t9, 0x0088(s0)             # 00000088
    andi    t0, t9, 0x0008             # t0 = 00000000
    beql    t0, $zero, lbl_80880500    
    lw      t4, 0x01E0(s0)             # 000001E0
    lh      t1, 0x007E(s0)             # 0000007E
    lh      t2, 0x0032(s0)             # 00000032
    subu    a0, t1, t2                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_8088385C)     # $at = 80880000
    lwc1    $f6, %lo(var_8088385C)($at) 
    lui     $at, 0x4080                # $at = 40800000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80880500               
    lw      t4, 0x01E0(s0)             # 000001E0
    lwc1    $f0, 0x0068(s0)            # 00000068
    mtc1    $at, $f8                   # $f8 = 4.00
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    c.lt.s  $f8, $f0                   
    lui     $at, 0x3F80                # $at = 3F800000
    bc1fl   lbl_80880500               
    lw      t4, 0x01E0(s0)             # 000001E0
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sub.s   $f16, $f0, $f10            
    addiu   a0, $zero, 0x282C          # a0 = 0000282C
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    swc1    $f16, 0x0068(s0)           # 00000068
    sw      t3, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    lw      t4, 0x01E0(s0)             # 000001E0
lbl_80880500:
    andi    t5, t4, 0x0004             # t5 = 00000000
    bnel    t5, $zero, lbl_80880EE4    
    lw      $ra, 0x0034($sp)           
    lw      t6, 0x01FC(s0)             # 000001FC
    beql    t6, $zero, lbl_80880EE4    
    lw      $ra, 0x0034($sp)           
    lwc1    $f0, 0x0068(s0)            # 00000068
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    c.lt.s  $f0, $f18                  
    nop
    bc1tl   lbl_80880EE4               
    lw      $ra, 0x0034($sp)           
    lw      v0, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     v0, $at, lbl_80880EE0      
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     v0, $at, lbl_80880EE0      
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, %hi(var_80883860)     # $at = 80880000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f0                   
    addiu   v1, s0, 0x0024             # v1 = 00000024
    bc1f    lbl_808805A8               
    nop
    lwc1    $f6, %lo(var_80883860)($at) 
    lui     $at, 0x4366                # $at = 43660000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_8088059C               
    mtc1    $at, $f10                  # $f10 = 230.00
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f8                   # $f8 = 160.00
    sw      $zero, 0x0070($sp)         
    beq     $zero, $zero, lbl_808805B8 
    swc1    $f8, 0x008C($sp)           
    mtc1    $at, $f10                  # $f10 = 160.00
lbl_8088059C:
    sw      t7, 0x0070($sp)            
    beq     $zero, $zero, lbl_808805B8 
    swc1    $f10, 0x008C($sp)          
lbl_808805A8:
    jal     func_808802A8              
    lw      a1, 0x00C4($sp)            
    beq     $zero, $zero, lbl_80880EE4 
    lw      $ra, 0x0034($sp)           
lbl_808805B8:
    lw      t9, 0x0000(v1)             # 00000000
    addiu   v0, $sp, 0x00AC            # v0 = FFFFFFEC
    lui     $at, 0x4198                # $at = 41980000
    sw      t9, 0x0000(v0)             # FFFFFFEC
    lw      t8, 0x0004(v1)             # 00000004
    mtc1    $at, $f18                  # $f18 = 19.00
    addiu   t0, $sp, 0x00A0            # t0 = FFFFFFE0
    sw      t8, 0x0004(v0)             # FFFFFFF0
    lw      t9, 0x0008(v1)             # 00000008
    sw      t9, 0x0008(v0)             # FFFFFFF4
    lwc1    $f16, 0x00B0($sp)          
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x00B0($sp)           
    lw      t2, 0x0000(v0)             # FFFFFFEC
    sw      t2, 0x0000(t0)             # FFFFFFE0
    lw      t1, 0x0004(v0)             # FFFFFFF0
    sw      t1, 0x0004(t0)             # FFFFFFE4
    lw      t2, 0x0008(v0)             # FFFFFFF4
    sw      t2, 0x0008(t0)             # FFFFFFE8
    lh      a0, 0x0032(s0)             # 00000032
    jal     func_800636C4              # sins?
    sw      v1, 0x0044($sp)            
    lwc1    $f8, 0x008C($sp)           
    lwc1    $f6, 0x00A0($sp)           
    mul.s   $f10, $f8, $f0             
    add.s   $f16, $f6, $f10            
    swc1    $f16, 0x00A0($sp)          
    lh      a0, 0x00B4(s0)             # 000000B4
    subu    a0, $zero, a0              
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lwc1    $f4, 0x008C($sp)           
    lwc1    $f18, 0x00A4($sp)          
    mul.s   $f8, $f4, $f0              
    add.s   $f6, $f18, $f8             
    swc1    $f6, 0x00A4($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f16, 0x008C($sp)          
    lwc1    $f10, 0x00A8($sp)          
    addiu   a2, $sp, 0x00A0            # a2 = FFFFFFE0
    mul.s   $f4, $f16, $f0             
    addiu   a3, $sp, 0x005C            # a3 = FFFFFF9C
    addiu   t5, $sp, 0x0088            # t5 = FFFFFFC8
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $sp, 0x0080            # t8 = FFFFFFC0
    addiu   a1, $sp, 0x00AC            # a1 = FFFFFFEC
    add.s   $f18, $f10, $f4            
    swc1    $f18, 0x00A8($sp)          
    lw      t4, 0x0000(a2)             # FFFFFFE0
    lw      t3, 0x0004(a2)             # FFFFFFE4
    sw      t4, 0x0000(a3)             # FFFFFF9C
    lw      t4, 0x0008(a2)             # FFFFFFE8
    sw      t3, 0x0004(a3)             # FFFFFFA0
    sw      t4, 0x0008(a3)             # FFFFFFA4
    lw      a0, 0x00C4($sp)            
    sw      $zero, 0x0088($sp)         
    sw      t8, 0x0024($sp)            
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    sw      a0, 0x003C($sp)            
    sw      t7, 0x0020($sp)            
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    sw      t6, 0x0014($sp)            
    jal     func_800308B4              
    sw      t5, 0x0010($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_808806F8      
    addiu   a0, $sp, 0x00AC            # a0 = FFFFFFEC
    jal     func_800A5538              
    addiu   a1, $sp, 0x005C            # a1 = FFFFFF9C
    cvt.d.s $f0, $f0                   
    sqrt.d  $f0, $f0                   
    cvt.s.d $f8, $f0                   
    swc1    $f8, 0x008C($sp)           
    lw      t9, 0x01E0(s0)             # 000001E0
    ori     t0, t9, 0x4000             # t0 = 00004000
    sw      t0, 0x01E0(s0)             # 000001E0
lbl_808806F8:
    lw      t1, 0x0088($sp)            
    lwc1    $f6, 0x008C($sp)           
    lui     $at, 0x41F0                # $at = 41F00000
    beql    t1, $zero, lbl_808808BC    
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x00C4($sp)            
    c.lt.s  $f6, $f16                  
    nop
    bc1fl   lbl_80880734               
    lw      t2, 0x0088($sp)            
    jal     func_80880150              
    or      a2, t1, $zero              # a2 = 00000000
    lw      t2, 0x0088($sp)            
lbl_80880734:
    lh      t3, 0x0008(t2)             # 00000008
    lh      t4, 0x000C(t2)             # 0000000C
    mtc1    t3, $f10                   # $f10 = 0.00
    mtc1    t4, $f4                    # $f4 = 0.00
    cvt.s.w $f12, $f10                 
    jal     func_800CD76C              
    cvt.s.w $f14, $f4                  
    lui     $at, %hi(var_80883864)     # $at = 80880000
    lwc1    $f18, %lo(var_80883864)($at) 
    lh      t5, 0x0032(s0)             # 00000032
    mul.s   $f8, $f0, $f18             
    trunc.w.s $f6, $f8                   
    mfc1    t9, $f6                    
    nop
    subu    a0, t5, t9                 
    addiu   a0, a0, 0x8001             # a0 = FFFF8001
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lw      a0, 0x003C($sp)            
    lw      a1, 0x0088($sp)            
    c.lt.s  $f0, $f16                  
    nop
    bc1tl   lbl_80880EE4               
    lw      $ra, 0x0034($sp)           
    jal     func_80034590              
    lw      a2, 0x0080($sp)            
    bnel    v0, $zero, lbl_80880EE4    
    lw      $ra, 0x0034($sp)           
    lw      v0, 0x0070($sp)            
    lwc1    $f10, 0x008C($sp)          
    lui     $at, 0x42A0                # $at = 42A00000
    bnel    v0, $zero, lbl_808807DC    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    mtc1    $at, $f4                   # $f4 = 0.00
    nop
    c.lt.s  $f10, $f4                  
    nop
    bc1t    lbl_80880800               
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_808807DC:
    bne     v0, $at, lbl_80880840      
    lwc1    $f18, 0x008C($sp)          
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f8                   # $f8 = 150.00
    nop
    c.lt.s  $f18, $f8                  
    nop
    bc1fl   lbl_80880844               
    lw      a0, 0x003C($sp)            
lbl_80880800:
    bne     v0, $zero, lbl_80880818    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t0, 0x01E0(s0)             # 000001E0
    ori     t1, t0, 0x0010             # t1 = 00000010
    beq     $zero, $zero, lbl_80880EE0 
    sw      t1, 0x01E0(s0)             # 000001E0
lbl_80880818:
    bnel    v0, $at, lbl_80880EE4      
    lw      $ra, 0x0034($sp)           
    lw      t3, 0x01E0(s0)             # 000001E0
    or      a0, s0, $zero              # a0 = 00000000
    ori     t2, t3, 0x0010             # t2 = 00000010
    sw      t2, 0x01E0(s0)             # 000001E0
    jal     func_8087B1A0              
    lw      a1, 0x00C4($sp)            
    beq     $zero, $zero, lbl_80880EE4 
    lw      $ra, 0x0034($sp)           
lbl_80880840:
    lw      a0, 0x003C($sp)            
lbl_80880844:
    jal     func_80031464              
    lw      a1, 0x0080($sp)            
    lw      v1, 0x01E0(s0)             # 000001E0
    sll     t4, v1,  5                 
    bgezl   t4, lbl_808808BC           
    lui     $at, 0x40A0                # $at = 40A00000
    beq     v0, $zero, lbl_80880874    
    nop
    lh      t6, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0108         # $at = 00000108
    bnel    t6, $at, lbl_80880880      
    lw      v0, 0x0070($sp)            
lbl_80880874:
    bnel    v0, $zero, lbl_808808BC    
    lui     $at, 0x40A0                # $at = 40A00000
    lw      v0, 0x0070($sp)            
lbl_80880880:
    ori     t7, v1, 0x0010             # t7 = 00000010
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_80880898    
    nop
    beq     $zero, $zero, lbl_80880EE0 
    sw      t7, 0x01E0(s0)             # 000001E0
lbl_80880898:
    bne     v0, $at, lbl_80880EE0      
    ori     t8, v1, 0x0010             # t8 = 00000010
    sw      t8, 0x01E0(s0)             # 000001E0
    lw      a1, 0x00C4($sp)            
    jal     func_8087B1A0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80880EE4 
    lw      $ra, 0x0034($sp)           
    lui     $at, 0x40A0                # $at = 40A00000
lbl_808808BC:
    mtc1    $at, $f16                  # $f16 = 5.00
    lwc1    $f6, 0x008C($sp)           
    addiu   t9, $sp, 0x00AC            # t9 = FFFFFFEC
    addiu   t5, $sp, 0x0094            # t5 = FFFFFFD4
    add.s   $f10, $f6, $f16            
    swc1    $f10, 0x008C($sp)          
    lw      t1, 0x0000(t9)             # FFFFFFEC
    sw      t1, 0x0000(t5)             # FFFFFFD4
    lw      t0, 0x0004(t9)             # FFFFFFF0
    sw      t0, 0x0004(t5)             # FFFFFFD8
    lw      t1, 0x0008(t9)             # FFFFFFF4
    sw      t1, 0x0008(t5)             # FFFFFFDC
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f18, 0x008C($sp)          
    lwc1    $f4, 0x0094($sp)           
    lui     $at, 0x42F0                # $at = 42F00000
    mul.s   $f8, $f18, $f0             
    mtc1    $at, $f10                  # $f10 = 120.00
    add.s   $f6, $f4, $f8              
    swc1    $f6, 0x0094($sp)           
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f18, $f16, $f10           
    swc1    $f18, 0x0098($sp)          
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f8, 0x008C($sp)           
    lwc1    $f4, 0x009C($sp)           
    addiu   a3, $sp, 0x0094            # a3 = FFFFFFD4
    mul.s   $f6, $f8, $f0              
    addiu   t3, $sp, 0x0050            # t3 = FFFFFF90
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFC4
    addiu   a2, $sp, 0x0080            # a2 = FFFFFFC0
    add.s   $f16, $f4, $f6             
    swc1    $f16, 0x009C($sp)          
    lw      t4, 0x0000(a3)             # FFFFFFD4
    sw      t4, 0x0000(t3)             # FFFFFF90
    lw      t2, 0x0004(a3)             # FFFFFFD8
    sw      t2, 0x0004(t3)             # FFFFFF94
    lw      t4, 0x0008(a3)             # FFFFFFDC
    sw      t4, 0x0008(t3)             # FFFFFF98
    jal     func_8002F454              
    lw      a0, 0x003C($sp)            
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f10                  # $f10 = -32000.00
    swc1    $f0, 0x0054($sp)           
    c.eq.s  $f0, $f10                  
    nop
    bc1tl   lbl_80880EE4               
    lw      $ra, 0x0034($sp)           
    lwc1    $f18, 0x0028(s0)           # 00000028
    lw      t6, 0x0084($sp)            
    sub.s   $f8, $f0, $f18             
    swc1    $f8, 0x007C($sp)           
    lw      v0, 0x0078(s0)             # 00000078
    beql    v0, $zero, lbl_80880EE4    
    lw      $ra, 0x0034($sp)           
    beql    t6, $zero, lbl_80880EE4    
    lw      $ra, 0x0034($sp)           
    lh      t7, 0x0008(v0)             # 00000008
    lh      t8, 0x000A(v0)             # 0000000A
    lh      t5, 0x000C(v0)             # 0000000C
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t8, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_80883868)     # $at = 80880000
    cvt.s.w $f6, $f4                   
    lwc1    $f0, %lo(var_80883868)($at) 
    mtc1    t5, $f18                   # $f18 = 0.00
    lh      t9, 0x000E(v0)             # 0000000E
    addiu   t0, $sp, 0x0050            # t0 = FFFFFF90
    cvt.s.w $f10, $f16                 
    mul.s   $f12, $f6, $f0             
    mtc1    t9, $f6                    # $f6 = 0.00
    sw      t0, 0x0010($sp)            
    mul.s   $f14, $f10, $f0            
    cvt.s.w $f8, $f18                  
    cvt.s.w $f6, $f6                   
    mul.s   $f4, $f8, $f0              
    mfc1    a3, $f6                    
    mfc1    a2, $f4                    
    jal     func_800A69A4              
    nop
    lui     $at, 0xC220                # $at = C2200000
    mtc1    $at, $f16                  # $f16 = -40.00
    lw      t1, 0x0084($sp)            
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80880AE0               
    lw      t4, 0x0084($sp)            
    lh      t3, 0x0008(t1)             # 00000008
    lh      t2, 0x000A(t1)             # 0000000A
    lh      t4, 0x000C(t1)             # 0000000C
    mtc1    t3, $f10                   # $f10 = 0.00
    mtc1    t2, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_8088386C)     # $at = 80880000
    cvt.s.w $f18, $f10                 
    lwc1    $f0, %lo(var_8088386C)($at) 
    mtc1    t4, $f6                    # $f6 = 0.00
    lh      t6, 0x000E(t1)             # 0000000E
    lw      t7, 0x0044($sp)            
    cvt.s.w $f4, $f8                   
    mul.s   $f12, $f18, $f0            
    mtc1    t6, $f18                   # $f18 = 0.00
    sw      t7, 0x0010($sp)            
    mul.s   $f14, $f4, $f0             
    cvt.s.w $f16, $f6                  
    cvt.s.w $f18, $f18                 
    mul.s   $f10, $f16, $f0            
    mfc1    a3, $f18                   
    mfc1    a2, $f10                   
    jal     func_800A69A4              
    nop
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t8, 0x0070($sp)            
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_80880AE0               
    lw      t4, 0x0084($sp)            
    bnel    t8, $at, lbl_80880AD0      
    lw      t3, 0x01E0(s0)             # 000001E0
    lw      t5, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beql    t5, $at, lbl_80880AD0      
    lw      t3, 0x01E0(s0)             # 000001E0
    lw      t9, 0x01E0(s0)             # 000001E0
    or      a0, s0, $zero              # a0 = 00000000
    ori     t0, t9, 0x0010             # t0 = 00000010
    sw      t0, 0x01E0(s0)             # 000001E0
    jal     func_8087B1A0              
    lw      a1, 0x00C4($sp)            
    lw      t3, 0x01E0(s0)             # 000001E0
lbl_80880AD0:
    ori     t2, t3, 0x4000             # t2 = 00004000
    beq     $zero, $zero, lbl_80880EE0 
    sw      t2, 0x01E0(s0)             # 000001E0
    lw      t4, 0x0084($sp)            
lbl_80880AE0:
    lui     $at, %hi(var_80883870)     # $at = 80880000
    lwc1    $f16, %lo(var_80883870)($at) 
    lh      t1, 0x000A(t4)             # 0000000A
    lui     $at, %hi(var_80883874)     # $at = 80880000
    lwc1    $f10, %lo(var_80883874)($at) 
    mtc1    t1, $f4                    # $f4 = 0.00
    lw      a0, 0x003C($sp)            
    or      a1, t4, $zero              # a1 = 00000000
    cvt.s.w $f6, $f4                   
    mul.s   $f0, $f6, $f16             
    c.lt.s  $f0, $f10                  
    nop
    bc1tl   lbl_80880B44               
    lw      t6, 0x0070($sp)            
    jal     func_80034590              
    lw      a2, 0x0080($sp)            
    bne     v0, $zero, lbl_80880B40    
    lw      a0, 0x003C($sp)            
    lw      a1, 0x0084($sp)            
    jal     func_800343D4              
    lw      a2, 0x0080($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_80880B80      
    lw      t9, 0x0088($sp)            
lbl_80880B40:
    lw      t6, 0x0070($sp)            
lbl_80880B44:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_80880EE4      
    lw      $ra, 0x0034($sp)           
    lw      t7, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beql    t7, $at, lbl_80880EE4      
    lw      $ra, 0x0034($sp)           
    lw      t8, 0x01E0(s0)             # 000001E0
    or      a0, s0, $zero              # a0 = 00000000
    ori     t5, t8, 0x0010             # t5 = 00000010
    sw      t5, 0x01E0(s0)             # 000001E0
    jal     func_8087B1A0              
    lw      a1, 0x00C4($sp)            
    beq     $zero, $zero, lbl_80880EE4 
    lw      $ra, 0x0034($sp)           
lbl_80880B80:
    beq     t9, $zero, lbl_80880EE0    
    lwc1    $f18, 0x0054($sp)          
    lwc1    $f8, 0x0060($sp)           
    c.lt.s  $f18, $f8                  
    nop
    bc1tl   lbl_80880EE4               
    lw      $ra, 0x0034($sp)           
    lw      t0, 0x01E0(s0)             # 000001E0
    addiu   t1, $sp, 0x00AC            # t1 = FFFFFFEC
    sll     t3, t0, 14                 
    bltzl   t3, lbl_80880EE4           
    lw      $ra, 0x0034($sp)           
    lw      t6, 0x0000(t1)             # FFFFFFEC
    addiu   t2, $sp, 0x0094            # t2 = FFFFFFD4
    lui     $at, 0x42F0                # $at = 42F00000
    sw      t6, 0x0000(t2)             # FFFFFFD4
    lw      t4, 0x0004(t1)             # FFFFFFF0
    mtc1    $at, $f6                   # $f6 = 120.00
    sw      t4, 0x0004(t2)             # FFFFFFD8
    lw      t6, 0x0008(t1)             # FFFFFFF4
    sw      t6, 0x0008(t2)             # FFFFFFDC
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      t7, 0x0070($sp)            
    add.s   $f16, $f4, $f6             
    bne     t7, $zero, lbl_80880C2C    
    swc1    $f16, 0x0098($sp)          
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x438A                # $at = 438A0000
    mtc1    $at, $f18                  # $f18 = 276.00
    lwc1    $f10, 0x0094($sp)          
    mul.s   $f8, $f18, $f0             
    add.s   $f4, $f10, $f8             
    swc1    $f4, 0x0094($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x438A                # $at = 438A0000
    mtc1    $at, $f16                  # $f16 = 276.00
    lwc1    $f6, 0x009C($sp)           
    mul.s   $f18, $f16, $f0            
    add.s   $f10, $f6, $f18            
    beq     $zero, $zero, lbl_80880C6C 
    swc1    $f10, 0x009C($sp)          
lbl_80880C2C:
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x43C3                # $at = 43C30000
    mtc1    $at, $f4                   # $f4 = 390.00
    lwc1    $f8, 0x0094($sp)           
    mul.s   $f16, $f4, $f0             
    add.s   $f6, $f8, $f16             
    swc1    $f6, 0x0094($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lui     $at, 0x43C3                # $at = 43C30000
    mtc1    $at, $f10                  # $f10 = 390.00
    lwc1    $f18, 0x009C($sp)          
    mul.s   $f4, $f10, $f0             
    add.s   $f8, $f18, $f4             
    swc1    $f8, 0x009C($sp)           
lbl_80880C6C:
    addiu   t5, $sp, 0x0094            # t5 = FFFFFFD4
    lw      t0, 0x0000(t5)             # FFFFFFD4
    addiu   t8, $sp, 0x0050            # t8 = FFFFFF90
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFC4
    sw      t0, 0x0000(t8)             # FFFFFF90
    lw      t9, 0x0004(t5)             # FFFFFFD8
    addiu   a2, $sp, 0x0080            # a2 = FFFFFFC0
    addiu   a3, $sp, 0x0094            # a3 = FFFFFFD4
    sw      t9, 0x0004(t8)             # FFFFFF94
    lw      t0, 0x0008(t5)             # FFFFFFDC
    sw      t0, 0x0008(t8)             # FFFFFF98
    jal     func_8002F454              
    lw      a0, 0x003C($sp)            
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f16                  # $f16 = -32000.00
    swc1    $f0, 0x0054($sp)           
    c.eq.s  $f0, $f16                  
    nop
    bc1tl   lbl_80880EE4               
    lw      $ra, 0x0034($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    lw      t3, 0x0084($sp)            
    lw      t2, 0x0084($sp)            
    sub.s   $f10, $f0, $f6             
    beq     t3, $zero, lbl_80880EE0    
    swc1    $f10, 0x0078($sp)          
    lh      t1, 0x000A(t2)             # 0000000A
    lui     $at, %hi(var_80883878)     # $at = 80880000
    lwc1    $f8, %lo(var_80883878)($at) 
    mtc1    t1, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_8088387C)     # $at = 80880000
    lwc1    $f16, %lo(var_8088387C)($at) 
    cvt.s.w $f4, $f18                  
    lw      a0, 0x003C($sp)            
    or      a1, t2, $zero              # a1 = 00000000
    mul.s   $f0, $f4, $f8              
    c.lt.s  $f0, $f16                  
    nop
    bc1tl   lbl_80880D38               
    lw      t4, 0x0070($sp)            
    jal     func_80034590              
    lw      a2, 0x0080($sp)            
    bne     v0, $zero, lbl_80880D34    
    lw      a0, 0x003C($sp)            
    lw      a1, 0x0084($sp)            
    jal     func_800343D4              
    lw      a2, 0x0080($sp)            
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_80880D74      
    lui     t5, 0x8012                 # t5 = 80120000
lbl_80880D34:
    lw      t4, 0x0070($sp)            
lbl_80880D38:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t4, $at, lbl_80880EE4      
    lw      $ra, 0x0034($sp)           
    lw      t6, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beql    t6, $at, lbl_80880EE4      
    lw      $ra, 0x0034($sp)           
    lw      t7, 0x01E0(s0)             # 000001E0
    or      a0, s0, $zero              # a0 = 00000000
    ori     t8, t7, 0x0010             # t8 = 00000010
    sw      t8, 0x01E0(s0)             # 000001E0
    jal     func_8087B1A0              
    lw      a1, 0x00C4($sp)            
    beq     $zero, $zero, lbl_80880EE4 
    lw      $ra, 0x0034($sp)           
lbl_80880D74:
    lw      t5, -0x4600(t5)            # FFFFBA00
    lwc1    $f6, 0x0078($sp)           
    lw      t3, 0x0070($sp)            
    lh      t9, 0x055C(t5)             # 0000055C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t6, 0x0070($sp)            
    subu    t0, $zero, t9              
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10                 
    c.lt.s  $f6, $f18                  
    nop
    bc1f    lbl_80880DE4               
    nop
    bnel    t3, $at, lbl_80880EE4      
    lw      $ra, 0x0034($sp)           
    lw      t1, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beql    t1, $at, lbl_80880EE4      
    lw      $ra, 0x0034($sp)           
    lw      t2, 0x01E0(s0)             # 000001E0
    or      a0, s0, $zero              # a0 = 00000000
    ori     t4, t2, 0x0010             # t4 = 00000010
    sw      t4, 0x01E0(s0)             # 000001E0
    jal     func_8087B1A0              
    lw      a1, 0x00C4($sp)            
    beq     $zero, $zero, lbl_80880EE4 
    lw      $ra, 0x0034($sp)           
lbl_80880DE4:
    bne     t6, $zero, lbl_80880E38    
    lwc1    $f0, 0x007C($sp)           
    lui     $at, 0x4198                # $at = 41980000
    mtc1    $at, $f4                   # $f4 = 19.00
    lui     $at, 0x4220                # $at = 42200000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80880E3C               
    lw      t8, 0x0070($sp)            
    mtc1    $at, $f8                   # $f8 = 40.00
    nop
    c.le.s  $f0, $f8                   
    nop
    bc1fl   lbl_80880E3C               
    lw      t8, 0x0070($sp)            
    jal     func_8087BA48              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t7, %hi(func_8087B8F4)     # t7 = 80880000
    addiu   t7, t7, %lo(func_8087B8F4) # t7 = 8087B8F4
    beq     $zero, $zero, lbl_80880EE0 
    sw      t7, 0x0234(s0)             # 00000234
lbl_80880E38:
    lw      t8, 0x0070($sp)            
lbl_80880E3C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lwc1    $f0, 0x007C($sp)           
    bne     t8, $at, lbl_80880E94      
    lui     $at, %hi(var_80883880)     # $at = 80880000
    lwc1    $f10, %lo(var_80883880)($at) 
    lwc1    $f16, 0x0068(s0)           # 00000068
    lui     $at, 0x4198                # $at = 41980000
    c.lt.s  $f16, $f10                 
    nop
    bc1f    lbl_80880E94               
    nop
    mtc1    $at, $f6                   # $f6 = 19.00
    lui     $at, 0x4290                # $at = 42900000
    c.lt.s  $f6, $f0                   
    nop
    bc1f    lbl_80880E94               
    nop
    mtc1    $at, $f18                  # $f18 = 72.00
    nop
    c.le.s  $f0, $f18                  
    nop
    bc1t    lbl_80880ECC               
lbl_80880E94:
    lui     $at, %hi(var_80883884)     # $at = 80880000
    lwc1    $f4, %lo(var_80883884)($at) 
    lwc1    $f8, 0x0068(s0)            # 00000068
    lui     $at, 0x42E0                # $at = 42E00000
    c.lt.s  $f4, $f8                   
    nop
    bc1fl   lbl_80880EE4               
    lw      $ra, 0x0034($sp)           
    mtc1    $at, $f16                  # $f16 = 112.00
    nop
    c.le.s  $f0, $f16                  
    nop
    bc1fl   lbl_80880EE4               
    lw      $ra, 0x0034($sp)           
lbl_80880ECC:
    jal     func_8087BD78              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t5, %hi(func_8087BC18)     # t5 = 80880000
    addiu   t5, t5, %lo(func_8087BC18) # t5 = 8087BC18
    sw      t5, 0x0234(s0)             # 00000234
lbl_80880EE0:
    lw      $ra, 0x0034($sp)           
lbl_80880EE4:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x00C0           # $sp = 00000000
    jr      $ra                        
    nop


func_80880EF4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    lw      v0, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beql    t0, v0, lbl_80880F2C       
    lhu     t6, 0x0020(a1)             # 00000020
    beq     v0, $at, lbl_80880F28      
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    v0, $at, lbl_8088108C      
    lw      $ra, 0x0024($sp)           
lbl_80880F28:
    lhu     t6, 0x0020(a1)             # 00000020
lbl_80880F2C:
    ori     $at, $zero, 0x8000         # $at = 00008000
    lui     t8, 0x0001                 # t8 = 00010000
    andi    t7, t6, 0x8000             # t7 = 00000000
    bne     t7, $at, lbl_80881088      
    addu    t8, t8, a1                 
    lhu     t8, 0x06DE(t8)             # 000106DE
    bnel    t0, t8, lbl_8088108C       
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x01E0(s0)             # 000001E0
    andi    t9, v0, 0x0001             # t9 = 00000000
    bne     t9, $zero, lbl_80881088    
    andi    t1, v0, 0x0100             # t1 = 00000000
    bne     t1, $zero, lbl_80881088    
    andi    t2, v0, 0x0200             # t2 = 00000000
    bnel    t2, $zero, lbl_8088108C    
    lw      $ra, 0x0024($sp)           
    lbu     t3, 0x0228(s0)             # 00000228
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    blezl   t3, lbl_80881020           
    lw      t2, 0x0218(s0)             # 00000218
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_800915CC              
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    lw      t4, 0x01E0(s0)             # 000001E0
    lbu     t1, 0x0228(s0)             # 00000228
    lui     v1, 0x0040                 # v1 = 00400000
    ori     t5, t4, 0x0001             # t5 = 00000001
    or      t7, t5, v1                 # t7 = 00400001
    sw      t5, 0x01E0(s0)             # 000001E0
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    sw      t7, 0x01E0(s0)             # 000001E0
    ori     t9, t7, 0x0100             # t9 = 00400101
    andi    t3, t2, 0x00FF             # t3 = 000000FF
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    sw      t9, 0x01E0(s0)             # 000001E0
    sb      t2, 0x0228(s0)             # 00000228
    bne     t3, $zero, lbl_80880FD4    
    sw      $zero, 0x0230(s0)          # 00000230
    addiu   t4, $zero, 0x008C          # t4 = 0000008C
    beq     $zero, $zero, lbl_80881088 
    sw      t4, 0x022C(s0)             # 0000022C
lbl_80880FD4:
    lw      t5, 0x0148(s0)             # 00000148
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    bne     t5, $zero, lbl_80881014    
    nop
    lw      v0, 0x01E0(s0)             # 000001E0
    lui     $at, 0xFFBF                # $at = FFBF0000
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    and     t6, v0, v1                 
    beq     t6, $zero, lbl_8088100C    
    ori     $at, $at, 0xFFFF           # $at = FFBFFFFF
    and     t8, v0, $at                
    sw      t7, 0x022C(s0)             # 0000022C
    beq     $zero, $zero, lbl_80881088 
    sw      t8, 0x01E0(s0)             # 000001E0
lbl_8088100C:
    beq     $zero, $zero, lbl_80881088 
    sw      t0, 0x022C(s0)             # 0000022C
lbl_80881014:
    beq     $zero, $zero, lbl_80881088 
    sw      t9, 0x022C(s0)             # 0000022C
    lw      t2, 0x0218(s0)             # 00000218
lbl_80881020:
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    sw      t2, 0x0000(a1)             # 0000020C
    lw      t1, 0x021C(s0)             # 0000021C
    sw      t1, 0x0004(a1)             # 00000210
    lw      t2, 0x0220(s0)             # 00000220
    sw      t2, 0x0008(a1)             # 00000214
    lw      t3, 0x01E0(s0)             # 000001E0
    sll     t4, t3,  4                 
    bgezl   t4, lbl_8088108C           
    lw      $ra, 0x0024($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    sw      a1, 0x0028($sp)            
    lui     $at, %hi(var_80883888)     # $at = 80880000
    lwc1    $f4, %lo(var_80883888)($at) 
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    c.lt.s  $f0, $f4                   
    lw      a1, 0x0028($sp)            
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bc1f    lbl_80881088               
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    sw      t5, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
lbl_80881088:
    lw      $ra, 0x0024($sp)           
lbl_8088108C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_8088109C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     v0, 0x0228(s0)             # 00000228
    slti    $at, v0, 0x0006            
    beq     $at, $zero, lbl_8088117C   
    nop
    blez    v0, lbl_8088117C           
    nop
    lw      t6, 0x022C(s0)             # 0000022C
    lw      t8, 0x0230(s0)             # 00000230
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sw      t7, 0x022C(s0)             # 0000022C
    bgtz    t7, lbl_8088121C           
    sw      t9, 0x0230(s0)             # 00000230
    lbu     t1, 0x0228(s0)             # 00000228
    lw      v0, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   t2, t1, 0x0001             # t2 = 00000001
    beq     v0, $at, lbl_8088110C      
    sb      t2, 0x0228(s0)             # 00000228
    beq     v0, $zero, lbl_8088110C    
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80881130      
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8088110C:
    lw      v0, 0x01E0(s0)             # 000001E0
    sll     t3, v0, 12                 
    bltz    t3, lbl_8088112C           
    sll     t4, v0,  6                 
    bltzl   t4, lbl_80881130           
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_80881130 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8088112C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80881130:
    bne     v0, $zero, lbl_80881160    
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t5, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x4845          # a0 = 00004845
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80881160:
    lbu     t6, 0x0228(s0)             # 00000228
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    slti    $at, t6, 0x0006            
    beql    $at, $zero, lbl_80881220   
    lw      t8, 0x0230(s0)             # 00000230
    beq     $zero, $zero, lbl_8088121C 
    sw      t7, 0x022C(s0)             # 0000022C
lbl_8088117C:
    bnel    v0, $zero, lbl_80881220    
    lw      t8, 0x0230(s0)             # 00000230
    lw      t8, 0x022C(s0)             # 0000022C
    lw      t0, 0x0230(s0)             # 00000230
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sw      t9, 0x022C(s0)             # 0000022C
    bgtz    t9, lbl_8088121C           
    sw      t1, 0x0230(s0)             # 00000230
    lw      v0, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    sw      $zero, 0x022C(s0)          # 0000022C
    beq     v0, $at, lbl_808811C8      
    sb      t3, 0x0228(s0)             # 00000228
    beq     v0, $zero, lbl_808811C8    
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_808811EC      
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808811C8:
    lw      v0, 0x01E0(s0)             # 000001E0
    sll     t4, v0, 12                 
    bltz    t4, lbl_808811E8           
    sll     t5, v0,  6                 
    bltzl   t5, lbl_808811EC           
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_808811EC 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808811E8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808811EC:
    bne     v0, $zero, lbl_8088121C    
    addiu   a0, $zero, 0x4845          # a0 = 00004845
    lui     t6, 0x8010                 # t6 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    addiu   a3, t6, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)            
    sw      t7, 0x0014($sp)            
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_8088121C:
    lw      t8, 0x0230(s0)             # 00000230
lbl_80881220:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    t8, $at, lbl_808812A4      
    lw      t6, 0x002C($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f4                   # $f4 = 0.25
    nop
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_808812A4               
    lw      t6, 0x002C($sp)            
    lw      t0, 0x0218(s0)             # 00000218
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    lui     t3, 0x8010                 # t3 = 80100000
    sw      t0, 0x0000(a1)             # 0000020C
    lw      t9, 0x021C(s0)             # 0000021C
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    sw      t9, 0x0004(a1)             # 00000210
    lw      t0, 0x0220(s0)             # 00000220
    addiu   a3, t3, 0x43A0             # a3 = 801043A0
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    sw      t0, 0x0008(a1)             # 00000214
    lw      t1, 0x01E0(s0)             # 000001E0
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t2, t1,  4                 
    bgezl   t2, lbl_808812A4           
    lw      t6, 0x002C($sp)            
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t4, 0x0014($sp)            
    lw      t6, 0x002C($sp)            
lbl_808812A4:
    lbu     t5, 0x0228(s0)             # 00000228
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t6               
    sb      t5, 0x072A($at)            # 0001072A
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808812C8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lw      a1, 0x1C44(a2)             # 00001C44
    jal     func_800213B4              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x0032(s0)             # 00000032
    subu    a0, v0, t6                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sh      a0, 0x002A($sp)            
    lh      a0, 0x002A($sp)            
    jal     func_80063684              # coss?
    swc1    $f0, 0x0024($sp)           
    lui     $at, %hi(var_8088388C)     # $at = 80880000
    lwc1    $f2, 0x0024($sp)           
    lwc1    $f4, %lo(var_8088388C)($at) 
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    lui     $at, %hi(var_80883890)     # $at = 80880000
    c.lt.s  $f4, $f2                   
    nop
    bc1f    lbl_80881338               
    nop
    beq     $zero, $zero, lbl_808813C0 
    sw      t7, 0x0360(s0)             # 00000360
lbl_80881338:
    lwc1    $f6, %lo(var_80883890)($at) 
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    c.lt.s  $f2, $f6                   
    nop
    bc1fl   lbl_8088135C               
    mtc1    $zero, $f8                 # $f8 = 0.00
    beq     $zero, $zero, lbl_808813C0 
    sw      t8, 0x0360(s0)             # 00000360
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_8088135C:
    nop
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_8088139C               
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    c.lt.s  $f10, $f2                  
    nop
    bc1f    lbl_80881390               
    nop
    beq     $zero, $zero, lbl_808813C0 
    sw      t9, 0x0360(s0)             # 00000360
lbl_80881390:
    beq     $zero, $zero, lbl_808813C0 
    sw      $zero, 0x0360(s0)          # 00000360
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_8088139C:
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    c.lt.s  $f16, $f2                  
    nop
    bc1fl   lbl_808813C0               
    sw      t1, 0x0360(s0)             # 00000360
    beq     $zero, $zero, lbl_808813C0 
    sw      t0, 0x0360(s0)             # 00000360
    sw      t1, 0x0360(s0)             # 00000360
lbl_808813C0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808813D4:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f14                  # $f14 = 100.00
    sw      a1, 0x0004($sp)            
    lw      t6, 0x01F8(a0)             # 000001F8
    lh      t7, 0x00B6(a0)             # 000000B6
    lh      t8, 0x01F0(a0)             # 000001F0
    mtc1    t6, $f6                    # $f6 = 0.00
    lwc1    $f4, 0x0068(a0)            # 00000068
    subu    v0, t7, t8                 
    cvt.s.w $f8, $f6                   
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80883894)     # $at = 80880000
    lwc1    $f18, %lo(var_80883894)($at) 
    div.s   $f2, $f4, $f8              
    lui     $at, %hi(var_80883898)     # $at = 80880000
    lwc1    $f4, %lo(var_80883898)($at) 
    lh      a1, 0x0034(a0)             # 00000034
    cvt.s.w $f16, $f10                 
    div.s   $f6, $f16, $f18            
    mul.s   $f8, $f4, $f2              
    nop
    mul.s   $f10, $f8, $f6             
    trunc.w.s $f16, $f10                 
    mfc1    v1, $f16                   
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    subu    v1, $zero, v1              
    mtc1    v1, $f4                    # $f4 = 0.00
    subu    t0, v1, a1                 
    mtc1    t0, $f18                   # $f18 = 0.00
    cvt.s.w $f0, $f4                   
    cvt.s.w $f12, $f18                 
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f14                  
    nop
    bc1f    lbl_8088147C               
    nop
    beq     $zero, $zero, lbl_808814C0 
    sh      $zero, 0x0034(a0)          # 00000034
lbl_8088147C:
    abs.s   $f0, $f12                  
    c.lt.s  $f0, $f14                  
    nop
    bc1fl   lbl_8088149C               
    mtc1    $zero, $f8                 # $f8 = 0.00
    beq     $zero, $zero, lbl_808814C0 
    sh      v1, 0x0034(a0)             # 00000034
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_8088149C:
    addiu   t1, a1, 0x0064             # t1 = 00000064
    addiu   t2, a1, 0xFF9C             # t2 = FFFFFF9C
    c.lt.s  $f8, $f12                  
    nop
    bc1fl   lbl_808814C0               
    sh      t2, 0x0034(a0)             # 00000034
    beq     $zero, $zero, lbl_808814C0 
    sh      t1, 0x0034(a0)             # 00000034
    sh      t2, 0x0034(a0)             # 00000034
lbl_808814C0:
    lh      t3, 0x0034(a0)             # 00000034
    sh      t3, 0x00B8(a0)             # 000000B8
    jr      $ra                        
    nop


func_808814D0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x002C($sp)            
    lw      t7, 0x0078(a3)             # 00000078
    lw      a0, 0x002C($sp)            
    lw      v0, 0x1C44(t6)             # 00001C44
    bne     t7, $zero, lbl_8088150C    
    sw      t7, 0x001C($sp)            
    lw      t9, 0x0430(v0)             # 00000430
    beql    a3, t9, lbl_80881510       
    lbu     a2, 0x007D(a3)             # 0000007D
    beq     $zero, $zero, lbl_808815C8 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8088150C:
    lbu     a2, 0x007D(a3)             # 0000007D
lbl_80881510:
    sw      a3, 0x0028($sp)            
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    jal     func_800347A0              
    lw      a1, 0x001C($sp)            
    lw      a3, 0x0028($sp)            
    sll     t2, v0, 10                 
    lui     $at, 0x4448                # $at = 44480000
    lh      v1, 0x0032(a3)             # 00000032
    mtc1    $at, $f2                   # $f2 = 800.00
    lui     $at, 0xC448                # $at = C4480000
    subu    a0, t2, v1                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    mtc1    a0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f0, $f4                   
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80881584               
    mtc1    $at, $f18                  # $f18 = -800.00
    mtc1    v1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    add.s   $f10, $f8, $f2             
    trunc.w.s $f16, $f10                 
    mfc1    t4, $f16                   
    beq     $zero, $zero, lbl_808815BC 
    sh      t4, 0x0032(a3)             # 00000032
    mtc1    $at, $f18                  # $f18 = -800.00
lbl_80881584:
    addu    t7, v1, a0                 
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_808815BC               
    sh      t7, 0x0032(a3)             # 00000032
    mtc1    v1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    sub.s   $f8, $f6, $f2              
    trunc.w.s $f10, $f8                  
    mfc1    t6, $f10                   
    beq     $zero, $zero, lbl_808815BC 
    sh      t6, 0x0032(a3)             # 00000032
    sh      t7, 0x0032(a3)             # 00000032
lbl_808815BC:
    lh      t8, 0x0032(a3)             # 00000032
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t8, 0x00B6(a3)             # 000000B6
lbl_808815C8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808815D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    swc1    $f12, 0x0018($sp)          
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f4, 0x0018($sp)           
    lw      $ra, 0x0014($sp)           
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    v0, $f8                    
    nop
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8088160C:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     t7, %hi(var_808836B8)      # t7 = 80880000
    addiu   t7, t7, %lo(var_808836B8)  # t7 = 808836B8
    lw      t9, 0x0000(t7)             # 808836B8
    addiu   t6, $sp, 0x005C            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 808836BC
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 808836C0
    lui     t1, %hi(var_808836C4)      # t1 = 80880000
    addiu   t1, t1, %lo(var_808836C4)  # t1 = 808836C4
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t3, 0x0000(t1)             # 808836C4
    addiu   t0, $sp, 0x0050            # t0 = FFFFFFE0
    lw      t2, 0x0004(t1)             # 808836C8
    sw      t3, 0x0000(t0)             # FFFFFFE0
    lw      t3, 0x0008(t1)             # 808836CC
    sw      t2, 0x0004(t0)             # FFFFFFE4
    or      a0, s0, $zero              # a0 = 00000000
    sw      t3, 0x0008(t0)             # FFFFFFE8
    lw      t4, 0x1C44(a1)             # 00001C44
    sw      t4, 0x004C($sp)            
    lh      t5, 0x00B6(s0)             # 000000B6
    sh      t5, 0x01F0(s0)             # 000001F0
    jal     func_80880110              
    sw      a1, 0x0074($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808812C8              
    lw      a1, 0x0074($sp)            
    lw      v0, 0x01E0(s0)             # 000001E0
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, v0, 0x2000             # t6 = 00000000
    bnel    t6, $zero, lbl_808816B0    
    sll     t7, v0, 12                 
    jal     func_8087FF80              
    lw      a1, 0x0074($sp)            
    lw      v0, 0x01E0(s0)             # 000001E0
    sll     t7, v0, 12                 
lbl_808816B0:
    bgez    t7, lbl_80881734           
    lui     $at, 0x0010                # $at = 00100000
    and     v1, v0, $at                
    beq     v1, $zero, lbl_808816F0    
    nop
    lw      t8, 0x0378(s0)             # 00000378
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bne     t8, $at, lbl_808816F0      
    lui     $at, 0xFFEF                # $at = FFEF0000
    ori     $at, $at, 0xFFFF           # $at = FFEFFFFF
    and     t9, v0, $at                
    jal     func_8087AF00              
    sw      t9, 0x01E0(s0)             # 000001E0
    beq     $zero, $zero, lbl_80881738 
    lw      t4, 0x013C(s0)             # 0000013C
lbl_808816F0:
    bne     v1, $zero, lbl_80881734    
    sll     t0, v0, 10                 
    bgezl   t0, lbl_80881738           
    lw      t4, 0x013C(s0)             # 0000013C
    lw      t1, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beql    t1, $at, lbl_80881738      
    lw      t4, 0x013C(s0)             # 0000013C
    lw      t2, 0x0378(s0)             # 00000378
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bne     t2, $at, lbl_80881734      
    lui     $at, 0xFFDF                # $at = FFDF0000
    ori     $at, $at, 0xFFFF           # $at = FFDFFFFF
    and     t3, v0, $at                
    jal     func_8087AF00              
    sw      t3, 0x01E0(s0)             # 000001E0
lbl_80881734:
    lw      t4, 0x013C(s0)             # 0000013C
lbl_80881738:
    lui     t9, %hi(var_80883668)      # t9 = 80880000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t5, t4,  2                 
    addu    t9, t9, t5                 
    lw      t9, %lo(var_80883668)(t9)  
    lw      a1, 0x0074($sp)            
    jalr    $ra, t9                    
    nop
    lw      t6, 0x01E0(s0)             # 000001E0
    lwc1    $f4, 0x01B4(s0)            # 000001B4
    addiu   $at, $zero, 0xBFFF         # $at = FFFFBFFF
    and     t7, t6, $at                
    sw      t7, 0x01E0(s0)             # 000001E0
    addiu   t8, s0, 0x0024             # t8 = 00000024
    swc1    $f4, 0x0204(s0)            # 00000204
    sw      t8, 0x003C($sp)            
    lw      t2, 0x0000(t8)             # 00000024
    lw      t3, 0x01E0(s0)             # 000001E0
    sw      t2, 0x01E4(s0)             # 000001E4
    lw      t1, 0x0004(t8)             # 00000028
    andi    t4, t3, 0x2000             # t4 = 00000000
    sw      t1, 0x01E8(s0)             # 000001E8
    lw      t2, 0x0008(t8)             # 0000002C
    bne     t4, $zero, lbl_80881E24    
    sw      t2, 0x01EC(s0)             # 000001EC
    lw      v0, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_808817B8      
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_808817B8      
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_808817C4      
lbl_808817B8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80880EF4              
    lw      a1, 0x0074($sp)            
lbl_808817C4:
    lw      t5, 0x01FC(s0)             # 000001FC
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t5, $at, lbl_808817DC      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8088109C              
    lw      a1, 0x0074($sp)            
lbl_808817DC:
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t9, $at, lbl_80881848      
    lw      t3, 0x031C(s0)             # 0000031C
    lw      v0, 0x037C(s0)             # 0000037C
    beql    v0, $zero, lbl_80881848    
    lw      t3, 0x031C(s0)             # 0000031C
    lwc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    swc1    $f6, 0x0024(v0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      t6, 0x037C(s0)             # 0000037C
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0028(t6)           # 00000028
    lw      t7, 0x037C(s0)             # 0000037C
    lwc1    $f18, 0x002C(s0)           # 0000002C
    swc1    $f18, 0x002C(t7)           # 0000002C
    lw      t0, 0x037C(s0)             # 0000037C
    lh      t8, 0x00B4(s0)             # 000000B4
    sh      t8, 0x00B4(t0)             # 000000B4
    lw      t2, 0x037C(s0)             # 0000037C
    lh      t1, 0x00B6(s0)             # 000000B6
    sh      t1, 0x00B6(t2)             # 000000B6
    lw      t3, 0x031C(s0)             # 0000031C
lbl_80881848:
    lbu     t4, 0x0017(t3)             # 00000017
    andi    t5, t4, 0x0002             # t5 = 00000000
    beq     t5, $zero, lbl_80881884    
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80881888               
    lbu     t9, 0x0311(s0)             # 00000311
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    sub.s   $f8, $f0, $f6              
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_80881884:
    lbu     t9, 0x0311(s0)             # 00000311
lbl_80881888:
    andi    t6, t9, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_808818E8    
    lw      t3, 0x013C(s0)             # 0000013C
    lw      t8, 0x0218(s0)             # 00000218
    addiu   a1, s0, 0x020C             # a1 = 0000020C
    lui     a3, 0x8010                 # a3 = 80100000
    sw      t8, 0x0000(a1)             # 0000020C
    lw      t7, 0x021C(s0)             # 0000021C
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t7, 0x0004(a1)             # 00000210
    lw      t8, 0x0220(s0)             # 00000220
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    sw      t8, 0x0008(a1)             # 00000214
    lw      t0, 0x01E0(s0)             # 000001E0
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sll     t1, t0,  4                 
    bgezl   t1, lbl_808818E8           
    lw      t3, 0x013C(s0)             # 0000013C
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    sw      t2, 0x0014($sp)            
    lw      t3, 0x013C(s0)             # 0000013C
lbl_808818E8:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     t3, $at, lbl_808818FC      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808813D4              
    lw      a1, 0x0074($sp)            
lbl_808818FC:
    addiu   a1, s0, 0x0268             # a1 = 00000268
    sw      a1, 0x0030($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x02B4             # a1 = 000002B4
    sw      a1, 0x0034($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f10                  # $f10 = 11.00
    lh      t7, 0x02AE(s0)             # 000002AE
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f16, $f0, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t6, $f18                   
    nop
    addu    t8, t6, t7                 
    jal     func_80063684              # coss?
    sh      t8, 0x02AE(s0)             # 000002AE
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f4                   # $f4 = 11.00
    lh      t4, 0x02B2(s0)             # 000002B2
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t3, $f8                    
    nop
    addu    t5, t3, t4                 
    jal     func_800636C4              # sins?
    sh      t5, 0x02B2(s0)             # 000002B2
    lui     $at, 0xC190                # $at = C1900000
    mtc1    $at, $f10                  # $f10 = -18.00
    lh      t0, 0x02FA(s0)             # 000002FA
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f16, $f0, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    nop
    addu    t1, t8, t0                 
    jal     func_80063684              # coss?
    sh      t1, 0x02FA(s0)             # 000002FA
    lui     $at, 0xC190                # $at = C1900000
    mtc1    $at, $f4                   # $f4 = -18.00
    lh      t9, 0x02FE(s0)             # 000002FE
    lw      a0, 0x0074($sp)            
    mul.s   $f6, $f0, $f4              
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    trunc.w.s $f8, $f6                   
    mfc1    t5, $f8                    
    nop
    addu    t6, t5, t9                 
    sh      t6, 0x02FE(s0)             # 000002FE
    sw      a1, 0x0038($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0030($sp)            
    lw      a0, 0x0074($sp)            
    lw      a1, 0x0038($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0030($sp)            
    lw      a0, 0x0074($sp)            
    lw      a1, 0x0038($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0034($sp)            
    lw      v1, 0x004C($sp)            
    lw      t7, 0x066C(v1)             # 0000066C
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_80881A6C    
    lw      v0, 0x01E0(s0)             # 000001E0
    lw      t0, 0x0430(v1)             # 00000430
    lw      a1, 0x0074($sp)            
    beql    t0, $zero, lbl_80881A6C    
    lw      v0, 0x01E0(s0)             # 000001E0
    lh      v0, 0x00A4(a1)             # 000000A4
    addiu   v1, $zero, 0x0063          # v1 = 00000063
    bne     v1, v0, lbl_80881A60       
    nop
    bne     v1, v0, lbl_80881A68       
    lui     $at, 0xC516                # $at = C5160000
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mtc1    $at, $f16                  # $f16 = -2400.00
    nop
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_80881A6C               
    lw      v0, 0x01E0(s0)             # 000001E0
lbl_80881A60:
    jal     func_808814D0              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80881A68:
    lw      v0, 0x01E0(s0)             # 000001E0
lbl_80881A6C:
    lui     $at, 0xFEFF                # $at = FEFF0000
    lw      a1, 0x0074($sp)            
    sll     t1, v0,  7                 
    bltz    t1, lbl_80881AE4           
    ori     $at, $at, 0xFFFF           # $at = FEFFFFFF
    jal     func_808803E8              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8087FA00              
    lw      a1, 0x0074($sp)            
    lwc1    $f12, 0x0028(s0)           # 00000028
    lwc1    $f0, 0x0238(s0)            # 00000238
    c.lt.s  $f12, $f0                  
    nop
    bc1f    lbl_80881ADC               
    nop
    lwc1    $f2, 0x023C(s0)            # 0000023C
    c.lt.s  $f12, $f2                  
    nop
    bc1f    lbl_80881ADC               
    nop
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80881ADC               
    swc1    $f0, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_80881ADC 
    swc1    $f2, 0x0028(s0)            # 00000028
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_80881ADC:
    beq     $zero, $zero, lbl_80881AEC 
    lw      a1, 0x0074($sp)            
lbl_80881AE4:
    and     t2, v0, $at                
    sw      t2, 0x01E0(s0)             # 000001E0
lbl_80881AEC:
    lh      t3, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    lui     t4, 0x8012                 # t4 = 80120000
    bnel    t3, $at, lbl_80881B20      
    lw      t9, 0x003C($sp)            
    lhu     t4, -0x4B4A(t4)            # 8011B4B6
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    andi    t5, t4, 0x000F             # t5 = 00000000
    beql    t5, $at, lbl_80881B20      
    lw      t9, 0x003C($sp)            
    jal     func_80878350              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x003C($sp)            
lbl_80881B20:
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    lw      t7, 0x0000(t9)             # 00000000
    sw      t7, 0x0038(s0)             # 00000038
    lw      t6, 0x0004(t9)             # 00000004
    sw      t6, 0x003C(s0)             # 0000003C
    lwc1    $f18, 0x003C(s0)           # 0000003C
    lw      t7, 0x0008(t9)             # 00000008
    add.s   $f6, $f18, $f4             
    sw      t7, 0x0040(s0)             # 00000040
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x003C(s0)            # 0000003C
    lui     $at, %hi(var_8088389C)     # $at = 80880000
    lwc1    $f8, %lo(var_8088389C)($at) 
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t5, $zero, 0x00FE          # t5 = 000000FE
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80881B88               
    lbu     v0, 0x036A(s0)             # 0000036A
    lbu     v0, 0x036A(s0)             # 0000036A
    bne     v0, $zero, lbl_80881B84    
    addiu   t8, v0, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_80881BA4 
    sb      t8, 0x036A(s0)             # 0000036A
lbl_80881B84:
    lbu     v0, 0x036A(s0)             # 0000036A
lbl_80881B88:
    blez    v0, lbl_80881BA4           
    addiu   t0, v0, 0x0001             # t0 = 00000001
    andi    t1, t0, 0x00FF             # t1 = 00000001
    slti    $at, t1, 0x0004            
    bne     $at, $zero, lbl_80881BA4   
    sb      t0, 0x036A(s0)             # 0000036A
    sb      $zero, 0x036A(s0)          # 0000036A
lbl_80881BA4:
    lwc1    $f16, 0x0068(s0)           # 00000068
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    c.eq.s  $f10, $f16                 
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t1, 0x8012                 # t1 = 80120000
    bc1fl   lbl_80881BE4               
    sb      t5, 0x00AE(s0)             # 000000AE
    lw      t2, 0x01E0(s0)             # 000001E0
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sll     t3, t2, 12                 
    bltzl   t3, lbl_80881BE4           
    sb      t5, 0x00AE(s0)             # 000000AE
    beq     $zero, $zero, lbl_80881BE4 
    sb      t4, 0x00AE(s0)             # 000000AE
    sb      t5, 0x00AE(s0)             # 000000AE
lbl_80881BE4:
    lwc1    $f18, 0x0068(s0)           # 00000068
    c.le.s  $f4, $f18                  
    nop
    bc1fl   lbl_80881C0C               
    lbu     t7, 0x0278(s0)             # 00000278
    lbu     t9, 0x0278(s0)             # 00000278
    ori     t6, t9, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_80881C14 
    sb      t6, 0x0278(s0)             # 00000278
    lbu     t7, 0x0278(s0)             # 00000278
lbl_80881C0C:
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sb      t8, 0x0278(s0)             # 00000278
lbl_80881C14:
    lw      t0, -0x5A30(t0)            # 8011A5D0
    addiu   $at, $zero, 0x0157         # $at = 00000157
    bnel    t0, $at, lbl_80881C38      
    lhu     v0, 0x03B8(s0)             # 000003B8
    lw      t1, -0x46D0(t1)            # 8011B930
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beql    t1, $at, lbl_80881E14      
    lw      t0, 0x01E0(s0)             # 000001E0
    lhu     v0, 0x03B8(s0)             # 000003B8
lbl_80881C38:
    lui     $at, 0x42C8                # $at = 42C80000
    andi    t2, v0, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80881CB4    
    andi    t8, v0, 0x0002             # t8 = 00000000
    andi    t3, v0, 0xFFFE             # t3 = 00000000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_808815D8              
    sh      t3, 0x03B8(s0)             # 000003B8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_808815D8              
    sw      v0, 0x0040($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_808815D8              
    sw      v0, 0x0044($sp)            
    lw      t4, 0x0040($sp)            
    lw      t9, 0x0044($sp)            
    addiu   t7, v0, 0x001E             # t7 = 0000001E
    addiu   t5, t4, 0x00C8             # t5 = 000000C8
    addiu   t6, t9, 0x001E             # t6 = 0000001E
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    sw      t7, 0x0018($sp)            
    lw      a0, 0x0074($sp)            
    addiu   a1, s0, 0x03BC             # a1 = 000003BC
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFE0
    jal     func_8001C2A4              
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFEC
    beq     $zero, $zero, lbl_80881E14 
    lw      t0, 0x01E0(s0)             # 000001E0
lbl_80881CB4:
    beq     t8, $zero, lbl_80881D2C    
    andi    t9, v0, 0x0004             # t9 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_808815D8              
    sh      t0, 0x03B8(s0)             # 000003B8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_808815D8              
    sw      v0, 0x0040($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_808815D8              
    sw      v0, 0x0044($sp)            
    lw      t1, 0x0040($sp)            
    lw      t3, 0x0044($sp)            
    addiu   t5, v0, 0x001E             # t5 = 0000001E
    addiu   t2, t1, 0x00C8             # t2 = 000000C8
    addiu   t4, t3, 0x001E             # t4 = 0000001E
    sw      t4, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    sw      t5, 0x0018($sp)            
    lw      a0, 0x0074($sp)            
    addiu   a1, s0, 0x03C8             # a1 = 000003C8
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFE0
    jal     func_8001C2A4              
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFEC
    beq     $zero, $zero, lbl_80881E14 
    lw      t0, 0x01E0(s0)             # 000001E0
lbl_80881D2C:
    beq     t9, $zero, lbl_80881DA4    
    andi    t3, v0, 0x0008             # t3 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    andi    t6, v0, 0xFFFB             # t6 = 00000000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_808815D8              
    sh      t6, 0x03B8(s0)             # 000003B8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_808815D8              
    sw      v0, 0x0040($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_808815D8              
    sw      v0, 0x0044($sp)            
    lw      t7, 0x0040($sp)            
    lw      t0, 0x0044($sp)            
    addiu   t2, v0, 0x001E             # t2 = 0000001E
    addiu   t8, t7, 0x00C8             # t8 = 000000C8
    addiu   t1, t0, 0x001E             # t1 = 0000001E
    sw      t1, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    sw      t2, 0x0018($sp)            
    lw      a0, 0x0074($sp)            
    addiu   a1, s0, 0x03D4             # a1 = 000003D4
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFE0
    jal     func_8001C2A4              
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFEC
    beq     $zero, $zero, lbl_80881E14 
    lw      t0, 0x01E0(s0)             # 000001E0
lbl_80881DA4:
    beq     t3, $zero, lbl_80881E10    
    andi    t4, v0, 0xFFF7             # t4 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_808815D8              
    sh      t4, 0x03B8(s0)             # 000003B8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_808815D8              
    sw      v0, 0x0040($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_808815D8              
    sw      v0, 0x0044($sp)            
    lw      t5, 0x0040($sp)            
    lw      t6, 0x0044($sp)            
    addiu   t8, v0, 0x001E             # t8 = 0000001E
    addiu   t9, t5, 0x00C8             # t9 = 000000C8
    addiu   t7, t6, 0x001E             # t7 = 0000001E
    sw      t7, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    sw      t8, 0x0018($sp)            
    lw      a0, 0x0074($sp)            
    addiu   a1, s0, 0x03E0             # a1 = 000003E0
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFE0
    jal     func_8001C2A4              
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFEC
lbl_80881E10:
    lw      t0, 0x01E0(s0)             # 000001E0
lbl_80881E14:
    lui     $at, 0xF7FF                # $at = F7FF0000
    ori     $at, $at, 0xFFFF           # $at = F7FFFFFF
    and     t1, t0, $at                
    sw      t1, 0x01E0(s0)             # 000001E0
lbl_80881E24:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra                        
    nop


func_80881E38:
    sw      a1, 0x0004($sp)            
    sw      a2, 0x0008($sp)            
    lw      v0, 0x0360(a0)             # 00000360
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80881E5C      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    jr      $ra                        
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80881E58:
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80881E5C:
    bnel    v0, $at, lbl_80881E70      
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80881E6C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80881E70:
    jr      $ra                        
    nop


func_80881E78:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_800214FC              
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f4                   # $f4 = 75.00
    lw      a1, 0x0020($sp)            
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80881EC4               
    lwc1    $f6, 0x0028(a1)            # 00000028
    beq     $zero, $zero, lbl_80881F68 
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f6, 0x0028(a1)            # 00000028
lbl_80881EC4:
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    sub.s   $f0, $f6, $f8              
    abs.s   $f0, $f0                   
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80881EF0               
    nop
    beq     $zero, $zero, lbl_80881F68 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80881EF0:
    jal     func_800213B4              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x0032(s0)             # 00000032
    subu    a0, v0, t6                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_808838A0)     # $at = 80880000
    lwc1    $f16, %lo(var_808838A0)($at) 
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_80881F34               
    nop
    beq     $zero, $zero, lbl_80881F68 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80881F34:
    jal     func_80881E38              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bnel    v0, $at, lbl_80881F54      
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     $zero, $zero, lbl_80881F68 
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80881F54:
    bnel    v0, $at, lbl_80881F68      
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_80881F68 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80881F68:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80881F7C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t6, 0x013C(a0)             # 0000013C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    t6, $at, lbl_80881FA0      
    lw      v0, 0x0200(a0)             # 00000200
    beq     $zero, $zero, lbl_80881FC4 
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v0, 0x0200(a0)             # 00000200
lbl_80881FA0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80881FBC    
    nop
    beq     v0, $at, lbl_80881FBC      
    nop
    beq     $zero, $zero, lbl_80881FC4 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80881FBC:
    jal     func_80881E78              
    lw      a2, 0x1C44(a1)             # 00001C44
lbl_80881FC4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80881FD4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sdc1    $f20, 0x0010($sp)          
    mtc1    a1, $f20                   # $f20 = 0.00
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0028($sp)            
    sw      a2, 0x0030($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    add.s   $f2, $f20, $f20            
    lw      t6, 0x0028($sp)            
    lw      t7, 0x0030($sp)            
    mul.s   $f4, $f0, $f2              
    lwc1    $f6, 0x0000(t6)            # 00000000
    add.s   $f8, $f4, $f6              
    sub.s   $f10, $f8, $f20            
    swc1    $f10, 0x0000(t7)           # 00000000
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0024($sp)           
    lwc1    $f16, 0x0024($sp)          
    lw      t8, 0x0028($sp)            
    lw      t9, 0x0030($sp)            
    mul.s   $f18, $f0, $f16            
    lwc1    $f4, 0x0004(t8)            # 00000004
    add.s   $f6, $f18, $f4             
    sub.s   $f8, $f6, $f20             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0004(t9)            # 00000004
    lwc1    $f10, 0x0024($sp)          
    lw      t0, 0x0028($sp)            
    lw      t1, 0x0030($sp)            
    mul.s   $f16, $f0, $f10            
    lwc1    $f18, 0x0008(t0)           # 00000008
    add.s   $f4, $f16, $f18            
    sub.s   $f6, $f4, $f20             
    swc1    $f6, 0x0008(t1)            # 00000008
    lw      $ra, 0x001C($sp)           
    ldc1    $f20, 0x0010($sp)          
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80882070:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x00AC($sp)            
    sw      a2, 0x00B0($sp)            
    lui     t7, %hi(var_808836D0)      # t7 = 80880000
    addiu   t7, t7, %lo(var_808836D0)  # t7 = 808836D0
    lw      t9, 0x0000(t7)             # 808836D0
    addiu   t6, $sp, 0x0094            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 808836D4
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 808836D8
    lui     t2, %hi(var_808836DC)      # t2 = 80880000
    addiu   t2, t2, %lo(var_808836DC)  # t2 = 808836DC
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t4, 0x0000(t2)             # 808836DC
    addiu   t1, $sp, 0x0088            # t1 = FFFFFFE0
    lw      t3, 0x0004(t2)             # 808836E0
    sw      t4, 0x0000(t1)             # FFFFFFE0
    lw      t4, 0x0008(t2)             # 808836E4
    lui     t6, %hi(var_808836E8)      # t6 = 80880000
    addiu   t6, t6, %lo(var_808836E8)  # t6 = 808836E8
    sw      t3, 0x0004(t1)             # FFFFFFE4
    sw      t4, 0x0008(t1)             # FFFFFFE8
    lw      t8, 0x0000(t6)             # 808836E8
    addiu   t5, $sp, 0x007C            # t5 = FFFFFFD4
    lw      t7, 0x0004(t6)             # 808836EC
    sw      t8, 0x0000(t5)             # FFFFFFD4
    lw      t8, 0x0008(t6)             # 808836F0
    lui     t1, %hi(var_808836F4)      # t1 = 80880000
    addiu   t1, t1, %lo(var_808836F4)  # t1 = 808836F4
    sw      t7, 0x0004(t5)             # FFFFFFD8
    sw      t8, 0x0008(t5)             # FFFFFFDC
    lw      t3, 0x0000(t1)             # 808836F4
    addiu   t9, $sp, 0x0064            # t9 = FFFFFFBC
    lw      t2, 0x0004(t1)             # 808836F8
    sw      t3, 0x0000(t9)             # FFFFFFBC
    lw      t3, 0x0008(t1)             # 808836FC
    lui     t5, %hi(var_80883700)      # t5 = 80880000
    addiu   t5, t5, %lo(var_80883700)  # t5 = 80883700
    sw      t2, 0x0004(t9)             # FFFFFFC0
    sw      t3, 0x0008(t9)             # FFFFFFC4
    lw      t7, 0x0000(t5)             # 80883700
    addiu   t4, $sp, 0x0058            # t4 = FFFFFFB0
    lw      t6, 0x0004(t5)             # 80883704
    sw      t7, 0x0000(t4)             # FFFFFFB0
    lw      t7, 0x0008(t5)             # 80883708
    sw      t6, 0x0004(t4)             # FFFFFFB4
    addiu   $at, $zero, 0xFFF7         # $at = FFFFFFF7
    sw      t7, 0x0008(t4)             # FFFFFFB8
    lw      v0, 0x01E0(s0)             # 000001E0
    lwc1    $f2, 0x01B4(s0)            # 000001B4
    lw      a0, 0x00B0($sp)            
    andi    t8, v0, 0x0008             # t8 = 00000000
    bne     t8, $zero, lbl_808821A4    
    and     t9, v0, $at                
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    addiu   a2, $sp, 0x007C            # a2 = FFFFFFD4
    addiu   a3, s0, 0x0248             # a3 = 00000248
    jal     func_8008E2AC              
    swc1    $f2, 0x0054($sp)           
    lwc1    $f4, 0x0248(s0)            # 00000248
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x024C(s0)           # 0000024C
    lwc1    $f16, 0x0028(s0)           # 00000028
    sub.s   $f8, $f4, $f6              
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f4, 0x0250(s0)            # 00000250
    lwc1    $f2, 0x0054($sp)           
    swc1    $f8, 0x0248(s0)            # 00000248
    sub.s   $f18, $f10, $f16           
    sub.s   $f8, $f4, $f6              
    swc1    $f18, 0x024C(s0)           # 0000024C
    beq     $zero, $zero, lbl_808821A8 
    swc1    $f8, 0x0250(s0)            # 00000250
lbl_808821A4:
    sw      t9, 0x01E0(s0)             # 000001E0
lbl_808821A8:
    lw      a0, 0x00B0($sp)            
    addiu   a1, $zero, 0x000D          # a1 = 0000000D
    addiu   a2, $sp, 0x0094            # a2 = FFFFFFEC
    addiu   a3, $sp, 0x002C            # a3 = FFFFFF84
    jal     func_8008E2AC              
    swc1    $f2, 0x0054($sp)           
    lw      a0, 0x00AC($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addiu   a1, $sp, 0x002C            # a1 = FFFFFF84
    addiu   a2, s0, 0x0218             # a2 = 00000218
    addiu   a3, $sp, 0x0028            # a3 = FFFFFF80
    jal     func_8008EC20              
    addu    a0, a0, $at                
    lw      v1, 0x0200(s0)             # 00000200
    lwc1    $f2, 0x0054($sp)           
    bnel    v1, $zero, lbl_808822D8    
    lw      v0, 0x013C(s0)             # 0000013C
    lw      t1, 0x013C(s0)             # 0000013C
    lui     $at, 0x4220                # $at = 42200000
    beql    t1, $zero, lbl_808822D8    
    lw      v0, 0x013C(s0)             # 0000013C
    mtc1    $at, $f10                  # $f10 = 40.00
    lui     $at, 0x4234                # $at = 42340000
    c.lt.s  $f10, $f2                  
    nop
    bc1fl   lbl_8088223C               
    lui     $at, 0x41E0                # $at = 41E00000
    mtc1    $at, $f16                  # $f16 = 28.00
    nop
    c.lt.s  $f2, $f16                  
    nop
    bc1fl   lbl_8088223C               
    lui     $at, 0x41E0                # $at = 41E00000
    lw      t2, 0x0148(s0)             # 00000148
    beq     t2, $zero, lbl_8088227C    
    lui     $at, 0x41E0                # $at = 41E00000
lbl_8088223C:
    mtc1    $at, $f18                  # $f18 = 28.00
    lui     $at, 0x4204                # $at = 42040000
    c.lt.s  $f18, $f2                  
    nop
    bc1fl   lbl_808822D8               
    lw      v0, 0x013C(s0)             # 0000013C
    mtc1    $at, $f4                   # $f4 = 33.00
    nop
    c.lt.s  $f2, $f4                   
    nop
    bc1fl   lbl_808822D8               
    lw      v0, 0x013C(s0)             # 0000013C
    lw      t3, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t3, $at, lbl_808822D8      
    lw      v0, 0x013C(s0)             # 0000013C
lbl_8088227C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808838A4)     # $at = 80880000
    lwc1    $f6, %lo(var_808838A4)($at) 
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_808829FC               
    lw      t9, 0x0318(s0)             # 00000318
    lhu     t4, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, s0, 0x03BC             # a3 = 000003BC
    ori     t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lwc1    $f8, 0x03C0(s0)            # 000003C0
    sub.s   $f16, $f8, $f10            
    beq     $zero, $zero, lbl_808829F8 
    swc1    $f16, 0x03C0(s0)           # 000003C0
    lw      v0, 0x013C(s0)             # 0000013C
lbl_808822D8:
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     v0, $at, lbl_80882578      
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     $at, 0x4150                # $at = 41500000
    c.lt.s  $f18, $f2                  
    nop
    bc1fl   lbl_80882314               
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    nop
    c.lt.s  $f2, $f4                   
    nop
    bc1t    lbl_80882344               
    lui     $at, 0x41C8                # $at = 41C80000
lbl_80882314:
    mtc1    $at, $f6                   # $f6 = 25.00
    lui     $at, 0x4204                # $at = 42040000
    c.lt.s  $f6, $f2                   
    nop
    bc1fl   lbl_80882400               
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    nop
    c.lt.s  $f2, $f8                   
    nop
    bc1fl   lbl_80882400               
    lui     $at, 0x40C0                # $at = 40C00000
lbl_80882344:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0054($sp)           
    lui     $at, %hi(var_808838A8)     # $at = 80880000
    lwc1    $f10, %lo(var_808838A8)($at) 
    lwc1    $f2, 0x0054($sp)           
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_808823A0               
    nop
    lhu     t6, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t7, t6, 0x0002             # t7 = 00000002
    sh      t7, 0x03B8(s0)             # 000003B8
    swc1    $f2, 0x0054($sp)           
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03C8             # a2 = 000003C8
    lwc1    $f2, 0x0054($sp)           
lbl_808823A0:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0054($sp)           
    lui     $at, %hi(var_808838AC)     # $at = 80880000
    lwc1    $f16, %lo(var_808838AC)($at) 
    lwc1    $f2, 0x0054($sp)           
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80882400               
    lui     $at, 0x40C0                # $at = 40C00000
    lhu     t8, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x03B8(s0)             # 000003B8
    swc1    $f2, 0x0054($sp)           
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03BC             # a2 = 000003BC
    lwc1    $f2, 0x0054($sp)           
    lui     $at, 0x40C0                # $at = 40C00000
lbl_80882400:
    mtc1    $at, $f18                  # $f18 = 6.00
    lui     $at, 0x4120                # $at = 41200000
    c.lt.s  $f18, $f2                  
    nop
    bc1fl   lbl_80882430               
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f4                   # $f4 = 23.00
    nop
    c.lt.s  $f2, $f4                   
    nop
    bc1t    lbl_80882460               
    lui     $at, 0x41B8                # $at = 41B80000
lbl_80882430:
    mtc1    $at, $f6                   # $f6 = 23.00
    lui     $at, 0x41E8                # $at = 41E80000
    c.lt.s  $f6, $f2                   
    nop
    bc1fl   lbl_808824C0               
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f8                   # $f8 = 7.00
    nop
    c.lt.s  $f2, $f8                   
    nop
    bc1fl   lbl_808824C0               
    lui     $at, 0x40E0                # $at = 40E00000
lbl_80882460:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0054($sp)           
    lui     $at, %hi(var_808838B0)     # $at = 80880000
    lwc1    $f10, %lo(var_808838B0)($at) 
    lwc1    $f2, 0x0054($sp)           
    addiu   a1, $zero, 0x0025          # a1 = 00000025
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_808824C0               
    lui     $at, 0x40E0                # $at = 40E00000
    lhu     t1, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t2, t1, 0x0008             # t2 = 00000008
    sh      t2, 0x03B8(s0)             # 000003B8
    swc1    $f2, 0x0054($sp)           
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03E0             # a2 = 000003E0
    lwc1    $f2, 0x0054($sp)           
    lui     $at, 0x40E0                # $at = 40E00000
lbl_808824C0:
    mtc1    $at, $f16                  # $f16 = 7.00
    lui     $at, 0x4160                # $at = 41600000
    c.lt.s  $f16, $f2                  
    nop
    bc1fl   lbl_808824F0               
    lui     $at, 0x41D0                # $at = 41D00000
    mtc1    $at, $f18                  # $f18 = 26.00
    nop
    c.lt.s  $f2, $f18                  
    nop
    bc1t    lbl_80882520               
    lui     $at, 0x41D0                # $at = 41D00000
lbl_808824F0:
    mtc1    $at, $f4                   # $f4 = 26.00
    lui     $at, 0x41F0                # $at = 41F00000
    c.lt.s  $f4, $f2                   
    nop
    bc1fl   lbl_808829FC               
    lw      t9, 0x0318(s0)             # 00000318
    mtc1    $at, $f6                   # $f6 = 30.00
    nop
    c.lt.s  $f2, $f6                   
    nop
    bc1fl   lbl_808829FC               
    lw      t9, 0x0318(s0)             # 00000318
lbl_80882520:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808838B4)     # $at = 80880000
    lwc1    $f8, %lo(var_808838B4)($at) 
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_808829FC               
    lw      t9, 0x0318(s0)             # 00000318
    lhu     t3, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t4, t3, 0x0004             # t4 = 00000004
    sh      t4, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03D4             # a2 = 000003D4
    beq     $zero, $zero, lbl_808829FC 
    lw      t9, 0x0318(s0)             # 00000318
lbl_80882578:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v1, $at, lbl_80882720      
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f10                  # $f10 = 14.00
    lui     $at, 0x4180                # $at = 41800000
    c.lt.s  $f10, $f2                  
    nop
    bc1fl   lbl_808825EC               
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f16                  # $f16 = 8.00
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    c.lt.s  $f2, $f16                  
    nop
    bc1fl   lbl_808825EC               
    lui     $at, 0x4100                # $at = 41000000
    lhu     t5, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x40A0                 # a1 = 40A00000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03BC             # a2 = 000003BC
    beq     $zero, $zero, lbl_808829FC 
    lw      t9, 0x0318(s0)             # 00000318
    lui     $at, 0x4100                # $at = 41000000
lbl_808825EC:
    mtc1    $at, $f18                  # $f18 = 8.00
    lui     $at, 0x4120                # $at = 41200000
    c.lt.s  $f18, $f2                  
    nop
    bc1fl   lbl_80882654               
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    c.lt.s  $f2, $f4                   
    nop
    bc1fl   lbl_80882654               
    lui     $at, 0x3F80                # $at = 3F800000
    lhu     t7, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t8, t7, 0x0002             # t8 = 00000002
    sh      t8, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03C8             # a2 = 000003C8
    beq     $zero, $zero, lbl_808829FC 
    lw      t9, 0x0318(s0)             # 00000318
    lui     $at, 0x3F80                # $at = 3F800000
lbl_80882654:
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     $at, 0x4040                # $at = 40400000
    c.lt.s  $f6, $f2                   
    nop
    bc1fl   lbl_808826BC               
    lui     $at, 0x41D0                # $at = 41D00000
    mtc1    $at, $f8                   # $f8 = 26.00
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    c.lt.s  $f2, $f8                   
    nop
    bc1fl   lbl_808826BC               
    lui     $at, 0x41D0                # $at = 41D00000
    lhu     t9, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t1, t9, 0x0004             # t1 = 00000004
    sh      t1, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03D4             # a2 = 000003D4
    beq     $zero, $zero, lbl_808829FC 
    lw      t9, 0x0318(s0)             # 00000318
    lui     $at, 0x41D0                # $at = 41D00000
lbl_808826BC:
    mtc1    $at, $f10                  # $f10 = 26.00
    lui     $at, 0x41E0                # $at = 41E00000
    c.lt.s  $f10, $f2                  
    nop
    bc1fl   lbl_808829FC               
    lw      t9, 0x0318(s0)             # 00000318
    mtc1    $at, $f16                  # $f16 = 28.00
    addiu   a1, $zero, 0x0025          # a1 = 00000025
    c.lt.s  $f2, $f16                  
    nop
    bc1fl   lbl_808829FC               
    lw      t9, 0x0318(s0)             # 00000318
    lhu     t2, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t3, t2, 0x0008             # t3 = 00000008
    sh      t3, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03E0             # a2 = 000003E0
    beq     $zero, $zero, lbl_808829FC 
    lw      t9, 0x0318(s0)             # 00000318
lbl_80882720:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     v0, $at, lbl_8088282C      
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    nop
    c.lt.s  $f18, $f2                  
    nop
    bc1fl   lbl_80882830               
    lw      t8, 0x013C(s0)             # 0000013C
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0054($sp)           
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lwc1    $f2, 0x0054($sp)           
    lui     $at, %hi(var_808838B8)     # $at = 80880000
    lwc1    $f8, %lo(var_808838B8)($at) 
    sub.s   $f6, $f2, $f4              
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    mul.s   $f10, $f6, $f8             
    sub.s   $f18, $f16, $f10           
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80882830               
    lw      t8, 0x013C(s0)             # 0000013C
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    addiu   a1, $zero, 0x0025          # a1 = 00000025
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_808827D4               
    nop
    lhu     t4, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t5, t4, 0x0008             # t5 = 00000008
    sh      t5, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03E0             # a2 = 000003E0
lbl_808827D4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_808829FC               
    lw      t9, 0x0318(s0)             # 00000318
    lhu     t6, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t7, t6, 0x0004             # t7 = 00000004
    sh      t7, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03D4             # a2 = 000003D4
    beq     $zero, $zero, lbl_808829FC 
    lw      t9, 0x0318(s0)             # 00000318
lbl_8088282C:
    lw      t8, 0x013C(s0)             # 0000013C
lbl_80882830:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     t8, $at, lbl_8088293C      
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    nop
    c.lt.s  $f8, $f2                   
    nop
    bc1fl   lbl_80882940               
    lw      t4, 0x013C(s0)             # 0000013C
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0054($sp)           
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lwc1    $f2, 0x0054($sp)           
    lui     $at, %hi(var_808838BC)     # $at = 80880000
    lwc1    $f18, %lo(var_808838BC)($at) 
    sub.s   $f10, $f2, $f16            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    mul.s   $f4, $f10, $f18            
    sub.s   $f8, $f6, $f4              
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_80882940               
    lw      t4, 0x013C(s0)             # 0000013C
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    addiu   a1, $zero, 0x0025          # a1 = 00000025
    c.lt.s  $f0, $f16                  
    nop
    bc1f    lbl_808828E4               
    nop
    lhu     t9, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t1, t9, 0x0008             # t1 = 00000008
    sh      t1, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03E0             # a2 = 000003E0
lbl_808828E4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_808829FC               
    lw      t9, 0x0318(s0)             # 00000318
    lhu     t2, 0x03B8(s0)             # 000003B8
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t3, t2, 0x0004             # t3 = 00000004
    sh      t3, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03D4             # a2 = 000003D4
    beq     $zero, $zero, lbl_808829FC 
    lw      t9, 0x0318(s0)             # 00000318
lbl_8088293C:
    lw      t4, 0x013C(s0)             # 0000013C
lbl_80882940:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bnel    t4, $at, lbl_808829FC      
    lw      t9, 0x0318(s0)             # 00000318
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    nop
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_808829FC               
    lw      t9, 0x0318(s0)             # 00000318
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_808829D0               
    lhu     t7, 0x03B8(s0)             # 000003B8
    lhu     t5, 0x03B8(s0)             # 000003B8
    addiu   a1, $zero, 0x0025          # a1 = 00000025
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t6, t5, 0x0008             # t6 = 00000008
    sh      t6, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03E0             # a2 = 000003E0
    beq     $zero, $zero, lbl_808829FC 
    lw      t9, 0x0318(s0)             # 00000318
    lhu     t7, 0x03B8(s0)             # 000003B8
lbl_808829D0:
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFC8
    ori     t8, t7, 0x0004             # t8 = 00000004
    sh      t8, 0x03B8(s0)             # 000003B8
    jal     func_8008E2AC              
    lw      a0, 0x00B0($sp)            
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFC8
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80881FD4              
    addiu   a2, s0, 0x03D4             # a2 = 000003D4
lbl_808829F8:
    lw      t9, 0x0318(s0)             # 00000318
lbl_808829FC:
    or      t0, $zero, $zero           # t0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    blezl   t9, lbl_80882B28           
    lw      a0, 0x00AC($sp)            
    lw      t1, 0x031C(s0)             # 0000031C
lbl_80882A10:
    lw      a0, 0x00B0($sp)            
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFA0
    addu    t2, t1, v0                 
    lh      t3, 0x0028(t2)             # 00000028
    addiu   a3, $sp, 0x003C            # a3 = FFFFFF94
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4                   
    swc1    $f8, 0x0048($sp)           
    lw      t4, 0x031C(s0)             # 0000031C
    addu    t5, t4, v0                 
    lh      t6, 0x002A(t5)             # 0000002A
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f10, $f16                 
    swc1    $f10, 0x004C($sp)          
    lw      t7, 0x031C(s0)             # 0000031C
    addu    t8, t7, v0                 
    lh      t9, 0x002C(t8)             # 0000002C
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f6, $f18                  
    swc1    $f6, 0x0050($sp)           
    lw      t1, 0x031C(s0)             # 0000031C
    addu    t2, t1, v0                 
    lbu     a1, 0x003C(t2)             # 0000003C
    sw      t0, 0x0038($sp)            
    jal     func_8008E2AC              
    sw      v0, 0x0024($sp)            
    lwc1    $f4, 0x003C($sp)           
    lw      v0, 0x0024($sp)            
    lw      t5, 0x031C(s0)             # 0000031C
    trunc.w.s $f8, $f4                   
    lw      t0, 0x0038($sp)            
    addu    t6, t5, v0                 
    mfc1    t4, $f8                    
    addiu   t0, t0, 0x0001             # t0 = 00000001
    sh      t4, 0x0030(t6)             # 00000030
    lwc1    $f16, 0x0040($sp)          
    lw      t9, 0x031C(s0)             # 0000031C
    trunc.w.s $f10, $f16                 
    addu    t1, t9, v0                 
    mfc1    t8, $f10                   
    nop
    sh      t8, 0x0032(t1)             # 00000032
    lwc1    $f18, 0x0044($sp)          
    lw      t5, 0x031C(s0)             # 0000031C
    trunc.w.s $f6, $f18                  
    addu    t4, t5, v0                 
    mfc1    t3, $f6                    
    nop
    sh      t3, 0x0034(t4)             # 00000034
    lw      t6, 0x031C(s0)             # 0000031C
    addu    v1, t6, v0                 
    lh      t7, 0x002E(v1)             # 0000002E
    lwc1    $f4, 0x0038(v1)            # 00000038
    addiu   v0, v0, 0x0040             # v0 = 00000040
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8                  
    mul.s   $f10, $f4, $f16            
    trunc.w.s $f18, $f10                 
    mfc1    t8, $f18                   
    nop
    sh      t8, 0x0036(v1)             # 00000036
    lw      t1, 0x0318(s0)             # 00000318
    slt     $at, t0, t1                
    bnel    $at, $zero, lbl_80882A10   
    lw      t1, 0x031C(s0)             # 0000031C
    lw      a0, 0x00AC($sp)            
lbl_80882B28:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s0, 0x0300             # a2 = 00000300
    addu    a1, a0, $at                
    sw      a1, 0x0024($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    sw      a2, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a0, 0x00AC($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000
    jr      $ra                        
    nop


func_80882B68:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a3, 0x0054($sp)            
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lw      a3, 0x0000(a1)             # 00000000
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     a2, $at, lbl_80882C0C      
    sw      a3, 0x002C($sp)            
    lw      t7, 0x0148(s0)             # 00000148
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0020             # t1 = DB060020
    bne     t7, $zero, lbl_80882C0C    
    lui     a0, %hi(var_8088371C)      # a0 = 80880000
    lbu     t8, 0x036A(s0)             # 0000036A
    lui     a1, %hi(var_80883728)      # a1 = 80880000
    lui     $at, 0x00FF                # $at = 00FF0000
    addu    a1, a1, t8                 
    lbu     a1, %lo(var_80883728)(a1)  
    lw      v1, 0x02C0(a3)             # 000002C0
    sll     t2, a1,  2                 
    addu    a0, a0, t2                 
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a3)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      a0, %lo(var_8088371C)(a0)  
    lui     t7, 0x8012                 # t7 = 80120000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, a0,  4                 
    srl     t5, t4, 28                 
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, a0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80882C54 
    or      v0, t0, $zero              # v0 = 00000001
lbl_80882C0C:
    lw      t1, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t1, $at, lbl_80882C54      
    or      v0, t0, $zero              # v0 = 00000001
    lw      t2, 0x01E0(s0)             # 000001E0
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    sll     t4, t2, 13                 
    bgezl   t4, lbl_80882C54           
    or      v0, t0, $zero              # v0 = 00000001
    bne     a2, $at, lbl_80882C50      
    lw      a0, 0x002C($sp)            
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x6530             # a3 = 06006530
    addiu   a1, s0, 0x0150             # a1 = 00000150
    jal     func_8008DE88              
    sw      $zero, 0x0010($sp)         
    or      t0, $zero, $zero           # t0 = 00000000
lbl_80882C50:
    or      v0, t0, $zero              # v0 = 00000000
lbl_80882C54:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80882C68:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x01E0(s0)             # 000001E0
    lw      t8, 0x002C($sp)            
    andi    t7, t6, 0x2000             # t7 = 00000000
    bnel    t7, $zero, lbl_80882D28    
    lw      $ra, 0x0024($sp)           
    jal     func_8007E298              
    lw      a0, 0x0000(t8)             # 00000000
    lw      t9, 0x01E0(s0)             # 000001E0
    lui     $at, 0x0800                # $at = 08000000
    or      a0, s0, $zero              # a0 = 00000000
    or      t0, t9, $at                # t0 = 08000000
    andi    t2, t0, 0x0004             # t2 = 00000000
    beq     t2, $zero, lbl_80882CE4    
    sw      t0, 0x01E0(s0)             # 000001E0
    lui     t3, %hi(func_80882B68)     # t3 = 80880000
    addiu   t3, t3, %lo(func_80882B68) # t3 = 80882B68
    lui     a3, %hi(func_80882070)     # a3 = 80880000
    addiu   a3, a3, %lo(func_80882070) # a3 = 80882070
    sw      t3, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    addiu   a2, s0, 0x0150             # a2 = 00000150
    jal     func_8008E204              
    sw      $zero, 0x0014($sp)         
    beq     $zero, $zero, lbl_80882D10 
    lw      v0, 0x0234(s0)             # 00000234
lbl_80882CE4:
    lui     t4, %hi(func_80882B68)     # t4 = 80880000
    addiu   t4, t4, %lo(func_80882B68) # t4 = 80882B68
    lui     a3, %hi(func_80882070)     # a3 = 80880000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0014($sp)            
    addiu   a3, a3, %lo(func_80882070) # a3 = 80882070
    sw      t4, 0x0010($sp)            
    lw      a1, 0x002C($sp)            
    jal     func_8008E204              
    addiu   a2, s0, 0x0150             # a2 = 00000150
    lw      v0, 0x0234(s0)             # 00000234
lbl_80882D10:
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80882D28    
    lw      $ra, 0x0024($sp)           
    jalr    $ra, v0                    
    lw      a1, 0x002C($sp)            
    lw      $ra, 0x0024($sp)           
lbl_80882D28:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80882D40: .word \
0x06006D50, 0x06005584, 0x06004DEC, 0x06003CEC, \
0x060075F0, 0x060032B0, 0x06001E2C, 0x06002470, \
0x06002C38
var_80882D64: .word \
0x06009FC4, 0x0600A6B4, 0x0600901C, 0x060085E0, \
0x0600AF60, 0x06007B54, 0x0600506C, 0x06005684, \
0x06005E20
var_80882D88: .word var_80882D40
.word var_80882D64
var_80882D90: .word \
0x3F2AAAAB, 0x3F2AAAAB, 0x3F800000, 0x3F800000, \
0x3F800000, 0x3F800000
var_80882DA8: .word 0x3F800000, 0x3F2AAAAB, 0x3F2AAAAB
var_80882DB4: .word 0x06009D74, 0x06004A24
var_80882DBC: .word 0x00140100, 0x00000010, 0x001A0000, 0x000003EC
.word func_80878FD0
.word func_80879700
.word func_8088160C
.word func_80882C68
var_80882DDC: .word \
0x0A080039, 0x12010000, 0x00000000, 0x00000400, \
0x00040000, 0xFFCFFFFF, 0x00000000, 0x19000100, \
0x00140046, 0x00000000, 0x00000000
var_80882E08: .word \
0x0A000039, 0x12010000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00000100, \
0x00140046, 0x00000000, 0x00000000
var_80882E34: .word \
0x00000000, 0x00000000, 0x00000000, 0x0001F824, \
0x00000000, 0x00790100, 0x0D000000, 0x00000000, \
0x00140064
var_80882E58: .word 0x0A000939, 0x12000000, 0x00000001
.word var_80882E34
var_80882E68: .word 0x0A000023, 0x0064FE00
var_80882E70: .byte \
0x00, 0x51, 0x00, 0x10, 0x00, 0x00, 0x05, 0x3D, 0x00, 0x00, 0x00, 0x51, 0xFA, 0xEF, 0x00, 0x00, \
0x05, 0xB3, 0x00, 0x00, 0x00, 0x51, 0xEA, 0xD8, 0xFE, 0xD4, 0x05, 0x10, 0x00, 0x00, 0x00, 0x51, \
0xED, 0xC5, 0xFE, 0xD4, 0x0E, 0x24, 0x00, 0x00, 0x00, 0x51, 0xF1, 0x03, 0x00, 0x51, 0x15, 0xA1, \
0x00, 0x00, 0x00, 0x51, 0xEC, 0x1B, 0xFF, 0x1E, 0x1A, 0x05, 0x00, 0x00, 0x00, 0x51, 0xE6, 0x44, \
0xFF, 0xB1, 0x13, 0xBD, 0x00, 0x00, 0x00, 0x51, 0xE4, 0x60, 0xFE, 0x0C, 0x1D, 0x72, 0x00, 0x00, \
0x00, 0x51, 0xE8, 0x05, 0xFE, 0x0C, 0x22, 0xCE, 0x00, 0x00, 0x00, 0x51, 0xDE, 0xCF, 0xFE, 0xD4, \
0x1E, 0x7A, 0x00, 0x00, 0x00, 0x51, 0xEA, 0x97, 0xFE, 0x0D, 0x2F, 0x5F, 0x00, 0x00, 0x00, 0x51, \
0xED, 0x38, 0xFD, 0x44, 0x35, 0x0F, 0x00, 0x00, 0x00, 0x51, 0xF2, 0xA8, 0xFE, 0x16, 0x2F, 0x3C, \
0x00, 0x00, 0x00, 0x51, 0xF4, 0x9D, 0x00, 0x64, 0x20, 0x93, 0x00, 0x00, 0x00, 0x51, 0xF7, 0x1B, \
0xFE, 0x0C, 0x33, 0xBF, 0x00, 0x00, 0x00, 0x51, 0xFB, 0xFE, 0xFE, 0x0C, 0x2F, 0x45, 0x00, 0x00, \
0x00, 0x51, 0x05, 0x93, 0xFE, 0x0C, 0x34, 0x1D, 0x00, 0x00, 0x00, 0x51, 0xFF, 0x38, 0xFE, 0x1A, \
0x27, 0xDD, 0x00, 0x00, 0x00, 0x51, 0xFA, 0x43, 0x00, 0x64, 0x1D, 0x48, 0x00, 0x00, 0x00, 0x51, \
0xFC, 0x1D, 0x00, 0xA8, 0x16, 0x14, 0x00, 0x00, 0x00, 0x51, 0x07, 0x92, 0x00, 0x59, 0x18, 0x58, \
0x00, 0x00, 0x00, 0x51, 0x05, 0x6B, 0xFF, 0x97, 0x23, 0xF6, 0x00, 0x00, 0x00, 0x51, 0x06, 0x23, \
0xFF, 0x21, 0x1E, 0x15, 0x00, 0x00, 0x00, 0x51, 0x0F, 0x35, 0xFF, 0x87, 0x1B, 0x9C, 0x00, 0x00, \
0x00, 0x51, 0x0C, 0x6B, 0x01, 0x75, 0x14, 0x65, 0x00, 0x00, 0x00, 0x51, 0x12, 0x46, 0xFF, 0xEC, \
0x0F, 0x1D, 0x00, 0x00, 0x00, 0x51, 0x0D, 0x84, 0x00, 0xF6, 0x10, 0x6F, 0x00, 0x00, 0x00, 0x51, \
0x0E, 0x66, 0x00, 0x80, 0x09, 0x3E, 0x00, 0x00, 0x00, 0x51, 0x06, 0xFF, 0x00, 0x12, 0x00, 0x98, \
0x00, 0x00, 0x00, 0x51, 0x0E, 0x53, 0xFF, 0xF0, 0x05, 0x77, 0x00, 0x00, 0x00, 0x51, 0x07, 0x23, \
0xFF, 0xF1, 0x03, 0xD7, 0x00, 0x00, 0x00, 0x51, 0x06, 0x26, 0x01, 0x8F, 0x10, 0xDE, 0x00, 0x00, \
0x00, 0x51, 0x02, 0xCC, 0x00, 0x5F, 0x0D, 0x3F, 0x00, 0x00, 0x00, 0x51, 0xFB, 0x5B, 0xFF, 0xD7, \
0x12, 0x83, 0x00, 0x00, 0x00, 0x51, 0xF8, 0x48, 0xFF, 0x55, 0x10, 0x4C, 0x00, 0x00, 0x00, 0x51, \
0x05, 0x22, 0x01, 0x87, 0x16, 0x21, 0x00, 0x00, 0x00, 0x51, 0x00, 0x70, 0x00, 0x00, 0x07, 0xA7, \
0x00, 0x00, 0x00, 0x51, 0xF4, 0x3D, 0xFF, 0x91, 0x24, 0xB5, 0x00, 0x00, 0x00, 0x51, 0xE9, 0xD6, \
0xFE, 0xF2, 0x21, 0x89, 0x00, 0x00, 0x00, 0x51, 0xDD, 0x63, 0xFE, 0xD4, 0x1E, 0x9C, 0x00, 0x00, \
0x00, 0x51, 0xE8, 0x58, 0xFE, 0x0C, 0x1E, 0x82, 0x00, 0x00, 0x00, 0x51, 0xE3, 0x76, 0xFE, 0x0C, \
0x17, 0x6A, 0x00, 0x00, 0x00, 0x51, 0xE3, 0x77, 0xFE, 0x0C, 0x1D, 0xB5, 0x00, 0x00, 0x00, 0x51, \
0xE2, 0xF1, 0xFE, 0xD4, 0x1D, 0xB0, 0x00, 0x00, 0x00, 0x51, 0xE2, 0xD8, 0xFE, 0xD4, 0x18, 0x7C, \
0x00, 0x00, 0x00, 0x51, 0xE0, 0x70, 0xFE, 0xD4, 0x1D, 0x81, 0x00, 0x00, 0x00, 0x51, 0xE0, 0x65, \
0xFE, 0xD4, 0x1C, 0xB5, 0x00, 0x00, 0x00, 0x51, 0xDD, 0xAF, 0xFE, 0xD4, 0x1C, 0xD7, 0x00, 0x00, \
0x00, 0x51, 0xDD, 0xD7, 0xFE, 0xD4, 0x1D, 0x54, 0x00, 0x00, 0x00, 0x51, 0xDD, 0xB7, 0xFE, 0xD4, \
0x1E, 0x6C, 0x00, 0x00, 0x00, 0x51, 0xE0, 0x90, 0xFE, 0xD5, 0x1E, 0x3A, 0x00, 0x00, 0x00, 0x51, \
0xE3, 0x53, 0xFF, 0x48, 0x1E, 0x32, 0x00, 0x00, 0x00, 0x51, 0xE6, 0xF6, 0xFE, 0xE0, 0x1E, 0x90, \
0x00, 0x00, 0x00, 0x51, 0xE7, 0x4A, 0xFE, 0xDE, 0x20, 0x0D, 0x00, 0x00, 0x00, 0x51, 0xE6, 0x6E, \
0xFE, 0xDC, 0x20, 0xD0, 0x00, 0x00, 0x00, 0x51, 0xE2, 0x93, 0xFF, 0x4C, 0x21, 0x0B, 0x00, 0x00, \
0x00, 0x51, 0xE0, 0xA8, 0xFE, 0xD9, 0x1E, 0xDF, 0x00, 0x00, 0x00, 0x51, 0xE0, 0x72, 0xFE, 0xCC, \
0x1F, 0x3A, 0x00, 0x00, 0x00, 0x51, 0xDB, 0x2F, 0xFE, 0xE1, 0x1E, 0x10, 0x00, 0x00, 0x00, 0x51, \
0xDB, 0x96, 0xFE, 0xDC, 0x1D, 0x99, 0x00, 0x00, 0x00, 0x51, 0xDA, 0x7E, 0xFF, 0x39, 0x1B, 0xF8, \
0x00, 0x00, 0x00, 0x51, 0xDB, 0xA5, 0xFE, 0xD4, 0x1E, 0x4E, 0x00, 0x00, 0x00, 0x51, 0xDB, 0xF2, \
0xFE, 0xD4, 0x1D, 0xDA, 0x00, 0x00, 0x00, 0x51, 0xE2, 0x7C, 0xFE, 0x0D, 0x21, 0xF7, 0x00, 0x00, \
0x00, 0x51, 0xE6, 0xDA, 0xFE, 0x0C, 0x21, 0x9E, 0x00, 0x00, 0x00, 0x51, 0xE8, 0x42, 0xFE, 0x0C, \
0x20, 0x42, 0x00, 0x00, 0x00, 0x51, 0xE7, 0xA7, 0xFE, 0x0C, 0x1D, 0xBD, 0x00, 0x00, 0x00, 0x51, \
0xEC, 0x55, 0xFF, 0x33, 0x1E, 0x86, 0x00, 0x00, 0x00, 0x51, 0xE8, 0xAD, 0xFE, 0x0C, 0x21, 0x35, \
0x00, 0x00, 0x00, 0x51, 0xE9, 0xA4, 0xFE, 0x0E, 0x27, 0x8B, 0x00, 0x00, 0x00, 0x51, 0xEC, 0x1A, \
0xFE, 0x78, 0x2B, 0x62, 0x00, 0x00, 0x00, 0x51, 0xEC, 0x0F, 0xFE, 0x77, 0x2C, 0x30, 0x00, 0x00, \
0x00, 0x51, 0xEE, 0x83, 0xFE, 0xC6, 0x2B, 0x7C, 0x00, 0x00, 0x00, 0x51, 0xF0, 0xE5, 0xFE, 0x84, \
0x2C, 0x9B, 0x00, 0x00, 0x00, 0x51, 0xF4, 0x78, 0xFE, 0x0C, 0x2E, 0xA8, 0x00, 0x00, 0x00, 0x51, \
0xF4, 0xC9, 0xFE, 0x18, 0x2D, 0xDF, 0x00, 0x00, 0x00, 0x51, 0xF1, 0x0B, 0xFE, 0x8C, 0x2C, 0x3F, \
0x00, 0x00, 0x00, 0x51, 0xEE, 0xA9, 0xFE, 0xDB, 0x2A, 0xED, 0x00, 0x00, 0x00, 0x51, 0xEC, 0x6A, \
0xFE, 0x83, 0x2B, 0x4E, 0x00, 0x00, 0x00, 0x51, 0xEC, 0x07, 0xFF, 0x44, 0x2A, 0xD8, 0x00, 0x00, \
0x00, 0x51, 0xEB, 0x6B, 0xFF, 0x44, 0x2B, 0x94, 0x00, 0x00, 0x00, 0x51, 0xEA, 0x24, 0xFF, 0x4E, \
0x26, 0xF4, 0x00, 0x00, 0x00, 0x51, 0xE9, 0x57, 0xFE, 0xE0, 0x21, 0x46, 0x00, 0x00, 0x00, 0x51, \
0xEC, 0xD2, 0xFF, 0x4E, 0x1E, 0xFB, 0x00, 0x00, 0x00, 0x51, 0xF1, 0xFE, 0x00, 0x49, 0x1F, 0xCC, \
0x00, 0x00, 0x00, 0x51, 0xEE, 0x79, 0xFF, 0x96, 0x24, 0x92, 0x00, 0x00, 0x00, 0x51, 0xEF, 0x0D, \
0xFF, 0x90, 0x19, 0x0C, 0x00, 0x00, 0x00, 0x51, 0xF2, 0xA7, 0x00, 0x69, 0x20, 0x02, 0x00, 0x00, \
0x00, 0x51, 0xEE, 0x67, 0xFF, 0xEC, 0x19, 0xD0, 0x00, 0x00, 0x00, 0x51, 0xEC, 0x52, 0xFF, 0x39, \
0x19, 0xCB, 0x00, 0x00, 0x00, 0x51, 0xEE, 0x7F, 0x00, 0x01, 0x19, 0x30, 0x00, 0x00, 0x00, 0x51, \
0xEC, 0x58, 0xFF, 0x58, 0x19, 0x12, 0x00, 0x00, 0x00, 0x51, 0xEB, 0x78, 0xFD, 0x44, 0x37, 0xF9, \
0x00, 0x00, 0x00, 0x51, 0xE9, 0x8B, 0xFC, 0xCC, 0x3C, 0x14, 0x00, 0x00, 0x00, 0x51, 0xF3, 0xCE, \
0xFD, 0x44, 0x35, 0x28, 0x00, 0x00, 0x00, 0x51, 0xF1, 0x52, 0xFD, 0xF3, 0x33, 0xAC, 0x00, 0x00, \
0x00, 0x51, 0xF1, 0xAA, 0xFE, 0x0C, 0x33, 0x43, 0x00, 0x00, 0x00, 0x51, 0xF4, 0x94, 0xFE, 0x0C, \
0x34, 0xD6, 0x00, 0x00, 0x00, 0x51, 0x05, 0x6D, 0xFF, 0x8D, 0x24, 0x9A, 0x00, 0x00, 0x00, 0x51, \
0x02, 0x24, 0xFF, 0x8C, 0x22, 0xB9, 0x00, 0x00, 0x00, 0x51, 0xFF, 0x96, 0xFF, 0x95, 0x21, 0x52, \
0x00, 0x00, 0x00, 0x51, 0xF9, 0xB8, 0x00, 0x55, 0x1D, 0xDE, 0x00, 0x00, 0x00, 0x51, 0xEB, 0x4C, \
0xFD, 0x44, 0x35, 0xCC, 0x00, 0x00, 0x00, 0x51, 0xEC, 0x06, 0xFD, 0x44, 0x34, 0x58, 0x00, 0x00, \
0x00, 0x51, 0xEE, 0x2F, 0xFD, 0x44, 0x35, 0x84, 0x00, 0x00, 0x00, 0x51, 0xED, 0x66, 0xFD, 0x44, \
0x37, 0x04, 0x00, 0x00, 0x00, 0x51, 0xF4, 0x76, 0x00, 0x64, 0x20, 0x18, 0x00, 0x00, 0x00, 0x51, \
0x05, 0xB4, 0xFF, 0x98, 0x24, 0x1E, 0x00, 0x00, 0x00, 0x51, 0x02, 0x75, 0xFF, 0x97, 0x22, 0x57, \
0x00, 0x00, 0x00, 0x51, 0xFF, 0xF6, 0xFF, 0xA6, 0x20, 0xE3, 0x00, 0x00, 0x00, 0x51, 0xFA, 0x4A, \
0x00, 0x64, 0x1D, 0x50, 0x00, 0x00, 0x00, 0x51, 0xF4, 0x36, 0xFE, 0x0C, 0x30, 0xCD, 0x00, 0x00, \
0x00, 0x51, 0xF4, 0x4E, 0xFE, 0xC9, 0x28, 0x5B, 0x00, 0x00, 0x00, 0x51, 0xF0, 0x5A, 0xFD, 0x44, \
0x37, 0x48, 0x00, 0x00, 0x00, 0x51, 0xEF, 0x0B, 0xFE, 0x0C, 0x31, 0xC7, 0x00, 0x00, 0x00, 0x51, \
0xE9, 0x09, 0xFE, 0x0F, 0x1A, 0x8F, 0x00, 0x00, 0x00, 0x51, 0x00, 0x16, 0xFE, 0x27, 0x27, 0x77, \
0x00, 0x00, 0x00, 0x51, 0xFA, 0x93, 0xFF, 0x40, 0x22, 0xAA, 0x00, 0x00, 0x00, 0x51, 0xFF, 0xFC, \
0x00, 0x5C, 0x1A, 0xD2, 0x00, 0x00, 0x00, 0x51, 0x01, 0xE3, 0x00, 0x68, 0x19, 0xED, 0x00, 0x00, \
0x00, 0x51, 0x06, 0x2C, 0x00, 0xB7, 0x17, 0x63, 0x00, 0x00, 0x00, 0x51, 0x06, 0x0C, 0x01, 0x34, \
0x13, 0xD5, 0x00, 0x00, 0x00, 0x51, 0x05, 0xE7, 0x01, 0x8F, 0x10, 0xAB, 0x00, 0x00, 0x00, 0x51, \
0x05, 0x4E, 0x01, 0x81, 0x10, 0xAF, 0x00, 0x00, 0x00, 0x51, 0x05, 0x63, 0x01, 0x8B, 0x13, 0xC7, \
0x00, 0x00, 0x00, 0x51, 0x05, 0x50, 0x01, 0x8A, 0x16, 0xEE, 0x00, 0x00, 0x00, 0x51, 0x03, 0x2D, \
0x01, 0x1B, 0x18, 0x32, 0x00, 0x00, 0x00, 0x51, 0xFF, 0xC7, 0x00, 0x65, 0x1A, 0x57, 0x00, 0x00, \
0x00, 0x51, 0x00, 0x5B, 0x01, 0x45, 0x14, 0x17, 0x00, 0x00, 0x00, 0x51, 0x05, 0x91, 0xFF, 0x2A, \
0x1D, 0xEB, 0x00, 0x00, 0x00, 0x51, 0x0D, 0x9F, 0xFF, 0xED, 0x03, 0x70, 0x00, 0x00, 0x00, 0x51, \
0x0B, 0x75, 0x00, 0x98, 0x08, 0x2E, 0x00, 0x00, 0x00, 0x51, 0x0B, 0x48, 0xFF, 0x6F, 0x1A, 0xCE, \
0x00, 0x00, 0x00, 0x51, 0x05, 0xE7, 0x00, 0x43, 0x19, 0x47, 0x00, 0x00, 0x00, 0x51, 0x0F, 0xD3, \
0xFF, 0xD1, 0x06, 0xBA, 0x00, 0x00, 0x00, 0x51, 0xE3, 0x59, 0xFE, 0x0C, 0x21, 0xB3, 0x00, 0x00, \
0x00, 0x51, 0xE1, 0xD0, 0xFE, 0x32, 0x21, 0x32, 0x00, 0x00, 0x00, 0x51, 0xE1, 0x91, 0xFE, 0x42, \
0x22, 0x80, 0x00, 0x00, 0x00, 0x51, 0xF4, 0x9D, 0xFE, 0x4D, 0x2C, 0x46, 0x00, 0x00, 0x00, 0x51, \
0x00, 0xA5, 0xFE, 0xEA, 0x0D, 0x18, 0x00, 0x00, 0x00, 0x57, 0xF7, 0xC3, 0xFC, 0x8E, 0x06, 0xBC, \
0x00, 0x00, 0x00, 0x57, 0xFE, 0xB8, 0xFB, 0x2A, 0x0A, 0x91, 0x00, 0x00, 0x00, 0x57, 0xF3, 0xEC, \
0xFB, 0xF7, 0x0D, 0xC7, 0x00, 0x00, 0x00, 0x5A, 0x0A, 0x7F, 0xFE, 0xF3, 0x02, 0xF1, 0x00, 0x00, \
0x00, 0x5A, 0x08, 0x12, 0xFF, 0x7C, 0x01, 0x3D, 0x00, 0x00, 0x00, 0x5A, 0x02, 0x0B, 0xFF, 0xF8, \
0x02, 0x7B, 0x00, 0x00, 0x00, 0x5A, 0x02, 0x2E, 0x00, 0x24, 0xFE, 0xBD, 0x00, 0x00, 0x00, 0x5A, \
0x02, 0x67, 0x00, 0x33, 0xFC, 0xB9, 0x00, 0x00, 0x00, 0x5A, 0xFD, 0x9A, 0x00, 0x20, 0x00, 0x1D, \
0x00, 0x00, 0x00, 0x5A, 0xFD, 0x81, 0xFF, 0xFD, 0x02, 0x29, 0x00, 0x00, 0x00, 0x5A, 0xFD, 0xE4, \
0x00, 0x0A, 0xFC, 0x87, 0x00, 0x00, 0x00, 0x5A, 0xF9, 0x7E, 0x00, 0x3A, 0x01, 0x7A, 0x00, 0x00, \
0x00, 0x5A, 0xF4, 0x1C, 0x00, 0xD2, 0xFD, 0x78, 0x00, 0x00, 0x00, 0x5D, 0xFD, 0x5A, 0x00, 0x15, \
0xFD, 0x91, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x95, 0x01, 0x4D, 0xF6, 0x3D, 0x00, 0x00, 0x00, 0x5D, \
0x01, 0xF3, 0x02, 0x45, 0xFD, 0xDD, 0x00, 0x00, 0x00, 0x5D, 0x0C, 0x73, 0x05, 0x85, 0xF1, 0x41, \
0x00, 0x00, 0x00, 0x5D, 0x0C, 0x7E, 0x05, 0x85, 0x01, 0x33, 0x00, 0x00, 0x00, 0x5D, 0x0D, 0x34, \
0x05, 0x85, 0xFB, 0x50, 0x00, 0x00, 0x00, 0x5D, 0xFC, 0x3A, 0x00, 0x01, 0xFF, 0xC8, 0x00, 0x00, \
0x00, 0x5D, 0xFC, 0x3A, 0x00, 0x18, 0xFD, 0x07, 0x00, 0x00, 0x00, 0x5D, 0xFD, 0x4A, 0x00, 0xAE, \
0xF4, 0xFC, 0x00, 0x00, 0x00, 0x63, 0x04, 0x0F, 0x00, 0x00, 0x08, 0x03, 0x00, 0x00, 0x00, 0x63, \
0xFA, 0x5D, 0x00, 0x00, 0x05, 0x95, 0x00, 0x00, 0x00, 0x63, 0x03, 0x58, 0x00, 0x00, 0xFC, 0x6A, \
0x00, 0x00, 0x00, 0x63, 0x03, 0x72, 0x00, 0x00, 0xF7, 0x30, 0x00, 0x00, 0x00, 0x63, 0xFC, 0x15, \
0x00, 0x00, 0xFD, 0x0D, 0x00, 0x00, 0x00, 0x63, 0xF7, 0x32, 0x00, 0x00, 0xFD, 0x8B, 0x00, 0x00, \
0x00, 0x63, 0x03, 0x8B, 0x00, 0x00, 0xF6, 0xE0, 0x00, 0x00
var_8088350A: .byte 0x00, 0x00
var_8088350C: .word 0xFF3DFFD8, 0x00E10078, 0x0168C000, 0x07D0FEF2
var_8088351C: .word \
0xFFCCFF8B, 0xFF3DFFD8, 0xFF10FF88, 0xFE984000, \
0x07D0010E, 0xFFCCFF8B
var_80883534: .word \
0x04200001, 0xF9FC000B, 0x2A8D0639, 0x0001FC27, \
0x000AFC27, 0x066D0001, 0xFF23000B, 0xE89103D9, \
0x00010193, 0x000ABB9C, 0xFC010001, 0x0162000B, \
0xA37DF971, 0x0001FF2B, 0x000A889C, 0xF9F00001, \
0xFC10000B, 0x638DFC4D, 0xFFFFF9BC, 0x000A4002
var_80883584: .word 0x00000008
.word var_80883534
var_8088358C: .word 0x00000000, 0x00000010
var_80883594: .word 0xB0F80258, 0x30FC012C
var_8088359C: .word 0x00000000, 0x01010101, 0x01010100
var_808835A8: .word \
0x00000001, 0x00000003, 0x00000000, 0x00000003, \
0x00000001, 0x00000000
var_808835C0: .word 0x00070006, 0x00020002
var_808835C8: .byte 0x00, 0x01
var_808835CA: .byte 0x00, 0x01
var_808835CC: .byte 0x00, 0x00
var_808835CE: .byte 0x00, 0x00
var_808835D0: .word 0x00000000
var_808835D4: .word 0x00000000
.word func_8087D1A4
.word func_8087D4B8
.word func_8087D748
.word func_8087DA10
.word func_8087DC48
var_808835EC: .word 0x00000000
.word func_8087D210
.word func_8087D4F0
.word func_8087D868
.word func_8087DAF8
.word func_8087DDD0
var_80883604: .word \
0x00000024, 0x00000001, 0x00000025, 0x00000002, \
0x00000026, 0x00000003, 0x00000040, 0x00000004, \
0x00000041, 0x00000005
var_8088362C: .word \
0x0E100585, 0xEC41000B, 0x80010D20, 0x0585EB9C, \
0x0005C000, 0x0C1C0585, 0xECDC0005, 0x00000E10, \
0x0585EFFC, 0x000B0000, 0x0E100585, 0x0168000B, \
0x00000000
var_80883660: .word 0x00000005
.word var_8088362C
var_80883668: .word func_80879860
.word func_8087BF98
.word func_8087C300
.word func_8087C75C
.word func_8087CFF4
.word func_80879F8C
.word func_8087A1AC
.word func_8087A354
.word func_8087A68C
.word func_8087AA4C
.word func_8087AD2C
.word func_8087B024
.word func_8087B290
.word func_8087B544
.word func_8087BA54
.word func_8087BD84
.word func_8087F6D8
.word func_8087DFEC
.word func_8087E6A0
.word func_8087E954
var_808836B8: .word 0x00000000, 0x00000000, 0x00000000
var_808836C4: .word 0x00000000, 0x3F800000, 0x00000000
var_808836D0: .word 0x00000000, 0x00000000, 0x00000000
var_808836DC: .word 0x40A00000, 0xC0800000, 0x40A00000
var_808836E8: .word 0x44160000, 0xC4D0C000, 0x00000000
var_808836F4: .word 0x00000000, 0x00000000, 0x00000000
var_80883700: .word \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x00000003, 0x00000007, 0x0000000E
var_8088371C: .word 0x06009F80, 0x0600A180, 0x0600A380
var_80883728: .word 0x00010201, 0x00000000

.section .rodata

var_80883730: .word 0x414CCCCD
var_80883734: .word 0x414CCCCD
var_80883738: .word 0x47AFC800
var_8088373C: .word 0x3F4CCCCD
var_80883740: .word 0x3EF0A3D7
var_80883744: .word 0x3EF0A3D7
var_80883748: .word 0x3ECCCCCD
var_8088374C: .word 0x3ECCCCCD
var_80883750: .word 0x3F707379
var_80883754: .word 0x3F333333
var_80883758: .word 0x3C03126F
var_8088375C: .word 0x7E967699
var_80883760: .word 0x41411EB8
var_80883764: .word 0x3D75C28F
var_80883768: .word 0x3C97B426
var_8088376C: .word 0x3C23D70A
var_80883770: .word 0x38021CC8
var_80883774: .word 0x400CCCCD
var_80883778: .word 0x3FE6A090, 0x2DE00D1B
var_80883780: .word 0x3FE6A090, 0x2DE00D1B
var_80883788: .word 0x3FE6A090, 0x2DE00D1B
var_80883790: .word 0x3FE6A090, 0x2DE00D1B
var_80883798: .word 0x3D75C28F
var_8088379C: .word 0x3D75C28F
var_808837A0: .word 0x3C23D70A
var_808837A4: .word 0x3D75C28F
var_808837A8: .word 0x3E99999A
var_808837AC: .word 0x3F19999A
var_808837B0: .word 0x3C23D70A
var_808837B4: .word 0x3C23D70A
var_808837B8: .word 0x3C23D70A
var_808837BC: .word 0x3C23D70A
var_808837C0: .word 0x46FFFE00
var_808837C4: .word 0x46FFFE00
var_808837C8: .word 0xC6FFFE00
var_808837CC: .word 0x46FFFE00
var_808837D0: .word 0x3E99999A
var_808837D4: .word 0x3E4CCCCD
var_808837D8: .word 0x3E4CCCCD
var_808837DC: .word 0x3E99999A
var_808837E0: .word 0x3E99999A
var_808837E4: .word 0x3E99999A
var_808837E8: .word 0x3C23D70A
var_808837EC: .word 0x3C23D70A
var_808837F0: .word 0x3C23D70A
var_808837F4: .word 0x3E99999A
var_808837F8: .word 0x3E99999A
var_808837FC: .word 0x3E99999A
var_80883800: .word 0x3ECCCCCD
var_80883804: .word 0x3ECCCCCD
var_80883808: .word 0x3E4CCCCD
var_8088380C: .word 0x3E4CCCCD
var_80883810: .word 0x3ECCCCCD
var_80883814: .word 0x3EF0A3D7
var_80883818: .word 0x3ECCCCCD
var_8088381C: .word 0x3EF0A3D7
var_80883820: .word 0x3E99999A
var_80883824: .word 0x3DCCCCCD
var_80883828: .word 0x3C23D70A
var_8088382C: .word 0x4242CCCD
var_80883830: .word 0xBECCCCCD
var_80883834: .word 0x38000100
var_80883838: .word 0x3F51B3F3
var_8088383C: .word 0x4622F983
var_80883840: .word 0x38000100
var_80883844: .word 0x3F51B3F3
var_80883848: .word 0x45FFF800
var_8088384C: .word 0x4622F983
var_80883850: .word 0x38000100
var_80883854: .word 0x4622F983
var_80883858: .word 0x3F350481
var_8088385C: .word 0xBE99999A
var_80883860: .word 0x414CCCCD
var_80883864: .word 0x4622F983
var_80883868: .word 0x38000100
var_8088386C: .word 0x38000100
var_80883870: .word 0x38000100
var_80883874: .word 0x3F51B3F3
var_80883878: .word 0x38000100
var_8088387C: .word 0x3F51B3F3
var_80883880: .word 0x415CCCCD
var_80883884: .word 0x415CCCCD
var_80883888: .word 0x3DCCCCCD
var_8088388C: .word 0x3F5DB3D7
var_80883890: .word 0xBF5DB3D7
var_80883894: .word 0x43F00001
var_80883898: .word 0x44E38000
var_8088389C: .word 0x3CCCCCCD
var_808838A0: .word 0x3E31D0D4
var_808838A4: .word 0x3F19999A
var_808838A8: .word 0x3F333333
var_808838AC: .word 0x3F333333
var_808838B0: .word 0x3F333333
var_808838B4: .word 0x3F333333
var_808838B8: .word 0x3D70F0F1
var_808838BC: .word 0x3D23D70A

