.section .text
func_808EE7A0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_8008D6D0              
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EE7C4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x0182(a2)             # 00000182
    addiu   v1, a2, 0x0182             # v1 = 00000182
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_808EE7EC    
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    beq     $zero, $zero, lbl_808EE7FC 
    addiu   v1, a2, 0x0182             # v1 = 00000182
lbl_808EE7EC:
    lh      t7, 0x0000(v1)             # 00000182
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             # 00000182
    lh      v0, 0x0000(v1)             # 00000182
lbl_808EE7FC:
    bne     v0, $zero, lbl_808EE81C    
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    sw      v1, 0x001C($sp)            
    jal     func_80063BF0              
    sw      a2, 0x0040($sp)            
    lw      v1, 0x001C($sp)            
    lw      a2, 0x0040($sp)            
    sh      v0, 0x0000(v1)             # 00000000
lbl_808EE81C:
    lh      t9, 0x0000(v1)             # 00000000
    addiu   v0, a2, 0x0180             # v0 = 00000180
    sh      t9, 0x0000(v0)             # 00000180
    lh      a0, 0x0000(v0)             # 00000180
    slti    $at, a0, 0x0003            
    bnel    $at, $zero, lbl_808EE844   
    sh      a0, 0x0184(a2)             # 00000184
    sh      $zero, 0x0000(v0)          # 00000180
    lh      a0, 0x0000(v0)             # 00000180
    sh      a0, 0x0184(a2)             # 00000184
lbl_808EE844:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_808EE854:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    lwc1    $f4, 0x026C(a0)            # 0000026C
    addiu   v0, a0, 0x0180             # v0 = 00000180
    lui     $at, 0x40C0                # $at = 40C00000
    c.lt.s  $f4, $f6                   
    addiu   v1, a0, 0x026C             # v1 = 0000026C
    bc1fl   lbl_808EE888               
    lwc1    $f0, 0x0000(v1)            # 0000026C
    sh      $zero, 0x0000(v0)          # 00000180
    beq     $zero, $zero, lbl_808EE8E4 
    addiu   v1, a0, 0x026C             # v1 = 0000026C
    lwc1    $f0, 0x0000(v1)            # 0000026C
lbl_808EE888:
    mtc1    $at, $f8                   # $f8 = 6.00
    addiu   v0, a0, 0x0180             # v0 = 00000180
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    c.lt.s  $f0, $f8                   
    lui     $at, 0x4110                # $at = 41100000
    bc1fl   lbl_808EE8B0               
    mtc1    $at, $f10                  # $f10 = 9.00
    beq     $zero, $zero, lbl_808EE8E4 
    sh      t6, 0x0000(v0)             # 00000180
    mtc1    $at, $f10                  # $f10 = 9.00
lbl_808EE8B0:
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   v0, a0, 0x0180             # v0 = 00000180
    c.lt.s  $f0, $f10                  
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    bc1fl   lbl_808EE8D8               
    sh      t8, 0x0000(v0)             # 00000180
    addiu   v0, a0, 0x0180             # v0 = 00000180
    beq     $zero, $zero, lbl_808EE8E4 
    sh      t7, 0x0000(v0)             # 00000180
    sh      t8, 0x0000(v0)             # 00000180
lbl_808EE8D8:
    lh      t9, 0x0000(v0)             # 00000180
    jr      $ra                        
    sh      t9, 0x0184(a0)             # 00000184
lbl_808EE8E4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f16, 0x0000(v1)           # 0000026C
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0000(v1)            # 0000026C
    lh      t0, 0x0000(v0)             # 00000180
    sh      t0, 0x0184(a0)             # 00000184
    jr      $ra                        
    nop


func_808EE908:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lwc1    $f4, 0x026C(a0)            # 0000026C
    addiu   v0, a0, 0x0180             # v0 = 00000180
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    c.lt.s  $f4, $f6                   
    lui     $at, 0x4080                # $at = 40800000
    addiu   v1, a0, 0x026C             # v1 = 0000026C
    bc1fl   lbl_808EE948               
    lwc1    $f0, 0x0000(v1)            # 0000026C
    sh      t6, 0x0000(v0)             # 00000180
    beq     $zero, $zero, lbl_808EE9A0 
    addiu   v1, a0, 0x026C             # v1 = 0000026C
    lwc1    $f0, 0x0000(v1)            # 0000026C
lbl_808EE948:
    mtc1    $at, $f8                   # $f8 = 4.00
    addiu   v0, a0, 0x0180             # v0 = 00000180
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    c.lt.s  $f0, $f8                   
    lui     $at, 0x40C0                # $at = 40C00000
    bc1fl   lbl_808EE970               
    mtc1    $at, $f10                  # $f10 = 6.00
    beq     $zero, $zero, lbl_808EE9A0 
    sh      t7, 0x0000(v0)             # 00000180
    mtc1    $at, $f10                  # $f10 = 6.00
lbl_808EE970:
    addiu   v0, a0, 0x0180             # v0 = 00000180
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_808EE990               
    nop
    beq     $zero, $zero, lbl_808EE9A0 
    sh      t8, 0x0000(v0)             # 00000180
lbl_808EE990:
    jal     func_808EE7C4              
    nop
    beq     $zero, $zero, lbl_808EE9C0 
    lw      $ra, 0x0014($sp)           
lbl_808EE9A0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f16, 0x0000(v1)           # 00000000
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0000(v1)            # 00000000
    lh      t9, 0x0000(v0)             # 00000000
    sh      t9, 0x0184(a0)             # 00000184
    lw      $ra, 0x0014($sp)           
lbl_808EE9C0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EE9CC:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lwc1    $f4, 0x026C(a0)            # 0000026C
    addiu   v0, a0, 0x0180             # v0 = 00000180
    lui     $at, 0x4080                # $at = 40800000
    c.lt.s  $f4, $f6                   
    addiu   v1, a0, 0x026C             # v1 = 0000026C
    bc1fl   lbl_808EEA00               
    lwc1    $f8, 0x0000(v1)            # 0000026C
    sh      $zero, 0x0000(v0)          # 00000180
    beq     $zero, $zero, lbl_808EEA38 
    addiu   v1, a0, 0x026C             # v1 = 0000026C
    lwc1    $f8, 0x0000(v1)            # 0000026C
lbl_808EEA00:
    mtc1    $at, $f10                  # $f10 = 4.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   v0, a0, 0x0180             # v0 = 00000180
    c.lt.s  $f8, $f10                  
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    bc1fl   lbl_808EEA2C               
    sh      t7, 0x0000(v0)             # 00000180
    addiu   v0, a0, 0x0180             # v0 = 00000180
    beq     $zero, $zero, lbl_808EEA38 
    sh      t6, 0x0000(v0)             # 00000180
    sh      t7, 0x0000(v0)             # 00000180
lbl_808EEA2C:
    lh      t8, 0x0000(v0)             # 00000180
    jr      $ra                        
    sh      t8, 0x0184(a0)             # 00000184
lbl_808EEA38:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f16, 0x0000(v1)           # 0000026C
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0000(v1)            # 0000026C
    lh      t9, 0x0000(v0)             # 00000180
    sh      t9, 0x0184(a0)             # 00000184
    jr      $ra                        
    nop


func_808EEA5C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lwc1    $f4, 0x026C(a0)            # 0000026C
    addiu   v0, a0, 0x0180             # v0 = 00000180
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    c.lt.s  $f4, $f6                   
    lui     $at, 0x4080                # $at = 40800000
    addiu   v1, a0, 0x026C             # v1 = 0000026C
    bc1fl   lbl_808EEA9C               
    lwc1    $f8, 0x0000(v1)            # 0000026C
    sh      t6, 0x0000(v0)             # 00000180
    beq     $zero, $zero, lbl_808EEAD0 
    addiu   v1, a0, 0x026C             # v1 = 0000026C
    lwc1    $f8, 0x0000(v1)            # 0000026C
lbl_808EEA9C:
    mtc1    $at, $f10                  # $f10 = 4.00
    addiu   v0, a0, 0x0180             # v0 = 00000180
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    c.lt.s  $f8, $f10                  
    nop
    bc1f    lbl_808EEAC0               
    nop
    beq     $zero, $zero, lbl_808EEAD0 
    sh      t7, 0x0000(v0)             # 00000180
lbl_808EEAC0:
    jal     func_808EE7C4              
    nop
    beq     $zero, $zero, lbl_808EEAF0 
    lw      $ra, 0x0014($sp)           
lbl_808EEAD0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f16, 0x0000(v1)           # 00000000
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0000(v1)            # 00000000
    lh      t8, 0x0000(v0)             # 00000000
    sh      t8, 0x0184(a0)             # 00000184
    lw      $ra, 0x0014($sp)           
lbl_808EEAF0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EEAFC:
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sh      a1, 0x0180(a0)             # 00000180
    lh      t6, 0x0180(a0)             # 00000180
    sh      t6, 0x0184(a0)             # 00000184
    jr      $ra                        
    nop


func_808EEB1C:
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sh      a1, 0x0184(a0)             # 00000184
    jr      $ra                        
    nop


func_808EEB34:
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sh      a1, 0x0188(a0)             # 00000188
    jr      $ra                        
    nop


func_808EEB4C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     $at, 0x41F0                # $at = 41F00000
    sw      a1, 0x0024($sp)            
    mtc1    $at, $f0                   # $f0 = 30.00
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0024($sp)            
    lui     a2, 0x4296                 # a2 = 42960000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808EEB94:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_8008C9C0              
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EEBB8:
    lbu     t6, 0x1D6C(a0)             # 00001D6C
    sll     t7, a1,  2                 
    addu    t8, a0, t7                 
    beql    t6, $zero, lbl_808EEBD8    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    lw      v0, 0x1D8C(t8)             # 00001D8C
lbl_808EEBD4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808EEBD8:
    jr      $ra                        
    nop


func_808EEBE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x001C($sp)            
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_808EEBB8              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_808EEC50    
    lw      a3, 0x0018($sp)            
    lw      t6, 0x000C(v0)             # 0000000C
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0024(a3)            # 00000024
    lw      t7, 0x0010(v0)             # 00000010
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(a3)           # 00000028
    lw      t8, 0x0014(v0)             # 00000014
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(a3)           # 0000002C
    lh      v1, 0x0008(v0)             # 00000008
    sh      v1, 0x00B6(a3)             # 000000B6
    sh      v1, 0x0032(a3)             # 00000032
lbl_808EEC50:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EEC60:
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    lw      t6, 0x023C(a0)             # 0000023C
    sll     t7, a2,  1                 
    addu    t0, a0, t7                 
    beq     t6, $zero, lbl_808EED80    
    sll     t2, a2,  1                 
    lh      t9, 0x01FC(t0)             # 000001FC
    lh      t8, 0x01CC(t0)             # 000001CC
    lh      t1, 0x019C(t0)             # 0000019C
    subu    a3, a1, t9                 
    mtc1    a3, $f4                    # $f4 = 0.00
    ori     $at, $zero, 0x8001         # $at = 00008001
    addu    v1, t8, a1                 
    cvt.s.w $f0, $f4                   
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    or      v0, t1, $zero              # v0 = 00000000
    abs.s   $f0, $f0                   
    trunc.w.s $f6, $f0                   
    mfc1    t3, $f6                    
    nop
    slt     $at, t3, $at               
    bne     $at, $zero, lbl_808EECE0   
    nop
    blez    a1, lbl_808EECDC           
    lui     $at, 0x0001                # $at = 00010000
    lui     $at, 0xFFFF                # $at = FFFF0000
    beq     $zero, $zero, lbl_808EECE0 
    addu    a3, a3, $at                
lbl_808EECDC:
    addu    a3, a3, $at                
lbl_808EECE0:
    beq     a3, $zero, lbl_808EECFC    
    subu    t4, a3, v0                 
    bgez    t4, lbl_808EECF8           
    sra     t5, t4,  4                 
    addiu   $at, t4, 0x000F            # $at = 0000000F
    sra     t5, $at,  4                
lbl_808EECF8:
    addu    v0, v0, t5                 
lbl_808EECFC:
    beq     v0, $zero, lbl_808EED18    
    subu    a3, v1, a1                 
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, v0, $at             
    mflo    t6                         
    subu    v0, v0, t6                 
    nop
lbl_808EED18:
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    beq     a3, $zero, lbl_808EED38    
    addiu   $at, $zero, 0x0032         # $at = 00000032
    div     $zero, a3, $at             
    mflo    t7                         
    subu    v0, v0, t7                 
    nop
lbl_808EED38:
    multu   t1, v0                     
    addu    v1, v1, v0                 
    subu    a3, v1, a1                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    slti    $at, a3, 0xFF9D            
    mflo    t8                         
    bgtzl   t8, lbl_808EED78           
    subu    t9, v1, a1                 
    bne     $at, $zero, lbl_808EED74   
    slti    $at, a3, 0x0064            
    beql    $at, $zero, lbl_808EED78   
    subu    t9, v1, a1                 
    or      v1, a1, $zero              # v1 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808EED74:
    subu    t9, v1, a1                 
lbl_808EED78:
    sh      v0, 0x019C(t0)             # 0000019C
    sh      t9, 0x01CC(t0)             # 000001CC
lbl_808EED80:
    addu    t3, a0, t2                 
    sh      a1, 0x01FC(t3)             # 000001FC
    jr      $ra                        
    nop


func_808EED90:
    or      a3, a0, $zero              # a3 = 00000000
    sw      a1, 0x0004($sp)            
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    bne     a2, t0, lbl_808EEDB0       
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v1, $zero, 0x3A98          # v1 = 00003A98
    beq     $zero, $zero, lbl_808EEE18 
    or      t1, $zero, $zero           # t1 = 00000000
lbl_808EEDB0:
    bne     a2, $at, lbl_808EEDC0      
    addiu   v1, $zero, 0x32C8          # v1 = 000032C8
    beq     $zero, $zero, lbl_808EEE18 
    addiu   t1, $zero, 0x0003          # t1 = 00000003
lbl_808EEDC0:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a2, $at, lbl_808EEDD4      
    addiu   v1, $zero, 0x2EE0          # v1 = 00002EE0
    beq     $zero, $zero, lbl_808EEE18 
    addiu   t1, $zero, 0x0006          # t1 = 00000006
lbl_808EEDD4:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     a2, $at, lbl_808EEDE8      
    addiu   v1, $zero, 0x4000          # v1 = 00004000
    beq     $zero, $zero, lbl_808EEE18 
    addiu   t1, $zero, 0x0009          # t1 = 00000009
lbl_808EEDE8:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     a2, $at, lbl_808EEDFC      
    addiu   v1, $zero, 0x4000          # v1 = 00004000
    beq     $zero, $zero, lbl_808EEE18 
    addiu   t1, $zero, 0x000C          # t1 = 0000000C
lbl_808EEDFC:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     a2, $at, lbl_808EEE14      
    addiu   v1, $zero, 0x4000          # v1 = 00004000
    addiu   v1, $zero, 0x4000          # v1 = 00004000
    beq     $zero, $zero, lbl_808EEE18 
    addiu   t1, $zero, 0x000F          # t1 = 0000000F
lbl_808EEE14:
    addiu   t1, $zero, 0x0012          # t1 = 00000012
lbl_808EEE18:
    lw      t6, 0x023C(a3)             # 0000023C
    sll     t7, a2,  1                 
    addu    a1, a3, t7                 
    beq     t6, $zero, lbl_808EF048    
    lh      t9, 0x0006($sp)            
    lh      t5, 0x01FC(a1)             # 000001FC
    lh      t8, 0x01CC(a1)             # 000001CC
    lh      t4, 0x019C(a1)             # 0000019C
    subu    t2, t9, t5                 
    mtc1    t2, $f4                    # $f4 = 0.00
    addu    a0, t8, t9                 
    ori     $at, $zero, 0x8001         # $at = 00008001
    cvt.s.w $f0, $f4                   
    sll     a0, a0, 16                 
    sll     t8, t1,  1                 
    sra     a0, a0, 16                 
    addu    t5, a3, t8                 
    or      v0, t4, $zero              # v0 = 00000000
    abs.s   $f0, $f0                   
    trunc.w.s $f6, $f0                   
    mfc1    t7, $f6                    
    nop
    slt     $at, t7, $at               
    bne     $at, $zero, lbl_808EEE94   
    nop
    blez    t9, lbl_808EEE90           
    lui     $at, 0x0001                # $at = 00010000
    lui     $at, 0xFFFF                # $at = FFFF0000
    beq     $zero, $zero, lbl_808EEE94 
    addu    t2, t2, $at                
lbl_808EEE90:
    addu    t2, t2, $at                
lbl_808EEE94:
    bltz    t1, lbl_808EEEC0           
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lh      t3, 0x019C(t5)             # 0000019C
    bltz    t3, lbl_808EEEB0           
    subu    t1, $zero, t3              
    beq     $zero, $zero, lbl_808EEEB0 
    or      t1, t3, $zero              # t1 = 00000000
lbl_808EEEB0:
    div     $zero, t1, $at             
    mflo    t6                         
    addu    t2, t2, t6                 
    nop
lbl_808EEEC0:
    beq     t2, $zero, lbl_808EEEE0    
    subu    t1, a0, v1                 
    subu    t7, t2, v0                 
    bgez    t7, lbl_808EEEDC           
    sra     t9, t7,  4                 
    addiu   $at, t7, 0x000F            # $at = 0000000F
    sra     t9, $at,  4                
lbl_808EEEDC:
    addu    v0, v0, t9                 
lbl_808EEEE0:
    beq     v0, $zero, lbl_808EEEFC    
    sll     t1, t1, 16                 
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, v0, $at             
    mflo    t8                         
    subu    v0, v0, t8                 
    nop
lbl_808EEEFC:
    sra     t1, t1, 16                 
    beq     t1, $zero, lbl_808EEF18    
    addiu   $at, $zero, 0x0032         # $at = 00000032
    div     $zero, t1, $at             
    mflo    t5                         
    subu    v0, v0, t5                 
    nop
lbl_808EEF18:
    multu   t4, v0                     
    addu    a0, a0, v0                 
    subu    t1, a0, v1                 
    sll     t1, t1, 16                 
    sra     t1, t1, 16                 
    slti    $at, t1, 0xFF9D            
    mflo    t6                         
    bgtz    t6, lbl_808EEF54           
    nop
    bne     $at, $zero, lbl_808EEF54   
    slti    $at, t1, 0x0064            
    beq     $at, $zero, lbl_808EEF54   
    nop
    or      a0, v1, $zero              # a0 = 00004000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808EEF54:
    bnel    a2, t0, lbl_808EF03C       
    sh      v0, 0x019C(a1)             # 0000019C
    lw      t0, 0x018C(a3)             # 0000018C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     t0, $at, lbl_808EEF70      
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     t0, $at, lbl_808EEFC4      
lbl_808EEF70:
    lui     $at, %hi(var_808F2770)     # $at = 808F0000
    lwc1    $f0, 0x0154(a3)            # 00000154
    lwc1    $f8, %lo(var_808F2770)($at) 
    lwc1    $f2, 0x0268(a3)            # 00000268
    mul.s   $f10, $f8, $f0             
    div.s   $f16, $f10, $f2            
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    nop
    addu    t0, t9, v1                 
    slt     $at, t0, a0                
    bnel    $at, $zero, lbl_808EF03C   
    sh      v0, 0x019C(a1)             # 0000019C
    or      a0, t0, $zero              # a0 = 00000002
    bgez    v0, lbl_808EEFB4           
    addu    $at, v0, $zero             
    addiu   $at, v0, 0x0001            # $at = 00000001
lbl_808EEFB4:
    sra     v0, $at,  1                
    subu    v0, $zero, v0              
    beq     $zero, $zero, lbl_808EF03C 
    sh      v0, 0x019C(a1)             # 0000019C
lbl_808EEFC4:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     t0, $at, lbl_808EEFD8      
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    bnel    t0, $at, lbl_808EF00C      
    addiu   $at, $zero, 0x0014         # $at = 00000014
lbl_808EEFD8:
    addiu   t0, v1, 0x0DAC             # t0 = 00004DAC
    slt     $at, t0, a0                
    bnel    $at, $zero, lbl_808EF03C   
    sh      v0, 0x019C(a1)             # 0000019C
    or      a0, t0, $zero              # a0 = 00004DAC
    bgez    v0, lbl_808EEFF8           
    addu    $at, v0, $zero             
    addiu   $at, v0, 0x0001            # $at = 00000001
lbl_808EEFF8:
    sra     v0, $at,  1                
    subu    v0, $zero, v0              
    beq     $zero, $zero, lbl_808EF03C 
    sh      v0, 0x019C(a1)             # 0000019C
    addiu   $at, $zero, 0x0014         # $at = 00000014
lbl_808EF00C:
    bne     t0, $at, lbl_808EF038      
    addiu   t0, v1, 0xFC18             # t0 = 00003C18
    slt     $at, t0, a0                
    bnel    $at, $zero, lbl_808EF03C   
    sh      v0, 0x019C(a1)             # 0000019C
    or      a0, t0, $zero              # a0 = 00003C18
    bgez    v0, lbl_808EF030           
    addu    $at, v0, $zero             
    addiu   $at, v0, 0x0001            # $at = 00000001
lbl_808EF030:
    sra     v0, $at,  1                
    subu    v0, $zero, v0              
lbl_808EF038:
    sh      v0, 0x019C(a1)             # 0000019C
lbl_808EF03C:
    lh      t8, 0x0006($sp)            
    subu    t5, a0, t8                 
    sh      t5, 0x01CC(a1)             # 000001CC
lbl_808EF048:
    lh      t6, 0x0006($sp)            
    sll     t7, a2,  1                 
    addu    t9, a3, t7                 
    sh      t6, 0x01FC(t9)             # 000001FC
    jr      $ra                        
    nop


func_808EF060:
    sll     a3, a1, 16                 
    sra     a3, a3, 16                 
    sw      a1, 0x0004($sp)            
    lw      t6, 0x023C(a0)             # 0000023C
    sll     t7, a2,  1                 
    addu    a1, a0, t7                 
    beq     t6, $zero, lbl_808EF27C    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      t8, 0x01CC(a1)             # 000001CC
    lh      t1, 0x019C(a1)             # 0000019C
    lh      t9, 0x01FC(a1)             # 000001FC
    subu    v1, t8, a3                 
    sll     t0, v1, 16                 
    sra     t0, t0, 16                 
    or      t2, t0, $zero              # t2 = 00000000
    or      v0, t1, $zero              # v0 = 00000000
    bne     a2, $at, lbl_808EF0B4      
    subu    t3, a3, t9                 
    or      t4, $zero, $zero           # t4 = 00000000
    beq     $zero, $zero, lbl_808EF19C 
    lh      t5, 0x019C(a0)             # 0000019C
lbl_808EF0B4:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a2, $at, lbl_808EF0C8      
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    beq     $zero, $zero, lbl_808EF19C 
    lh      t5, 0x01A2(a0)             # 000001A2
lbl_808EF0C8:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     a2, $at, lbl_808EF0DC      
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    beq     $zero, $zero, lbl_808EF19C 
    lh      t5, 0x01A8(a0)             # 000001A8
lbl_808EF0DC:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    a2, $at, lbl_808EF110      
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    lh      t6, 0x01AE(a0)             # 000001AE
    addiu   t4, $zero, 0x0009          # t4 = 00000009
    bltzl   t6, lbl_808EF104           
    lh      t5, 0x01AE(a0)             # 000001AE
    beq     $zero, $zero, lbl_808EF19C 
    lh      t5, 0x01AE(a0)             # 000001AE
    lh      t5, 0x01AE(a0)             # 000001AE
lbl_808EF104:
    beq     $zero, $zero, lbl_808EF19C 
    subu    t5, $zero, t5              
    addiu   $at, $zero, 0x000D         # $at = 0000000D
lbl_808EF110:
    bnel    a2, $at, lbl_808EF140      
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lh      t7, 0x01B4(a0)             # 000001B4
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    bltzl   t7, lbl_808EF134           
    lh      t5, 0x01B4(a0)             # 000001B4
    beq     $zero, $zero, lbl_808EF19C 
    lh      t5, 0x01B4(a0)             # 000001B4
    lh      t5, 0x01B4(a0)             # 000001B4
lbl_808EF134:
    beq     $zero, $zero, lbl_808EF19C 
    subu    t5, $zero, t5              
    addiu   $at, $zero, 0x0010         # $at = 00000010
lbl_808EF140:
    bnel    a2, $at, lbl_808EF178      
    lh      t9, 0x01C0(a0)             # 000001C0
    lh      t8, 0x01BA(a0)             # 000001BA
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    bltzl   t8, lbl_808EF168           
    lh      t5, 0x01BA(a0)             # 000001BA
    lh      t5, 0x01BA(a0)             # 000001BA
    beq     $zero, $zero, lbl_808EF19C 
    subu    t5, $zero, t5              
    lh      t5, 0x01BA(a0)             # 000001BA
lbl_808EF168:
    subu    t5, $zero, t5              
    beq     $zero, $zero, lbl_808EF19C 
    subu    t5, $zero, t5              
    lh      t9, 0x01C0(a0)             # 000001C0
lbl_808EF178:
    addiu   t4, $zero, 0x0012          # t4 = 00000012
    bltzl   t9, lbl_808EF194           
    lh      t5, 0x01C0(a0)             # 000001C0
    lh      t5, 0x01C0(a0)             # 000001C0
    beq     $zero, $zero, lbl_808EF19C 
    subu    t5, $zero, t5              
    lh      t5, 0x01C0(a0)             # 000001C0
lbl_808EF194:
    subu    t5, $zero, t5              
    subu    t5, $zero, t5              
lbl_808EF19C:
    mtc1    t3, $f4                    # $f4 = 0.00
    ori     $at, $zero, 0x8001         # $at = 00008001
    cvt.s.w $f0, $f4                   
    abs.s   $f0, $f0                   
    trunc.w.s $f6, $f0                   
    mfc1    t7, $f6                    
    nop
    slt     $at, t7, $at               
    bne     $at, $zero, lbl_808EF1DC   
    nop
    blez    a3, lbl_808EF1D8           
    lui     $at, 0x0001                # $at = 00010000
    lui     $at, 0xFFFF                # $at = FFFF0000
    beq     $zero, $zero, lbl_808EF1DC 
    addu    t3, t3, $at                
lbl_808EF1D8:
    addu    t3, t3, $at                
lbl_808EF1DC:
    bltz    t4, lbl_808EF1F4           
    addiu   $at, $zero, 0x0003         # $at = 00000003
    div     $zero, t5, $at             
    mflo    t8                         
    addu    t3, t3, t8                 
    nop
lbl_808EF1F4:
    beq     t3, $zero, lbl_808EF210    
    subu    t9, t3, v0                 
    bgez    t9, lbl_808EF20C           
    sra     t6, t9,  4                 
    addiu   $at, t9, 0x000F            # $at = 0000000F
    sra     t6, $at,  4                
lbl_808EF20C:
    addu    v0, v0, t6                 
lbl_808EF210:
    beq     v0, $zero, lbl_808EF228    
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, v0, $at             
    mflo    t7                         
    subu    v0, v0, t7                 
    nop
lbl_808EF228:
    beq     t0, $zero, lbl_808EF240    
    addiu   $at, $zero, 0x0032         # $at = 00000032
    div     $zero, t0, $at             
    mflo    t8                         
    subu    v0, v0, t8                 
    nop
lbl_808EF240:
    multu   t1, v0                     
    addu    v1, v1, v0                 
    slti    $at, t2, 0xFF9D            
    mflo    t9                         
    bgtzl   t9, lbl_808EF274           
    addu    t6, a3, v1                 
    bne     $at, $zero, lbl_808EF270   
    slti    $at, t2, 0x0064            
    beql    $at, $zero, lbl_808EF274   
    addu    t6, a3, v1                 
    or      v1, $zero, $zero           # v1 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808EF270:
    addu    t6, a3, v1                 
lbl_808EF274:
    sh      v0, 0x019C(a1)             # 0000019C
    sh      t6, 0x01CC(a1)             # 000001CC
lbl_808EF27C:
    sll     t7, a2,  1                 
    addu    t8, a0, t7                 
    sh      a3, 0x01FC(t8)             # 000001FC
    jr      $ra                        
    nop


func_808EF290:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0088($sp)            
    sw      a2, 0x0090($sp)            
    sw      a3, 0x0094($sp)            
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     a1, $at, lbl_808EF978      
    lw      t6, 0x0088($sp)            
    lw      a1, 0x00A0($sp)            
    lw      v0, 0x0000(t6)             # 00000000
    lw      a2, 0x02C4(v0)             # 000002C4
    addiu   a2, a2, 0xFE40             # a2 = FFFFFE40
    sw      a2, 0x02C4(v0)             # 000002C4
    lw      a0, 0x0000(a1)             # 00000000
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0030             # t8 = DB060030
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x0000(a1)             # 00000000
    sw      a2, 0x0004(a0)             # 00000004
    sw      t8, 0x0000(a0)             # 00000000
    jal     func_800AA6EC              
    sw      a2, 0x0024($sp)            
    lui     t9, 0x8000                 # t9 = 80000000
    lw      t9, 0x0310(t9)             # 80000310
    addiu   $at, $zero, 0x17D9         # $at = 000017D9
    lw      v0, 0x0094($sp)            
    beq     t9, $at, lbl_808EF31C      
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f14                  # $f14 = 0.50
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v0, 0x0094($sp)            
lbl_808EF31C:
    lwc1    $f12, 0x0000(v0)           # 00000000
    lwc1    $f14, 0x0004(v0)           # 00000004
    lw      a2, 0x0008(v0)             # 00000008
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v0, 0x0098($sp)            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      a0, 0x0000(v0)             # 00000000
    lh      a1, 0x0002(v0)             # 00000002
    jal     func_800AAF00              
    lh      a2, 0x0004(v0)             # 00000004
    jal     func_800AA6EC              
    nop
    lui     $at, 0x43B5                # $at = 43B50000
    mtc1    $at, $f12                  # $f12 = 362.00
    lui     $at, 0xC305                # $at = C3050000
    mtc1    $at, $f14                  # $f14 = -133.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA740              
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFAC
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54              
    lw      a0, 0x0088($sp)            
    bne     v0, $zero, lbl_808EF3C4    
    nop
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0036($sp)            
    jal     func_808EEC60              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0034($sp)            
    jal     func_808EF060              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0038($sp)            
    jal     func_808EED90              
    addiu   a2, $zero, 0x0002          # a2 = 00000002
lbl_808EF3C4:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lw      v1, 0x009C($sp)            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t0, 0x1492(v0)             # 80121492
    lh      t2, 0x1494(v0)             # 80121494
    lh      t4, 0x1496(v0)             # 80121496
    lh      t5, 0x01D0(v1)             # 000001D0
    lh      t3, 0x01CE(v1)             # 000001CE
    lh      t1, 0x01CC(v1)             # 000001CC
    addu    a2, t4, t5                 
    addu    a1, t2, t3                 
    addu    a0, t0, t1                 
    sll     a0, a0, 16                 
    sll     a1, a1, 16                 
    sll     a2, a2, 16                 
    addiu   v1, v1, 0x01CC             # v1 = 000001CC
    sw      v1, 0x0020($sp)            
    sra     a2, a2, 16                 
    sra     a1, a1, 16                 
    jal     func_800AAF00              
    sra     a0, a0, 16                 
    lui     $at, 0xC33C                # $at = C33C0000
    mtc1    $at, $f12                  # $f12 = -188.00
    lui     $at, 0xC338                # $at = C3380000
    mtc1    $at, $f14                  # $f14 = -184.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8              
    lw      a0, 0x0024($sp)            
    jal     func_800AA740              
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFAC
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54              
    lw      a0, 0x0088($sp)            
    bne     v0, $zero, lbl_808EF488    
    nop
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0036($sp)            
    jal     func_808EEC60              
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0034($sp)            
    jal     func_808EF060              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_808EF488:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v1, 0x0020($sp)            
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t7, 0x0006(v1)             # 00000006
    lh      t9, 0x0008(v1)             # 00000008
    lh      t1, 0x000A(v1)             # 0000000A
    lh      t6, 0x1498(v0)             # 80121498
    lh      t8, 0x149A(v0)             # 8012149A
    lh      t0, 0x149C(v0)             # 8012149C
    addu    a0, t6, t7                 
    addu    a1, t8, t9                 
    addu    a2, t0, t1                 
    sll     a2, a2, 16                 
    sll     a1, a1, 16                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    sra     a1, a1, 16                 
    jal     func_800AAF00              
    sra     a2, a2, 16                 
    lui     $at, 0xC3CD                # $at = C3CD0000
    mtc1    $at, $f12                  # $f12 = -410.00
    lui     $at, 0xC338                # $at = C3380000
    mtc1    $at, $f14                  # $f14 = -184.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0024($sp)            
    jal     func_800AB8D8              
    addiu   a0, a0, 0x0040             # a0 = 00000040
    jal     func_800AA740              
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFAC
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54              
    lw      a0, 0x0088($sp)            
    bne     v0, $zero, lbl_808EF548    
    nop
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0036($sp)            
    jal     func_808EEC60              
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0034($sp)            
    jal     func_808EF060              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_808EF548:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v1, 0x0020($sp)            
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t3, 0x000C(v1)             # 0000000C
    lh      t5, 0x000E(v1)             # 0000000E
    lh      t7, 0x0010(v1)             # 00000010
    lh      t2, 0x149E(v0)             # 8012149E
    lh      t4, 0x14A0(v0)             # 801214A0
    lh      t6, 0x14A2(v0)             # 801214A2
    addu    a0, t2, t3                 
    addu    a1, t4, t5                 
    addu    a2, t6, t7                 
    sll     a2, a2, 16                 
    sll     a1, a1, 16                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    sra     a1, a1, 16                 
    jal     func_800AAF00              
    sra     a2, a2, 16                 
    lui     $at, %hi(var_808F2774)     # $at = 808F0000
    lwc1    $f12, %lo(var_808F2774)($at) 
    lui     $at, 0xC1D0                # $at = C1D00000
    mtc1    $at, $f14                  # $f14 = -26.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0024($sp)            
    jal     func_800AB8D8              
    addiu   a0, a0, 0x0080             # a0 = 00000080
    jal     func_800AA724              
    nop
    jal     func_800AA6EC              
    nop
    lui     $at, %hi(var_808F2778)     # $at = 808F0000
    lwc1    $f12, %lo(var_808F2778)($at) 
    lui     $at, %hi(var_808F277C)     # $at = 808F0000
    lui     a2, 0x43C2                 # a2 = 43C20000
    ori     a2, a2, 0x8000             # a2 = 43C28000
    lwc1    $f14, %lo(var_808F277C)($at) 
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA740              
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFAC
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54              
    lw      a0, 0x0088($sp)            
    bne     v0, $zero, lbl_808EF648    
    nop
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0036($sp)            
    jal     func_808EEC60              
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0034($sp)            
    jal     func_808EF060              
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0038($sp)            
    jal     func_808EED90              
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
lbl_808EF648:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v1, 0x0020($sp)            
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t9, 0x0012(v1)             # 00000012
    lh      t1, 0x0014(v1)             # 00000014
    lh      t3, 0x0016(v1)             # 00000016
    lh      t8, 0x14A4(v0)             # 801214A4
    lh      t0, 0x14A6(v0)             # 801214A6
    lh      t2, 0x14A8(v0)             # 801214A8
    addu    a0, t8, t9                 
    addu    a1, t0, t1                 
    addu    a2, t2, t3                 
    sll     a2, a2, 16                 
    sll     a1, a1, 16                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    sra     a1, a1, 16                 
    jal     func_800AAF00              
    sra     a2, a2, 16                 
    lui     $at, %hi(var_808F2780)     # $at = 808F0000
    lwc1    $f12, %lo(var_808F2780)($at) 
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f14                  # $f14 = -1.00
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0024($sp)            
    jal     func_800AB8D8              
    addiu   a0, a0, 0x00C0             # a0 = 000000C0
    jal     func_800AA740              
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFAC
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54              
    lw      a0, 0x0088($sp)            
    bne     v0, $zero, lbl_808EF718    
    nop
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0036($sp)            
    jal     func_808EEC60              
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0034($sp)            
    jal     func_808EF060              
    addiu   a2, $zero, 0x000D          # a2 = 0000000D
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0038($sp)            
    jal     func_808EED90              
    addiu   a2, $zero, 0x000E          # a2 = 0000000E
lbl_808EF718:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v1, 0x0020($sp)            
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t5, 0x0018(v1)             # 00000018
    lh      t7, 0x001A(v1)             # 0000001A
    lh      t9, 0x001C(v1)             # 0000001C
    lh      t4, 0x14AA(v0)             # 801214AA
    lh      t6, 0x14AC(v0)             # 801214AC
    lh      t8, 0x14AE(v0)             # 801214AE
    addu    a0, t4, t5                 
    addu    a1, t6, t7                 
    addu    a2, t8, t9                 
    sll     a2, a2, 16                 
    sll     a1, a1, 16                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    sra     a1, a1, 16                 
    jal     func_800AAF00              
    sra     a2, a2, 16                 
    lui     $at, 0xC3DF                # $at = C3DF0000
    mtc1    $at, $f12                  # $f12 = -446.00
    lui     $at, 0xC250                # $at = C2500000
    mtc1    $at, $f14                  # $f14 = -52.00
    lui     a2, 0x42A8                 # a2 = 42A80000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0024($sp)            
    jal     func_800AB8D8              
    addiu   a0, a0, 0x0100             # a0 = 00000100
    jal     func_800AA724              
    nop
    jal     func_800AA6EC              
    nop
    lui     $at, %hi(var_808F2784)     # $at = 808F0000
    lwc1    $f12, %lo(var_808F2784)($at) 
    lui     $at, %hi(var_808F2788)     # $at = 808F0000
    lui     a2, 0xC3C2                 # a2 = C3C20000
    ori     a2, a2, 0x8000             # a2 = C3C28000
    lwc1    $f14, %lo(var_808F2788)($at) 
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA740              
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFAC
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54              
    lw      a0, 0x0088($sp)            
    bne     v0, $zero, lbl_808EF818    
    nop
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0036($sp)            
    jal     func_808EEC60              
    addiu   a2, $zero, 0x000F          # a2 = 0000000F
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0034($sp)            
    jal     func_808EF060              
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0038($sp)            
    jal     func_808EED90              
    addiu   a2, $zero, 0x0011          # a2 = 00000011
lbl_808EF818:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v1, 0x0020($sp)            
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t1, 0x001E(v1)             # 0000001E
    lh      t3, 0x0020(v1)             # 00000020
    lh      t5, 0x0022(v1)             # 00000022
    lh      t0, 0x14B0(v0)             # 801214B0
    lh      t2, 0x14B2(v0)             # 801214B2
    lh      t4, 0x14B4(v0)             # 801214B4
    addu    a0, t0, t1                 
    addu    a1, t2, t3                 
    addu    a2, t4, t5                 
    sll     a2, a2, 16                 
    sll     a1, a1, 16                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    sra     a1, a1, 16                 
    jal     func_800AAF00              
    sra     a2, a2, 16                 
    lui     $at, %hi(var_808F278C)     # $at = 808F0000
    lwc1    $f12, %lo(var_808F278C)($at) 
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f14                  # $f14 = -1.00
    lui     a2, 0x4040                 # a2 = 40400000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0024($sp)            
    jal     func_800AB8D8              
    addiu   a0, a0, 0x0140             # a0 = 00000140
    jal     func_800AA740              
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFB4
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFAC
    jal     func_800ABF50              
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8009DB54              
    lw      a0, 0x0088($sp)            
    bne     v0, $zero, lbl_808EF8E4    
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0036($sp)            
    jal     func_808EEC60              
    addiu   a2, $zero, 0x0012          # a2 = 00000012
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0034($sp)            
    jal     func_808EF060              
    addiu   a2, $zero, 0x0013          # a2 = 00000013
    lw      a0, 0x009C($sp)            
    lh      a1, 0x0038($sp)            
    jal     func_808EED90              
    addiu   a2, $zero, 0x0014          # a2 = 00000014
lbl_808EF8E4:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lw      t7, 0x0020($sp)            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t6, 0x14B6(v0)             # 801214B6
    lh      t9, 0x14B8(v0)             # 801214B8
    lh      t1, 0x14BA(v0)             # 801214BA
    lh      t8, 0x0024(t7)             # 00000024
    lh      t0, 0x0026(t7)             # 00000026
    lh      t2, 0x0028(t7)             # 00000028
    addu    a0, t6, t8                 
    addu    a1, t9, t0                 
    addu    a2, t1, t2                 
    sll     a2, a2, 16                 
    sll     a1, a1, 16                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    sra     a1, a1, 16                 
    jal     func_800AAF00              
    sra     a2, a2, 16                 
    lui     $at, 0xC3DF                # $at = C3DF0000
    mtc1    $at, $f12                  # $f12 = -446.00
    lui     $at, 0xC250                # $at = C2500000
    mtc1    $at, $f14                  # $f14 = -52.00
    lui     a2, 0xC2A8                 # a2 = C2A80000
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a0, 0x0024($sp)            
    jal     func_800AB8D8              
    addiu   a0, a0, 0x0180             # a0 = 00000180
    jal     func_800AA724              
    nop
    jal     func_800AA724              
    nop
    lw      t4, 0x009C($sp)            
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x023C(t4)             # 0000023C
lbl_808EF978:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0088           # $sp = 00000000
    jr      $ra                        
    nop


func_808EF98C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a2, 0x0040($sp)            
    sw      a3, 0x0044($sp)            
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     a1, $at, lbl_808EFAC8      
    lw      t6, 0x0048($sp)            
    lw      t7, 0x0244(t6)             # 00000244
    beql    t7, $zero, lbl_808EF9EC    
    lw      v0, 0x1C44(a0)             # 00001C44
    lhu     t8, 0x1D74(a0)             # 00001D74
    lw      t9, 0x004C($sp)            
    lui     t1, 0xDE00                 # t1 = DE000000
    slti    $at, t8, 0x0384            
    bnel    $at, $zero, lbl_808EF9EC   
    lw      v0, 0x1C44(a0)             # 00001C44
    lw      v1, 0x0000(t9)             # 00000000
    lui     t2, 0x0601                 # t2 = 06010000
    addiu   t2, t2, 0xBAE8             # t2 = 0600BAE8
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x0000(t9)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v0, 0x1C44(a0)             # 00001C44
lbl_808EF9EC:
    sw      a0, 0x0038($sp)            
    jal     func_800AA6EC              
    sw      v0, 0x0024($sp)            
    lw      v0, 0x0024($sp)            
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lui     t4, 0x0601                 # t4 = 06010000
    lbu     t3, 0x014D(v0)             # 0000014D
    addiu   t4, t4, 0xBAE8             # t4 = 0600BAE8
    addiu   a0, v0, 0x0A10             # a0 = 00000A10
    bne     t3, $at, lbl_808EFAC0      
    nop
    jal     func_800AA764              
    sw      t4, 0x0018($sp)            
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f12                  # $f12 = 180.00
    lui     $at, %hi(var_808F2790)     # $at = 808F0000
    lui     a2, 0xC3BB                 # a2 = C3BB0000
    ori     a2, a2, 0x8000             # a2 = C3BB8000
    lwc1    $f14, %lo(var_808F2790)($at) 
    jal     func_800AA7F4              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   a0, $zero, 0xA219          # a0 = FFFFA219
    addiu   a1, $zero, 0xAC17          # a1 = FFFFAC17
    addiu   a2, $zero, 0x3333          # a2 = 00003333
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_808F2794)     # $at = 808F0000
    lwc1    $f12, %lo(var_808F2794)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      v0, 0x004C($sp)            
    lw      v1, 0x0000(v0)             # 00000000
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x0000(v0)             # 00000000
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0038($sp)            
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      t8, 0x004C($sp)            
    lw      v1, 0x0000(t8)             # 00000000
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x0000(t8)             # 00000000
    sw      t9, 0x0000(v1)             # 00000000
    lw      t1, 0x0018($sp)            
    sw      t1, 0x0004(v1)             # 00000004
lbl_808EFAC0:
    jal     func_800AA724              
    nop
lbl_808EFAC8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFAD8:
    lw      v0, 0x0264(a0)             # 00000264
    lui     t8, 0x0001                 # t8 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t6, v0,  4                 
    addu    t6, t6, v0                 
    sll     t6, t6,  2                 
    addu    t7, a1, t6                 
    addu    t8, t8, t7                 
    lw      t8, 0x17B4(t8)             # 000117B4
    addu    t9, t8, $at                
    lui     $at, 0x8012                # $at = 80120000
    sw      t9, 0x0C50($at)            # 80120C50
    jr      $ra                        
    nop


func_808EFB10:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    jal     func_8008A194              
    lw      a0, 0x002C($sp)            
    lw      t6, 0x0038($sp)            
    lw      a0, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    bne     t6, $zero, lbl_808EFB5C    
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f12                  # $f12 = 1.00
    beq     $zero, $zero, lbl_808EFB70 
    cvt.s.w $f2, $f4                   
lbl_808EFB5C:
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f12                  # $f12 = -1.00
    cvt.s.w $f0, $f6                   
lbl_808EFB70:
    lbu     t7, 0x0033($sp)            
    lwc1    $f8, 0x0034($sp)           
    mfc1    a2, $f12                   
    mfc1    a3, $f0                    
    swc1    $f2, 0x0010($sp)           
    sw      t7, 0x0014($sp)            
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFBA0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xB5FC             # a1 = 0600B5FC
    lw      a0, 0x0020($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x018C(t7)             # 0000018C
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_808EFBE4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x4160                 # a1 = 41600000
    jal     func_8008D6A8              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_808EFC14    
    lw      a0, 0x0018($sp)            
    addiu   a0, a0, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x0802          # a1 = 00000802
lbl_808EFC14:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFC24:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lhu     v0, 0x1D74(a0)             # 00001D74
    slti    $at, v0, 0x033E            
    bne     $at, $zero, lbl_808EFC4C   
    slti    $at, v0, 0x0439            
    beql    $at, $zero, lbl_808EFC50   
    lw      $ra, 0x0014($sp)           
    jal     func_80064738              
    addiu   a0, $zero, 0x2098          # a0 = 00002098
lbl_808EFC4C:
    lw      $ra, 0x0014($sp)           
lbl_808EFC50:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFC5C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x2086          # a1 = 00002086
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFC84:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x39C7          # a1 = 000039C7
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFCAC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x6878          # a1 = 00006878
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFCD4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x6879          # a1 = 00006879
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFCFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x6875          # a1 = 00006875
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFD24:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)           
    sw      a0, 0x0030($sp)            
    lw      t6, 0x0030($sp)            
    lui     $at, 0x42A0                # $at = 42A00000
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    lw      t7, 0x0234(t6)             # 00000234
    addiu   a2, $zero, 0x008B          # a2 = 0000008B
    bnel    t7, $zero, lbl_808EFDA8    
    lw      $ra, 0x002C($sp)           
    lw      v0, 0x1C44(a1)             # 00001C44
    mtc1    $at, $f6                   # $f6 = 80.00
    addiu   t8, $zero, 0x0017          # t8 = 00000017
    lwc1    $f0, 0x0024(v0)            # 00000024
    lwc1    $f4, 0x0028(v0)            # 00000028
    lwc1    $f12, 0x002C(v0)           # 0000002C
    mfc1    a3, $f0                    
    add.s   $f2, $f4, $f6              
    sw      a1, 0x0034($sp)            
    sw      t8, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    swc1    $f2, 0x0010($sp)           
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80025110              # ActorSpawn
    swc1    $f12, 0x0014($sp)          
    lw      a0, 0x0034($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0012          # a1 = 00000012
    lw      t0, 0x0030($sp)            
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0234(t0)             # 00000234
    lw      $ra, 0x002C($sp)           
lbl_808EFDA8:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFDB4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    lw      t6, 0x0240(s0)             # 00000240
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x005D          # a2 = 0000005D
    bne     t6, $zero, lbl_808EFE0C    
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    lwc1    $f0, 0x0024(s0)            # 00000024
    lwc1    $f2, 0x0028(s0)            # 00000028
    lwc1    $f12, 0x002C(s0)           # 0000002C
    mfc1    a3, $f0                    
    sw      t7, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    swc1    $f2, 0x0010($sp)           
    jal     func_80025110              # ActorSpawn
    swc1    $f12, 0x0014($sp)          
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0240(s0)             # 00000240
lbl_808EFE0C:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFE20:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0238(s0)             # 00000238
    lui     t7, 0x8012                 # t7 = 80120000
    bnel    t6, $zero, lbl_808EFEB0    
    lw      $ra, 0x003C($sp)           
    lw      t7, -0x4600(t7)            # 8011BA00
    lui     $at, 0xC1D0                # $at = C1D00000
    mtc1    $at, $f8                   # $f8 = -26.00
    lh      t8, 0x145E(t7)             # 8012145E
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f0, 0x0024(s0)            # 00000024
    mtc1    t8, $f4                    # $f4 = 0.00
    lwc1    $f12, 0x002C(s0)           # 0000002C
    addiu   t9, $zero, 0x4000          # t9 = 00004000
    cvt.s.w $f6, $f4                   
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sw      t0, 0x0028($sp)            
    sw      t9, 0x0020($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x001C($sp)         
    add.s   $f10, $f6, $f8             
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    add.s   $f2, $f10, $f16            
    swc1    $f0, 0x0010($sp)           
    swc1    $f12, 0x0018($sp)          
    jal     func_800253F0              
    swc1    $f2, 0x0014($sp)           
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0238(s0)             # 00000238
    lw      $ra, 0x003C($sp)           
lbl_808EFEB0:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFEC0:
    lw      v0, 0x011C(a0)             # 0000011C
    beq     v0, $zero, lbl_808EFF0C    
    nop
    lwc1    $f4, 0x0024(a0)            # 00000024
    lui     t6, 0x8012                 # t6 = 80120000
    lui     $at, 0xC1D0                # $at = C1D00000
    swc1    $f4, 0x0024(v0)            # 00000024
    lw      t6, -0x4600(t6)            # 8011BA00
    mtc1    $at, $f10                  # $f10 = -26.00
    lwc1    $f18, 0x0028(a0)           # 00000028
    lh      t7, 0x145E(t6)             # 8012145E
    mtc1    t7, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    add.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0028(v0)            # 00000028
    lwc1    $f6, 0x002C(a0)            # 0000002C
    swc1    $f6, 0x002C(v0)            # 0000002C
lbl_808EFF0C:
    jr      $ra                        
    nop


func_808EFF14:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_808EEBB8              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_808EFFE8    
    lw      t6, 0x0044($sp)            
    lhu     a0, 0x0004(v0)             # 00000004
    lhu     a1, 0x0002(v0)             # 00000002
    lhu     a2, 0x1D74(t6)             # 00001D74
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sw      t7, 0x0010($sp)            
    sw      v0, 0x003C($sp)            
    jal     func_8005C714              
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    lw      v1, 0x003C($sp)            
    lw      v0, 0x0040($sp)            
    lw      t9, 0x0010(v1)             # 00000010
    lw      t8, 0x000C(v1)             # 0000000C
    lw      t1, 0x0018(v1)             # 00000018
    lw      t0, 0x0014(v1)             # 00000014
    mtc1    t9, $f6                    # $f6 = 0.00
    lw      t3, 0x0020(v1)             # 00000020
    mtc1    t8, $f4                    # $f4 = 0.00
    lw      t2, 0x001C(v1)             # 0000001C
    mtc1    t1, $f10                   # $f10 = 0.00
    cvt.s.w $f12, $f6                  
    mtc1    t0, $f8                    # $f8 = 0.00
    mtc1    t3, $f6                    # $f6 = 0.00
    addiu   v0, v0, 0x0024             # v0 = 00000024
    cvt.s.w $f2, $f4                   
    mtc1    t2, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10                 
    cvt.s.w $f14, $f8                  
    cvt.s.w $f8, $f6                   
    cvt.s.w $f18, $f4                  
    swc1    $f8, 0x0020($sp)           
    sub.s   $f10, $f16, $f2            
    sub.s   $f8, $f18, $f12            
    mul.s   $f4, $f10, $f0             
    nop
    mul.s   $f10, $f8, $f0             
    add.s   $f6, $f4, $f2              
    add.s   $f4, $f10, $f12            
    swc1    $f6, 0x0000(v0)            # 00000024
    swc1    $f4, 0x0004(v0)            # 00000028
    lwc1    $f6, 0x0020($sp)           
    sub.s   $f8, $f6, $f14             
    mul.s   $f10, $f8, $f0             
    add.s   $f4, $f10, $f14            
    swc1    $f4, 0x0008(v0)            # 0000002C
lbl_808EFFE8:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_808EFFF8:
    lw      v0, 0x011C(a0)             # 0000011C
    beq     v0, $zero, lbl_808F0014    
    nop
    mtc1    a1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0198(v0)            # 00000198
lbl_808F0014:
    jr      $ra                        
    nop


func_808F001C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_808EEBB8              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_808F0084    
    lw      t6, 0x001C($sp)            
    lhu     a0, 0x0004(v0)             # 00000004
    lhu     a1, 0x0002(v0)             # 00000002
    jal     func_8005C690              
    lhu     a2, 0x1D74(t6)             # 00001D74
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f8                   # $f8 = 255.00
    sub.s   $f6, $f4, $f0              
    lw      a0, 0x0018($sp)            
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    a1, $f16                   
    nop
    sw      a1, 0x0198(a0)             # 00000198
    jal     func_808EFFF8              
    sb      a1, 0x00C8(a0)             # 000000C8
lbl_808F0084:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0094:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x018C(a0)             # 0000018C
    sw      $zero, 0x0190(a0)          # 00000190
    sb      $zero, 0x00C8(a0)          # 000000C8
    jr      $ra                        
    nop


func_808F00B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_808EEBB8              
    sw      a2, 0x0018($sp)            
    lw      t6, 0x000C(v0)             # 0000000C
    lw      a2, 0x0018($sp)            
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0024(a2)            # 00000024
    lw      t7, 0x0010(v0)             # 00000010
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0028(a2)           # 00000028
    lw      t8, 0x0014(v0)             # 00000014
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x002C(a2)           # 0000002C
    lh      v1, 0x0008(v0)             # 00000008
    sb      t9, 0x00C8(a2)             # 000000C8
    sw      t0, 0x018C(a2)             # 0000018C
    sw      t1, 0x0190(a2)             # 00000190
    sh      v1, 0x00B6(a2)             # 000000B6
    sh      v1, 0x0032(a2)             # 00000032
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_808F013C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_808EEBB8              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t6, 0x0018(v0)             # 00000018
    lw      t7, 0x000C(v0)             # 0000000C
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x03BC             # a1 = 060003BC
    subu    t8, t6, t7                 
    mtc1    t8, $f4                    # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    cvt.s.w $f6, $f4                   
    lui     a3, 0xC140                 # a3 = C1400000
    swc1    $f6, 0x0034($sp)           
    lw      t0, 0x0014(v0)             # 00000014
    lw      t9, 0x0020(v0)             # 00000020
    sw      $zero, 0x0010($sp)         
    subu    t1, t9, t0                 
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    jal     func_808EFB10              
    swc1    $f10, 0x0030($sp)          
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t2, 0x018C(s0)             # 0000018C
    sw      t3, 0x0190(s0)             # 00000190
    addiu   v1, s0, 0x00B4             # v1 = 000000B4
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    swc1    $f16, 0x022C(s0)           # 0000022C
    sb      t4, 0x0014(v1)             # 000000C8
    sw      v1, 0x0028($sp)            
    lwc1    $f14, 0x0030($sp)          
    jal     func_800CD76C              
    lwc1    $f12, 0x0034($sp)          
    lui     $at, %hi(var_808F2798)     # $at = 808F0000
    lwc1    $f18, %lo(var_808F2798)($at) 
    lw      v1, 0x0028($sp)            
    mul.s   $f4, $f0, $f18             
    trunc.w.s $f6, $f4                   
    mfc1    v0, $f6                    
    nop
    sh      v0, 0x0002(v1)             # 00000002
    sh      v0, 0x0032(s0)             # 00000032
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_808F0214:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_808EEBB8              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_808F0254    
    lw      t6, 0x001C($sp)            
    lhu     t7, 0x1D74(t6)             # 00001D74
    lhu     t8, 0x0004(v0)             # 00000004
    lw      t0, 0x0018($sp)            
    slt     $at, t7, t8                
    bne     $at, $zero, lbl_808F0254   
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sw      t9, 0x018C(t0)             # 0000018C
lbl_808F0254:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0264:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x22D0             # a1 = 060022D0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    sb      t8, 0x00C8(a0)             # 000000C8
    swc1    $f4, 0x026C(a0)            # 0000026C
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F02C0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    beq     a1, $zero, lbl_808F02FC    
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2750             # a1 = 06002750
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
lbl_808F02FC:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F030C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x325C             # a1 = 0600325C
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    jal     func_808EEB34              
    swc1    $f4, 0x026C(a0)            # 0000026C
    lw      a0, 0x0020($sp)            
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sb      t8, 0x00C8(a0)             # 000000C8
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_808F0370:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    beq     a1, $zero, lbl_808F03A8    
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3538             # a1 = 06003538
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sw      t6, 0x018C(t7)             # 0000018C
lbl_808F03A8:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F03B8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0A50             # a1 = 06000A50
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    sb      t8, 0x00C8(a0)             # 000000C8
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F040C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    beq     a1, $zero, lbl_808F0444    
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0EB0             # a1 = 06000EB0
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sw      t6, 0x018C(t7)             # 0000018C
lbl_808F0444:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0454:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_808EFD24              
    lw      a0, 0x0018($sp)            
    lw      t7, 0x0018($sp)            
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    sw      t6, 0x018C(t7)             # 0000018C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_808F0480:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_808EFDB4              
    lw      a0, 0x0018($sp)            
    lw      t7, 0x0018($sp)            
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    sw      t6, 0x018C(t7)             # 0000018C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_808F04AC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xB5FC             # a1 = 0600B5FC
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    sb      t8, 0x00C8(a0)             # 000000C8
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0500:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xAAD4             # a1 = 0600AAD4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x018C(s0)             # 0000018C
    sw      t7, 0x0190(s0)             # 00000190
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEAFC              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB34              
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sb      t8, 0x00C8(s0)             # 000000C8
    jal     func_808EFCAC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808F057C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    beq     a1, $zero, lbl_808F05B4    
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xAFE0             # a1 = 0600AFE0
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    sw      t6, 0x018C(t7)             # 0000018C
lbl_808F05B4:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F05C4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1670             # a1 = 06001670
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    sb      t8, 0x00C8(a0)             # 000000C8
    jal     func_808EFE20              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_808EEAFC              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F062C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    beq     a1, $zero, lbl_808F0664    
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1B48             # a1 = 06001B48
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x0011          # t6 = 00000011
    sw      t6, 0x018C(t7)             # 0000018C
lbl_808F0664:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0674:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2B14             # a1 = 06002B14
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    sb      t8, 0x00C8(a0)             # 000000C8
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F06C8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    beq     a1, $zero, lbl_808F0700    
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2F30             # a1 = 06002F30
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0013          # t6 = 00000013
    jal     func_808EFCD4              
    sw      t6, 0x018C(a0)             # 0000018C
lbl_808F0700:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0710:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1010             # a1 = 06001010
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    sw      t6, 0x018C(a0)             # 0000018C
    jal     func_808EEAFC              
    sw      t7, 0x0190(a0)             # 00000190
    lw      a0, 0x0020($sp)            
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sb      t8, 0x00C8(a0)             # 000000C8
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_808F076C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    beq     a1, $zero, lbl_808F07A4    
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x13A0             # a1 = 060013A0
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0015          # t6 = 00000015
    jal     func_808EFCFC              
    sw      t6, 0x018C(a0)             # 0000018C
lbl_808F07A4:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F07B4:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x0016          # t6 = 00000016
    sw      t6, 0x018C(a0)             # 0000018C
    jr      $ra                        
    nop


func_808F07C8:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x0017          # t6 = 00000017
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    sw      t8, 0x0198(a0)             # 00000198
    jr      $ra                        
    nop


func_808F07EC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x001C($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_808EEBB8              
    sw      a2, 0x0018($sp)            
    beq     v0, $zero, lbl_808F0840    
    lw      a2, 0x0018($sp)            
    lw      t6, 0x001C($sp)            
    lhu     t8, 0x0004(v0)             # 00000004
    addiu   t9, $zero, 0x0018          # t9 = 00000018
    lhu     t7, 0x1D74(t6)             # 00001D74
    or      a0, a2, $zero              # a0 = 00000000
    slt     $at, t7, t8                
    bnel    $at, $zero, lbl_808F0844   
    lw      $ra, 0x0014($sp)           
    sw      t9, 0x018C(a2)             # 0000018C
    jal     func_808EFC84              
    sw      $zero, 0x0190(a2)          # 00000190
lbl_808F0840:
    lw      $ra, 0x0014($sp)           
lbl_808F0844:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0850:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_808EEBB8              
    sw      a2, 0x002C($sp)            
    beq     v0, $zero, lbl_808F09E0    
    lw      a2, 0x002C($sp)            
    lhu     t6, 0x0000(v0)             # 00000000
    sw      t6, 0x0020($sp)            
    lw      v1, 0x0230(s0)             # 00000230
    addiu   t8, t6, 0xFFFF             # t8 = FFFFFFFF
    sltiu   $at, t8, 0x000F            
    beql    t6, v1, lbl_808F09E4       
    lw      $ra, 0x001C($sp)           
    beq     $at, $zero, lbl_808F09D8   
    sll     t8, t8,  2                 
    lui     $at, %hi(var_808F279C)     # $at = 808F0000
    addu    $at, $at, t8               
    lw      t8, %lo(var_808F279C)($at) 
    jr      t8                         
    nop
var_808F08B4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0094              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F08C8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F00B0              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F08DC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F013C              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F08F0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0264              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F0904:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F030C              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F0918:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F03B8              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F092C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0454              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F0940:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F04AC              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F0954:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0500              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F0968:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F05C4              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F097C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0674              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F0990:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0710              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F09A4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F07B4              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F09B8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F07C8              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F09DC 
    lw      t9, 0x0020($sp)            
var_808F09CC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0480              
    or      a1, a2, $zero              # a1 = 00000000
lbl_808F09D8:
    lw      t9, 0x0020($sp)            
lbl_808F09DC:
    sw      t9, 0x0230(s0)             # 00000230
lbl_808F09E0:
    lw      $ra, 0x001C($sp)           
lbl_808F09E4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808F09F4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F0850              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0A2C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE7C4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0850              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0A88:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    jal     func_808EFBE4              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE7C4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFF14              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0214              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0AF8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE7C4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0850              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0B54:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE854              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F02C0              
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0BB0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EEB4C              
    lw      a1, 0x001C($sp)            
    jal     func_808EEB94              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F0850              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0BFC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE908              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0370              
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0C58:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE7C4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0850              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0CB4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE7C4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F040C              
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0D10:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE7C4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0850              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0D6C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE7C4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0850              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0DC8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE7C4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0850              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0E24:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    jal     func_808EFC24              
    lw      a0, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE7C4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0850              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0E88:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    jal     func_808EFC24              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EEB4C              
    lw      a1, 0x001C($sp)            
    jal     func_808EEB94              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F057C              
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0EDC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    jal     func_808EFC24              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EEB4C              
    lw      a1, 0x001C($sp)            
    jal     func_808EEB94              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F0850              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0F30:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    jal     func_808EFC24              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EEB4C              
    lw      a1, 0x001C($sp)            
    jal     func_808EEB94              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F062C              
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0F84:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    jal     func_808EFC24              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EEB4C              
    lw      a1, 0x001C($sp)            
    jal     func_808EEB94              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F0850              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F0FD8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    jal     func_808EFC24              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EEB4C              
    lw      a1, 0x001C($sp)            
    jal     func_808EEB94              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F06C8              
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F102C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    jal     func_808EFC24              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EEB4C              
    lw      a1, 0x001C($sp)            
    jal     func_808EEB94              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F0850              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1080:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    jal     func_808EFC24              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EEB4C              
    lw      a1, 0x001C($sp)            
    jal     func_808EEB94              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F076C              
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F10D4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFEC0              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0850              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1130:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    jal     func_808EFC5C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFF14              
    lw      a1, 0x0024($sp)            
    jal     func_808EFEC0              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F0850              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F11A0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F001C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F07EC              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1200:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_808EEBB8              
    or      a1, $zero, $zero           # a1 = 00000000
    bne     v0, $zero, lbl_808F1240    
    lw      t6, 0x0018($sp)            
    lw      a0, 0x011C(t6)             # 0000011C
    beq     a0, $zero, lbl_808F1238    
    nop
    jal     func_80020EB4              
    nop
lbl_808F1238:
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
lbl_808F1240:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1250:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA15C             # a1 = 0600A15C
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x0019          # t6 = 00000019
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0244(a0)             # 00000244
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F129C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)           
    sw      a0, 0x0030($sp)            
    lw      t6, 0x0030($sp)            
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    lw      t7, 0x0240(t6)             # 00000240
    bnel    t7, $zero, lbl_808F1304    
    lw      $ra, 0x002C($sp)           
    lw      v0, 0x1C44(a1)             # 00001C44
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    addiu   a2, $zero, 0x005D          # a2 = 0000005D
    lwc1    $f0, 0x0024(v0)            # 00000024
    lwc1    $f2, 0x0028(v0)            # 00000028
    lwc1    $f12, 0x002C(v0)           # 0000002C
    mfc1    a3, $f0                    
    sw      t8, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    swc1    $f2, 0x0010($sp)           
    jal     func_80025110              # ActorSpawn
    swc1    $f12, 0x0014($sp)          
    lw      t0, 0x0030($sp)            
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0240(t0)             # 00000240
    lw      $ra, 0x002C($sp)           
lbl_808F1304:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1310:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_808EE7C4              
    sw      a0, 0x0018($sp)            
    lw      t6, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lhu     t7, 0x1D74(t6)             # 00001D74
    slti    $at, t7, 0x01AF            
    beq     $at, $zero, lbl_808F134C   
    nop
    jal     func_808EEB34              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_808F1358 
    lw      $ra, 0x0014($sp)           
lbl_808F134C:
    jal     func_808EEB34              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_808F1358:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1364:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_808EE854              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EEB34              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1398:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lhu     t6, 0x1D74(a1)             # 00001D74
    lw      a0, 0x0018($sp)            
    slti    $at, t6, 0x03DC            
    beq     $at, $zero, lbl_808F13D4   
    nop
    jal     func_808EEAFC              
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    lw      a0, 0x0018($sp)            
    jal     func_808EEB1C              
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    beq     $zero, $zero, lbl_808F13E0 
    lw      a0, 0x0018($sp)            
lbl_808F13D4:
    jal     func_808EE7C4              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
lbl_808F13E0:
    jal     func_808EEB34              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F13F8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_808EE7C4              
    sw      a0, 0x0018($sp)            
    lw      t6, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lhu     t7, 0x1D74(t6)             # 00001D74
    slti    $at, t7, 0x04A6            
    beq     $at, $zero, lbl_808F1434   
    nop
    jal     func_808EEB34              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_808F1440 
    lw      $ra, 0x0014($sp)           
lbl_808F1434:
    jal     func_808EEB34              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_808F1440:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F144C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x013D(a0)             # 0000013D
    beql    t6, $zero, lbl_808F1474    
    lhu     t7, 0x1D74(a1)             # 00001D74
    jal     func_808EE7C4              
    nop
    beq     $zero, $zero, lbl_808F14B8 
    lw      $ra, 0x0014($sp)           
    lhu     t7, 0x1D74(a1)             # 00001D74
lbl_808F1474:
    slti    $at, t7, 0x05F0            
    beql    $at, $zero, lbl_808F1494   
    lhu     t8, 0x1D74(a1)             # 00001D74
    jal     func_808EE9CC              
    nop
    beq     $zero, $zero, lbl_808F14B8 
    lw      $ra, 0x0014($sp)           
    lhu     t8, 0x1D74(a1)             # 00001D74
lbl_808F1494:
    addiu   $at, $zero, 0x05F0         # $at = 000005F0
    bne     t8, $at, lbl_808F14AC      
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    beq     $zero, $zero, lbl_808F14B4 
    swc1    $f4, 0x026C(a0)            # 0000026C
lbl_808F14AC:
    jal     func_808EEA5C              
    nop
lbl_808F14B4:
    lw      $ra, 0x0014($sp)           
lbl_808F14B8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F14C4:
    addiu   t6, $zero, 0x0019          # t6 = 00000019
    sw      t6, 0x018C(a0)             # 0000018C
    sw      $zero, 0x0190(a0)          # 00000190
    sb      $zero, 0x00C8(a0)          # 000000C8
    jr      $ra                        
    nop


func_808F14DC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA15C             # a1 = 0600A15C
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_808EEBE0              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0020($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x001A          # t6 = 0000001A
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    sb      t8, 0x00C8(a0)             # 000000C8
    swc1    $f4, 0x026C(a0)            # 0000026C
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1548:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    beq     a1, $zero, lbl_808F156C    
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x87B8             # a1 = 060087B8
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
lbl_808F156C:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F157C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7D0C             # a1 = 06007D0C
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x001B          # t6 = 0000001B
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    sb      t8, 0x00C8(a0)             # 000000C8
    swc1    $f4, 0x026C(a0)            # 0000026C
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F15D4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    beq     a1, $zero, lbl_808F15F8    
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9AD4             # a1 = 06009AD4
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
lbl_808F15F8:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1608:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x90D8             # a1 = 060090D8
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x001C          # t6 = 0000001C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    sb      t8, 0x00C8(a0)             # 000000C8
    swc1    $f4, 0x026C(a0)            # 0000026C
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1660:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    beq     a1, $zero, lbl_808F1684    
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x6778             # a1 = 06006778
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
lbl_808F1684:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1694:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5F40             # a1 = 06005F40
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    addiu   t6, $zero, 0x001D          # t6 = 0000001D
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    sb      t8, 0x00C8(a0)             # 000000C8
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F16E4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    beq     a1, $zero, lbl_808F171C    
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2750             # a1 = 06002750
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x001F          # t6 = 0000001F
    sw      t6, 0x018C(t7)             # 0000018C
lbl_808F171C:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F172C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x22D0             # a1 = 060022D0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t6, 0x018C(a0)             # 0000018C
    sw      t7, 0x0190(a0)             # 00000190
    sb      t8, 0x00C8(a0)             # 000000C8
    swc1    $f4, 0x026C(a0)            # 0000026C
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1784:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    beq     a1, $zero, lbl_808F17BC    
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xA79C             # a1 = 0600A79C
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t6, 0x0020($sp)            
    swc1    $f4, 0x026C(t6)            # 0000026C
lbl_808F17BC:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F17CC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    lui     v0, 0x0600                 # v0 = 06000000
    addiu   v0, v0, 0x4900             # v0 = 06004900
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
    addu    a1, t9, t0                 
    addu    a1, a1, $at                
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    sw      $zero, 0x0010($sp)         
    jal     func_808EFB10              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    sw      t1, 0x018C(a0)             # 0000018C
    sw      t2, 0x0190(a0)             # 00000190
    sb      t3, 0x00C8(a0)             # 000000C8
    swc1    $f4, 0x026C(a0)            # 0000026C
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1854:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_808EEBB8              
    sw      a2, 0x002C($sp)            
    beq     v0, $zero, lbl_808F1940    
    lw      a2, 0x002C($sp)            
    lhu     t6, 0x0000(v0)             # 00000000
    sw      t6, 0x0020($sp)            
    lw      v1, 0x0230(s0)             # 00000230
    addiu   t8, t6, 0xFFFF             # t8 = FFFFFFFF
    sltiu   $at, t8, 0x0015            
    beql    t6, v1, lbl_808F1944       
    lw      $ra, 0x001C($sp)           
    beq     $at, $zero, lbl_808F1938   
    sll     t8, t8,  2                 
    lui     $at, %hi(var_808F27D8)     # $at = 808F0000
    addu    $at, $at, t8               
    lw      t8, %lo(var_808F27D8)($at) 
    jr      t8                         
    nop
var_808F18B8:
    jal     func_808F14C4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F193C 
    lw      t9, 0x0020($sp)            
var_808F18C8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F14DC              
    or      a1, a2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_808F193C 
    lw      t9, 0x0020($sp)            
var_808F18DC:
    jal     func_808F157C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F193C 
    lw      t9, 0x0020($sp)            
var_808F18EC:
    jal     func_808F1608              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F193C 
    lw      t9, 0x0020($sp)            
var_808F18FC:
    jal     func_808F1694              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F193C 
    lw      t9, 0x0020($sp)            
var_808F190C:
    jal     func_808F172C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F193C 
    lw      t9, 0x0020($sp)            
var_808F191C:
    jal     func_808F17CC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F193C 
    lw      t9, 0x0020($sp)            
var_808F192C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F129C              
    or      a1, a2, $zero              # a1 = 00000000
lbl_808F1938:
    lw      t9, 0x0020($sp)            
lbl_808F193C:
    sw      t9, 0x0230(s0)             # 00000230
lbl_808F1940:
    lw      $ra, 0x001C($sp)           
lbl_808F1944:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1954:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F1854              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F198C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1310              
    lw      a1, 0x0024($sp)            
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1854              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F19EC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    jal     func_808EE7C4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1548              
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1854              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1A54:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1398              
    lw      a1, 0x0024($sp)            
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F15D4              
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1854              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1AC0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F13F8              
    lw      a1, 0x0024($sp)            
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1660              
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1854              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1B2C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1364              
    lw      a1, 0x0024($sp)            
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F16E4              
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1B8C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EEB4C              
    lw      a1, 0x001C($sp)            
    jal     func_808EEB94              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F1854              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1BD8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F144C              
    lw      a1, 0x0024($sp)            
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1784              
    or      a1, v0, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1854              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1C44:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x0021          # t6 = 00000021
    sw      t6, 0x018C(a0)             # 0000018C
    sw      $zero, 0x0190(a0)          # 00000190
    sb      $zero, 0x00C8(a0)          # 000000C8
    jr      $ra                        
    nop


func_808F1C60:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x40C0                 # a1 = 40C00000
    bne     v0, $zero, lbl_808F1C9C    
    lw      a0, 0x0020($sp)            
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beql    v0, $zero, lbl_808F1CD0    
    lw      $ra, 0x001C($sp)           
lbl_808F1C9C:
    lhu     t6, 0x0088(s0)             # 00000088
    lw      a0, 0x003C($sp)            
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_808F1CCC    
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800345DC              
    lbu     a2, 0x007D(s0)             # 0000007D
    addiu   v1, v0, 0x0800             # v1 = 00000800
    andi    a1, v1, 0xFFFF             # a1 = 00000800
    jal     func_80064780              
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
lbl_808F1CCC:
    lw      $ra, 0x001C($sp)           
lbl_808F1CD0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1CE0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_808EEBB8              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_808F1DD4    
    lw      t6, 0x0044($sp)            
    lhu     a0, 0x0004(v0)             # 00000004
    lhu     a1, 0x0002(v0)             # 00000002
    lhu     a2, 0x1D74(t6)             # 00001D74
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sw      t7, 0x0010($sp)            
    sw      v0, 0x003C($sp)            
    jal     func_8005C714              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      v1, 0x003C($sp)            
    lw      a0, 0x0040($sp)            
    lw      t9, 0x0010(v1)             # 00000010
    lw      t8, 0x000C(v1)             # 0000000C
    lw      t1, 0x0018(v1)             # 00000018
    lw      t0, 0x0014(v1)             # 00000014
    mtc1    t9, $f6                    # $f6 = 0.00
    lw      t3, 0x0020(v1)             # 00000020
    mtc1    t8, $f4                    # $f4 = 0.00
    lw      t2, 0x001C(v1)             # 0000001C
    mtc1    t1, $f10                   # $f10 = 0.00
    cvt.s.w $f12, $f6                  
    mtc1    t0, $f8                    # $f8 = 0.00
    mtc1    t3, $f6                    # $f6 = 0.00
    addiu   v0, a0, 0x0024             # v0 = 00000024
    cvt.s.w $f2, $f4                   
    mtc1    t2, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10                 
    cvt.s.w $f14, $f8                  
    cvt.s.w $f8, $f6                   
    cvt.s.w $f18, $f4                  
    swc1    $f8, 0x0020($sp)           
    sub.s   $f10, $f16, $f2            
    sub.s   $f8, $f18, $f12            
    mul.s   $f4, $f10, $f0             
    nop
    mul.s   $f10, $f8, $f0             
    add.s   $f6, $f4, $f2              
    add.s   $f4, $f10, $f12            
    swc1    $f6, 0x0000(v0)            # 00000024
    swc1    $f4, 0x0004(v0)            # 00000028
    lwc1    $f6, 0x0020($sp)           
    sub.s   $f8, $f6, $f14             
    mul.s   $f10, $f8, $f0             
    add.s   $f4, $f10, $f14            
    swc1    $f4, 0x0008(v0)            # 0000002C
    lw      t5, 0x0044($sp)            
    lhu     t4, 0x0004(v1)             # 00000004
    lhu     t6, 0x1D74(t5)             # 00001D74
    slt     $at, t4, t6                
    beq     $at, $zero, lbl_808F1DD4   
    nop
    jal     func_80020EB4              
    nop
lbl_808F1DD4:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1DE4:
    addiu   t6, $zero, 0x0021          # t6 = 00000021
    sw      t6, 0x018C(a0)             # 0000018C
    sw      $zero, 0x0190(a0)          # 00000190
    sb      $zero, 0x00C8(a0)          # 000000C8
    jr      $ra                        
    nop


func_808F1DFC:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_808EEBB8              
    or      a1, $zero, $zero           # a1 = 00000000
    lh      v1, 0x0008(v0)             # 00000008
    addiu   t0, s0, 0x00B4             # t0 = 000000B4
    lui     a1, 0x0601                 # a1 = 06010000
    sh      v1, 0x0002(t0)             # 000000B6
    sh      v1, 0x0032(s0)             # 00000032
    sw      t0, 0x0028($sp)            
    sw      $zero, 0x0010($sp)         
    addiu   a1, a1, 0xB224             # a1 = 0600B224
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_808EFB10              
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    lw      t0, 0x0028($sp)            
    addiu   t6, $zero, 0x0022          # t6 = 00000022
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x018C(s0)             # 0000018C
    sw      t7, 0x0190(s0)             # 00000190
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sb      t8, 0x0014(t0)             # 00000014
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1E7C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_808EEBB8              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_808F1EDC    
    lw      t7, 0x0024($sp)            
    lhu     t8, 0x1D74(t7)             # 00001D74
    lhu     t6, 0x0004(v0)             # 00000004
    lw      a0, 0x0020($sp)            
    addiu   t9, t8, 0xFFF8             # t9 = FFFFFFF8
    slt     $at, t9, t6                
    bne     $at, $zero, lbl_808F1EDC   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xB5FC             # a1 = 0600B5FC
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_808EFB10              
    sw      $zero, 0x0010($sp)         
    lw      t1, 0x0020($sp)            
    addiu   t0, $zero, 0x0023          # t0 = 00000023
    sw      t0, 0x018C(t1)             # 0000018C
lbl_808F1EDC:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1EEC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_808EEBB8              
    or      a1, $zero, $zero           # a1 = 00000000
    beql    v0, $zero, lbl_808F1F88    
    lw      $ra, 0x001C($sp)           
    lhu     a2, 0x0000(v0)             # 00000000
    lw      v1, 0x0230(s0)             # 00000230
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    a2, v1, lbl_808F1F88       
    lw      $ra, 0x001C($sp)           
    beq     a2, $at, lbl_808F1F50      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a2, $at, lbl_808F1F60      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     a2, $at, lbl_808F1F74      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F1F84 
    sw      a2, 0x0230(s0)             # 00000230
lbl_808F1F50:
    jal     func_808F1DE4              
    sw      a2, 0x0020($sp)            
    beq     $zero, $zero, lbl_808F1F80 
    lw      a2, 0x0020($sp)            
lbl_808F1F60:
    lw      a1, 0x002C($sp)            
    jal     func_808F1DFC              
    sw      a2, 0x0020($sp)            
    beq     $zero, $zero, lbl_808F1F80 
    lw      a2, 0x0020($sp)            
lbl_808F1F74:
    jal     func_80020EB4              
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
lbl_808F1F80:
    sw      a2, 0x0230(s0)             # 00000230
lbl_808F1F84:
    lw      $ra, 0x001C($sp)           
lbl_808F1F88:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1F98:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808EFAD8              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_808F1EEC              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F1FD0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EFAD8              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB4C              
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808EE7C4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808EEB94              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1C60              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1E7C              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F1CE0              
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_808F2048:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_808F2058:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_808F2080      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_808F2090      
    nop
    beq     $zero, $zero, lbl_808F20A0 
    nop
lbl_808F2080:
    jal     func_808F1250              
    nop
    beq     $zero, $zero, lbl_808F20AC 
    lw      $ra, 0x0014($sp)           
lbl_808F2090:
    jal     func_808F1C44              
    nop
    beq     $zero, $zero, lbl_808F20AC 
    lw      $ra, 0x0014($sp)           
lbl_808F20A0:
    jal     func_808EFBA0              
    nop
    lw      $ra, 0x0014($sp)           
lbl_808F20AC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F20B8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at                
    sw      a0, 0x001C($sp)            
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x014E          # a1 = 0000014E
    lw      a0, 0x001C($sp)            
    sw      v0, 0x0024($sp)            
    jal     func_80081688              
    or      a1, v0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_808F2134    
    lw      a0, 0x0030($sp)            
    lw      t6, 0x0024($sp)            
    sw      t6, 0x0264(a0)             # 00000264
    jal     func_808EFAD8              
    lw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x22D0             # a0 = 060022D0
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      t7, 0x0030($sp)            
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0268(t7)            # 00000268
    lw      a1, 0x0034($sp)            
    jal     func_808F2058              
    lw      a0, 0x0030($sp)            
lbl_808F2134:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808F2144:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x018C(a0)             # 0000018C
    bltz    v0, lbl_808F217C           
    slti    $at, v0, 0x0024            
    beq     $at, $zero, lbl_808F217C   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_808F26B0)      # v1 = 808F0000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_808F26B0)(v1)  
    beql    v1, $zero, lbl_808F2180    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_808F217C:
    lw      $ra, 0x0014($sp)           
lbl_808F2180:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F218C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      a0, 0x0040($sp)            
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, a0, 0x00B4             # a0 = 000000B4
    sw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 # a3 = 41F00000
    lw      t6, 0x002C($sp)            
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0x0D70             # a2 = 06010D70
    sb      $zero, 0x0014(t6)          # 00000014
    lw      a1, 0x0040($sp)            
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x0044($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8008C788              
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    lw      t7, 0x0040($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      v0, 0x001C(t7)             # 0000001C
    beq     v0, $at, lbl_808F2210      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_808F2220      
    nop
    beq     $zero, $zero, lbl_808F222C 
    lw      $ra, 0x0024($sp)           
lbl_808F2210:
    jal     func_800C7F40              
    addiu   a0, $zero, 0x006F          # a0 = 0000006F
    beq     $zero, $zero, lbl_808F222C 
    lw      $ra, 0x0024($sp)           
lbl_808F2220:
    lui     $at, 0x8012                # $at = 80120000
    sh      $zero, -0x465E($at)        # 8011B9A2
    lw      $ra, 0x0024($sp)           
lbl_808F222C:
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_808F2238:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x003C($sp)            
    lw      v0, 0x0254(t6)             # 00000254
    bltz    v0, lbl_808F2270           
    nop
    bgtz    v0, lbl_808F2270           
    sll     t7, v0,  2                 
    lui     v1, %hi(var_808F2740)      # v1 = 808F0000
    addu    v1, v1, t7                 
    lw      v1, %lo(var_808F2740)(v1)  
    lw      t8, 0x0038($sp)            
    bnel    v1, $zero, lbl_808F227C    
    lw      t9, 0x003C($sp)            
lbl_808F2270:
    beq     $zero, $zero, lbl_808F2290 
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t9, 0x003C($sp)            
lbl_808F227C:
    lw      t0, 0x0040($sp)            
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    jalr    $ra, v1                    
    sw      t0, 0x0018($sp)            
lbl_808F2290:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808F22A0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_808F22B0:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0028($sp)            
    lui     t0, %hi(var_808F2680)      # t0 = 808F0000
    addiu   t0, t0, %lo(var_808F2680)  # t0 = 808F2680
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0064($sp)            
    lh      v0, 0x0180(s0)             # 00000180
    lh      a2, 0x0184(s0)             # 00000184
    lh      a3, 0x0188(s0)             # 00000188
    lui     t4, %hi(var_808F26A4)      # t4 = 808F0000
    sll     t6, v0,  2                 
    sll     t8, a2,  2                 
    sll     t5, a3,  2                 
    addu    t7, t0, t6                 
    addu    t9, t0, t8                 
    addu    t4, t4, t5                 
    lw      t2, 0x0000(t7)             # 00000000
    lw      t3, 0x0000(t9)             # 00000000
    lw      t4, %lo(var_808F26A4)(t4)  
    lw      t6, 0x0064($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    sw      t4, 0x003C($sp)            
    sw      t3, 0x0048($sp)            
    sw      t2, 0x004C($sp)            
    jal     func_8007E298              
    sw      a0, 0x0034($sp)            
    lui     a3, 0x8012                 # a3 = 80120000
    lui     t0, 0x00FF                 # t0 = 00FF0000
    ori     t0, t0, 0xFFFF             # t0 = 00FFFFFF
    addiu   a3, a3, 0x0C38             # a3 = 80120C38
    lw      v1, 0x0034($sp)            
    lui     t1, 0x8000                 # t1 = 80000000
    lw      t2, 0x004C($sp)            
    lw      t3, 0x0048($sp)            
    lw      t4, 0x003C($sp)            
    lw      v0, 0x02C0(v1)             # 000002C0
    sll     t9, t2,  4                 
    srl     t5, t9, 28                 
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     t6, t5,  2                 
    addu    t7, a3, t6                 
    sw      t8, 0x0000(v0)             # 00000000
    lw      t8, 0x0000(t7)             # 00000008
    and     t9, t2, t0                 
    addu    t5, t8, t9                 
    addu    t6, t5, t1                 
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    sll     t9, t3,  4                 
    srl     t5, t9, 28                 
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    sll     t6, t5,  2                 
    addu    t7, a3, t6                 
    sw      t8, 0x0000(v0)             # 00000000
    lw      t8, 0x0000(t7)             # 00000008
    and     t9, t3, t0                 
    addu    t5, t8, t9                 
    addu    t6, t5, t1                 
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    sll     t9, t4,  4                 
    srl     t5, t9, 28                 
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0028             # t8 = DB060028
    sll     t6, t5,  2                 
    addu    t7, a3, t6                 
    sw      t8, 0x0000(v0)             # 00000000
    lw      t8, 0x0000(t7)             # 00000008
    and     t9, t4, t0                 
    addiu   t0, s0, 0x013C             # t0 = 0000013C
    addu    t5, t8, t9                 
    addu    t6, t5, t1                 
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(v1)             # 000002C0
    addiu   t7, t7, 0x8520             # t7 = 800E8520
    ori     t6, t6, 0x002C             # t6 = DB06002C
    sw      t6, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    lw      a1, 0x0004(t0)             # 00000140
    lw      a2, 0x0020(t0)             # 0000015C
    lbu     a3, 0x0002(t0)             # 0000013E
    lui     t8, %hi(func_808F2238)     # t8 = 808F0000
    lui     t9, %hi(func_808EF98C)     # t9 = 808F0000
    addiu   t9, t9, %lo(func_808EF98C) # t9 = 808EF98C
    addiu   t8, t8, %lo(func_808F2238) # t8 = 808F2238
    sw      t8, 0x0010($sp)            
    sw      t9, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    lw      t5, 0x02C0(v1)             # 000002C0
    sw      v1, 0x0034($sp)            
    lw      a0, 0x0064($sp)            
    jal     func_8008A88C              
    sw      t5, 0x001C($sp)            
    lw      v1, 0x0034($sp)            
    sw      v0, 0x02C0(v1)             # 000002C0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_808F248C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x005C($sp)            
    lh      v0, 0x0180(s0)             # 00000180
    lh      a2, 0x0188(s0)             # 00000188
    lui     t2, %hi(var_808F2680)      # t2 = 808F0000
    lui     t3, %hi(var_808F26A4)      # t3 = 808F0000
    sll     t6, v0,  2                 
    sll     t7, a2,  2                 
    addu    t2, t2, t6                 
    addu    t3, t3, t7                 
    lw      t2, %lo(var_808F2680)(t2)  
    lw      t3, %lo(var_808F26A4)(t3)  
    lw      t8, 0x005C($sp)            
    lw      a0, 0x0000(t8)             # 00000000
    sw      t3, 0x003C($sp)            
    sw      t2, 0x0048($sp)            
    jal     func_8007E2C0              
    sw      a0, 0x0034($sp)            
    lui     t4, 0x8012                 # t4 = 80120000
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    lw      v1, 0x0034($sp)            
    lui     t1, 0x8000                 # t1 = 80000000
    lw      t2, 0x0048($sp)            
    lw      t3, 0x003C($sp)            
    lw      v0, 0x02D0(v1)             # 000002D0
    sll     t7, t2,  4                 
    srl     t8, t7, 28                 
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    sll     t9, t8,  2                 
    addu    a1, t4, t9                 
    sw      t6, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(a1)             # 00000000
    and     a2, t2, t5                 
    addiu   t0, s0, 0x013C             # t0 = 0000013C
    addu    t7, t6, a2                 
    addu    t8, t7, t1                 
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(a1)             # 00000000
    addu    t8, t7, a2                 
    addu    t9, t8, t1                 
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    sll     t8, t3,  4                 
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    srl     t9, t8, 28                 
    ori     t7, t7, 0x0028             # t7 = DB060028
    sll     t6, t9,  2                 
    sw      t7, 0x0000(v0)             # 00000000
    addu    t7, t4, t6                 
    lw      t8, 0x0000(t7)             # DB060028
    and     t9, t3, t5                 
    addu    t6, t8, t9                 
    addu    t7, t6, t1                 
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t6, 0x0198(s0)             # 00000198
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x002C             # t9 = DB06002C
    andi    t7, t6, 0x00FF             # t7 = 00000008
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x8510             # t6 = 800E8510
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v1)             # 000002D0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      a1, 0x0004(t0)             # 00000140
    lw      a2, 0x0020(t0)             # 0000015C
    lbu     a3, 0x0002(t0)             # 0000013E
    lui     t7, %hi(func_808F2238)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808F2238) # t7 = 808F2238
    sw      t7, 0x0010($sp)            
    sw      s0, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    lw      t8, 0x02D0(v1)             # 000002D0
    sw      v1, 0x0034($sp)            
    lw      a0, 0x005C($sp)            
    jal     func_8008A88C              
    sw      t8, 0x001C($sp)            
    lw      v1, 0x0034($sp)            
    sw      v0, 0x02D0(v1)             # 000002D0
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_808F2634:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0190(a0)             # 00000190
    bltz    v0, lbl_808F266C           
    slti    $at, v0, 0x0003            
    beq     $at, $zero, lbl_808F266C   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_808F2744)      # v1 = 808F0000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_808F2744)(v1)  
    beql    v1, $zero, lbl_808F2670    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_808F266C:
    lw      $ra, 0x0014($sp)           
lbl_808F2670:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_808F2680: .word \
0x060030C8, 0x06003C48, 0x06004048, 0x06004548, \
0x06004948, 0x06004D48, 0x06005148, 0x06005D48, \
0x06006148
var_808F26A4: .word 0x06003508, 0x06005548, 0x06005948
var_808F26B0: .word func_808F20B8
.word func_808F09F4
.word func_808F0A2C
.word func_808F0A88
.word func_808F0AF8
.word func_808F0B54
.word func_808F0BB0
.word func_808F0BFC
.word func_808F0C58
.word func_808F0CB4
.word func_808F0D10
.word func_808F0D6C
.word func_808F0DC8
.word func_808F0E24
.word func_808F0E88
.word func_808F0EDC
.word func_808F0F30
.word func_808F0F84
.word func_808F0FD8
.word func_808F102C
.word func_808F1080
.word func_808F10D4
.word func_808F1130
.word func_808F11A0
.word func_808F1200
.word func_808F1954
.word func_808F198C
.word func_808F19EC
.word func_808F1A54
.word func_808F1AC0
.word func_808F1B2C
.word func_808F1B8C
.word func_808F1BD8
.word func_808F1F98
.word func_808F1FD0
.word func_808F2048
var_808F2740: .word func_808EF290
var_808F2744: .word func_808F22A0
.word func_808F22B0
.word func_808F248C
var_808F2750: .word 0x004D0400, 0x00000010, 0x00600000, 0x00000270
.word func_808F218C
.word func_808EE7A0
.word func_808F2144
.word func_808F2634

.section .rodata

var_808F2770: .word 0x455AC000
var_808F2774: .word 0xC47EC000
var_808F2778: .word 0x43E98000
var_808F277C: .word 0x43848000
var_808F2780: .word 0xC3D58000
var_808F2784: .word 0x43E98000
var_808F2788: .word 0x43848000
var_808F278C: .word 0xC3D58000
var_808F2790: .word 0x4474C000
var_808F2794: .word 0x3F99999A
var_808F2798: .word 0x4622F983
var_808F279C: .word var_808F08B4
.word var_808F08C8
.word var_808F08DC
.word var_808F08F0
.word var_808F0904
.word var_808F0918
.word var_808F092C
.word var_808F0940
.word var_808F0954
.word var_808F0968
.word var_808F097C
.word var_808F0990
.word var_808F09A4
.word var_808F09B8
.word var_808F09CC
var_808F27D8: .word var_808F18B8
.word var_808F18C8
.word lbl_808F1938
.word var_808F190C
.word lbl_808F1938
.word lbl_808F1938
.word lbl_808F1938
.word lbl_808F1938
.word lbl_808F1938
.word lbl_808F1938
.word lbl_808F1938
.word lbl_808F1938
.word lbl_808F1938
.word lbl_808F1938
.word lbl_808F1938
.word var_808F18DC
.word var_808F18EC
.word var_808F18FC
.word lbl_808F1938
.word var_808F191C
.word var_808F192C
.word 0x00000000

