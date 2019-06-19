.section .text
func_80957C10:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    lui     v1, %hi(var_8095976C)      # v1 = 80960000
    addiu   v1, v1, %lo(var_8095976C)  # v1 = 8095976C
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      v0, 0x01E0(s0)             # 000001E0
    lwc1    $f0, 0x01A8(s0)            # 000001A8
    sll     t6, v0,  2                 
    addu    t7, v1, t6                 
    lw      t8, 0x0000(t7)             # 00000000
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_80957CBC               
    lw      $ra, 0x0024($sp)           
    bne     v0, $zero, lbl_80957C7C    
    lui     a3, 0x8010                 # a3 = 80100000
    lw      t9, 0x0004(v1)             # 80959770
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.lt.s  $f10, $f0                  
    nop
    bc1t    lbl_80957CB8               
lbl_80957C7C:
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    sw      t0, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2842          # a0 = 00002842
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      t1, 0x01E0(s0)             # 000001E0
    addiu   t2, t1, 0x0001             # t2 = 00000001
    slti    $at, t2, 0x0002            
    bne     $at, $zero, lbl_80957CB8   
    sw      t2, 0x01E0(s0)             # 000001E0
    sw      $zero, 0x01E0(s0)          # 000001E0
lbl_80957CB8:
    lw      $ra, 0x0024($sp)           
lbl_80957CBC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80957CCC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      v0, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_80957D00      
    mtc1    $zero, $f4                 # $f4 = 0.00
    jal     func_80957C10              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80957DD4 
    lw      $ra, 0x0024($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80957D00:
    lwc1    $f6, 0x01A8(s0)            # 000001A8
    addiu   $at, $zero, 0x0003         # $at = 00000003
    c.eq.s  $f4, $f6                   
    nop
    bc1fl   lbl_80957DD4               
    lw      $ra, 0x0024($sp)           
    beq     v0, $at, lbl_80957D28      
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80957D54      
lbl_80957D28:
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2843          # a0 = 00002843
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_80957DD4 
    lw      $ra, 0x0024($sp)           
lbl_80957D54:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80957DD4      
    lw      $ra, 0x0024($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    c.lt.s  $f8, $f0                   
    addiu   a0, $zero, 0x2844          # a0 = 00002844
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bc1f    lbl_80957DC0               
    lui     t8, 0x8010                 # t8 = 80100000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2845          # a0 = 00002845
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_80957DD4 
    lw      $ra, 0x0024($sp)           
lbl_80957DC0:
    addiu   t8, t8, 0x43A8             # t8 = 000043A8
    sw      t8, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    lw      $ra, 0x0024($sp)           
lbl_80957DD4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80957DE4:
    lw      v0, 0x0140(a0)             # 00000140
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80957E20      
    sll     t6, v0,  2                 
    lui     $at, %hi(var_80959774)     # $at = 80960000
    addu    $at, $at, t6               
    lwc1    $f4, %lo(var_80959774)($at) 
    lwc1    $f6, 0x0068(a0)            # 00000068
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    mul.s   $f8, $f4, $f6              
    nop
    mul.s   $f2, $f8, $f10             
    beq     $zero, $zero, lbl_80957EA0 
    nop
lbl_80957E20:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80957E58      
    sll     t7, v0,  2                 
    lui     $at, %hi(var_80959774)     # $at = 80960000
    addu    $at, $at, t7               
    lwc1    $f16, %lo(var_80959774)($at) 
    lwc1    $f18, 0x0068(a0)           # 00000068
    lui     $at, %hi(var_809597C0)     # $at = 80960000
    lwc1    $f6, %lo(var_809597C0)($at) 
    mul.s   $f4, $f16, $f18            
    nop
    mul.s   $f2, $f4, $f6              
    beq     $zero, $zero, lbl_80957EA0 
    nop
lbl_80957E58:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80957E94      
    sll     t9, v0,  2                 
    sll     t8, v0,  2                 
    lui     $at, %hi(var_80959774)     # $at = 80960000
    addu    $at, $at, t8               
    lwc1    $f8, %lo(var_80959774)($at) 
    lwc1    $f10, 0x0068(a0)           # 00000068
    lui     $at, %hi(var_809597C4)     # $at = 80960000
    lwc1    $f18, %lo(var_809597C4)($at) 
    mul.s   $f16, $f8, $f10            
    nop
    mul.s   $f2, $f16, $f18            
    beq     $zero, $zero, lbl_80957EA0 
    nop
lbl_80957E94:
    lui     $at, %hi(var_80959774)     # $at = 80960000
    addu    $at, $at, t9               
    lwc1    $f2, %lo(var_80959774)($at) 
lbl_80957EA0:
    mov.s   $f0, $f2                   
    jr      $ra                        
    nop


func_80957EAC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lui     a1, %hi(var_80959788)      # a1 = 80960000
    addiu   a1, a1, %lo(var_80959788)  # a1 = 80959788
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3BA3                 # a1 = 3BA30000
    ori     a1, a1, 0xD70A             # a1 = 3BA3D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f4                   # $f4 = -3.50
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xF04C             # a2 = 8001F04C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_8001EC20              
    swc1    $f4, 0x006C(s0)            # 0000006C
    lw      t7, 0x0028(s0)             # 00000028
    lui     $at, 0x428C                # $at = 428C0000
    lw      t8, 0x0024(s0)             # 00000024
    sw      t7, 0x003C(s0)             # 0000003C
    lwc1    $f8, 0x003C(s0)            # 0000003C
    mtc1    $at, $f10                  # $f10 = 70.00
    sw      t8, 0x0038(s0)             # 00000038
    mtc1    $zero, $f6                 # $f6 = 0.00
    add.s   $f16, $f8, $f10            
    lw      t8, 0x002C(s0)             # 0000002C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x013C(s0)             # 0000013C
    swc1    $f16, 0x003C(s0)           # 0000003C
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    swc1    $f6, 0x0068(s0)            # 00000068
    sw      t8, 0x0040(s0)             # 00000040
    lw      a0, 0x003C($sp)            
    addiu   a3, a3, 0x2F98             # a3 = 06002F98
    addiu   a2, a2, 0x7B20             # a2 = 06007B20
    jal     func_8008E4EC              
    addiu   a1, s0, 0x0144             # a1 = 00000144
    sw      $zero, 0x0140(s0)          # 00000140
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    lw      a1, %lo(var_809596F0)(a1)  
    jal     func_8008D1C4              
    addiu   a0, s0, 0x0190             # a0 = 00000190
    addiu   a1, s0, 0x01E4             # a1 = 000001E4
    sw      a1, 0x0028($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_80959704)      # a3 = 80960000
    lw      a1, 0x0028($sp)            
    addiu   a3, a3, %lo(var_80959704)  # a3 = 80959704
    lw      a0, 0x003C($sp)            
    jal     func_8004AC84              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0230             # a1 = 00000230
    sw      a1, 0x0028($sp)            
    jal     func_8004A484              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_80959754)      # a3 = 80960000
    addiu   t9, s0, 0x0250             # t9 = 00000250
    lw      a1, 0x0028($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80959754)  # a3 = 80959754
    lw      a0, 0x003C($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80959764)      # a2 = 80960000
    addiu   a2, a2, %lo(var_80959764)  # a2 = 80959764
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344              
    or      a1, $zero, $zero           # a1 = 00000000
    sw      $zero, 0x01E0(s0)          # 000001E0
    sb      $zero, 0x01DC(s0)          # 000001DC
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x46D0(t0)            # 8011B930
    lw      t1, 0x003C($sp)            
    slti    $at, t0, 0x0004            
    bnel    $at, $zero, lbl_80958010   
    lh      t2, 0x00A4(t1)             # 000000A4
    jal     func_80958710              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80958064 
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t2, 0x00A4(t1)             # 000000A4
lbl_80958010:
    addiu   $at, $zero, 0x0063         # $at = 00000063
    bne     t2, $at, lbl_80958058      
    nop
    jal     func_800288B4              
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    bne     v0, $zero, lbl_8095803C    
    lui     t3, 0x8012                 # t3 = 80120000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80958074 
    lw      $ra, 0x0024($sp)           
lbl_8095803C:
    lhu     t3, -0x4B5A(t3)            # FFFFB4A6
    or      a0, s0, $zero              # a0 = 00000000
    andi    t4, t3, 0x0040             # t4 = 00000000
    jal     func_80958710              
    sw      t4, 0x0290(s0)             # 00000290
    beq     $zero, $zero, lbl_80958064 
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_80958058:
    jal     func_80958710              
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_80958064:
    lh      v0, 0x00B8(s0)             # 000000B8
    sh      v0, 0x0034(s0)             # 00000034
    sh      v0, 0x0018(s0)             # 00000018
    lw      $ra, 0x0024($sp)           
lbl_80958074:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80958084:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8008E6BC              
    addiu   a1, a1, 0x0144             # a1 = 00000144
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x01E4             # a1 = 000001E4
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a1, 0x0230             # a1 = 00000230
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809580D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0140(a2)             # 00000140
    sw      $zero, 0x013C(a2)          # 0000013C
    addiu   a0, a2, 0x0190             # a0 = 00000190
    addiu   v0, t6, 0x0001             # v0 = 00000001
    slti    $at, v0, 0x0005            
    bne     $at, $zero, lbl_80958104   
    sw      v0, 0x0140(a2)             # 00000140
    sw      $zero, 0x0140(a2)          # 00000140
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80958104:
    sll     t8, v0,  2                 
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    addu    a1, a1, t8                 
    lw      a1, %lo(var_809596F0)(a1)  
    jal     func_8008D1C4              
    sw      a2, 0x0018($sp)            
    jal     func_80957DE4              
    lw      a0, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    swc1    $f0, 0x01AC(a2)            # 000001AC
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80958138:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, a1, 0x0190             # a0 = 00000190
    swc1    $f4, 0x0068(a1)            # 00000068
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    beq     v0, $zero, lbl_80958170    
    lw      a1, 0x0018($sp)            
    jal     func_809580D4              
    or      a0, a1, $zero              # a0 = 00000000
lbl_80958170:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80958180:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x013C(s0)             # 0000013C
    beq     a1, $zero, lbl_809581B4    
    swc1    $f4, 0x0068(s0)            # 00000068
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    a1, $at, lbl_809581B8      
    lw      t7, 0x0140(s0)             # 00000140
    or      a1, $zero, $zero           # a1 = 00000000
lbl_809581B4:
    lw      t7, 0x0140(s0)             # 00000140
lbl_809581B8:
    or      a0, s0, $zero              # a0 = 00000000
    beql    a1, t7, lbl_80958230       
    lw      $ra, 0x002C($sp)           
    jal     func_80957DE4              
    sw      a1, 0x0140(s0)             # 00000140
    swc1    $f0, 0x0030($sp)           
    lw      t8, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t9, t8,  2                 
    addu    a0, a0, t9                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f6                    # $f6 = 0.00
    lw      t0, 0x0140(s0)             # 00000140
    lui     $at, 0xC0A0                # $at = C0A00000
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f10                  # $f10 = -5.00
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t1, t0,  2                 
    addu    a1, a1, t1                 
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lw      a2, 0x0030($sp)            
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lw      $ra, 0x002C($sp)           
lbl_80958230:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80958240:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800214FC              
    lw      a1, 0x1C44(a2)             # 00001C44
    addiu   a0, s0, 0x0190             # a0 = 00000190
    sw      a0, 0x0034($sp)            
    jal     func_8008C9C0              
    swc1    $f0, 0x0044($sp)           
    beq     v0, $zero, lbl_809583B4    
    lwc1    $f2, 0x0044($sp)           
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    lui     $at, 0x428C                # $at = 428C0000
    c.lt.s  $f2, $f4                   
    nop
    bc1fl   lbl_809582C0               
    lw      v1, 0x0140(s0)             # 00000140
    mtc1    $at, $f6                   # $f6 = 70.00
    nop
    c.lt.s  $f6, $f2                   
    nop
    bc1fl   lbl_809582C0               
    lw      v1, 0x0140(s0)             # 00000140
    jal     func_809583C8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809583B8 
    lw      $ra, 0x002C($sp)           
    lw      v1, 0x0140(s0)             # 00000140
lbl_809582C0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bne     v1, $at, lbl_809582D8      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809582D8 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809582D8:
    beq     v0, v1, lbl_80958350       
    nop
    jal     func_80957DE4              
    sw      v0, 0x0140(s0)             # 00000140
    swc1    $f0, 0x0038($sp)           
    lw      t6, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t7, t6,  2                 
    addu    a0, a0, t7                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f8                    # $f8 = 0.00
    lw      t8, 0x0140(s0)             # 00000140
    lui     $at, 0xC0A0                # $at = C0A00000
    cvt.s.w $f10, $f8                  
    mtc1    $at, $f16                  # $f16 = -5.00
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t9, t8,  2                 
    addu    a1, a1, t9                 
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sw      t0, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f10, 0x0010($sp)          
    lw      a0, 0x0034($sp)            
    lw      a2, 0x0038($sp)            
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f16, 0x0018($sp)          
    beq     $zero, $zero, lbl_809583B8 
    lw      $ra, 0x002C($sp)           
lbl_80958350:
    jal     func_80957DE4              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0038($sp)           
    lw      t1, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t2, t1,  2                 
    addu    a0, a0, t2                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f18                   # $f18 = 0.00
    lw      t3, 0x0140(s0)             # 00000140
    mtc1    $zero, $f6                 # $f6 = 0.00
    cvt.s.w $f4, $f18                  
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t4, t3,  2                 
    addu    a1, a1, t4                 
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sw      t5, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f4, 0x0010($sp)           
    lw      a0, 0x0034($sp)            
    lw      a2, 0x0038($sp)            
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
lbl_809583B4:
    lw      $ra, 0x002C($sp)           
lbl_809583B8:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_809583C8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x013C(s0)             # 0000013C
    sw      $zero, 0x0140(s0)          # 00000140
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80957DE4              
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0030($sp)           
    lw      t7, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t8, t7,  2                 
    addu    a0, a0, t8                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f6                    # $f6 = 0.00
    lw      t9, 0x0140(s0)             # 00000140
    lui     $at, 0xC0A0                # $at = C0A00000
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f10                  # $f10 = -5.00
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t1, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lw      a2, 0x0030($sp)            
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80958468:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x004C($sp)            
    lw      v0, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      t6, 0x004C($sp)            
    beq     v0, $at, lbl_8095849C      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8095849C      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_809584F0      
lbl_8095849C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4              
    lw      a1, 0x1C44(t6)             # 00001C44
    lh      v1, 0x0032(s0)             # 00000032
    subu    a0, v0, v1                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    slti    $at, a0, 0x012D            
    bne     $at, $zero, lbl_809584CC   
    addiu   t7, v1, 0x012C             # t7 = 0000012C
    beq     $zero, $zero, lbl_809584E8 
    sh      t7, 0x0032(s0)             # 00000032
lbl_809584CC:
    slti    $at, a0, 0xFED4            
    beq     $at, $zero, lbl_809584E4   
    addu    t9, v1, a0                 
    addiu   t8, v1, 0xFED4             # t8 = FFFFFED4
    beq     $zero, $zero, lbl_809584E8 
    sh      t8, 0x0032(s0)             # 00000032
lbl_809584E4:
    sh      t9, 0x0032(s0)             # 00000032
lbl_809584E8:
    lh      t0, 0x0032(s0)             # 00000032
    sh      t0, 0x00B6(s0)             # 000000B6
lbl_809584F0:
    addiu   a0, s0, 0x0190             # a0 = 00000190
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    beq     v0, $zero, lbl_809586FC    
    lw      t1, 0x004C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800214FC              
    lw      a1, 0x1C44(t1)             # 00001C44
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f2                   # $f2 = 1000.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80958540               
    c.lt.s  $f0, $f2                   
    jal     func_80958180              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_80958700 
    lw      $ra, 0x002C($sp)           
    c.lt.s  $f0, $f2                   
lbl_80958540:
    lui     $at, 0x4396                # $at = 43960000
    bc1fl   lbl_80958578               
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    lui     $at, 0x40C0                # $at = 40C00000
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_80958578               
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    beq     $zero, $zero, lbl_80958614 
    swc1    $f6, 0x0068(s0)            # 00000068
    lui     $at, 0x4396                # $at = 43960000
lbl_80958578:
    mtc1    $at, $f8                   # $f8 = 300.00
    lui     $at, 0x4316                # $at = 43160000
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_809585BC               
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f10                  # $f10 = 150.00
    lui     $at, 0x4080                # $at = 40800000
    c.le.s  $f10, $f0                  
    nop
    bc1fl   lbl_809585BC               
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f16                  # $f16 = 150.00
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    beq     $zero, $zero, lbl_80958614 
    swc1    $f16, 0x0068(s0)           # 00000068
    lui     $at, 0x4316                # $at = 43160000
lbl_809585BC:
    mtc1    $at, $f18                  # $f18 = 150.00
    lui     $at, 0x428C                # $at = 428C0000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f18                  
    nop
    bc1f    lbl_80958604               
    nop
    mtc1    $at, $f4                   # $f4 = 70.00
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lui     $at, 0x4000                # $at = 40000000
    c.le.s  $f4, $f0                   
    nop
    bc1f    lbl_80958604               
    nop
    mtc1    $at, $f6                   # $f6 = 2.00
    sw      $zero, 0x01E0(s0)          # 000001E0
    beq     $zero, $zero, lbl_80958614 
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80958604:
    jal     func_80958180              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_80958700 
    lw      $ra, 0x002C($sp)           
lbl_80958614:
    lw      t2, 0x0140(s0)             # 00000140
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, t2, lbl_80958698       
    nop
    jal     func_80957DE4              
    sw      v0, 0x0140(s0)             # 00000140
    swc1    $f0, 0x0034($sp)           
    lw      t3, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t4, t3,  2                 
    addu    a0, a0, t4                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f8                    # $f8 = 0.00
    lw      t5, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f10, $f8                  
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f16                  # $f16 = -5.00
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t6, t5,  2                 
    addu    a1, a1, t6                 
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    mfc1    a3, $f0                    
    sw      t7, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f10, 0x0010($sp)          
    lw      a0, 0x0030($sp)            
    lw      a2, 0x0034($sp)            
    jal     func_8008D17C              
    swc1    $f16, 0x0018($sp)          
    beq     $zero, $zero, lbl_80958700 
    lw      $ra, 0x002C($sp)           
lbl_80958698:
    jal     func_80957DE4              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0034($sp)           
    lw      t8, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t9, t8,  2                 
    addu    a0, a0, t9                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f18                   # $f18 = 0.00
    lw      t0, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f4, $f18                  
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t1, t0,  2                 
    addu    a1, a1, t1                 
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    mfc1    a3, $f0                    
    sw      t2, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f4, 0x0010($sp)           
    lw      a0, 0x0030($sp)            
    lw      a2, 0x0034($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
lbl_809586FC:
    lw      $ra, 0x002C($sp)           
lbl_80958700:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80958710:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t6, 0x013C(s0)             # 0000013C
    sw      $zero, 0x0140(s0)          # 00000140
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80957DE4              
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0030($sp)           
    lw      t7, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t8, t7,  2                 
    addu    a0, a0, t8                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f6                    # $f6 = 0.00
    lw      t9, 0x0140(s0)             # 00000140
    lui     $at, 0xC0A0                # $at = C0A00000
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f10                  # $f10 = -5.00
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t1, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lw      a2, 0x0030($sp)            
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809587B0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_809587E4      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_809587E4      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_809588AC      
    lw      $ra, 0x001C($sp)           
lbl_809587E4:
    lw      a2, 0x1C44(a3)             # 00001C44
    addiu   a1, s0, 0x0008             # a1 = 00000008
    sw      a1, 0x0024($sp)            
    addiu   a0, a2, 0x0024             # a0 = 00000024
    jal     func_800A5560              
    sw      a2, 0x0034($sp)            
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f4                   # $f4 = 250.00
    lw      a1, 0x0024($sp)            
    lw      a2, 0x0034($sp)            
    c.lt.s  $f0, $f4                   
    or      a0, s0, $zero              # a0 = 00000000
    bc1f    lbl_80958858               
    nop
    lh      v1, 0x00B6(a2)             # 000000B6
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_800213B4              
    sh      v1, 0x0032($sp)            
    blez    v0, lbl_8095883C           
    lh      v1, 0x0032($sp)            
    beq     $zero, $zero, lbl_80958840 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8095883C:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80958840:
    sll     t6, v0, 14                 
    addu    v1, v1, t6                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    beq     $zero, $zero, lbl_80958870 
    lh      a0, 0x0032(s0)             # 00000032
lbl_80958858:
    jal     func_80063F00              
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lh      a0, 0x0032(s0)             # 00000032
    subu    v1, v0, a0                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_80958870:
    slti    $at, v1, 0x012D            
    bne     $at, $zero, lbl_80958884   
    addiu   t7, a0, 0x012C             # t7 = 0000012C
    beq     $zero, $zero, lbl_809588A0 
    sh      t7, 0x0032(s0)             # 00000032
lbl_80958884:
    slti    $at, v1, 0xFED4            
    beq     $at, $zero, lbl_8095889C   
    addu    t9, a0, v1                 
    addiu   t8, a0, 0xFED4             # t8 = FFFFFED4
    beq     $zero, $zero, lbl_809588A0 
    sh      t8, 0x0032(s0)             # 00000032
lbl_8095889C:
    sh      t9, 0x0032(s0)             # 00000032
lbl_809588A0:
    lh      t0, 0x0032(s0)             # 00000032
    sh      t0, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x001C($sp)           
lbl_809588AC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809588BC:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x005C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809587B0              
    lw      a1, 0x005C($sp)            
    lw      t6, 0x005C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x1C44(t6)             # 00001C44
    jal     func_800214FC              
    sw      a1, 0x0054($sp)            
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lw      t7, 0x0000(a1)             # 8011A5D0
    addiu   $at, $zero, 0x02AE         # $at = 000002AE
    swc1    $f0, 0x0050($sp)           
    bne     t7, $at, lbl_80958940      
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2844          # a0 = 00002844
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80958F80              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80958D28 
    lw      $ra, 0x002C($sp)           
lbl_80958940:
    lhu     v0, 0x0ED6(a1)             # 00000ED6
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t1, 0x005C($sp)            
    andi    v0, v0, 0x0040             # v0 = 00000000
    beql    v0, $zero, lbl_8095896C    
    lh      t2, 0x00A4(t1)             # 000000A4
    lw      t9, -0x4600(t9)            # 8011BA00
    lh      t0, 0x05BE(t9)             # 801205BE
    bne     t0, $zero, lbl_80958988    
    nop
    lh      t2, 0x00A4(t1)             # 000000A4
lbl_8095896C:
    addiu   $at, $zero, 0x0063         # $at = 00000063
    bnel    t2, $at, lbl_8095899C      
    sw      v0, 0x0290(s0)             # 00000290
    lw      t3, 0x0008(a1)             # 00000008
    ori     $at, $zero, 0xFFF1         # $at = 0000FFF1
    bnel    t3, $at, lbl_8095899C      
    sw      v0, 0x0290(s0)             # 00000290
lbl_80958988:
    jal     func_80958D38              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809589A0 
    lw      v1, 0x0140(s0)             # 00000140
    sw      v0, 0x0290(s0)             # 00000290
lbl_8095899C:
    lw      v1, 0x0140(s0)             # 00000140
lbl_809589A0:
    addiu   a0, s0, 0x0190             # a0 = 00000190
    sw      a0, 0x0030($sp)            
    jal     func_8008C9C0              
    sw      v1, 0x0048($sp)            
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lw      v1, 0x0048($sp)            
    bne     v0, $zero, lbl_809589DC    
    or      a3, v0, $zero              # a3 = 00000000
    lw      a0, 0x0140(s0)             # 00000140
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beql    a2, a0, lbl_809589E0       
    lhu     t4, 0x0ED6(a1)             # 8011B4A6
    bne     a0, $zero, lbl_80958C3C    
    nop
lbl_809589DC:
    lhu     t4, 0x0ED6(a1)             # 8011B4A6
lbl_809589E0:
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a1, s0, 0x0008             # a1 = 00000008
    andi    t5, t4, 0x0020             # t5 = 00000000
    beq     t5, $zero, lbl_80958C04    
    addiu   a0, s0, 0x0024             # a0 = 00000024
    sw      a1, 0x0034($sp)            
    jal     func_800A5560              
    sw      a3, 0x004C($sp)            
    lw      a0, 0x0054($sp)            
    lw      a1, 0x0034($sp)            
    swc1    $f0, 0x0044($sp)           
    jal     func_800A5560              
    addiu   a0, a0, 0x0024             # a0 = 00000024
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f4                   # $f4 = 250.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a3, 0x004C($sp)            
    c.lt.s  $f4, $f0                   
    lwc1    $f2, 0x0044($sp)           
    lui     $at, 0x4348                # $at = 43480000
    bc1fl   lbl_80958B34               
    lwc1    $f2, 0x0050($sp)           
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f0                   # $f0 = 300.00
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    lui     $at, 0x40C0                # $at = 40C00000
    c.le.s  $f0, $f2                   
    nop
    bc1fl   lbl_80958A6C               
    c.lt.s  $f2, $f0                   
    mtc1    $at, $f6                   # $f6 = 6.00
    lw      a0, 0x0140(s0)             # 00000140
    beq     $zero, $zero, lbl_80958C3C 
    swc1    $f6, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f0                   
lbl_80958A6C:
    lui     $at, 0x4316                # $at = 43160000
    bc1fl   lbl_80958AA8               
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f8                   # $f8 = 150.00
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    lui     $at, 0x4080                # $at = 40800000
    c.le.s  $f8, $f2                   
    nop
    bc1fl   lbl_80958AA8               
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f10                  # $f10 = 150.00
    lw      a0, 0x0140(s0)             # 00000140
    beq     $zero, $zero, lbl_80958C3C 
    swc1    $f10, 0x0068(s0)           # 00000068
    lui     $at, 0x4316                # $at = 43160000
lbl_80958AA8:
    mtc1    $at, $f16                  # $f16 = 150.00
    lui     $at, 0x428C                # $at = 428C0000
    c.lt.s  $f2, $f16                  
    nop
    bc1fl   lbl_80958AF4               
    lw      a0, 0x0140(s0)             # 00000140
    mtc1    $at, $f18                  # $f18 = 70.00
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    lui     $at, 0x4000                # $at = 40000000
    c.le.s  $f18, $f2                  
    nop
    bc1fl   lbl_80958AF4               
    lw      a0, 0x0140(s0)             # 00000140
    mtc1    $at, $f4                   # $f4 = 2.00
    sw      $zero, 0x01E0(s0)          # 000001E0
    lw      a0, 0x0140(s0)             # 00000140
    beq     $zero, $zero, lbl_80958C3C 
    swc1    $f4, 0x0068(s0)            # 00000068
    lw      a0, 0x0140(s0)             # 00000140
lbl_80958AF4:
    mtc1    $zero, $f6                 # $f6 = 0.00
    bne     a0, $zero, lbl_80958B18    
    swc1    $f6, 0x0068(s0)            # 00000068
    bne     a3, a2, lbl_80958B10       
    nop
    beq     $zero, $zero, lbl_80958C3C 
    or      v1, a2, $zero              # v1 = 00000001
lbl_80958B10:
    beq     $zero, $zero, lbl_80958C3C 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80958B18:
    bne     a3, a2, lbl_80958B28       
    nop
    beq     $zero, $zero, lbl_80958C3C 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80958B28:
    beq     $zero, $zero, lbl_80958C3C 
    or      v1, a2, $zero              # v1 = 00000001
    lwc1    $f2, 0x0050($sp)           
lbl_80958B34:
    mtc1    $at, $f8                   # $f8 = 2.00
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    lui     $at, 0x4396                # $at = 43960000
    c.lt.s  $f2, $f8                   
    nop
    bc1fl   lbl_80958B68               
    mtc1    $at, $f0                   # $f0 = 300.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f10                  # $f10 = 6.00
    lw      a0, 0x0140(s0)             # 00000140
    beq     $zero, $zero, lbl_80958C3C 
    swc1    $f10, 0x0068(s0)           # 00000068
    mtc1    $at, $f0                   # $f0 = 6.00
lbl_80958B68:
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    lui     $at, 0x43C8                # $at = 43C80000
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80958B98               
    mtc1    $at, $f18                  # $f18 = 400.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f16                  # $f16 = 4.00
    lw      a0, 0x0140(s0)             # 00000140
    beq     $zero, $zero, lbl_80958C3C 
    swc1    $f16, 0x0068(s0)           # 00000068
    mtc1    $at, $f18                  # $f18 = 4.00
lbl_80958B98:
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    lui     $at, 0x4000                # $at = 40000000
    c.lt.s  $f2, $f18                  
    nop
    bc1fl   lbl_80958BC8               
    lw      a0, 0x0140(s0)             # 00000140
    mtc1    $at, $f4                   # $f4 = 2.00
    sw      $zero, 0x01E0(s0)          # 000001E0
    lw      a0, 0x0140(s0)             # 00000140
    beq     $zero, $zero, lbl_80958C3C 
    swc1    $f4, 0x0068(s0)            # 00000068
    lw      a0, 0x0140(s0)             # 00000140
lbl_80958BC8:
    mtc1    $zero, $f6                 # $f6 = 0.00
    bne     a0, $zero, lbl_80958BEC    
    swc1    $f6, 0x0068(s0)            # 00000068
    bne     a3, a2, lbl_80958BE4       
    nop
    beq     $zero, $zero, lbl_80958C3C 
    or      v1, a2, $zero              # v1 = 00000001
lbl_80958BE4:
    beq     $zero, $zero, lbl_80958C3C 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80958BEC:
    bne     a3, a2, lbl_80958BFC       
    or      v1, a2, $zero              # v1 = 00000001
    beq     $zero, $zero, lbl_80958C3C 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80958BFC:
    beq     $zero, $zero, lbl_80958C3C 
    nop
lbl_80958C04:
    lw      a0, 0x0140(s0)             # 00000140
    mtc1    $zero, $f8                 # $f8 = 0.00
    bne     a0, $zero, lbl_80958C2C    
    swc1    $f8, 0x0068(s0)            # 00000068
    bne     v0, a2, lbl_80958C24       
    nop
    beq     $zero, $zero, lbl_80958C3C 
    or      v1, a2, $zero              # v1 = 00000001
lbl_80958C24:
    beq     $zero, $zero, lbl_80958C3C 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80958C2C:
    bne     v0, a2, lbl_80958C3C       
    or      v1, a2, $zero              # v1 = 00000001
    beq     $zero, $zero, lbl_80958C3C 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80958C3C:
    bnel    v1, a0, lbl_80958C50       
    sw      v1, 0x0140(s0)             # 00000140
    bne     a3, a2, lbl_80958CC0       
    nop
    sw      v1, 0x0140(s0)             # 00000140
lbl_80958C50:
    jal     func_80957DE4              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0038($sp)           
    lw      t6, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t7, t6,  2                 
    addu    a0, a0, t7                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f10                   # $f10 = 0.00
    lw      t8, 0x0140(s0)             # 00000140
    lui     $at, 0xC0A0                # $at = C0A00000
    cvt.s.w $f16, $f10                 
    mtc1    $at, $f18                  # $f18 = -5.00
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t9, t8,  2                 
    addu    a1, a1, t9                 
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sw      t0, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f16, 0x0010($sp)          
    lw      a0, 0x0030($sp)            
    lw      a2, 0x0038($sp)            
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    beq     $zero, $zero, lbl_80958D28 
    lw      $ra, 0x002C($sp)           
lbl_80958CC0:
    jal     func_80957DE4              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0038($sp)           
    lw      t1, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t2, t1,  2                 
    addu    a0, a0, t2                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      t3, 0x0140(s0)             # 00000140
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.s.w $f6, $f4                   
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    lw      a3, 0x01A8(s0)             # 000001A8
    sll     t4, t3,  2                 
    addu    a1, a1, t4                 
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sw      t5, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f6, 0x0010($sp)           
    lw      a0, 0x0030($sp)            
    lw      a2, 0x0038($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
lbl_80958D28:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_80958D38:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    jal     func_800CDCCC              # Rand.Next() float
    sw      t6, 0x013C(s0)             # 0000013C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     t8, 0x8012                 # t8 = 80120000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80958D80               
    sw      t7, 0x0140(s0)             # 00000140
    beq     $zero, $zero, lbl_80958D80 
    sw      $zero, 0x0140(s0)          # 00000140
    sw      t7, 0x0140(s0)             # 00000140
lbl_80958D80:
    lw      t8, -0x4600(t8)            # 8011BA00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80957DE4              
    sh      $zero, 0x05BE(t8)          # 801205BE
    swc1    $f0, 0x0030($sp)           
    lw      t9, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t0, t9,  2                 
    addu    a0, a0, t0                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f6                    # $f6 = 0.00
    lw      t1, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f8, $f6                   
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t2, t1,  2                 
    addu    a1, a1, t2                 
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    mfc1    a3, $f0                    
    sw      t3, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lw      a2, 0x0030($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80958E00:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lh      t6, 0x05BE(v0)             # 801205BE
    addiu   a0, $zero, 0x2844          # a0 = 00002844
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    beq     t6, $zero, lbl_80958E60    
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     t7, 0x8010                 # t7 = 80100000
    sh      $zero, 0x05BE(v0)          # 801205BE
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    jal     func_80958F80              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80958F70 
    lw      $ra, 0x002C($sp)           
lbl_80958E60:
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x0068(s0)            # 00000068
    lw      t8, 0x003C($sp)            
    jal     func_800213B4              
    lw      a1, 0x1C44(t8)             # 00001C44
    lh      t9, 0x0032(s0)             # 00000032
    subu    a0, v0, t9                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_80063684              # coss?
    sh      a0, 0x0036($sp)            
    lui     $at, %hi(var_809597C8)     # $at = 80960000
    lwc1    $f6, %lo(var_809597C8)($at) 
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80958ED0               
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lw      t0, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t1, 0x003C($sp)            
    bne     t0, $at, lbl_80958ECC      
    addiu   a2, $zero, 0x012C          # a2 = 0000012C
    lw      a1, 0x1C44(t1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8005B00C              
    addiu   a1, a1, 0x0024             # a1 = 00000024
lbl_80958ECC:
    addiu   a0, s0, 0x0190             # a0 = 00000190
lbl_80958ED0:
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    beql    v0, $zero, lbl_80958F70    
    lw      $ra, 0x002C($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0036($sp)            
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    lui     a0, %hi(var_809596F8)      # a0 = 80960000
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80958F64               
    nop
    sw      t2, 0x0140(s0)             # 00000140
    jal     func_8008A194              
    lw      a0, %lo(var_809596F8)(a0)  
    mtc1    v0, $f10                   # $f10 = 0.00
    lw      v1, 0x0140(s0)             # 00000140
    lui     $at, 0xC0A0                # $at = C0A00000
    cvt.s.w $f16, $f10                 
    sll     v1, v1,  2                 
    mtc1    $at, $f18                  # $f18 = -5.00
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    lui     a2, %hi(var_80959774)      # a2 = 80960000
    addu    a2, a2, v1                 
    addu    a1, a1, v1                 
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sw      t3, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    lw      a2, %lo(var_80959774)(a2)  
    swc1    $f16, 0x0010($sp)          
    lw      a0, 0x0030($sp)            
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    beq     $zero, $zero, lbl_80958F70 
    lw      $ra, 0x002C($sp)           
lbl_80958F64:
    jal     func_80958D38              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_80958F70:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80958F80:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      $zero, 0x01D4(s0)          # 000001D4
    sw      t6, 0x013C(s0)             # 0000013C
    sw      t7, 0x0140(s0)             # 00000140
    sw      $zero, 0x01D8(s0)          # 000001D8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80957DE4              
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0030($sp)           
    lw      t8, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t9, t8,  2                 
    addu    a0, a0, t9                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f6                    # $f6 = 0.00
    lw      t0, 0x0140(s0)             # 00000140
    lui     $at, 0xC0A0                # $at = C0A00000
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f10                  # $f10 = -5.00
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t1, t0,  2                 
    addu    a1, a1, t1                 
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lw      a2, 0x0030($sp)            
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80959030:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x004C($sp)            
    lw      t7, 0x01D4(s0)             # 000001D4
    lw      t6, 0x004C($sp)            
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t8, t7, 0x0001             # t8 = 00000001
    slti    $at, t8, 0x012D            
    lw      v1, 0x1C44(t6)             # 00001C44
    bne     $at, $zero, lbl_80959068   
    sw      t8, 0x01D4(s0)             # 000001D4
    sw      t0, 0x01D8(s0)             # 000001D8
lbl_80959068:
    lw      v0, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80959088      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80959088      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_809590BC      
    addiu   a0, s0, 0x0190             # a0 = 00000190
lbl_80959088:
    lw      t1, 0x01D8(s0)             # 000001D8
    addiu   a2, $zero, 0x012C          # a2 = 0000012C
    or      a0, s0, $zero              # a0 = 00000000
    bne     t1, $zero, lbl_809590B0    
    addiu   a1, s0, 0x0008             # a1 = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8005B00C              
    addiu   a1, v1, 0x0024             # a1 = 00000024
    beq     $zero, $zero, lbl_809590BC 
    addiu   a0, s0, 0x0190             # a0 = 00000190
lbl_809590B0:
    jal     func_8005B00C              
    addiu   a2, $zero, 0x012C          # a2 = 0000012C
    addiu   a0, s0, 0x0190             # a0 = 00000190
lbl_809590BC:
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    beql    v0, $zero, lbl_809592FC    
    lw      $ra, 0x002C($sp)           
    lw      t2, 0x01D8(s0)             # 000001D8
    lw      t3, 0x004C($sp)            
    addiu   a0, s0, 0x0024             # a0 = 00000024
    bne     t2, $zero, lbl_809590F4    
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800214FC              
    lw      a1, 0x1C44(t3)             # 00001C44
    beq     $zero, $zero, lbl_80959100 
    lw      t4, 0x01D8(s0)             # 000001D8
lbl_809590F4:
    jal     func_800A5560              
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lw      t4, 0x01D8(s0)             # 000001D8
lbl_80959100:
    lui     $at, 0x4396                # $at = 43960000
    bnel    t4, $zero, lbl_80959180    
    mtc1    $at, $f18                  # $f18 = 300.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    lui     $at, 0x4316                # $at = 43160000
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_80959140               
    mtc1    $at, $f8                   # $f8 = 150.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    beq     $zero, $zero, lbl_80959210 
    swc1    $f6, 0x0068(s0)            # 00000068
    mtc1    $at, $f8                   # $f8 = 6.00
lbl_80959140:
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lui     $at, 0x4000                # $at = 40000000
    c.le.s  $f8, $f0                   
    nop
    bc1fl   lbl_80959170               
    mtc1    $at, $f16                  # $f16 = 2.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    beq     $zero, $zero, lbl_80959210 
    swc1    $f10, 0x0068(s0)           # 00000068
    mtc1    $at, $f16                  # $f16 = 4.00
lbl_80959170:
    sw      $zero, 0x01E0(s0)          # 000001E0
    beq     $zero, $zero, lbl_80959210 
    swc1    $f16, 0x0068(s0)           # 00000068
    mtc1    $at, $f18                  # $f18 = 4.00
lbl_80959180:
    lui     $at, 0x4316                # $at = 43160000
    c.le.s  $f18, $f0                  
    nop
    bc1fl   lbl_809591AC               
    mtc1    $at, $f6                   # $f6 = 150.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    beq     $zero, $zero, lbl_80959210 
    swc1    $f4, 0x0068(s0)            # 00000068
    mtc1    $at, $f6                   # $f6 = 6.00
lbl_809591AC:
    lui     $at, 0x428C                # $at = 428C0000
    c.le.s  $f6, $f0                   
    nop
    bc1fl   lbl_809591D8               
    mtc1    $at, $f10                  # $f10 = 70.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    beq     $zero, $zero, lbl_80959210 
    swc1    $f8, 0x0068(s0)            # 00000068
    mtc1    $at, $f10                  # $f10 = 4.00
lbl_809591D8:
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lui     $at, 0x4000                # $at = 40000000
    c.le.s  $f10, $f0                  
    nop
    bc1f    lbl_80959200               
    nop
    mtc1    $at, $f16                  # $f16 = 2.00
    sw      $zero, 0x01E0(s0)          # 000001E0
    beq     $zero, $zero, lbl_80959210 
    swc1    $f16, 0x0068(s0)           # 00000068
lbl_80959200:
    jal     func_80958D38              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809592FC 
    lw      $ra, 0x002C($sp)           
lbl_80959210:
    lw      t5, 0x0140(s0)             # 00000140
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, t5, lbl_80959294       
    nop
    jal     func_80957DE4              
    sw      v0, 0x0140(s0)             # 00000140
    swc1    $f0, 0x0034($sp)           
    lw      t6, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t7, t6,  2                 
    addu    a0, a0, t7                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f18                   # $f18 = 0.00
    lw      t8, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f4, $f18                  
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f6                   # $f6 = -5.00
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t9, t8,  2                 
    addu    a1, a1, t9                 
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    mfc1    a3, $f0                    
    sw      t0, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f4, 0x0010($sp)           
    lw      a0, 0x0030($sp)            
    lw      a2, 0x0034($sp)            
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    beq     $zero, $zero, lbl_809592FC 
    lw      $ra, 0x002C($sp)           
lbl_80959294:
    jal     func_80957DE4              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0034($sp)           
    lw      t1, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_809596F0)      # a0 = 80960000
    sll     t2, t1,  2                 
    addu    a0, a0, t2                 
    jal     func_8008A194              
    lw      a0, %lo(var_809596F0)(a0)  
    mtc1    v0, $f8                    # $f8 = 0.00
    lw      t3, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f10, $f8                  
    lui     a1, %hi(var_809596F0)      # a1 = 80960000
    sll     t4, t3,  2                 
    addu    a1, a1, t4                 
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    mfc1    a3, $f0                    
    sw      t5, 0x0014($sp)            
    lw      a1, %lo(var_809596F0)(a1)  
    swc1    $f10, 0x0010($sp)          
    lw      a0, 0x0030($sp)            
    lw      a2, 0x0034($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
lbl_809592FC:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_8095930C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x013C(s0)             # 0000013C
    lui     t9, %hi(var_8095978C)      # t9 = 80960000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t7, t6,  2                 
    addu    t9, t9, t7                 
    lw      t9, %lo(var_8095978C)(t9)  
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    addiu   t8, $zero, 0x001D          # t8 = 0000001D
    sw      t8, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41A0                 # a2 = 41A00000
    lui     a3, 0x425C                 # a3 = 425C0000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lh      t0, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x0063         # $at = 00000063
    bne     t0, $at, lbl_809593A4      
    lui     $at, 0xC516                # $at = C5160000
    mtc1    $at, $f0                   # $f0 = -2400.00
    lwc1    $f6, 0x002C(s0)            # 0000002C
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_809593A8               
    lw      t1, 0x0028(s0)             # 00000028
    swc1    $f0, 0x002C(s0)            # 0000002C
lbl_809593A4:
    lw      t1, 0x0028(s0)             # 00000028
lbl_809593A8:
    lui     $at, 0x428C                # $at = 428C0000
    lw      t2, 0x0024(s0)             # 00000024
    sw      t1, 0x003C(s0)             # 0000003C
    lwc1    $f8, 0x003C(s0)            # 0000003C
    mtc1    $at, $f10                  # $f10 = 70.00
    sw      t2, 0x0038(s0)             # 00000038
    lw      t2, 0x002C(s0)             # 0000002C
    add.s   $f16, $f8, $f10            
    sw      t2, 0x0040(s0)             # 00000040
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x003C(s0)           # 0000003C
    lui     $at, %hi(var_809597CC)     # $at = 80960000
    lwc1    $f18, %lo(var_809597CC)($at) 
    addiu   a2, s0, 0x01E4             # a2 = 000001E4
    or      a1, a2, $zero              # a1 = 000001E4
    c.lt.s  $f0, $f18                  
    or      a0, s0, $zero              # a0 = 00000000
    bc1fl   lbl_8095940C               
    lbu     v0, 0x01DC(s0)             # 000001DC
    lbu     v0, 0x01DC(s0)             # 000001DC
    bne     v0, $zero, lbl_80959408    
    addiu   t3, v0, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_80959428 
    sb      t3, 0x01DC(s0)             # 000001DC
lbl_80959408:
    lbu     v0, 0x01DC(s0)             # 000001DC
lbl_8095940C:
    blez    v0, lbl_80959428           
    addiu   t4, v0, 0x0001             # t4 = 00000001
    andi    t5, t4, 0x00FF             # t5 = 00000001
    slti    $at, t5, 0x0004            
    bne     $at, $zero, lbl_80959428   
    sb      t4, 0x01DC(s0)             # 000001DC
    sb      $zero, 0x01DC(s0)          # 000001DC
lbl_80959428:
    jal     func_80050B00              
    sw      a2, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80957CCC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80959464:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s3, 0x0020($sp)            
    sw      s1, 0x0018($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a2, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s5, 0x0028($sp)            
    sw      s4, 0x0024($sp)            
    sw      s2, 0x001C($sp)            
    sw      s0, 0x0014($sp)            
    sw      a1, 0x005C($sp)            
    lw      t6, 0x0248(s1)             # 00000248
    or      s2, $zero, $zero           # s2 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    blez    t6, lbl_809595B4           
    addiu   s5, $sp, 0x0040            # s5 = FFFFFFE8
    addiu   s4, $sp, 0x004C            # s4 = FFFFFFF4
    lw      t7, 0x024C(s1)             # 0000024C
lbl_809594AC:
    or      a0, s3, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = FFFFFFF4
    addu    t8, t7, s0                 
    lh      t9, 0x0028(t8)             # 00000028
    or      a3, s5, $zero              # a3 = FFFFFFE8
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x004C($sp)           
    lw      t0, 0x024C(s1)             # 0000024C
    addu    t1, t0, s0                 
    lh      t2, 0x002A(t1)             # 0000002A
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0050($sp)          
    lw      t3, 0x024C(s1)             # 0000024C
    addu    t4, t3, s0                 
    lh      t5, 0x002C(t4)             # 0000002C
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0054($sp)          
    lw      t6, 0x024C(s1)             # 0000024C
    addu    t7, t6, s0                 
    jal     func_8008E2AC              
    lbu     a1, 0x003C(t7)             # 0000003C
    lwc1    $f4, 0x0040($sp)           
    lw      t0, 0x024C(s1)             # 0000024C
    addiu   s2, s2, 0x0001             # s2 = 00000001
    trunc.w.s $f6, $f4                   
    addu    t1, t0, s0                 
    mfc1    t9, $f6                    
    nop
    sh      t9, 0x0030(t1)             # 00000030
    lwc1    $f8, 0x0044($sp)           
    lw      t4, 0x024C(s1)             # 0000024C
    trunc.w.s $f10, $f8                  
    addu    t5, t4, s0                 
    mfc1    t3, $f10                   
    nop
    sh      t3, 0x0032(t5)             # 00000032
    lwc1    $f16, 0x0048($sp)          
    lw      t8, 0x024C(s1)             # 0000024C
    trunc.w.s $f18, $f16                 
    addu    t0, t8, s0                 
    mfc1    t7, $f18                   
    nop
    sh      t7, 0x0034(t0)             # 00000034
    lw      t9, 0x024C(s1)             # 0000024C
    addu    v0, t9, s0                 
    lh      t1, 0x002E(v0)             # 0000002E
    lwc1    $f4, 0x0038(v0)            # 00000038
    addiu   s0, s0, 0x0040             # s0 = 00000040
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f4, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t4, $f16                   
    nop
    sh      t4, 0x0036(v0)             # 00000036
    lw      t3, 0x0248(s1)             # 00000248
    slt     $at, s2, t3                
    bnel    $at, $zero, lbl_809594AC   
    lw      t7, 0x024C(s1)             # 0000024C
lbl_809595B4:
    lw      a0, 0x005C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s1, 0x0230             # a2 = 00000230
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    lw      s4, 0x0024($sp)            
    lw      s5, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_809595F0:
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     a2, $at, lbl_8095966C      
    lw      v0, 0x0000(a1)             # 00000000
    lbu     t6, 0x01DC(a0)             # 000001DC
    lui     v1, %hi(var_809597B0)      # v1 = 80960000
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    v1, v1, t6                 
    lbu     v1, %lo(var_809597B0)(v1)  
    lw      a2, 0x02C0(v0)             # 000002C0
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     t9, v1,  2                 
    addiu   t7, a2, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v0)             # 000002C0
    lui     a3, %hi(var_809597A4)      # a3 = 80960000
    addu    a3, a3, t9                 
    sw      t8, 0x0000(a2)             # 00000000
    lw      a3, %lo(var_809597A4)(a3)  
    lui     t4, 0x8012                 # t4 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t1, a3,  4                 
    srl     t2, t1, 28                 
    sll     t3, t2,  2                 
    addu    t4, t4, t3                 
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, a3, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t0, t4                 
    addu    t6, t5, $at                
    sw      t6, 0x0004(a2)             # 00000004
lbl_8095966C:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra                        
    nop


func_80959678:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0024($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             # 00000000
    lw      a0, 0x0020($sp)            
    lui     t7, %hi(func_809595F0)     # t7 = 80960000
    addiu   t7, t7, %lo(func_809595F0) # t7 = 809595F0
    lui     a3, %hi(func_80959464)     # a3 = 80960000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0014($sp)            
    addiu   a3, a3, %lo(func_80959464) # a3 = 80959464
    sw      t7, 0x0010($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_8008E204              
    addiu   a2, a0, 0x0144             # a2 = 00000144
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_809596D0: .word 0x009A0100, 0x02000010, 0x00A00000, 0x00000294
.word func_80957EAC
.word func_80958084
.word func_8095930C
.word func_80959678
var_809596F0: .word 0x060043E4, 0x06004B08
var_809596F8: .word 0x060053F0, 0x0600360C, 0x06002F98
var_80959704: .word \
0x0A000039, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00140064, 0x00000000, 0x00000000
var_80959730: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000100, 0x0D000000, 0x00000000, \
0x000A0064
var_80959754: .word 0x0A000939, 0x12000000, 0x00000001
.word var_80959730
var_80959764: .word 0x0A000023, 0x0064FE00
var_8095976C: .word 0x00000001, 0x00000013
var_80959774: .word \
0x3F800000, 0x3F800000, 0x3FC00000, 0x3FC00000, \
0x3FC00000
var_80959788: .word 0x30F804B0
var_8095978C: .word func_80958138
.word func_80958468
.word func_80958240
.word func_809588BC
.word func_80959030
.word func_80958E00
var_809597A4: .word 0x06001D28, 0x06001928, 0x06001B28
var_809597B0: .word 0x00010201, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_809597C0: .word 0x3EAAAAAB
var_809597C4: .word 0x3E4CCCCD
var_809597C8: .word 0x3F350481
var_809597CC: .word 0x3CCCCCCD

