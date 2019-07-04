.section .text
func_808EBA50:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lui     t7, 0x0001                 # t7 = 00010000
    lui     $at, 0x4220                # $at = 42200000
    addu    t7, t7, t6                 
    lbu     t7, 0x1DEA(t7)             # 00011DEA
    mtc1    $at, $f4                   # $f4 = 40.00
    lui     a2, 0x0602                 # a2 = 06020000
    sh      t7, 0x02DC(s0)             # 000002DC
    lh      t8, 0x02DC(s0)             # 000002DC
    addiu   a2, a2, 0xC450             # a2 = 0601C450
    addiu   a1, s0, 0x0140             # a1 = 00000140
    bgez    t8, lbl_808EBA9C           
    lui     a3, 0x0600                 # a3 = 06000000
    sh      $zero, 0x02DC(s0)          # 000002DC
lbl_808EBA9C:
    lwc1    $f0, 0x0028(s0)            # 00000028
    lw      t0, 0x0024(s0)             # 00000024
    lw      t9, 0x0028(s0)             # 00000028
    add.s   $f6, $f0, $f4              
    sw      t0, 0x0038(s0)             # 00000038
    lw      t0, 0x002C(s0)             # 0000002C
    swc1    $f0, 0x0300(s0)            # 00000300
    swc1    $f6, 0x02FC(s0)            # 000002FC
    sw      t9, 0x003C(s0)             # 0000003C
    sw      t0, 0x0040(s0)             # 00000040
    lw      t1, 0x0034($sp)            
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lw      a0, 0x0034($sp)            
    lh      t2, 0x00A4(t1)             # 000000A4
    addiu   t9, s0, 0x022C             # t9 = 0000022C
    addiu   a3, a3, 0x31C0             # a3 = 060031C0
    bne     t2, $at, lbl_808EBB44      
    addiu   t8, s0, 0x0184             # t8 = 00000184
    lui     a2, 0x0602                 # a2 = 06020000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   t3, s0, 0x0184             # t3 = 00000184
    addiu   t4, s0, 0x022C             # t4 = 0000022C
    addiu   t5, $zero, 0x001C          # t5 = 0000001C
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    addiu   a3, a3, 0x8698             # a3 = 06008698
    addiu   a2, a2, 0xC450             # a2 = 0601C450
    or      a0, t1, $zero              # a0 = 00000000
    jal     func_8008C788              
    addiu   a1, s0, 0x0140             # a1 = 00000140
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x59F6(t6)            # 8011A60A
    bne     t6, $zero, lbl_808EBB78    
    nop
    lh      t7, 0x02DC(s0)             # 000002DC
    beq     t7, $zero, lbl_808EBB78    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808EBB88 
    lw      $ra, 0x002C($sp)           
lbl_808EBB44:
    addiu   t0, $zero, 0x001C          # t0 = 0000001C
    sw      t0, 0x0018($sp)            
    sw      t8, 0x0010($sp)            
    jal     func_8008C788              
    sw      t9, 0x0014($sp)            
    lui     t2, 0x8012                 # t2 = 80120000
    lbu     t2, -0x59F6(t2)            # 8011A60A
    bne     t2, $zero, lbl_808EBB78    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808EBB88 
    lw      $ra, 0x002C($sp)           
lbl_808EBB78:
    lui     t1, %hi(func_808EBF6C)     # t1 = 808F0000
    addiu   t1, t1, %lo(func_808EBF6C) # t1 = 808EBF6C
    sw      t1, 0x013C(s0)             # 0000013C
    lw      $ra, 0x002C($sp)           
lbl_808EBB88:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808EBB98:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_808EBBA8:
    addiu   $sp, $sp, 0xFF30           # $sp = FFFFFF30
    sw      s4, 0x0070($sp)            
    sll     s4, a2, 16                 
    sw      s0, 0x0060($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sra     s4, s4, 16                 
    sw      $ra, 0x0084($sp)           
    sw      s8, 0x0080($sp)            
    sw      s7, 0x007C($sp)            
    sw      s6, 0x0078($sp)            
    sw      s5, 0x0074($sp)            
    sw      s3, 0x006C($sp)            
    sw      s2, 0x0068($sp)            
    sw      s1, 0x0064($sp)            
    sdc1    $f30, 0x0058($sp)          
    sdc1    $f28, 0x0050($sp)          
    sdc1    $f26, 0x0048($sp)          
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    sw      a1, 0x00D4($sp)            
    sw      a2, 0x00D8($sp)            
    lui     t7, %hi(var_808EE524)      # t7 = 808F0000
    addiu   t7, t7, %lo(var_808EE524)  # t7 = 808EE524
    lw      t9, 0x0000(t7)             # 808EE524
    addiu   t6, $sp, 0x00C4            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 808EE528
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 808EE52C
    sw      t8, 0x0004(t6)             # FFFFFFF8
    lui     $at, %hi(var_808EE560)     # $at = 808F0000
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lwc1    $f4, %lo(var_808EE560)($at) 
    lwc1    $f0, 0x02F8(s0)            # 000002F8
    lui     $at, %hi(var_808EE564)     # $at = 808F0000
    c.lt.s  $f0, $f4                   
    nop
    bc1tl   lbl_808EBE60               
    lw      $ra, 0x0084($sp)           
    lwc1    $f6, %lo(var_808EE564)($at) 
    mul.s   $f20, $f0, $f6             
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f28                  # $f28 = 0.50
    nop
    sub.s   $f8, $f0, $f28             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00B8($sp)           
    sub.s   $f10, $f0, $f28            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00BC($sp)          
    sub.s   $f16, $f0, $f28            
    lui     $at, %hi(var_808EE568)     # $at = 808F0000
    lwc1    $f30, %lo(var_808EE568)($at) 
    lui     $at, 0x41F0                # $at = 41F00000
    lui     s7, %hi(var_808EE508)      # s7 = 808F0000
    lui     s5, %hi(var_808EE4EC)      # s5 = 808F0000
    mtc1    $at, $f26                  # $f26 = 30.00
    swc1    $f16, 0x00C0($sp)          
    addiu   s5, s5, %lo(var_808EE4EC)  # s5 = 808EE4EC
    addiu   s7, s7, %lo(var_808EE508)  # s7 = 808EE508
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s8, $sp, 0x00AC            # s8 = FFFFFFDC
    addiu   s6, $zero, 0x0003          # s6 = 00000003
lbl_808EBCAC:
    bne     s4, $zero, lbl_808EBCF8    
    lui     $at, %hi(var_808EE56C)     # $at = 808F0000
    lwc1    $f18, 0x0024(s0)           # 00000024
    mul.s   $f22, $f20, $f28           
    or      s1, $zero, $zero           # s1 = 00000000
    mov.s   $f24, $f30                 
    addiu   s2, $zero, 0x005A          # s2 = 0000005A
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00AC($sp)          
    sub.s   $f4, $f0, $f28             
    lwc1    $f8, 0x0028(s0)            # 00000028
    mul.s   $f6, $f4, $f22             
    add.s   $f10, $f8, $f20            
    add.s   $f16, $f6, $f10            
    swc1    $f16, 0x00B0($sp)          
    lwc1    $f18, 0x002C(s0)           # 0000002C
    add.s   $f4, $f18, $f26            
    beq     $zero, $zero, lbl_808EBDDC 
    swc1    $f4, 0x00B4($sp)           
lbl_808EBCF8:
    lwc1    $f24, %lo(var_808EE56C)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    lui     $at, %hi(var_808EE570)     # $at = 808F0000
    lwc1    $f8, %lo(var_808EE570)($at) 
    addiu   s2, $zero, 0x0032          # s2 = 00000032
    or      s1, s4, $zero              # s1 = 00000000
    mul.s   $f22, $f20, $f8            
    jal     func_80026D90              
    nop
    lwc1    $f6, 0x0024(s0)            # 00000024
    lw      t1, 0x00D4($sp)            
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    add.s   $f10, $f0, $f6             
    swc1    $f10, 0x00AC($sp)          
    lh      t2, 0x00A4(t1)             # 000000A4
    bne     t2, $at, lbl_808EBD7C      
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f6, $f0, $f28             
    lwc1    $f16, 0x0028(s0)           # 00000028
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    add.s   $f18, $f16, $f20           
    mul.s   $f10, $f6, $f22            
    add.s   $f8, $f18, $f4             
    add.s   $f16, $f10, $f8            
    swc1    $f16, 0x00B0($sp)          
    lwc1    $f18, 0x002C(s0)           # 0000002C
    add.s   $f4, $f18, $f26            
    beq     $zero, $zero, lbl_808EBDB4 
    swc1    $f4, 0x00B4($sp)           
lbl_808EBD7C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f6, $f0, $f28             
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x4270                # $at = 42700000
    add.s   $f16, $f8, $f20            
    mul.s   $f10, $f6, $f22            
    mtc1    $at, $f8                   # $f8 = 60.00
    sub.s   $f18, $f16, $f26           
    add.s   $f4, $f10, $f18            
    swc1    $f4, 0x00B0($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    add.s   $f16, $f6, $f8             
    swc1    $f16, 0x00B4($sp)          
lbl_808EBDB4:
    lui     t3, 0x8012                 # t3 = 80120000
    lw      t3, -0x5A2C(t3)            # 8011A5D4
    lwc1    $f10, 0x00B0($sp)          
    lui     $at, 0x41A0                # $at = 41A00000
    bne     t3, $zero, lbl_808EBDDC    
    nop
    mtc1    $at, $f18                  # $f18 = 20.00
    nop
    add.s   $f4, $f10, $f18            
    swc1    $f4, 0x00B0($sp)           
lbl_808EBDDC:
    multu   s1, s6                     
    addiu   t1, $sp, 0x00A8            # t1 = FFFFFFD8
    addiu   t2, $sp, 0x00A4            # t2 = FFFFFFD4
    sw      t2, 0x0014($sp)            
    sw      t1, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s8, $zero              # a1 = FFFFFFDC
    addiu   a2, $sp, 0x00C4            # a2 = FFFFFFF4
    addiu   a3, $sp, 0x00B8            # a3 = FFFFFFE8
    swc1    $f24, 0x0018($sp)          
    mflo    t0                         
    addu    v0, s5, t0                 
    addu    v1, s7, t0                 
    lbu     t4, 0x0000(v0)             # 00000000
    lbu     t5, 0x0001(v0)             # 00000001
    lbu     t6, 0x0002(v0)             # 00000002
    lbu     t7, 0x0000(v1)             # 00000000
    lbu     t8, 0x0001(v1)             # 00000001
    lbu     t9, 0x0002(v1)             # 00000002
    sw      s2, 0x001C($sp)            
    sw      s1, 0x0020($sp)            
    sb      t4, 0x00A8($sp)            
    sb      t5, 0x00A9($sp)            
    sb      t6, 0x00AA($sp)            
    sb      t7, 0x00A4($sp)            
    sb      t8, 0x00A5($sp)            
    jal     func_808EDE50              
    sb      t9, 0x00A6($sp)            
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     s3, $at, lbl_808EBCAC      
    nop
    lw      $ra, 0x0084($sp)           
lbl_808EBE60:
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    ldc1    $f24, 0x0040($sp)          
    ldc1    $f26, 0x0048($sp)          
    ldc1    $f28, 0x0050($sp)          
    ldc1    $f30, 0x0058($sp)          
    lw      s0, 0x0060($sp)            
    lw      s1, 0x0064($sp)            
    lw      s2, 0x0068($sp)            
    lw      s3, 0x006C($sp)            
    lw      s4, 0x0070($sp)            
    lw      s5, 0x0074($sp)            
    lw      s6, 0x0078($sp)            
    lw      s7, 0x007C($sp)            
    lw      s8, 0x0080($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00D0           # $sp = 00000000


func_808EBEA4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lwc1    $f4, 0x02FC(s0)            # 000002FC
    lwc1    $f6, 0x0310(s0)            # 00000310
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f0, $f4, $f6              
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a3, 0x4120                 # a3 = 41200000
    mfc1    a1, $f0                    
    jal     func_80064280              
    swc1    $f0, 0x030C(s0)            # 0000030C
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0310             # a0 = 00000310
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80064280              
    lui     a3, 0x3F00                 # a3 = 3F000000
    lw      t6, 0x0024($sp)            
    lbu     t7, 0x1D6C(t6)             # 00001D6C
    bnel    t7, $zero, lbl_808EBF30    
    lwc1    $f16, 0x0314(s0)           # 00000314
    lwc1    $f8, 0x0314(s0)            # 00000314
    trunc.w.s $f10, $f8                  
    mfc1    a0, $f10                   
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    beq     $zero, $zero, lbl_808EBF58 
    swc1    $f0, 0x0060(s0)            # 00000060
    lwc1    $f16, 0x0314(s0)           # 00000314
lbl_808EBF30:
    trunc.w.s $f18, $f16                 
    mfc1    a0, $f18                   
    nop
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_808EE574)     # $at = 808F0000
    lwc1    $f4, %lo(var_808EE574)($at) 
    mul.s   $f6, $f0, $f4              
    swc1    $f6, 0x0060(s0)            # 00000060
lbl_808EBF58:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808EBF6C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002049C              
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    beq     v0, $zero, lbl_808EC398    
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, s0                 
    lhu     t6, 0x04C6(t6)             # 000104C6
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    beq     t6, $at, lbl_808EBFC4      
    lw      a1, 0x0028($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0028($sp)            
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_808EC39C 
    lw      $ra, 0x0024($sp)           
lbl_808EBFC4:
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lh      a0, 0x00A4(s0)             # 000000A4
    lw      t7, 0x0028($sp)            
    addiu   t0, $zero, 0x003B          # t0 = 0000003B
    or      v1, $zero, $zero           # v1 = 00000000
    beq     t0, a0, lbl_808EC070       
    or      a2, t7, $zero              # a2 = 00000000
    lh      v0, 0x02DC(t7)             # 000002DC
    lui     a1, 0x8012                 # a1 = 80120000
    or      t1, t7, $zero              # t1 = 00000000
    beq     v0, $zero, lbl_808EC01C    
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     v0, a3, lbl_808EC038       
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808EC054      
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    beq     $zero, $zero, lbl_808EC124 
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
lbl_808EC01C:
    lhu     t8, 0x0EF2(a1)             # 8011B4C2
    andi    t9, t8, 0x0100             # t9 = 00000000
    bne     t9, $zero, lbl_808EC030    
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_808EC030:
    beq     $zero, $zero, lbl_808EC124 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_808EC038:
    addiu   a1, a1, 0xA5D0             # a1 = 80114BA0
    lhu     t2, 0x0EF2(a1)             # 80115A92
    andi    t3, t2, 0x0200             # t3 = 00000000
    bne     t3, $zero, lbl_808EC124    
    nop
    beq     $zero, $zero, lbl_808EC124 
    or      v1, a3, $zero              # v1 = 00000001
lbl_808EC054:
    addiu   a1, a1, 0xA5D0             # a1 = 8010F170
    lhu     t4, 0x0EF2(a1)             # 80110062
    andi    t5, t4, 0x0400             # t5 = 00000000
    bne     t5, $zero, lbl_808EC124    
    nop
    beq     $zero, $zero, lbl_808EC124 
    or      v1, a3, $zero              # v1 = 00000001
lbl_808EC070:
    lh      v0, 0x02DC(a2)             # 000002DC
    beq     v0, $zero, lbl_808EC0A0    
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     v0, a3, lbl_808EC0E0       
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808EC104      
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    beq     $zero, $zero, lbl_808EC124 
    lw      t1, 0x0028($sp)            
lbl_808EC0A0:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lbu     t6, 0x003A(a1)             # 8011A60A
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beql    t6, $zero, lbl_808EC0D0    
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lw      t7, -0x4600(t7)            # 8011BA00
    lh      t8, 0x12D8(t7)             # 801212D8
    beq     t8, $zero, lbl_808EC0D8    
    nop
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_808EC0D0:
    sh      v1, 0x02DA(a2)             # 000002DA
    lh      a0, 0x00A4(s0)             # 000000A4
lbl_808EC0D8:
    beq     $zero, $zero, lbl_808EC124 
    lw      t1, 0x0028($sp)            
lbl_808EC0E0:
    addiu   a1, a1, 0xA5D0             # a1 = 80114BA0
    lbu     t9, 0x003C(a1)             # 80114BDC
    bne     t9, $zero, lbl_808EC0FC    
    nop
    sh      a3, 0x02DA(a2)             # 000002DA
    lh      a0, 0x00A4(s0)             # 000000A4
    or      v1, a3, $zero              # v1 = 00000001
lbl_808EC0FC:
    beq     $zero, $zero, lbl_808EC124 
    lw      t1, 0x0028($sp)            
lbl_808EC104:
    addiu   a1, a1, 0xA5D0             # a1 = 8010F170
    lbu     t2, 0x003D(a1)             # 8010F1AD
    bnel    t2, $zero, lbl_808EC124    
    lw      t1, 0x0028($sp)            
    sh      a3, 0x02DA(a2)             # 000002DA
    lh      a0, 0x00A4(s0)             # 000000A4
    or      v1, a3, $zero              # v1 = 00000001
    lw      t1, 0x0028($sp)            
lbl_808EC124:
    beql    v1, $zero, lbl_808EC324    
    lui     $at, 0x0001                # $at = 00010000
    beq     t0, a0, lbl_808EC224       
    lh      v0, 0x02DC(t1)             # 000002DC
    beq     v0, $zero, lbl_808EC158    
    lui     t6, 0x8012                 # t6 = 80120000
    beq     v0, a3, lbl_808EC19C       
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808EC1E0      
    lui     t6, 0x8012                 # t6 = 80120000
    beq     $zero, $zero, lbl_808EC310 
    nop
lbl_808EC158:
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x0160             # v0 = 02000160
    sll     t3, v0,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x1D68(s0)             # 00001D68
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    beq     $zero, $zero, lbl_808EC310 
    sb      t2, 0x1414(a1)             # 80110584
lbl_808EC19C:
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x1020             # v0 = 02001020
    sll     t3, v0,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x1D68(s0)             # 00001D68
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    beq     $zero, $zero, lbl_808EC310 
    sb      t2, 0x1414(a1)             # 80110584
lbl_808EC1E0:
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x1F40             # v0 = 02001F40
    sll     t3, v0,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x1D68(s0)             # 00001D68
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    beq     $zero, $zero, lbl_808EC310 
    sb      t2, 0x1414(a1)             # 80110584
lbl_808EC224:
    beq     v0, $zero, lbl_808EC248    
    lui     t6, 0x8012                 # t6 = 80120000
    beq     v0, a3, lbl_808EC28C       
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808EC2D0      
    lui     t6, 0x8012                 # t6 = 80120000
    beq     $zero, $zero, lbl_808EC310 
    nop
lbl_808EC248:
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x0130             # v0 = 02000130
    sll     t3, v0,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x1D68(s0)             # 00001D68
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    beq     $zero, $zero, lbl_808EC310 
    sb      t2, 0x1414(a1)             # 80110584
lbl_808EC28C:
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x13E0             # v0 = 020013E0
    sll     t3, v0,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x1D68(s0)             # 00001D68
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    beq     $zero, $zero, lbl_808EC310 
    sb      t2, 0x1414(a1)             # 80110584
lbl_808EC2D0:
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x25D0             # v0 = 020025D0
    sll     t3, v0,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x1D68(s0)             # 00001D68
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x1414(a1)             # 80110584
lbl_808EC310:
    lui     t3, %hi(func_808ECF84)     # t3 = 808F0000
    addiu   t3, t3, %lo(func_808ECF84) # t3 = 808ECF84
    beq     $zero, $zero, lbl_808EC398 
    sw      t3, 0x013C(t1)             # 0000013C
    lui     $at, 0x0001                # $at = 00010000
lbl_808EC324:
    addu    $at, $at, s0               
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    bne     t0, a0, lbl_808EC354       
    sb      t4, 0x0AE3($at)            # 00010AE3
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x219B          # a1 = 0000219B
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    beq     $zero, $zero, lbl_808EC370 
    lw      a2, 0x0028($sp)            
lbl_808EC354:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x219C          # a1 = 0000219C
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    lw      a2, 0x0028($sp)            
lbl_808EC370:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x287F          # a1 = 0000287F
    lw      a2, 0x0028($sp)            
    lui     t5, %hi(func_808EDCC8)     # t5 = 808F0000
    lui     t6, %hi(func_808EC3AC)     # t6 = 808F0000
    addiu   t5, t5, %lo(func_808EDCC8) # t5 = 808EDCC8
    addiu   t6, t6, %lo(func_808EC3AC) # t6 = 808EC3AC
    sw      t5, 0x0134(a2)             # 00000134
    sw      t6, 0x013C(a2)             # 0000013C
lbl_808EC398:
    lw      $ra, 0x0024($sp)           
lbl_808EC39C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808EC3AC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lh      t6, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lui     a0, 0x0600                 # a0 = 06000000
    bne     t6, $at, lbl_808EC420      
    nop
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x8698             # a0 = 06008698
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    cvt.s.w $f0, $f4                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   a1, a1, 0x8698             # a1 = 06008698
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      t7, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    beq     $zero, $zero, lbl_808EC468 
    or      a0, s0, $zero              # a0 = 00000000
lbl_808EC420:
    jal     func_8008A194              
    addiu   a0, a0, 0x31C0             # a0 = 000031C0
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f10                  # $f10 = -10.00
    cvt.s.w $f0, $f8                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   a1, a1, 0x31C0             # a1 = 060031C0
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      t8, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    or      a0, s0, $zero              # a0 = 00000000
lbl_808EC468:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x6858          # a1 = 00006858
    lui     t9, %hi(func_808EC490)     # t9 = 808F0000
    addiu   t9, t9, %lo(func_808EC490) # t9 = 808EC490
    sw      t9, 0x013C(s0)             # 0000013C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808EC490:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x02FC(s0)             # 000002FC
    lw      a2, 0x0304(s0)             # 00000304
    jal     func_80064280              
    lui     a3, 0x42C8                 # a3 = 42C80000
    lui     a1, 0x3D0F                 # a1 = 3D0F0000
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a1, a1, 0x5C29             # a1 = 3D0F5C29
    addiu   a0, s0, 0x02F8             # a0 = 000002F8
    jal     func_80064280              
    lw      a2, 0x0308(s0)             # 00000308
    lui     a1, 0x3F4C                 # a1 = 3F4C0000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0xCCCD             # a1 = 3F4CCCCD
    jal     func_80064280              
    addiu   a0, s0, 0x0304             # a0 = 00000304
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a2, a2, 0xC28F             # a2 = 3CF5C28F
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
    jal     func_80064280              
    addiu   a0, s0, 0x0308             # a0 = 00000308
    lui     $at, %hi(var_808EE578)     # $at = 808F0000
    lwc1    $f6, %lo(var_808EE578)($at) 
    lwc1    $f4, 0x02F8(s0)            # 000002F8
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_808EC5B0               
    lh      t9, 0x00B6(s0)             # 000000B6
    lh      v0, 0x00B6(s0)             # 000000B6
    slti    $at, v0, 0xE0C1            
    bne     $at, $zero, lbl_808EC5A4   
    addiu   t8, v0, 0x0BB8             # t8 = 00000BB8
    slti    $at, v0, 0x03E8            
    beq     $at, $zero, lbl_808EC5A4   
    nop
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0140             # a0 = 00000140
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    mtc1    t6, $f8                    # $f8 = 0.00
    lui     t7, %hi(func_808EC5DC)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808EC5DC) # t7 = 808EC5DC
    cvt.s.w $f0, $f8                   
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_808EC5BC               
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808EC5B8 
    sw      t7, 0x013C(s0)             # 0000013C
lbl_808EC5A4:
    beq     $zero, $zero, lbl_808EC5B8 
    sh      t8, 0x00B6(s0)             # 000000B6
    lh      t9, 0x00B6(s0)             # 000000B6
lbl_808EC5B0:
    addiu   t0, t9, 0x0BB8             # t0 = 00000BB8
    sh      t0, 0x00B6(s0)             # 000000B6
lbl_808EC5B8:
    or      a0, s0, $zero              # a0 = 00000000
lbl_808EC5BC:
    lw      a1, 0x002C($sp)            
    jal     func_808EBBA8              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808EC5DC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      a1, 0x0024($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    lui     $at, %hi(var_808EE57C)     # $at = 808F0000
    lwc1    $f8, %lo(var_808EE57C)($at) 
    lwc1    $f6, 0x031C(a1)            # 0000031C
    lwc1    $f4, 0x0314(a1)            # 00000314
    lwc1    $f0, 0x0158(a1)            # 00000158
    mul.s   $f10, $f6, $f8             
    addiu   a0, a1, 0x0140             # a0 = 00000140
    c.le.s  $f10, $f4                  
    nop
    bc1fl   lbl_808EC62C               
    sw      a1, 0x0020($sp)            
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
    swc1    $f16, 0x0314(a1)           # 00000314
    sw      a1, 0x0020($sp)            
lbl_808EC62C:
    jal     func_8008C9C0              
    swc1    $f0, 0x001C($sp)           
    lw      a1, 0x0020($sp)            
    lwc1    $f0, 0x001C($sp)           
    lwc1    $f18, 0x031C(a1)           # 0000031C
    c.le.s  $f18, $f0                  
    nop
    bc1fl   lbl_808EC66C               
    lw      $ra, 0x0014($sp)           
    lh      t6, 0x02EC(a1)             # 000002EC
    lui     t7, %hi(func_808EC678)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808EC678) # t7 = 808EC678
    bnel    t6, $zero, lbl_808EC66C    
    lw      $ra, 0x0014($sp)           
    sw      t7, 0x013C(a1)             # 0000013C
    lw      $ra, 0x0014($sp)           
lbl_808EC66C:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808EC678:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lui     a0, 0x0600                 # a0 = 06000000
    lh      t7, 0x00A4(t6)             # 000000A4
    bne     t7, $at, lbl_808EC6F0      
    nop
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194              
    addiu   a0, a0, 0xD514             # a0 = 0601D514
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    cvt.s.w $f0, $f4                   
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   a1, a1, 0xD514             # a1 = 0601D514
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      $zero, 0x0014($sp)         
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    beq     $zero, $zero, lbl_808EC734 
    addiu   t8, $zero, 0x00DB          # t8 = 000000DB
lbl_808EC6F0:
    jal     func_8008A194              
    addiu   a0, a0, 0x1DF0             # a0 = 00001DF0
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f10                  # $f10 = -10.00
    cvt.s.w $f0, $f8                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1DF0             # a1 = 06001DF0
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      $zero, 0x0014($sp)         
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    addiu   t8, $zero, 0x00DB          # t8 = 000000DB
lbl_808EC734:
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sh      t8, 0x010E(s0)             # 0000010E
    sh      t9, 0x02DE(s0)             # 000002DE
    lw      a0, 0x0034($sp)            
    andi    a1, t8, 0xFFFF             # a1 = 000000DB
    jal     func_800DCE14              
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)            
    jal     func_808EBBA8              
    or      a2, $zero, $zero           # a2 = 00000000
    lui     t0, %hi(func_808EC780)     # t0 = 808F0000
    addiu   t0, t0, %lo(func_808EC780) # t0 = 808EC780
    sw      t0, 0x013C(s0)             # 0000013C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808EC780:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    lui     $at, %hi(var_808EE580)     # $at = 808F0000
    lwc1    $f2, %lo(var_808EE580)($at) 
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lwc1    $f4, 0x0158(s0)            # 00000158
    lwc1    $f6, 0x031C(s0)            # 0000031C
    mul.s   $f0, $f4, $f2              
    nop
    mul.s   $f8, $f6, $f2              
    swc1    $f0, 0x0314(s0)            # 00000314
    c.le.s  $f8, $f0                   
    nop
    bc1f    lbl_808EC7D4               
    nop
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    swc1    $f10, 0x0314(s0)           # 00000314
lbl_808EC7D4:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0140             # a0 = 00000140
    jal     func_800DD464              
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    lh      t6, 0x02DE(s0)             # 000002DE
    bnel    t6, v0, lbl_808EC820       
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D6110              
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808EC820    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D6218              
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006D8E0              
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    lui     t7, %hi(func_808EC84C)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808EC84C) # t7 = 808EC84C
    sw      t7, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
lbl_808EC820:
    jal     func_808EBEA4              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808EBBA8              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_808EC84C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lh      t6, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lui     a0, 0x0600                 # a0 = 06000000
    bne     t6, $at, lbl_808EC8C0      
    nop
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x69E8             # a0 = 060069E8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    cvt.s.w $f0, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   a1, a1, 0x69E8             # a1 = 060069E8
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      t7, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    beq     $zero, $zero, lbl_808EC908 
    or      a0, s0, $zero              # a0 = 00000000
lbl_808EC8C0:
    jal     func_8008A194              
    addiu   a0, a0, 0x5810             # a0 = 00005810
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f10                  # $f10 = -10.00
    cvt.s.w $f0, $f8                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   a1, a1, 0x5810             # a1 = 06005810
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      t8, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    or      a0, s0, $zero              # a0 = 00000000
lbl_808EC908:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x6859          # a1 = 00006859
    lui     t0, %hi(func_808EC938)     # t0 = 808F0000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, t0, %lo(func_808EC938) # t0 = 808EC938
    sh      t9, 0x02E6(s0)             # 000002E6
    sw      t0, 0x013C(s0)             # 0000013C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808EC938:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x0064($sp)            
    lw      t6, 0x0064($sp)            
    lui     $at, %hi(var_808EE584)     # $at = 808F0000
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x005C($sp)            
    lh      t8, 0x02EC(s0)             # 000002EC
    lwc1    $f2, 0x0158(s0)            # 00000158
    beq     t8, $zero, lbl_808EC9A4    
    mov.s   $f12, $f2                  
    lwc1    $f14, %lo(var_808EE584)($at) 
    lwc1    $f4, 0x031C(s0)            # 0000031C
    mul.s   $f0, $f2, $f14             
    nop
    mul.s   $f6, $f4, $f14             
    swc1    $f0, 0x0314(s0)            # 00000314
    c.le.s  $f6, $f0                   
    nop
    bc1f    lbl_808EC9A4               
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    swc1    $f8, 0x0314(s0)            # 00000314
lbl_808EC9A4:
    sw      a0, 0x0044($sp)            
    jal     func_8008C9C0              
    swc1    $f12, 0x0058($sp)          
    lwc1    $f12, 0x0058($sp)          
    lwc1    $f10, 0x031C(s0)           # 0000031C
    c.le.s  $f10, $f12                 
    nop
    bc1fl   lbl_808ECB00               
    lh      v0, 0x02F6(s0)             # 000002F6
    lh      t9, 0x02EC(s0)             # 000002EC
    lw      t1, 0x0064($sp)            
    bnel    t9, $zero, lbl_808ECB00    
    lh      v0, 0x02F6(s0)             # 000002F6
    lh      t2, 0x00A4(t1)             # 000000A4
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lui     a0, 0x0600                 # a0 = 06000000
    bne     t2, $at, lbl_808ECA38      
    nop
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x7CA8             # a0 = 06007CA8
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f0, $f16                  
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7CA8             # a1 = 06007CA8
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      $zero, 0x0014($sp)         
    swc1    $f0, 0x0010($sp)           
    lw      a0, 0x0044($sp)            
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    beq     $zero, $zero, lbl_808ECA7C 
    lh      t4, 0x02DA(s0)             # 000002DA
lbl_808ECA38:
    jal     func_8008A194              
    addiu   a0, a0, 0x4344             # a0 = 00004344
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    cvt.s.w $f0, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4344             # a1 = 06004344
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      $zero, 0x0014($sp)         
    swc1    $f0, 0x0010($sp)           
    lw      a0, 0x0044($sp)            
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    lh      t4, 0x02DA(s0)             # 000002DA
lbl_808ECA7C:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    sh      t3, 0x02F2(s0)             # 000002F2
    bne     t4, $zero, lbl_808ECAFC    
    sh      t0, 0x02EC(s0)             # 000002EC
    lw      a2, 0x0064($sp)            
    lw      v0, 0x005C($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lh      t5, 0x00A4(a2)             # 000000A4
    lwc1    $f8, 0x0028(v0)            # 00000028
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lwc1    $f0, 0x0024(v0)            # 00000024
    lwc1    $f12, 0x002C(v0)           # 0000002C
    bne     t5, $at, lbl_808ECAC4      
    add.s   $f2, $f8, $f10             
    beq     $zero, $zero, lbl_808ECACC 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808ECAC4:
    sll     v0, t0, 16                 
    sra     v0, v0, 16                 
lbl_808ECACC:
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x0184          # a3 = 00000184
    swc1    $f0, 0x0010($sp)           
    swc1    $f2, 0x0014($sp)           
    swc1    $f12, 0x0018($sp)          
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    jal     func_800253F0              
    sw      v0, 0x0028($sp)            
    sw      v0, 0x0330(s0)             # 00000330
lbl_808ECAFC:
    lh      v0, 0x02F6(s0)             # 000002F6
lbl_808ECB00:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     v1, 0x8012                 # v1 = 80120000
    slti    $at, v0, 0x0002            
    bne     $at, $zero, lbl_808ECB18   
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x02F6(s0)             # 000002F6
lbl_808ECB18:
    lh      v0, 0x02F2(s0)             # 000002F2
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    addiu   t8, $zero, 0x0140          # t8 = 00000140
    slti    $at, v0, 0x006E            
    bne     $at, $zero, lbl_808ECB38   
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x02F2(s0)             # 000002F2
    lh      v0, 0x02F2(s0)             # 000002F2
lbl_808ECB38:
    addiu   $at, $zero, 0x006E         # $at = 0000006E
    bne     v0, $at, lbl_808ECB60      
    nop
    sh      t8, 0x1424(v1)             # 8011B9F4
    jal     func_80072500              
    lw      a0, 0x0064($sp)            
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    sh      t9, 0x02F6(s0)             # 000002F6
    lh      v0, 0x02F2(s0)             # 000002F2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_808ECB60:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lh      t1, 0x0030(v1)             # 8011A600
    lh      t2, 0x002E(v1)             # 8011A5FE
    addiu   t9, $zero, 0x00DA          # t9 = 000000DA
    andi    a1, t9, 0xFFFF             # a1 = 000000DA
    bne     t1, t2, lbl_808ECB90       
    or      a0, s0, $zero              # a0 = 00000000
    lh      t3, 0x13F4(v1)             # 8011B9C4
    lb      t4, 0x0033(v1)             # 8011A603
    beql    t3, t4, lbl_808ECB9C       
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
lbl_808ECB90:
    lh      t5, 0x02F6(s0)             # 000002F6
    bne     t0, t5, lbl_808ECBCC       
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
lbl_808ECB9C:
    sh      t6, 0x02F2(s0)             # 000002F2
    lh      v0, 0x02F2(s0)             # 000002F2
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    bne     v0, $at, lbl_808ECBCC      
    nop
    lh      t7, 0x02DA(s0)             # 000002DA
    bnel    t7, $zero, lbl_808ECBC8    
    sh      $zero, 0x02DA(s0)          # 000002DA
    lw      t8, 0x0330(s0)             # 00000330
    sh      t0, 0x0142(t8)             # 00000142
    sh      $zero, 0x02DA(s0)          # 000002DA
lbl_808ECBC8:
    lh      v0, 0x02F2(s0)             # 000002F2
lbl_808ECBCC:
    bne     t0, v0, lbl_808ECBF4       
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    sh      t9, 0x010E(s0)             # 0000010E
    sh      t1, 0x02DE(s0)             # 000002DE
    jal     func_800DCE80              
    lw      a0, 0x0064($sp)            
    lui     t2, %hi(func_808ECC10)     # t2 = 808F0000
    addiu   t2, t2, %lo(func_808ECC10) # t2 = 808ECC10
    beq     $zero, $zero, lbl_808ECBFC 
    sw      t2, 0x013C(s0)             # 0000013C
lbl_808ECBF4:
    jal     func_808EBEA4              
    lw      a1, 0x0064($sp)            
lbl_808ECBFC:
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop


func_808ECC10:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     $at, 0x44AF                # $at = 44AF0000
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    mtc1    $at, $f2                   # $f2 = 1400.00
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lwc1    $f4, 0x0158(s0)            # 00000158
    lwc1    $f6, 0x031C(s0)            # 0000031C
    mul.s   $f0, $f4, $f2              
    nop
    mul.s   $f8, $f6, $f2              
    swc1    $f0, 0x0314(s0)            # 00000314
    c.le.s  $f8, $f0                   
    nop
    bc1f    lbl_808ECC64               
    nop
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    swc1    $f10, 0x0314(s0)           # 00000314
lbl_808ECC64:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0140             # a0 = 00000140
    jal     func_800DD464              
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    lh      t6, 0x02DE(s0)             # 000002DE
    bnel    t6, v0, lbl_808ECCC0       
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D6110              
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808ECCC0    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D6218              
    or      a0, s1, $zero              # a0 = 00000000
    lui     t7, %hi(func_808ECCEC)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808ECCEC) # t7 = 808ECCEC
    sh      $zero, 0x02E6(s0)          # 000002E6
    sw      t7, 0x013C(s0)             # 0000013C
    lh      t8, 0x07A0(s1)             # 000007A0
    sll     t9, t8,  2                 
    addu    t0, s1, t9                 
    jal     func_80049DB4              
    lw      a0, 0x0790(t0)             # 00000790
    or      a0, s0, $zero              # a0 = 00000000
lbl_808ECCC0:
    jal     func_808EBEA4              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808EBBA8              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_808ECCEC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lh      t6, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lui     a0, 0x0600                 # a0 = 06000000
    bne     t6, $at, lbl_808ECD60      
    nop
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x5E60             # a0 = 06005E60
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    cvt.s.w $f0, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   a1, a1, 0x5E60             # a1 = 06005E60
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      t7, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    beq     $zero, $zero, lbl_808ECDA8 
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_808ECD60:
    jal     func_8008A194              
    addiu   a0, a0, 0x092C             # a0 = 0000092C
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f10                  # $f10 = -10.00
    cvt.s.w $f0, $f8                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   a1, a1, 0x092C             # a1 = 0600092C
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      t8, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_808ECDA8:
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sh      t9, 0x02D8(s0)             # 000002D8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x6858          # a1 = 00006858
    swc1    $f0, 0x0308(s0)            # 00000308
    jal     func_80022FD0              
    swc1    $f0, 0x0304(s0)            # 00000304
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2880          # a1 = 00002880
    lui     t0, %hi(func_808ECDF0)     # t0 = 808F0000
    addiu   t0, t0, %lo(func_808ECDF0) # t0 = 808ECDF0
    sw      t0, 0x013C(s0)             # 0000013C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808ECDF0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lh      t6, 0x02D8(s0)             # 000002D8
    lui     $at, %hi(var_808EE588)     # $at = 808F0000
    bnel    t6, $zero, lbl_808ECED0    
    lw      $ra, 0x001C($sp)           
    lwc1    $f4, 0x02F8(s0)            # 000002F8
    lwc1    $f6, %lo(var_808EE588)($at) 
    lui     t8, %hi(func_808ECEE0)     # t8 = 808F0000
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    c.lt.s  $f4, $f6                   
    addiu   t8, t8, %lo(func_808ECEE0) # t8 = 808ECEE0
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a3, 0x42C8                 # a3 = 42C80000
    bc1fl   lbl_808ECE54               
    lw      a1, 0x0300(s0)             # 00000300
    sh      t7, 0x02D8(s0)             # 000002D8
    beq     $zero, $zero, lbl_808ECECC 
    sw      t8, 0x013C(s0)             # 0000013C
    lw      a1, 0x0300(s0)             # 00000300
lbl_808ECE54:
    jal     func_80064280              
    lw      a2, 0x0304(s0)             # 00000304
    lui     a2, 0x3BA3                 # a2 = 3BA30000
    ori     a2, a2, 0xD70A             # a2 = 3BA3D70A
    addiu   a0, s0, 0x02F8             # a0 = 000002F8
    jal     func_800642F0              
    lw      a1, 0x0308(s0)             # 00000308
    lui     a1, 0x3F4C                 # a1 = 3F4C0000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0xCCCD             # a1 = 3F4CCCCD
    jal     func_80064280              
    addiu   a0, s0, 0x0304             # a0 = 00000304
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a2, a2, 0xC28F             # a2 = 3CF5C28F
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
    jal     func_80064280              
    addiu   a0, s0, 0x0308             # a0 = 00000308
    lh      t9, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t0, t9, 0x0BB8             # t0 = 00000BB8
    sh      t0, 0x00B6(s0)             # 000000B6
    jal     func_808EBBA8              
    lw      a1, 0x0024($sp)            
lbl_808ECECC:
    lw      $ra, 0x001C($sp)           
lbl_808ECED0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808ECEE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lh      t7, 0x02D8(t6)             # 000002D8
    or      a1, t6, $zero              # a1 = 00000000
    bnel    t7, $zero, lbl_808ECF78    
    lw      $ra, 0x0014($sp)           
    jal     func_800218EC              
    sw      a3, 0x001C($sp)            
    lw      a3, 0x001C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   v0, $zero, 0x012E          # v0 = 0000012E
    addu    $at, $at, a3               
    sb      $zero, 0x0AE3($at)         # 00010AE3
    lw      a0, 0x1C64(a3)             # 00001C64
    beql    a0, $zero, lbl_808ECF64    
    or      a0, a3, $zero              # a0 = 00000000
    lh      t8, 0x0000(a0)             # 00000000
lbl_808ECF38:
    beq     v0, t8, lbl_808ECF48       
    nop
    beq     $zero, $zero, lbl_808ECF58 
    lw      a0, 0x0124(a0)             # 00000124
lbl_808ECF48:
    jal     func_80020EB4              
    sw      a3, 0x001C($sp)            
    beq     $zero, $zero, lbl_808ECF60 
    lw      a3, 0x001C($sp)            
lbl_808ECF58:
    bnel    a0, $zero, lbl_808ECF38    
    lh      t8, 0x0000(a0)             # 00000000
lbl_808ECF60:
    or      a0, a3, $zero              # a0 = 00000000
lbl_808ECF64:
    jal     func_80020510              
    addiu   a1, $zero, 0x0038          # a1 = 00000038
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_808ECF78:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808ECF84:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lbu     t6, 0x1D6C(a3)             # 00001D6C
    beql    t6, $zero, lbl_808ED0A8    
    lw      $ra, 0x002C($sp)           
    lw      v0, 0x1D8C(a3)             # 00001D8C
    beql    v0, $zero, lbl_808ED0A8    
    lw      $ra, 0x002C($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t8, %hi(func_808EDCC8)     # t8 = 808F0000
    bne     t7, $at, lbl_808ED0A4      
    addiu   t8, t8, %lo(func_808EDCC8) # t8 = 808EDCC8
    sw      t8, 0x0134(s0)             # 00000134
    sw      a3, 0x0034($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a3, 0x0034($sp)            
    sh      $zero, 0x02EE(s0)          # 000002EE
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lh      t9, 0x00A4(a3)             # 000000A4
    lui     a0, 0x0600                 # a0 = 06000000
    bne     t9, $at, lbl_808ED048      
    nop
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x8698             # a0 = 06008698
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    cvt.s.w $f0, $f4                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addiu   a1, a1, 0x8698             # a1 = 06008698
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      t0, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    beq     $zero, $zero, lbl_808ED090 
    or      a0, s0, $zero              # a0 = 00000000
lbl_808ED048:
    jal     func_8008A194              
    addiu   a0, a0, 0x31C0             # a0 = 000031C0
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f10                  # $f10 = -10.00
    cvt.s.w $f0, $f8                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   a1, a1, 0x31C0             # a1 = 060031C0
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      t1, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f10, 0x0018($sp)          
    or      a0, s0, $zero              # a0 = 00000000
lbl_808ED090:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x287F          # a1 = 0000287F
    lui     t2, %hi(func_808ED0B8)     # t2 = 808F0000
    addiu   t2, t2, %lo(func_808ED0B8) # t2 = 808ED0B8
    sw      t2, 0x013C(s0)             # 0000013C
lbl_808ED0A4:
    lw      $ra, 0x002C($sp)           
lbl_808ED0A8:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808ED0B8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x02EE(s0)             # 000002EE
    lwc1    $f0, 0x0158(s0)            # 00000158
    lui     a3, 0x42C8                 # a3 = 42C80000
    bne     t6, $zero, lbl_808ED1EC    
    addiu   a0, s0, 0x0140             # a0 = 00000140
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x02FC(s0)             # 000002FC
    jal     func_80064280              
    lw      a2, 0x0304(s0)             # 00000304
    lui     a1, 0x3D0F                 # a1 = 3D0F0000
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a1, a1, 0x5C29             # a1 = 3D0F5C29
    addiu   a0, s0, 0x02F8             # a0 = 000002F8
    jal     func_80064280              
    lw      a2, 0x0308(s0)             # 00000308
    lui     a1, 0x3F4C                 # a1 = 3F4C0000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0xCCCD             # a1 = 3F4CCCCD
    jal     func_80064280              
    addiu   a0, s0, 0x0304             # a0 = 00000304
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    lui     a2, 0x3CF5                 # a2 = 3CF50000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a2, a2, 0xC28F             # a2 = 3CF5C28F
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
    jal     func_80064280              
    addiu   a0, s0, 0x0308             # a0 = 00000308
    lui     $at, %hi(var_808EE58C)     # $at = 808F0000
    lwc1    $f6, %lo(var_808EE58C)($at) 
    lwc1    $f4, 0x02F8(s0)            # 000002F8
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_808ED1E0               
    lh      t0, 0x00B6(s0)             # 000000B6
    lh      v0, 0x00B6(s0)             # 000000B6
    slti    $at, v0, 0xE0C1            
    bne     $at, $zero, lbl_808ED1D4   
    addiu   t9, v0, 0x0BB8             # t9 = 00000BB8
    slti    $at, v0, 0x03E8            
    beq     $at, $zero, lbl_808ED1D4   
    nop
    jal     func_8008C9C0              
    addiu   a0, s0, 0x0140             # a0 = 00000140
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624              
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lh      t7, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    mtc1    t7, $f8                    # $f8 = 0.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    cvt.s.w $f0, $f8                   
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_808ED3C4               
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808ED3C0 
    sh      t8, 0x02EE(s0)             # 000002EE
lbl_808ED1D4:
    beq     $zero, $zero, lbl_808ED3C0 
    sh      t9, 0x00B6(s0)             # 000000B6
    lh      t0, 0x00B6(s0)             # 000000B6
lbl_808ED1E0:
    addiu   t1, t0, 0x0BB8             # t1 = 00000BB8
    beq     $zero, $zero, lbl_808ED3C0 
    sh      t1, 0x00B6(s0)             # 000000B6
lbl_808ED1EC:
    sw      a0, 0x0030($sp)            
    jal     func_8008C9C0              
    swc1    $f0, 0x0034($sp)           
    lwc1    $f0, 0x0034($sp)           
    lwc1    $f16, 0x031C(s0)           # 0000031C
    c.le.s  $f16, $f0                  
    nop
    bc1fl   lbl_808ED2CC               
    lw      t6, 0x003C($sp)            
    lh      t2, 0x02EC(s0)             # 000002EC
    lw      t3, 0x003C($sp)            
    bnel    t2, $zero, lbl_808ED2CC    
    lw      t6, 0x003C($sp)            
    lh      t4, 0x00A4(t3)             # 000000A4
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lui     a0, 0x0600                 # a0 = 06000000
    bne     t4, $at, lbl_808ED280      
    nop
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194              
    addiu   a0, a0, 0xD514             # a0 = 0601D514
    mtc1    v0, $f18                   # $f18 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f4                   # $f4 = -10.00
    cvt.s.w $f0, $f18                  
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   a1, a1, 0xD514             # a1 = 0601D514
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      $zero, 0x0014($sp)         
    swc1    $f0, 0x0010($sp)           
    lw      a0, 0x0030($sp)            
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    beq     $zero, $zero, lbl_808ED2C4 
    addiu   t5, $zero, 0x0001          # t5 = 00000001
lbl_808ED280:
    jal     func_8008A194              
    addiu   a0, a0, 0x1DF0             # a0 = 00001DF0
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    cvt.s.w $f0, $f6                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1DF0             # a1 = 06001DF0
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      $zero, 0x0014($sp)         
    swc1    $f0, 0x0010($sp)           
    lw      a0, 0x0030($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    addiu   t5, $zero, 0x0001          # t5 = 00000001
lbl_808ED2C4:
    sh      t5, 0x02EC(s0)             # 000002EC
    lw      t6, 0x003C($sp)            
lbl_808ED2CC:
    lbu     t7, 0x1D6C(t6)             # 00001D6C
    beql    t7, $zero, lbl_808ED3C4    
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x1D8C(t6)             # 00001D8C
    beql    v0, $zero, lbl_808ED3C4    
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t8, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t8, $at, lbl_808ED3C4      
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x02EC(s0)          # 000002EC
    lh      t9, 0x02EC(s0)             # 000002EC
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lui     a0, 0x0600                 # a0 = 06000000
    sh      t9, 0x02EE(s0)             # 000002EE
    lw      t0, 0x003C($sp)            
    lh      t1, 0x00A4(t0)             # 000000A4
    bne     t1, $at, lbl_808ED368      
    nop
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x69E8             # a0 = 060069E8
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f16                  # $f16 = -10.00
    cvt.s.w $f0, $f10                  
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addiu   a1, a1, 0x69E8             # a1 = 060069E8
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      t2, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    lw      a0, 0x0030($sp)            
    jal     func_8008D17C              
    swc1    $f16, 0x0018($sp)          
    beq     $zero, $zero, lbl_808ED3AC 
    nop
lbl_808ED368:
    jal     func_8008A194              
    addiu   a0, a0, 0x5810             # a0 = 00005810
    mtc1    v0, $f18                   # $f18 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f4                   # $f4 = -10.00
    cvt.s.w $f0, $f18                  
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   a1, a1, 0x5810             # a1 = 06005810
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      t3, 0x0014($sp)            
    swc1    $f0, 0x0010($sp)           
    lw      a0, 0x0030($sp)            
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
lbl_808ED3AC:
    lui     t5, %hi(func_808ED3E4)     # t5 = 808F0000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, t5, %lo(func_808ED3E4) # t5 = 808ED3E4
    sh      t4, 0x02E6(s0)             # 000002E6
    sw      t5, 0x013C(s0)             # 0000013C
lbl_808ED3C0:
    or      a0, s0, $zero              # a0 = 00000000
lbl_808ED3C4:
    lw      a1, 0x003C($sp)            
    jal     func_808EBBA8              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808ED3E4:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    lw      t6, 0x1C44(s1)             # 00001C44
    lwc1    $f2, 0x0158(s0)            # 00000158
    lui     $at, 0x44AF                # $at = 44AF0000
    sw      t6, 0x0058($sp)            
    lh      t7, 0x02EC(s0)             # 000002EC
    addiu   a0, s0, 0x0140             # a0 = 00000140
    mov.s   $f12, $f2                  
    beql    t7, $zero, lbl_808ED458    
    sw      a0, 0x0040($sp)            
    mtc1    $at, $f14                  # $f14 = 1400.00
    lwc1    $f4, 0x031C(s0)            # 0000031C
    mul.s   $f0, $f2, $f14             
    nop
    mul.s   $f6, $f4, $f14             
    swc1    $f0, 0x0314(s0)            # 00000314
    c.le.s  $f6, $f0                   
    nop
    bc1f    lbl_808ED454               
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    swc1    $f8, 0x0314(s0)            # 00000314
lbl_808ED454:
    sw      a0, 0x0040($sp)            
lbl_808ED458:
    jal     func_8008C9C0              
    swc1    $f12, 0x005C($sp)          
    lwc1    $f12, 0x005C($sp)          
    lwc1    $f10, 0x031C(s0)           # 0000031C
    c.le.s  $f10, $f12                 
    nop
    bc1fl   lbl_808ED530               
    lw      t3, 0x1D8C(s1)             # 00001D8C
    lh      t8, 0x02EC(s0)             # 000002EC
    bnel    t8, $zero, lbl_808ED530    
    lw      t3, 0x1D8C(s1)             # 00001D8C
    lh      t9, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lui     a0, 0x0600                 # a0 = 06000000
    bne     t9, $at, lbl_808ED4E4      
    nop
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x7CA8             # a0 = 06007CA8
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f0, $f16                  
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7CA8             # a1 = 06007CA8
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      $zero, 0x0014($sp)         
    swc1    $f0, 0x0010($sp)           
    lw      a0, 0x0040($sp)            
    jal     func_8008D17C              
    swc1    $f18, 0x0018($sp)          
    beq     $zero, $zero, lbl_808ED528 
    addiu   t2, $zero, 0x0001          # t2 = 00000001
lbl_808ED4E4:
    jal     func_8008A194              
    addiu   a0, a0, 0x4344             # a0 = 00004344
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    cvt.s.w $f0, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4344             # a1 = 06004344
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x031C(s0)            # 0000031C
    sw      $zero, 0x0014($sp)         
    swc1    $f0, 0x0010($sp)           
    lw      a0, 0x0040($sp)            
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
    addiu   t2, $zero, 0x0001          # t2 = 00000001
lbl_808ED528:
    sh      t2, 0x02EC(s0)             # 000002EC
    lw      t3, 0x1D8C(s1)             # 00001D8C
lbl_808ED530:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    lui     t4, %hi(func_808ECCEC)     # t4 = 808F0000
    lhu     v0, 0x0000(t3)             # 00000000
    addiu   t4, t4, %lo(func_808ECCEC) # t4 = 808ECCEC
    bnel    v0, $at, lbl_808ED554      
    slti    $at, v0, 0x0004            
    beq     $zero, $zero, lbl_808EDA20 
    sw      t4, 0x013C(s0)             # 0000013C
    slti    $at, v0, 0x0004            
lbl_808ED554:
    bne     $at, $zero, lbl_808ED618   
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, v0, 0x0007            
    beq     $at, $zero, lbl_808ED618   
    addiu   t5, v0, 0xFFFC             # t5 = FFFFFFFC
    sh      t5, 0x0056($sp)            
    lh      v1, 0x00A4(s1)             # 000000A4
    lh      t6, 0x0056($sp)            
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    bne     v1, $at, lbl_808ED5A0      
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sll     a2, t7, 16                 
    sh      t7, 0x0056($sp)            
    sra     a2, a2, 16                 
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EBBA8              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808ED628 
    lh      v1, 0x00A4(s1)             # 000000A4
lbl_808ED5A0:
    lbu     t8, 0x02D4(s0)             # 000002D4
    lh      t9, 0x0056($sp)            
    lui     v0, %hi(var_808EE530)      # v0 = 808F0000
    bne     t8, $zero, lbl_808ED628    
    sll     t2, t9,  1                 
    addu    v0, v0, t2                 
    lh      v0, %lo(var_808EE530)(v0)  
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    sll     v0, v0, 12                 
    sll     v0, v0, 16                 
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sra     v0, v0, 16                 
    ori     v0, v0, 0x0012             # v0 = 808F0012
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sw      v0, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x008B          # a2 = 0000008B
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)          
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x02D4(s0)             # 000002D4
    beq     $zero, $zero, lbl_808ED628 
    lh      v1, 0x00A4(s1)             # 000000A4
lbl_808ED618:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808EBBA8              
    or      a2, $zero, $zero           # a2 = 00000000
    lh      v1, 0x00A4(s1)             # 000000A4
lbl_808ED628:
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    bnel    v1, $at, lbl_808ED73C      
    lh      v1, 0x00A4(s1)             # 000000A4
    lw      t4, 0x1D8C(s1)             # 00001D8C
    lhu     v0, 0x0000(t4)             # 00000000
    slti    $at, v0, 0x000A            
    bne     $at, $zero, lbl_808ED738   
    slti    $at, v0, 0x000D            
    beq     $at, $zero, lbl_808ED738   
    addiu   v1, v0, 0xFFF6             # v1 = FFFFFFF6
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    beq     v1, $zero, lbl_808ED680    
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_808ED6A8      
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_808ED6F0      
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    beq     $zero, $zero, lbl_808ED70C 
    lbu     t4, 0x02D6(s0)             # 000002D6
lbl_808ED680:
    lui     $at, 0x8012                # $at = 80120000
    sb      t5, -0x59F6($at)           # 8011A60A
    lui     $at, 0x8012                # $at = 80120000
    addiu   t6, $zero, 0x0030          # t6 = 00000030
    sh      t6, -0x463A($at)           # 8011B9C6
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    jal     func_8006D8E0              
    sh      v1, 0x0056($sp)            
    beq     $zero, $zero, lbl_808ED708 
    lh      v1, 0x0056($sp)            
lbl_808ED6A8:
    lbu     t7, -0x59F6(t7)            # FFFFA60A
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t2, $zero, 0x0060          # t2 = 00000060
    bne     t7, $zero, lbl_808ED6C8    
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    sb      t8, -0x59F6($at)           # 8011A60A
lbl_808ED6C8:
    lui     $at, 0x8012                # $at = 80120000
    sb      t9, -0x59F4($at)           # 8011A60C
    lui     $at, 0x8012                # $at = 80120000
    sh      t2, -0x463A($at)           # 8011B9C6
    lui     $at, 0x8012                # $at = 80120000
    sb      $zero, -0x59FE($at)        # 8011A602
    jal     func_8006D8E0              
    sh      v1, 0x0056($sp)            
    beq     $zero, $zero, lbl_808ED708 
    lh      v1, 0x0056($sp)            
lbl_808ED6F0:
    lui     $at, 0x8012                # $at = 80120000
    sb      t3, -0x59F3($at)           # 8011A60D
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    jal     func_8006D8E0              
    sh      v1, 0x0056($sp)            
    lh      v1, 0x0056($sp)            
lbl_808ED708:
    lbu     t4, 0x02D6(s0)             # 000002D6
lbl_808ED70C:
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xA5D0             # t1 = 8011A5D0
    bne     t4, $zero, lbl_808ED738    
    addiu   t5, $zero, 0x0140          # t5 = 00000140
    sh      t5, 0x1424(t1)             # 8011B9F4
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $at, lbl_808ED738      
    sb      t6, 0x02D6(s0)             # 000002D6
    jal     func_80072500              
    or      a0, s1, $zero              # a0 = 00000000
lbl_808ED738:
    lh      v1, 0x00A4(s1)             # 000000A4
lbl_808ED73C:
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    beq     v1, $at, lbl_808ED918      
    addiu   t1, t1, 0xA5D0             # t1 = 8011A5D0
    lw      t7, 0x1D8C(s1)             # 00001D8C
    lhu     v0, 0x0000(t7)             # 00000000
    slti    $at, v0, 0x000E            
    bne     $at, $zero, lbl_808ED918   
    slti    $at, v0, 0x0011            
    beql    $at, $zero, lbl_808ED91C   
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lh      t8, 0x02F0(s0)             # 000002F0
    addiu   v1, v0, 0xFFF2             # v1 = FFFFFFF2
    sll     v1, v1, 16                 
    bne     t8, $zero, lbl_808ED8A8    
    sra     v1, v1, 16                 
    lw      t9, 0x0004(t1)             # 8011A5D4
    lw      t0, 0x0058($sp)            
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    bne     t9, $zero, lbl_808ED7A4    
    lwc1    $f12, 0x0024(t0)           # 00000024
    lui     $at, 0x4292                # $at = 42920000
    mtc1    $at, $f18                  # $f18 = 73.00
    lwc1    $f16, 0x0028(t0)           # 00000028
    beq     $zero, $zero, lbl_808ED7B4 
    add.s   $f2, $f16, $f18            
lbl_808ED7A4:
    lui     $at, 0x4254                # $at = 42540000
    mtc1    $at, $f6                   # $f6 = 53.00
    lwc1    $f4, 0x0028(t0)            # 00000028
    add.s   $f2, $f4, $f6              
lbl_808ED7B4:
    lwc1    $f0, 0x002C(t0)            # 0000002C
    sll     v0, v1,  1                 
    lui     t2, %hi(var_808EE538)      # t2 = 808F0000
    addu    t2, t2, v0                 
    lh      t2, %lo(var_808EE538)(t2)  
    sw      v0, 0x0040($sp)            
    sh      v1, 0x0056($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    swc1    $f2, 0x0014($sp)           
    swc1    $f12, 0x0010($sp)          
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0168          # a3 = 00000168
    swc1    $f0, 0x0018($sp)           
    jal     func_800253F0              
    sw      t2, 0x0028($sp)            
    lh      v1, 0x0056($sp)            
    beq     v0, $zero, lbl_808ED898    
    sw      v0, 0x0334(s0)             # 00000334
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lbu     t3, 0x003A(v0)             # 8011A60A
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    bne     t3, $zero, lbl_808ED82C    
    nop
    beq     $zero, $zero, lbl_808ED840 
    sb      t4, 0x003A(v0)             # 8011A60A
lbl_808ED82C:
    jal     func_80072500              
    sh      v1, 0x0056($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lh      v1, 0x0056($sp)            
lbl_808ED840:
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t5, 0x02F0(s0)             # 000002F0
    addiu   t6, $zero, 0x0140          # t6 = 00000140
    sh      t6, 0x1424(v0)             # 8011B9F4
    sh      v1, 0x0056($sp)            
    jal     func_8006D8E0              
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    lw      t8, 0x0040($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    lui     t9, %hi(var_808EE540)      # t9 = 808F0000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addu    t9, t9, t8                 
    lh      t9, %lo(var_808EE540)(t9)  
    lhu     t7, 0x0EF2(v0)             # 8011B4C2
    lh      v1, 0x0056($sp)            
    lui     a1, %hi(var_808EE548)      # a1 = 808F0000
    or      t2, t7, t9                 # t2 = 808F0000
    sh      t2, 0x0EF2(v0)             # 8011B4C2
    addu    a1, a1, v1                 
    lbu     a1, %lo(var_808EE548)(a1)  
    jal     func_8006FDCC              
    or      a0, s1, $zero              # a0 = 00000000
lbl_808ED898:
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xA5D0             # t1 = 8011A5D0
    beq     $zero, $zero, lbl_808ED918 
    lh      v1, 0x00A4(s1)             # 000000A4
lbl_808ED8A8:
    lw      a1, 0x0058($sp)            
    lw      t3, 0x0334(s0)             # 00000334
    lui     $at, 0x4254                # $at = 42540000
    lwc1    $f8, 0x0024(a1)            # 00000024
    swc1    $f8, 0x0024(t3)            # 00000024
    lw      t4, 0x0004(t1)             # 8011A5D4
    bnel    t4, $zero, lbl_808ED8E8    
    lwc1    $f4, 0x0028(a1)            # 00000028
    lui     $at, 0x4292                # $at = 42920000
    mtc1    $at, $f16                  # $f16 = 73.00
    lwc1    $f10, 0x0028(a1)           # 00000028
    lw      t5, 0x0334(s0)             # 00000334
    add.s   $f18, $f10, $f16           
    beq     $zero, $zero, lbl_808ED8F8 
    swc1    $f18, 0x0028(t5)           # 00000028
    lwc1    $f4, 0x0028(a1)            # 00000028
lbl_808ED8E8:
    mtc1    $at, $f6                   # $f6 = 73.00
    lw      t6, 0x0334(s0)             # 00000334
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0028(t6)            # 00000028
lbl_808ED8F8:
    lwc1    $f10, 0x002C(a1)           # 0000002C
    lw      t8, 0x0334(s0)             # 00000334
    lui     $at, %hi(var_808EE590)     # $at = 808F0000
    swc1    $f10, 0x002C(t8)           # 0000002C
    lw      t7, 0x0334(s0)             # 00000334
    lwc1    $f16, %lo(var_808EE590)($at) 
    swc1    $f16, 0x0154(t7)           # 00000154
    lh      v1, 0x00A4(s1)             # 000000A4
lbl_808ED918:
    addiu   $at, $zero, 0x003B         # $at = 0000003B
lbl_808ED91C:
    beql    v1, $at, lbl_808ED960      
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lw      t9, 0x1D8C(s1)             # 00001D8C
    addiu   $at, $zero, 0x0011         # $at = 00000011
    lhu     t2, 0x0000(t9)             # 00000000
    bnel    t2, $at, lbl_808ED960      
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lw      a0, 0x0334(s0)             # 00000334
    beql    a0, $zero, lbl_808ED960    
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    jal     func_80020EB4              
    nop
    sw      $zero, 0x0334(s0)          # 00000334
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xA5D0             # t1 = 8011A5D0
    lh      v1, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x003B         # $at = 0000003B
lbl_808ED960:
    bnel    v1, $at, lbl_808ED988      
    lbu     t6, 0x02D5(s0)             # 000002D5
    lw      t3, 0x1D8C(s1)             # 00001D8C
    addiu   $at, $zero, 0x0012         # $at = 00000012
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lhu     t4, 0x0000(t3)             # 00000000
    bnel    t4, $at, lbl_808ED988      
    lbu     t6, 0x02D5(s0)             # 000002D5
    sb      t5, 0x02D5(s0)             # 000002D5
    lbu     t6, 0x02D5(s0)             # 000002D5
lbl_808ED988:
    beql    t6, $zero, lbl_808ED9A8    
    lw      t7, 0x1D8C(s1)             # 00001D8C
    lb      v0, 0x00CF(t1)             # 8011A69F
    slti    $at, v0, 0x0014            
    beq     $at, $zero, lbl_808ED9A4   
    addiu   t8, v0, 0x0001             # t8 = 00000001
    sb      t8, 0x00CF(t1)             # 8011A69F
lbl_808ED9A4:
    lw      t7, 0x1D8C(s1)             # 00001D8C
lbl_808ED9A8:
    lhu     v0, 0x0000(t7)             # 00000000
    slti    $at, v0, 0x0013            
    bne     $at, $zero, lbl_808EDA14   
    slti    $at, v0, 0x0016            
    beql    $at, $zero, lbl_808EDA18   
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x02F4(s0)             # 000002F4
    addiu   v1, v0, 0xFFF5             # v1 = FFFFFFF5
    lw      t0, 0x0058($sp)            
    bne     t9, $zero, lbl_808EDA14    
    sll     v1, v1, 16                 
    lwc1    $f18, 0x0028(t0)           # 00000028
    lw      a3, 0x0024(t0)             # 00000024
    sra     v1, v1, 16                 
    swc1    $f18, 0x0010($sp)          
    lwc1    $f4, 0x002C(t0)            # 0000002C
    sw      v1, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005D          # a2 = 0000005D
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)           
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      t2, 0x02F4(s0)             # 000002F4
lbl_808EDA14:
    or      a0, s0, $zero              # a0 = 00000000
lbl_808EDA18:
    jal     func_808EBEA4              
    or      a1, s1, $zero              # a1 = 00000000
lbl_808EDA20:
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_808EDA34:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lh      t6, 0x02E0(s0)             # 000002E0
    lh      v0, 0x02D8(s0)             # 000002D8
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     v0, $zero, lbl_808EDA68    
    sh      t7, 0x02E0(s0)             # 000002E0
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x02D8(s0)             # 000002D8
lbl_808EDA68:
    lh      v0, 0x02E8(s0)             # 000002E8
    beq     v0, $zero, lbl_808EDA78    
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x02E8(s0)             # 000002E8
lbl_808EDA78:
    lh      v0, 0x02EA(s0)             # 000002EA
    beq     v0, $zero, lbl_808EDA88    
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x02EA(s0)             # 000002EA
lbl_808EDA88:
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lbu     t1, 0x1D6C(s1)             # 00001D6C
    beql    t1, $zero, lbl_808EDB68    
    lh      t3, 0x02E8(s0)             # 000002E8
    lh      t2, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    or      v1, $zero, $zero           # v1 = 00000000
    bne     t2, $at, lbl_808EDAFC      
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x0020         # $at = 00000020
    beq     v0, $at, lbl_808EDAE4      
    addiu   $at, $zero, 0x0123         # $at = 00000123
    beq     v0, $at, lbl_808EDAE4      
    addiu   $at, $zero, 0x01AA         # $at = 000001AA
    beq     v0, $at, lbl_808EDAE4      
    addiu   $at, $zero, 0x0353         # $at = 00000353
    bnel    v0, $at, lbl_808EDAEC      
    addiu   $at, $zero, 0x0065         # $at = 00000065
lbl_808EDAE4:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   $at, $zero, 0x0065         # $at = 00000065
lbl_808EDAEC:
    bnel    v0, $at, lbl_808EDB3C      
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     $zero, $zero, lbl_808EDB38 
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_808EDAFC:
    lhu     v0, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x0023         # $at = 00000023
    beq     v0, $at, lbl_808EDB24      
    addiu   $at, $zero, 0x00B5         # $at = 000000B5
    beq     v0, $at, lbl_808EDB24      
    addiu   $at, $zero, 0x01CE         # $at = 000001CE
    beq     v0, $at, lbl_808EDB24      
    addiu   $at, $zero, 0x031B         # $at = 0000031B
    bnel    v0, $at, lbl_808EDB2C      
    addiu   $at, $zero, 0x005A         # $at = 0000005A
lbl_808EDB24:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   $at, $zero, 0x005A         # $at = 0000005A
lbl_808EDB2C:
    bnel    v0, $at, lbl_808EDB3C      
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_808EDB38:
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_808EDB3C:
    bne     v1, $at, lbl_808EDB50      
    addiu   a1, $zero, 0x6859          # a1 = 00006859
    jal     func_80022FD0              
    sw      v1, 0x0034($sp)            
    lw      v1, 0x0034($sp)            
lbl_808EDB50:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $at, lbl_808EDB64      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x6858          # a1 = 00006858
lbl_808EDB64:
    lh      t3, 0x02E8(s0)             # 000002E8
lbl_808EDB68:
    bne     t3, $zero, lbl_808EDBD8    
    nop
    lw      t5, 0x013C(s0)             # 0000013C
    lui     t4, %hi(func_808EC938)     # t4 = 808F0000
    addiu   t4, t4, %lo(func_808EC938) # t4 = 808EC938
    beq     t4, t5, lbl_808EDBD8       
    nop
    lh      t6, 0x02E2(s0)             # 000002E2
    lh      t8, 0x02E4(s0)             # 000002E4
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x02E2(s0)             # 000002E2
    lh      t9, 0x02E2(s0)             # 000002E2
    addiu   t0, t8, 0x0001             # t0 = 00000001
    sh      t0, 0x02E4(s0)             # 000002E4
    slti    $at, t9, 0x0003            
    bne     $at, $zero, lbl_808EDBD8   
    nop
    sh      $zero, 0x02E4(s0)          # 000002E4
    lh      t1, 0x02E4(s0)             # 000002E4
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64              
    sh      t1, 0x02E2(s0)             # 000002E2
    trunc.w.s $f4, $f0                   
    mfc1    t5, $f4                    
    nop
    addiu   t6, t5, 0x0014             # t6 = 00000014
    sh      t6, 0x02E8(s0)             # 000002E8
lbl_808EDBD8:
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_808EE594)     # $at = 808F0000
    lwc1    $f8, %lo(var_808EE594)($at) 
    lwc1    $f6, 0x02F8(s0)            # 000002F8
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f0, $f6, $f8              
    mfc1    a1, $f0                    
    jal     func_80020F04              
    swc1    $f0, 0x0318(s0)            # 00000318
    lwc1    $f10, 0x0318(s0)           # 00000318
    lw      t8, 0x0038(s0)             # 00000038
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f10, 0x003C(s0)           # 0000003C
    sw      t8, 0x0010($sp)            
    lw      t7, 0x003C(s0)             # 0000003C
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0324             # a2 = 00000324
    sw      t7, 0x0014($sp)            
    lw      t8, 0x0040(s0)             # 00000040
    addiu   a3, s0, 0x032A             # a3 = 0000032A
    jal     func_8002B024              
    sw      t8, 0x0018($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EDF60              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88              
    lw      a1, 0x02F8(s0)             # 000002F8
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_808EDC60:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a1, $at, lbl_808EDC8C      
    lw      v0, 0x0014($sp)            
    lw      v1, 0x0010($sp)            
    lh      t7, 0x032C(v0)             # 0000032C
    lh      t6, 0x0000(v1)             # 00000000
    addu    t8, t6, t7                 
    sh      t8, 0x0000(v1)             # 00000000
lbl_808EDC8C:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lw      v0, 0x0014($sp)            
    bne     a1, $at, lbl_808EDCBC      
    lw      v1, 0x0010($sp)            
    lh      t9, 0x0000(v1)             # 00000000
    lh      t0, 0x0326(v0)             # 00000326
    lh      t2, 0x0004(v1)             # 00000004
    addu    t1, t9, t0                 
    sh      t1, 0x0000(v1)             # 00000000
    lh      t3, 0x0328(v0)             # 00000328
    addu    t4, t2, t3                 
    sh      t4, 0x0004(v1)             # 00000004
lbl_808EDCBC:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_808EDCC8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lw      t8, 0x013C(s0)             # 0000013C
    lw      t6, 0x003C($sp)            
    lui     t7, %hi(func_808ECEE0)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808ECEE0) # t7 = 808ECEE0
    beq     t7, t8, lbl_808EDE30       
    lw      a2, 0x0000(t6)             # 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8007E298              
    sw      a2, 0x0030($sp)            
    lui     t2, 0x00FF                 # t2 = 00FF0000
    lui     t3, 0x8012                 # t3 = 80120000
    lui     t5, %hi(var_808EE54C)      # t5 = 808F0000
    addiu   t5, t5, %lo(var_808EE54C)  # t5 = 808EE54C
    addiu   t3, t3, 0x0C38             # t3 = 80120C38
    ori     t2, t2, 0xFFFF             # t2 = 00FFFFFF
    lw      v1, 0x0030($sp)            
    lui     t4, 0x8000                 # t4 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lh      t7, 0x02E2(s0)             # 000002E2
    sll     t8, t7,  2                 
    addu    t9, t5, t8                 
    lw      a3, 0x0000(t9)             # 00000008
    sll     t7, a3,  4                 
    srl     t8, t7, 28                 
    sll     t9, t8,  2                 
    addu    t7, t3, t9                 
    lw      t8, 0x0000(t7)             # 00000000
    and     t6, a3, t2                 
    addu    t9, t6, t8                 
    addu    t7, t9, t4                 
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lh      t9, 0x02E4(s0)             # 000002E4
    sll     t7, t9,  2                 
    addu    t6, t5, t7                 
    lw      t0, 0x0000(t6)             # 00000008
    sll     t9, t0,  4                 
    srl     t7, t9, 28                 
    sll     t6, t7,  2                 
    addu    t9, t3, t6                 
    lw      t7, 0x0000(t9)             # 00000008
    and     t8, t0, t2                 
    addu    t6, t8, t7                 
    addu    t9, t6, t4                 
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0028             # t7 = DB060028
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lh      t6, 0x02E6(s0)             # 000002E6
    lui     t1, %hi(var_808EE558)      # t1 = 808F0000
    sll     t9, t6,  2                 
    addu    t1, t1, t9                 
    lw      t1, %lo(var_808EE558)(t1)  
    sll     t7, t1,  4                 
    srl     t6, t7, 28                 
    sll     t9, t6,  2                 
    addu    t7, t3, t9                 
    lw      t6, 0x0000(t7)             # DB060028
    and     t8, t1, t2                 
    addu    t9, t8, t6                 
    addu    t7, t9, t4                 
    sw      t7, 0x0004(v0)             # 00000004
    lw      a1, 0x0144(s0)             # 00000144
    lw      a2, 0x0160(s0)             # 00000160
    lbu     a3, 0x0142(s0)             # 00000142
    lui     t8, %hi(func_808EDC60)     # t8 = 808F0000
    addiu   t8, t8, %lo(func_808EDC60) # t8 = 808EDC60
    sw      t8, 0x0010($sp)            
    sw      s0, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    jal     func_80089D8C              
    lw      a0, 0x003C($sp)            
lbl_808EDE30:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EE254              
    lw      a1, 0x003C($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808EDE50:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    addiu   v0, a0, 0x0384             # v0 = 00000384
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808EDE60:
    lbu     t6, 0x0000(v0)             # 00000384
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16                 
    bne     t6, $zero, lbl_808EDF44    
    sra     v1, v1, 16                 
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0000(v0)             # 00000384
    lw      t9, 0x0000(a1)             # 00000000
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, %hi(var_808EE598)     # $at = 808F0000
    sw      t9, 0x0004(v0)             # 00000388
    lw      t8, 0x0004(a1)             # 00000004
    sw      t8, 0x0008(v0)             # 0000038C
    lw      t9, 0x0008(a1)             # 00000008
    sw      t9, 0x000C(v0)             # 00000390
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x0010(v0)             # 00000394
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0014(v0)             # 00000398
    lw      t1, 0x0008(a2)             # 00000008
    sw      t1, 0x0018(v0)             # 0000039C
    lw      t3, 0x0000(a3)             # 00000000
    sw      t3, 0x001C(v0)             # 000003A0
    lw      t2, 0x0004(a3)             # 00000004
    sw      t2, 0x0020(v0)             # 000003A4
    lw      t3, 0x0008(a3)             # 00000008
    sw      t3, 0x0024(v0)             # 000003A8
    lw      t4, 0x0030($sp)            
    lbu     t6, 0x0000(t4)             # 00000000
    sb      t6, 0x0028(v0)             # 000003AC
    lbu     t5, 0x0001(t4)             # 00000001
    sb      t5, 0x0029(v0)             # 000003AD
    lbu     t6, 0x0002(t4)             # 00000002
    sh      $zero, 0x002E(v0)          # 000003B2
    sb      t6, 0x002A(v0)             # 000003AE
    lw      t7, 0x0034($sp)            
    lbu     t9, 0x0000(t7)             # 00000001
    sb      t9, 0x002B(v0)             # 000003AF
    lbu     t8, 0x0001(t7)             # 00000002
    sb      t8, 0x002C(v0)             # 000003B0
    lbu     t9, 0x0002(t7)             # 00000003
    sb      t9, 0x002D(v0)             # 000003B1
    lwc1    $f4, 0x0038($sp)           
    swc1    $f4, 0x0030(v0)            # 000003B4
    lh      t0, 0x003E($sp)            
    sh      t0, 0x0034(v0)             # 000003B8
    lh      t1, 0x0042($sp)            
    swc1    $f6, 0x0038(v0)            # 000003BC
    sh      t1, 0x0036(v0)             # 000003BA
    sw      v0, 0x001C($sp)            
    jal     func_80026D90              
    lwc1    $f12, %lo(var_808EE598)($at) 
    lw      v0, 0x001C($sp)            
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f0, 0x003C(v0)            # 0000003C
    beq     $zero, $zero, lbl_808EDF50 
    swc1    $f8, 0x0040(v0)            # 00000040
lbl_808EDF44:
    slti    $at, v1, 0x00C8            
    bne     $at, $zero, lbl_808EDE60   
    addiu   v0, v0, 0x0044             # v0 = 00000044
lbl_808EDF50:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808EDF60:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s8, 0x0068($sp)            
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s7, 0x0064($sp)            
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f30                  # $f30 = 32768.00
    lui     $at, %hi(var_808EE59C)     # $at = 808F0000
    lwc1    $f28, %lo(var_808EE59C)($at) 
    lui     $at, %hi(var_808EE5A0)     # $at = 808F0000
    lwc1    $f26, %lo(var_808EE5A0)($at) 
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f24                  # $f24 = 3.00
    addiu   s0, s8, 0x0384             # s0 = 00000384
    lw      s4, 0x1C44(a1)             # 00001C44
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   s7, $sp, 0x0088            # s7 = FFFFFFE0
    addiu   s6, $zero, 0x00FF          # s6 = 000000FF
    addiu   s3, $sp, 0x0094            # s3 = FFFFFFEC
lbl_808EDFE0:
    lbu     t6, 0x0000(s0)             # 00000384
    lui     $at, %hi(var_808EE5A4)     # $at = 808F0000
    beql    t6, $zero, lbl_808EE1A0    
    lh      v0, 0x0034(s0)             # 000003B8
    lwc1    $f4, 0x0040(s0)            # 000003C4
    lwc1    $f6, %lo(var_808EE5A4)($at) 
    lh      t7, 0x0036(s0)             # 000003BA
    or      a0, s8, $zero              # a0 = 00000000
    add.s   $f8, $f4, $f6              
    addiu   a1, $zero, 0x207E          # a1 = 0000207E
    bne     t7, $zero, lbl_808EE068    
    swc1    $f8, 0x0040(s0)            # 000003C4
    lwc1    $f0, 0x0010(s0)            # 00000394
    lwc1    $f10, 0x0004(s0)           # 00000388
    lwc1    $f2, 0x0014(s0)            # 00000398
    lwc1    $f18, 0x0008(s0)           # 0000038C
    lwc1    $f12, 0x0018(s0)           # 0000039C
    lwc1    $f6, 0x000C(s0)            # 00000390
    add.s   $f16, $f10, $f0            
    lwc1    $f10, 0x001C(s0)           # 000003A0
    add.s   $f4, $f18, $f2             
    lwc1    $f18, 0x0020(s0)           # 000003A4
    swc1    $f16, 0x0004(s0)           # 00000388
    add.s   $f8, $f6, $f12             
    lwc1    $f6, 0x0024(s0)            # 000003A8
    swc1    $f4, 0x0008(s0)            # 0000038C
    add.s   $f16, $f0, $f10            
    swc1    $f8, 0x000C(s0)            # 00000390
    add.s   $f4, $f2, $f18             
    swc1    $f16, 0x0010(s0)           # 00000394
    add.s   $f8, $f12, $f6             
    swc1    $f4, 0x0014(s0)            # 00000398
    beq     $zero, $zero, lbl_808EE19C 
    swc1    $f8, 0x0018(s0)            # 0000039C
lbl_808EE068:
    jal     func_80022FD0              
    addiu   s2, s4, 0x0024             # s2 = 00000024
    lw      t9, 0x0000(s2)             # 00000024
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f16                  # $f16 = 150.00
    sw      t9, 0x0000(s3)             # FFFFFFEC
    lw      t8, 0x0004(s2)             # 00000028
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    sw      t8, 0x0004(s3)             # FFFFFFF0
    lw      t9, 0x0008(s2)             # 0000002C
    addiu   s1, s0, 0x0004             # s1 = 00000388
    or      a0, s1, $zero              # a0 = 00000388
    sw      t9, 0x0008(s3)             # FFFFFFF4
    lwc1    $f10, 0x0028(s4)           # 00000028
    or      a1, s3, $zero              # a1 = FFFFFFEC
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0098($sp)          
    lwc1    $f4, 0x002C(s4)            # 0000002C
    sub.s   $f8, $f4, $f6              
    jal     func_80063F34              
    swc1    $f8, 0x009C($sp)           
    mtc1    v0, $f10                   # $f10 = 0.00
    or      a0, s1, $zero              # a0 = 00000388
    or      a1, s3, $zero              # a1 = FFFFFFEC
    jal     func_80063F00              
    cvt.s.w $f20, $f10                 
    mtc1    v0, $f16                   # $f16 = 0.00
    mfc1    a1, $f20                   
    mfc1    a2, $f26                   
    mfc1    a3, $f28                   
    addiu   a0, s0, 0x0038             # a0 = 000003BC
    jal     func_80064280              
    cvt.s.w $f22, $f16                 
    mfc1    a1, $f22                   
    mfc1    a2, $f26                   
    mfc1    a3, $f28                   
    jal     func_80064280              
    addiu   a0, s0, 0x003C             # a0 = 000003C0
    jal     func_800AA6EC              
    nop
    lwc1    $f18, 0x003C(s0)           # 000003C0
    lui     $at, %hi(var_808EE5A8)     # $at = 808F0000
    lwc1    $f6, %lo(var_808EE5A8)($at) 
    div.s   $f4, $f18, $f30            
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f12, $f4, $f6             
    jal     func_800AAB94              
    nop
    lwc1    $f8, 0x0038(s0)            # 000003BC
    lui     $at, %hi(var_808EE5AC)     # $at = 808F0000
    lwc1    $f16, %lo(var_808EE5AC)($at) 
    div.s   $f10, $f8, $f30            
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f10, $f16           
    jal     func_800AA9E0              
    nop
    swc1    $f24, 0x009C($sp)          
    swc1    $f24, 0x0098($sp)          
    swc1    $f24, 0x0094($sp)          
    or      a0, s3, $zero              # a0 = FFFFFFEC
    jal     func_800AB958              
    or      a1, s7, $zero              # a1 = FFFFFFE0
    jal     func_800AA724              
    nop
    lwc1    $f18, 0x0004(s0)           # 00000388
    lwc1    $f4, 0x0088($sp)           
    lwc1    $f8, 0x0008(s0)            # 0000038C
    add.s   $f6, $f18, $f4             
    lwc1    $f18, 0x000C(s0)           # 00000390
    swc1    $f6, 0x0004(s0)            # 00000388
    lwc1    $f10, 0x008C($sp)          
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0008(s0)           # 0000038C
    lwc1    $f4, 0x0090($sp)           
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x000C(s0)            # 00000390
lbl_808EE19C:
    lh      v0, 0x0034(s0)             # 000003B8
lbl_808EE1A0:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    beq     v0, $zero, lbl_808EE1DC    
    sra     s5, s5, 16                 
    lh      t1, 0x002E(s0)             # 000003B2
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0034(s0)             # 000003B8
    addiu   t2, t1, 0x001E             # t2 = 0000001E
    sh      t2, 0x002E(s0)             # 000003B2
    lh      t3, 0x002E(s0)             # 000003B2
    slti    $at, t3, 0x0100            
    bnel    $at, $zero, lbl_808EE204   
    slti    $at, s5, 0x00C8            
    beq     $zero, $zero, lbl_808EE200 
    sh      s6, 0x002E(s0)             # 000003B2
lbl_808EE1DC:
    lh      t4, 0x002E(s0)             # 000003B2
    andi    t7, $zero, 0x00FF          # t7 = 00000000
    addiu   t5, t4, 0xFFE2             # t5 = FFFFFFE2
    sh      t5, 0x002E(s0)             # 000003B2
    lh      t6, 0x002E(s0)             # 000003B2
    bgtzl   t6, lbl_808EE204           
    slti    $at, s5, 0x00C8            
    sb      $zero, 0x0000(s0)          # 00000384
    sh      t7, 0x002E(s0)             # 000003B2
lbl_808EE200:
    slti    $at, s5, 0x00C8            
lbl_808EE204:
    bne     $at, $zero, lbl_808EDFE0   
    addiu   s0, s0, 0x0044             # s0 = 000003C8
    lw      $ra, 0x006C($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    ldc1    $f28, 0x0038($sp)          
    ldc1    $f30, 0x0040($sp)          
    lw      s0, 0x0048($sp)            
    lw      s1, 0x004C($sp)            
    lw      s2, 0x0050($sp)            
    lw      s3, 0x0054($sp)            
    lw      s4, 0x0058($sp)            
    lw      s5, 0x005C($sp)            
    lw      s6, 0x0060($sp)            
    lw      s7, 0x0064($sp)            
    lw      s8, 0x0068($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_808EE254:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0044($sp)           
    sw      s8, 0x0040($sp)            
    sw      s7, 0x003C($sp)            
    sw      s6, 0x0038($sp)            
    sw      s5, 0x0034($sp)            
    sw      s4, 0x0030($sp)            
    sw      s3, 0x002C($sp)            
    sw      s2, 0x0028($sp)            
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x004C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x004C($sp)            
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s1, a2, 0x0384             # s1 = 00000384
    lw      a0, 0x0000(t6)             # 00000000
    or      s2, a0, $zero              # s2 = 00000000
    jal     func_8007E2C0              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    or      s5, $zero, $zero           # s5 = 00000000
    lui     s8, 0xDE00                 # s8 = DE000000
lbl_808EE2B8:
    lbu     t7, 0x0000(s1)             # 00000384
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      s3, 0x004C($sp)            
    bne     t7, $at, lbl_808EE470      
    lui     v0, 0x0600                 # v0 = 06000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   v0, v0, 0x58D8             # v0 = 060058D8
    sll     t8, v0,  4                 
    addu    s3, s3, $at                
    lui     $at, 0x00FF                # $at = 00FF0000
    srl     t9, t8, 28                 
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0x0C38             # t1 = 80120C38
    sll     t0, t9,  2                 
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     s7, v0, $at                
    bne     s4, $zero, lbl_808EE370    
    addu    s6, t0, t1                 
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     v1, 0x0600                 # v1 = 06000000
    addiu   v1, v1, 0x5860             # v1 = 06005860
    sll     t3, v1,  4                 
    srl     t4, t3, 28                 
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sll     t5, t4,  2                 
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t5                 
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      s8, 0x0000(s0)             # 00000000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, v1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t1, 0xE700                 # t1 = E7000000
    addiu   s4, s4, 0x0001             # s4 = 00000001
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    andi    s4, s4, 0x00FF             # s4 = 00000001
lbl_808EE370:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lbu     t5, 0x0028(s1)             # 000003AC
    lbu     t8, 0x0029(s1)             # 000003AD
    lbu     t2, 0x002A(s1)             # 000003AE
    sll     t6, t5, 24                 
    lh      t5, 0x002E(s1)             # 000003B2
    sll     t9, t8, 16                 
    or      t0, t6, t9                 # t0 = 80120000
    sll     t3, t2,  8                 
    or      t4, t0, t3                 # t4 = FA120000
    andi    t7, t5, 0x00FF             # t7 = 00000000
    or      t8, t4, t7                 # t8 = FA120000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lbu     t5, 0x002C(s1)             # 000003B0
    lbu     t2, 0x002B(s1)             # 000003AF
    lbu     t6, 0x002D(s1)             # 000003B1
    sll     t4, t5, 16                 
    sll     t0, t2, 24                 
    or      t7, t0, t4                 # t7 = FA120000
    sll     t9, t6,  8                 
    or      t1, t7, t9                 # t1 = FB120000
    sw      t1, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0004(s1)           # 00000388
    lwc1    $f14, 0x0008(s1)           # 0000038C
    jal     func_800AA7F4              
    lw      a2, 0x000C(s1)             # 00000390
    jal     func_800ABE54              
    or      a0, s3, $zero              # a0 = 00000000
    lwc1    $f12, 0x0030(s1)           # 000003B4
    mfc1    a2, $f20                   
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lwc1    $f12, 0x0040(s1)           # 000003C4
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s3, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      t3, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     $at, 0x8000                # $at = 80000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lw      t0, 0x0000(s6)             # 00000000
    addu    t4, t0, s7                 
    addu    t8, t4, $at                
    sw      t8, 0x0004(s0)             # 00000004
lbl_808EE470:
    addiu   s5, s5, 0x0001             # s5 = 00000001
    sll     s5, s5, 16                 
    sra     s5, s5, 16                 
    slti    $at, s5, 0x00C8            
    bne     $at, $zero, lbl_808EE2B8   
    addiu   s1, s1, 0x0044             # s1 = 000003C8
    lw      $ra, 0x0044($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    lw      s5, 0x0034($sp)            
    lw      s6, 0x0038($sp)            
    lw      s7, 0x003C($sp)            
    lw      s8, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    nop

.section .data

.word 0x0000005D, 0x0000005E, 0x0000005C
var_808EE4CC: .word 0x000B0600, 0x00000030, 0x000A0000, 0x000038A4
.word func_808EBA50
.word func_808EBB98
.word func_808EDA34
.word 0x00000000
var_808EE4EC: .word \
0xFFFFFFFF, 0xFF6464FF, 0x64FF6464, 0xFFFFAAFF, \
0xFF6464FF, 0x64FF6464, 0xFFFFAA00
var_808EE508: .word \
0x9BFFFFFF, 0xFF6464FF, 0x64FF6464, 0xFF64FFFF, \
0xFF6464FF, 0x64FF6464, 0x64FFFF00
var_808EE524: .word 0x00000000, 0x00000000, 0x00000000
var_808EE530: .word 0x00020000, 0x00010000
var_808EE538: .word 0x00110010, 0x00120000
var_808EE540: .word 0x01000200, 0x04000000
var_808EE548: .word 0x0D051300
var_808EE54C: .word 0x06017930, 0x06018130, 0x06018930
var_808EE558: .word 0x06019130, 0x0601A130

.section .rodata

var_808EE560: .word 0x3C23D70A
var_808EE564: .word 0x455AC000
var_808EE568: .word 0x3ECCCCCD
var_808EE56C: .word 0x3E4CCCCD
var_808EE570: .word 0x3DCCCCCD
var_808EE574: .word 0x3ECCCCCD
var_808EE578: .word 0x3D0B4396
var_808EE57C: .word 0x449F2000
var_808EE580: .word 0x449F2000
var_808EE584: .word 0x44A28000
var_808EE588: .word 0x3B449BA6
var_808EE58C: .word 0x3D0B4396
var_808EE590: .word 0x3E99999A
var_808EE594: .word 0x45EA6000
var_808EE598: .word 0x46EA6000
var_808EE59C: .word 0x459C4000
var_808EE5A0: .word 0x3F666666
var_808EE5A4: .word 0x453B8000
var_808EE5A8: .word 0x40490FDB
var_808EE5AC: .word 0x40490FDB

