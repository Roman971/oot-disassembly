.section .text
func_80B19D10:
    sw      a1, 0x016C(a0)             # 0000016C
    jr      $ra                        
    nop


func_80B19D1C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a1, %hi(var_80B1AB68)      # a1 = 80B20000
    addiu   a1, a1, %lo(var_80B1AB68)  # a1 = 80B1AB68
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80B1A00C)     # a1 = 80B20000
    addiu   a1, a1, %lo(func_80B1A00C) # a1 = 80B1A00C
    jal     func_80B19D10              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f6, $f4                   
    addiu   a0, s0, 0x0140             # a0 = 00000140
    sw      a0, 0x0030($sp)            
    trunc.w.s $f10, $f8                  
    mfc1    a1, $f6                    
    sw      $zero, 0x001C($sp)         
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f10                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f18                   
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_80065BCC              
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x0044($sp)            
    lw      a2, 0x0030($sp)            
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    jal     func_800665B0              
    sw      a1, 0x0034($sp)            
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f6, $f4                   
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a0, s0, 0x0154             # a0 = 00000154
    trunc.w.s $f10, $f8                  
    mfc1    a1, $f6                    
    sw      a0, 0x0030($sp)            
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f10                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mfc1    a3, $f18                   
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_80065BCC              
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x0044($sp)            
    lw      a1, 0x0034($sp)            
    jal     func_800665B0              
    lw      a2, 0x0030($sp)            
    sw      v0, 0x0150(s0)             # 00000150
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x4600(t2)            # 8011BA00
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, %hi(var_80B1AB74)     # $at = 80B20000
    lh      t3, 0x04B2(t2)             # 801204B2
    beq     t3, $zero, lbl_80B19E58    
    nop
    lui     $at, %hi(var_80B1AB70)     # $at = 80B20000
    lwc1    $f4, %lo(var_80B1AB70)($at) 
    beq     $zero, $zero, lbl_80B19E60 
    swc1    $f4, 0x0054(s0)            # 00000054
lbl_80B19E58:
    lwc1    $f6, %lo(var_80B1AB74)($at) 
    swc1    $f6, 0x0054(s0)            # 00000054
lbl_80B19E60:
    swc1    $f8, 0x0164(s0)            # 00000164
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B19E78:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0030($sp)            
    lw      t6, 0x1C44(s0)             # 00001C44
    lw      t7, 0x0030($sp)            
    addiu   a1, s0, 0x07A8             # a1 = 000007A8
    sw      t6, 0x0024($sp)            
    lw      a2, 0x013C(t7)             # 0000013C
    sw      a1, 0x0020($sp)            
    jal     func_80066610              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t8, 0x0030($sp)            
    lw      a1, 0x0020($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80066610              
    lw      a2, 0x0150(t8)             # 00000150
    jal     func_80072548              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t9, 0x8012                 # t9 = 80120000
    lh      t9, -0x4668(t9)            # 8011B998
    beql    t9, $zero, lbl_80B19EF8    
    lw      $ra, 0x001C($sp)           
    lw      t0, 0x1C40(s0)             # 00001C40
    lw      v0, 0x0024($sp)            
    beql    t0, $zero, lbl_80B19EF8    
    lw      $ra, 0x001C($sp)           
    lbu     t1, 0x0682(v0)             # 00000682
    ori     t2, t1, 0x0040             # t2 = 00000040
    sb      t2, 0x0682(v0)             # 00000682
    lw      $ra, 0x001C($sp)           
lbl_80B19EF8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80B19F08:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lwc1    $f0, 0x0164(a0)            # 00000164
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_80B1AB78)     # $at = 80B20000
    c.lt.s  $f4, $f0                   
    nop
    bc1f    lbl_80B19F3C               
    nop
    lwc1    $f6, %lo(var_80B1AB78)($at) 
    sub.s   $f8, $f0, $f6              
    beq     $zero, $zero, lbl_80B19FC0 
    swc1    $f8, 0x0164(a0)            # 00000164
lbl_80B19F3C:
    jal     func_80020EB4              
    sw      a1, 0x001C($sp)            
    lui     t6, 0x800F                 # t6 = 800F0000
    lhu     t6, 0x1650(t6)             # 800F1650
    addiu   $at, $zero, 0x0190         # $at = 00000190
    lw      a1, 0x001C($sp)            
    beq     t6, $at, lbl_80B19FB4      
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a1, $at                
    lh      t7, 0x04E6(v0)             # 000004E6
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    bnel    t7, $zero, lbl_80B19FB8    
    lui     $at, 0x0001                # $at = 00010000
    lhu     t8, 0x13FA(a0)             # 8011B9CA
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    andi    t9, t8, 0x000F             # t9 = 00000000
    beql    v1, t9, lbl_80B19FB8       
    lui     $at, 0x0001                # $at = 00010000
    lhu     t0, 0x04C8(v0)             # 000004C8
    addiu   $at, $zero, 0x0031         # $at = 00000031
    bne     t0, $at, lbl_80B19FAC      
    nop
    lhu     t1, 0x04C6(v0)             # 000004C6
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beql    t1, $at, lbl_80B19FC4      
    lw      $ra, 0x0014($sp)           
lbl_80B19FAC:
    beq     $zero, $zero, lbl_80B19FC0 
    sh      v1, 0x1422(a0)             # 8011B9F2
lbl_80B19FB4:
    lui     $at, 0x0001                # $at = 00010000
lbl_80B19FB8:
    addu    $at, $at, a1               
    sh      t2, 0x04C6($at)            # 000104C6
lbl_80B19FC0:
    lw      $ra, 0x0014($sp)           
lbl_80B19FC4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B19FD0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lhu     v0, 0x0168(a0)             # 00000168
    lui     a1, %hi(func_80B19F08)     # a1 = 80B20000
    blez    v0, lbl_80B19FF4           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B19FFC 
    sh      t6, 0x0168(a0)             # 00000168
lbl_80B19FF4:
    jal     func_80B19D10              
    addiu   a1, a1, %lo(func_80B19F08) # a1 = 80B19F08
lbl_80B19FFC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B1A00C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lwc1    $f0, 0x0164(a0)            # 00000164
    lui     a1, %hi(func_80B19FD0)     # a1 = 80B20000
    lui     $at, %hi(var_80B1AB7C)     # $at = 80B20000
    c.lt.s  $f0, $f4                   
    addiu   a1, a1, %lo(func_80B19FD0) # a1 = 80B19FD0
    bc1f    lbl_80B1A04C               
    nop
    lwc1    $f6, %lo(var_80B1AB7C)($at) 
    add.s   $f8, $f0, $f6              
    beq     $zero, $zero, lbl_80B1A060 
    swc1    $f8, 0x0164(a0)            # 00000164
lbl_80B1A04C:
    jal     func_80B19D10              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x003C          # t6 = 0000003C
    sh      t6, 0x0168(a0)             # 00000168
lbl_80B1A060:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B1A070:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x005C($sp)            
    lw      t6, 0x005C($sp)            
    lui     $at, %hi(var_80B1AB80)     # $at = 80B20000
    lwc1    $f6, %lo(var_80B1AB80)($at) 
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x004C($sp)            
    lwc1    $f4, 0x0164(s0)            # 00000164
    mul.s   $f12, $f4, $f6             
    jal     func_800D2CD0              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    sub.s   $f10, $f8, $f0             
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x005C($sp)            
    mul.s   $f2, $f10, $f16            
    swc1    $f2, 0x0048($sp)           
    lw      t9, 0x016C(s0)             # 0000016C
    jalr    $ra, t9                    
    nop
    lui     $at, %hi(var_80B1AB84)     # $at = 80B20000
    lwc1    $f2, 0x0048($sp)           
    lwc1    $f18, %lo(var_80B1AB84)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    mul.s   $f12, $f18, $f2            
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    lwc1    $f0, 0x0164(s0)            # 00000164
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    sub.s   $f16, $f10, $f0            
    swc1    $f12, 0x0058(s0)           # 00000058
    swc1    $f12, 0x0050(s0)           # 00000050
    lw      t8, 0x004C($sp)            
    mul.s   $f2, $f16, $f0             
    lui     $at, %hi(var_80B1AB88)     # $at = 80B20000
    lw      t2, 0x0024(t8)             # 00000024
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    sw      t2, 0x0024(s0)             # 00000024
    lw      t1, 0x0028(t8)             # 00000028
    lui     a2, 0x445C                 # a2 = 445C0000
    sw      t1, 0x0028(s0)             # 00000028
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      t2, 0x002C(t8)             # 0000002C
    add.s   $f8, $f4, $f6              
    mul.s   $f4, $f2, $f18             
    sw      t2, 0x002C(s0)             # 0000002C
    swc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f6, %lo(var_80B1AB88)($at) 
    swc1    $f2, 0x0048($sp)           
    lw      a0, 0x005C($sp)            
    mfc1    a1, $f4                    
    jal     func_800631D8              
    swc1    $f6, 0x0010($sp)           
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, 0x425C                # $at = 425C0000
    trunc.w.s $f18, $f16                 
    lwc1    $f2, 0x0048($sp)           
    addiu   a0, s0, 0x0140             # a0 = 00000140
    trunc.w.s $f10, $f8                  
    mfc1    t5, $f18                   
    mtc1    $at, $f8                   # $f8 = 55.00
    lui     $at, 0x437F                # $at = 437F0000
    sll     t6, t5, 16                 
    sra     t7, t6, 16                 
    mtc1    t7, $f4                    # $f4 = 0.00
    mfc1    a1, $f10                   
    lwc1    $f18, 0x002C(s0)           # 0000002C
    cvt.s.w $f6, $f4                   
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    trunc.w.s $f4, $f18                  
    add.s   $f10, $f6, $f8             
    mtc1    $at, $f6                   # $f6 = 255.00
    lui     $at, 0x4348                # $at = 43480000
    mfc1    a3, $f4                    
    trunc.w.s $f16, $f10                 
    mul.s   $f8, $f6, $f2              
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    mfc1    a2, $f16                   
    mtc1    $at, $f16                  # $f16 = 200.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    mul.s   $f18, $f16, $f2            
    trunc.w.s $f10, $f8                  
    sll     a2, a2, 16                 
    mul.s   $f8, $f6, $f2              
    sra     a2, a2, 16                 
    mfc1    v0, $f10                   
    nop
    andi    v0, v0, 0x00FF             # v0 = 00000000
    trunc.w.s $f4, $f18                  
    sw      v0, 0x0010($sp)            
    sw      v0, 0x0014($sp)            
    trunc.w.s $f10, $f8                  
    mfc1    v1, $f4                    
    sw      v0, 0x003C($sp)            
    mfc1    t0, $f10                   
    andi    v1, v1, 0x00FF             # v1 = 00000000
    sw      v1, 0x0018($sp)            
    sll     t0, t0, 16                 
    sra     t0, t0, 16                 
    sw      t0, 0x001C($sp)            
    sw      t0, 0x0034($sp)            
    jal     func_80065BCC              
    sw      v1, 0x0038($sp)            
    lw      t4, 0x004C($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(t4)             # 000000B6
    lw      t5, 0x004C($sp)            
    swc1    $f0, 0x0040($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(t5)             # 000000B6
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    trunc.w.s $f6, $f4                   
    lwc1    $f16, 0x0040($sp)          
    lw      v0, 0x003C($sp)            
    addiu   a0, s0, 0x0154             # a0 = 00000154
    mfc1    t7, $f6                    
    lwc1    $f6, 0x0028(s0)            # 00000028
    mul.s   $f18, $f16, $f2            
    sll     t9, t7, 16                 
    sra     t8, t9, 16                 
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    trunc.w.s $f8, $f6                   
    mul.s   $f6, $f0, $f2              
    add.s   $f16, $f18, $f10           
    mfc1    t3, $f8                    
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      v0, 0x0014($sp)            
    sll     t4, t3, 16                 
    sra     t5, t4, 16                 
    mtc1    t5, $f18                   # $f18 = 0.00
    trunc.w.s $f4, $f16                  
    lw      t4, 0x0034($sp)            
    lw      t3, 0x0038($sp)            
    cvt.s.w $f10, $f18                 
    mfc1    a1, $f4                    
    sw      v0, 0x0010($sp)            
    sw      t4, 0x001C($sp)            
    sll     a1, a1, 16                 
    trunc.w.s $f18, $f8                  
    sra     a1, a1, 16                 
    sw      t3, 0x0018($sp)            
    add.s   $f16, $f10, $f2            
    mfc1    t9, $f18                   
    nop
    sll     t8, t9, 16                 
    sra     t1, t8, 16                 
    mtc1    t1, $f10                   # $f10 = 0.00
    trunc.w.s $f4, $f16                  
    cvt.s.w $f16, $f10                 
    mfc1    a2, $f4                    
    nop
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    add.s   $f4, $f6, $f16             
    trunc.w.s $f8, $f4                   
    mfc1    a3, $f8                    
    nop
    sll     a3, a3, 16                 
    jal     func_80065BCC              
    sra     a3, a3, 16                 
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_80B1A348:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0038($sp)            
    sw      a0, 0x0060($sp)            
    lw      t1, 0x009C(a1)             # 0000009C
    andi    t1, t1, 0xFFFF             # t1 = 00000000
    lw      a0, 0x0000(a1)             # 00000000
    sw      t1, 0x0058($sp)            
    sw      a1, 0x0064($sp)            
    jal     func_8007E2C0              
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0064($sp)            
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x004C($sp)            
    lw      t2, 0x004C($sp)            
    lw      t1, 0x0058($sp)            
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, %hi(var_80B1AA40)      # t5 = 80B20000
    addiu   t5, t5, %lo(var_80B1AA40)  # t5 = 80B1AA40
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    subu    $at, $zero, t1             
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t7, 0x0064($sp)            
    sll     t6, $at,  3                
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    lw      a0, 0x0000(t7)             # 00000000
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)            
    sw      t7, 0x0024($sp)            
    sw      t8, 0x0028($sp)            
    sw      t6, 0x0020($sp)            
    sw      $zero, 0x001C($sp)         
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    sll     a3, $at,  1                
    or      a1, $zero, $zero           # a1 = 00000000
    sll     a2, t1,  1                 
    jal     func_8007EB84              
    sw      v1, 0x0044($sp)            
    lw      t3, 0x0044($sp)            
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(t3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, %hi(var_80B1AAD8)      # t6 = 80B20000
    addiu   t6, t6, %lo(var_80B1AAD8)  # t6 = 80B1AAD8
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80B1A470: .word 0x017E0700, 0x02000010, 0x00010000, 0x00000170
.word func_80B19D1C
.word func_80B19E78
.word func_80B1A070
.word func_80B1A348
var_80B1A490: .word \
0x354D5AAC, 0xA5561C01, 0x124688B5, 0x74583231, \
0x313D71D6, 0x9F5B3507, 0x104089AD, 0x748F440C, \
0x408176AC, 0xB4661301, 0x2261C0BE, 0x49392533, \
0x2C497FC4, 0x80451D06, 0x2466BBD0, 0x9CB85411, \
0x40A09DA3, 0xB37F210B, 0x3D8AEAC7, 0x3F241930, \
0x2F5591A7, 0x6441080F, 0x4191E8DB, 0xB7A76B18, \
0x4094BAA0, 0x76532D22, 0x60BAFEE8, 0x8253545F, \
0x6078A896, 0x73540723, 0x66C2FEBB, 0x87888723, \
0x4B87C79E, 0x33123048, 0x88E3FFFC, 0xD39F7E72, \
0x8DA2AE80, 0xA77B1940, 0x90EBFFA9, 0x6289973E, \
0x6F9ACD83, 0x2D104B7F, 0xAEEBFDF3, 0xD8B26772, \
0xA7C7AD77, 0xB1B34A61, 0xB0F8FFD5, 0x9496986B, \
0x9EC6D25D, 0x503E85B3, 0xC0C1E1EE, 0xBD9B618E, \
0xBFE4A975, 0x86E18B86, 0xABCFF7F2, 0xBC837E69, \
0xB5EFE465, 0x5B66BACB, 0xC794AADC, 0xAC8982AE, \
0xD3F59754, 0x65E2AAAD, 0x8C85D0E1, 0xAF634D39, \
0xC7E2EDA3, 0x527ECACF, 0xBF777FC0, 0xA284A5A5, \
0xE3FE8A2F, 0x60CCAFBE, 0x7164B8BA, 0x97553A2B, \
0xE8BCBCDA, 0x76A1BBBA, 0x844D83BD, 0x9C6B875B, \
0xD9FFAA3F, 0x6AC9B59B, 0x6592BD94, 0x956D3D3B, \
0xFFA773D3, 0xB5B9AB90, 0x4033A0BC, 0x873E3E1D, \
0xB5FFE48D, 0x8CC9A761, 0x62CBAF79, 0x98883457, \
0xF3766FAF, 0xD5B2A26B, 0x44549D8B, 0x56232221, \
0x7DFFF2DD, 0xC6B68840, 0x4ECCA267, 0x696D296E, \
0xA8328AAD, 0xD3998447, 0x5E7D8C5B, 0x391F1E35, \
0x4EF6CDD3, 0xDD9B6C2D, 0x27A09571, 0x37443656, \
0x4C1265C9, 0xCA91612E, 0x3B5A7A65, 0x2F4F3421, \
0x36EAC380, 0xB6814A1B, 0x0C607075, 0x5860803B, \
0x27102CCD, 0xC9A87A47, 0x16204B80, 0x44B3860F, \
0x28DAE042, 0x7F773710, 0x0235616D, 0xA089BE60, \
0x34161EBC, 0xBBAAA972, 0x172A3B91, 0x96F6C319, \
0x21B7F02A, 0x618F662A, 0x02327A8C, 0x97577B5C, \
0x48171FB3, 0xA090AF87, 0x1F65609D, 0xD8FFD41E, \
0x177CC522, 0x69A8A462, 0x0D3A93B6, 0x4F0C1821, \
0x39151CA7, 0x928EAA9A, 0x33919BAF, 0xEBFBDA23, \
0x093B6937, 0x80AEA66C, 0x304491C7, 0x3A031710, \
0x16162197, 0x9B9FB5BA, 0x4C95CED8, 0xF8F0D425, \
0x05144066, 0x84B17F5A, 0x725E8DCD, 0x5D376910, \
0x19183886, 0xA3A1C4C6, 0x6584D1F1, 0xFFFABF12, \
0x0E123F77, 0x88AF6881, 0xB97F98BB, 0x879BBC23, \
0x4A20557C, 0x9BA5D0BB, 0x7583C6E0, 0xFEFFB322, \
0x34283976, 0x95B06EB8, 0xE29B999F, 0xBDE9E582, \
0x814C5C82, 0xA1C0ECBE, 0x789ED6B2, 0xF4FFD78F, \
0x73324087, 0xA0C26FAB, 0xE0B1A5B9, 0xF2FFFADE, \
0xAC906A89, 0xB3DDFFCB, 0x86B8CD75, 0xDFFFF1D7, \
0x8F31579C, 0xAFDE7B87, 0xC8BAB4EB, 0xF0F2FFE4, \
0xB29B798B, 0xC3F4FFD2, 0xA0A17C32, 0xA9FFE8BD, \
0x784D7A91, 0xC7F5AB9B, 0xBEBB86D9, 0xB0BCF9D4, \
0x835C4C70, 0xD8FFFFD7, 0xA2682907, 0x68FFE29F, \
0x61707B7A, 0xE5FFE7C8, 0xCCC33C8E, 0x768CE0C7, \
0x51281940, 0xCBFFFFCB, 0x87450C00, 0x4BF3D58E, \
0x6D767B92, 0xFAFFFFC8, 0xC7BF175B, 0x708BBA9A, \
0x3A161542, 0xB4FFF5A9, 0x6D39090C, 0x50D8BC86, \
0x897AA1C8, 0xFFFFF4A1, 0x8C880B50, 0x91A49762, \
0x2D0C1E78, 0xD4FFD97F, 0x58351E23, 0x6BB49283, \
0x9B95C9EE, 0xFFFFD377, 0x4336075E, 0xBFB27641, \
0x1B0224B5, 0xFCF7AC55, 0x41384344, 0x8FA06468, \
0x9FB5DBFD, 0xFFF1A553, 0x190B1275, 0xCCA75D3A, \
0x0C042ED9, 0xFFD97C33, 0x28405669, 0xB0914C3A, \
0x9199C6FF, 0xFECF7835, 0x080C308B, 0xB38F6D47, \
0x0A0D3DDB, 0xF3A75519, 0x1341558E, 0xBE7B4321, \
0x6B4D94F8, 0xE4AC591A, 0x02175096, 0x8E7A9145, \
0x1D224BBF, 0xC1723508, 0x0D3E5FA5, 0xA568351E, \
0x422B6EE0, 0xBB85480B, 0x04256799, 0x716D6D21
var_80B1A890: .word \
0x00230000, 0xFFDD0000, 0x05000400, 0xFFFFFF00, \
0x00230096, 0xFFDD0000, 0x05000200, 0xFFFFFF7E, \
0x00320096, 0x00000000, 0x04000200, 0xFFFFFF7E, \
0x00320000, 0x00000000, 0x04000400, 0xFFFFFF00, \
0x002301F4, 0xFFDD0000, 0x05000000, 0xFFFFFFFF, \
0x003201F4, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0x00000000, 0xFFCE0000, 0x06000400, 0xFFFFFF00, \
0x00000096, 0xFFCE0000, 0x06000200, 0xFFFFFF7E, \
0x000001F4, 0xFFCE0000, 0x06000000, 0xFFFFFFFF, \
0xFFDD0000, 0xFFDD0000, 0x07000400, 0xFFFFFF00, \
0xFFDD0096, 0xFFDD0000, 0x07000200, 0xFFFFFF7E, \
0xFFDD01F4, 0xFFDD0000, 0x07000000, 0xFFFFFFFF, \
0xFFCE0000, 0x00000000, 0x08000400, 0xFFFFFF00, \
0xFFCE0096, 0x00000000, 0x08000200, 0xFFFFFF7E, \
0xFFCE01F4, 0x00000000, 0x08000000, 0xFFFFFFFF, \
0xFFDD0000, 0x00230000, 0x01000400, 0xFFFFFF00, \
0xFFDD0096, 0x00230000, 0x01000200, 0xFFFFFF7E, \
0xFFCE0096, 0x00000000, 0x00000200, 0xFFFFFF7E, \
0xFFCE0000, 0x00000000, 0x00000400, 0xFFFFFF00, \
0xFFDD01F4, 0x00230000, 0x01000000, 0xFFFFFFFF, \
0xFFCE01F4, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x00000000, 0x00320000, 0x02000400, 0xFFFFFF00, \
0x00000096, 0x00320000, 0x02000200, 0xFFFFFF7E, \
0x000001F4, 0x00320000, 0x02000000, 0xFFFFFFFF, \
0x00230000, 0x00230000, 0x03000400, 0xFFFFFF00, \
0x00230096, 0x00230000, 0x03000200, 0xFFFFFF7E, \
0x002301F4, 0x00230000, 0x03000000, 0xFFFFFFFF
var_80B1AA40: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80B1A490
.word \
0xF5900000, 0x07014051, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00014051, 0xF2000000, 0x0007C07C, \
0xE8000000, 0x00000000, 0xF5880800, 0x01017C50, \
0xF2000000, 0x0107C07C, 0xFC262A60, 0x3510937F, \
0xE200001C, 0x0C1849D8, 0xD9F0FBFF, 0x00000000, \
0xFA000000, 0xFFFFAAFF, 0xFB000000, 0xC8FF0080, \
0xDF000000, 0x00000000
var_80B1AAD8: .word 0x0101B036
.word var_80B1A890
.word \
0x06000204, 0x00000406, 0x0602080A, 0x00020A04, \
0x060C0E02, 0x000C0200, 0x060E1008, 0x000E0802, \
0x0612140E, 0x00120E0C, 0x06141610, 0x0014100E, \
0x06181A14, 0x00181412, 0x061A1C16, 0x001A1614, \
0x061E2022, 0x001E2224, 0x06202628, 0x00202822, \
0x062A2C20, 0x002A201E, 0x062C2E26, 0x002C2620, \
0x0630322C, 0x00302C2A, 0x0632342E, 0x00322E2C, \
0x06060432, 0x00063230, 0x06040A34, 0x00043432, \
0xDF000000, 0x00000000
var_80B1AB68: .word 0xC8500000, 0x30F405DC

.section .rodata

var_80B1AB70: .word 0x4019999A
var_80B1AB74: .word 0x3E99999A
var_80B1AB78: .word 0x3D4CCCCD
var_80B1AB7C: .word 0x3D4CCCCD
var_80B1AB80: .word 0x40490FDB
var_80B1AB84: .word 0x3ED70A3D
var_80B1AB88: .word 0x3F666666, 0x00000000

