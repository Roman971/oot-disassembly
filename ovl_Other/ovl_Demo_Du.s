.section .text
func_80970020:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_8008D6D0              
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80970044:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x0182(a2)             # 00000182
    addiu   v1, a2, 0x0182             # v1 = 00000182
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_8097006C    
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    beq     $zero, $zero, lbl_8097007C 
    addiu   v1, a2, 0x0182             # v1 = 00000182
lbl_8097006C:
    lh      t7, 0x0000(v1)             # 00000182
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             # 00000182
    lh      v0, 0x0000(v1)             # 00000182
lbl_8097007C:
    bne     v0, $zero, lbl_8097009C    
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    sw      v1, 0x001C($sp)            
    jal     func_80063BF0              
    sw      a2, 0x0038($sp)            
    lw      v1, 0x001C($sp)            
    lw      a2, 0x0038($sp)            
    sh      v0, 0x0000(v1)             # 00000000
lbl_8097009C:
    lh      t9, 0x0000(v1)             # 00000000
    addiu   v0, a2, 0x0180             # v0 = 00000180
    sh      t9, 0x0000(v0)             # 00000180
    lh      t0, 0x0000(v0)             # 00000180
    slti    $at, t0, 0x0003            
    bnel    $at, $zero, lbl_809700C0   
    lw      $ra, 0x0014($sp)           
    sh      $zero, 0x0000(v0)          # 00000180
    lw      $ra, 0x0014($sp)           
lbl_809700C0:
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809700CC:
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sh      a1, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_809700E4:
    sw      a1, 0x0004($sp)            
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sh      a1, 0x0184(a0)             # 00000184
    jr      $ra                        
    nop


func_809700FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_8008C9C0              
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80970120:
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


func_80970168:
    lbu     t6, 0x1D6C(a0)             # 00001D6C
    sll     t7, a1,  2                 
    addu    t8, a0, t7                 
    beql    t6, $zero, lbl_80970188    
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    lw      v0, 0x1D8C(t8)             # 00001D8C
lbl_80970184:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80970188:
    jr      $ra                        
    nop


func_80970190:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_80970168              
    or      a1, a3, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_809701D0    
    lw      $ra, 0x0014($sp)           
    lhu     t6, 0x0022($sp)            
    lhu     t7, 0x0000(v0)             # 00000000
    bnel    t6, t7, lbl_809701D4       
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_809701D4 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809701D0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809701D4:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809701DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_80970168              
    or      a1, a3, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_8097021C    
    lw      $ra, 0x0014($sp)           
    lhu     t6, 0x0022($sp)            
    lhu     t7, 0x0000(v0)             # 00000000
    beql    t6, t7, lbl_80970220       
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_80970220 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8097021C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80970220:
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80970228:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x001C($sp)            
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80970168              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_80970298    
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
lbl_80970298:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809702A8:
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
    bne     t6, $zero, lbl_809702F4    
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f12                  # $f12 = 1.00
    beq     $zero, $zero, lbl_80970308 
    cvt.s.w $f2, $f4                   
lbl_809702F4:
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f12                  # $f12 = -1.00
    cvt.s.w $f0, $f6                   
lbl_80970308:
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


func_80970338:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      a1, 0x0028($sp)            
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x74B0             # a3 = 060074B0
    addiu   a2, a2, 0x22A8             # a2 = 060122A8
    lw      a0, 0x002C($sp)            
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_8008C788              
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    lui     $at, %hi(var_809734A0)     # $at = 80970000
    lw      a0, 0x0028($sp)            
    lwc1    $f4, %lo(var_809734A0)($at) 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_809700CC              
    swc1    $f4, 0x00BC(a0)            # 000000BC
    lw      a0, 0x0028($sp)            
    jal     func_809700E4              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809703A8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lwc1    $f0, 0x0024(a1)            # 00000024
    lwc1    $f2, 0x0028(a1)            # 00000028
    lwc1    $f12, 0x002C(a1)           # 0000002C
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    swc1    $f0, 0x0010($sp)           
    swc1    $f2, 0x0014($sp)           
    jal     func_800253F0              
    swc1    $f12, 0x0018($sp)          
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80970404:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lw      v0, 0x1C44(a2)             # 00001C44
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f4, 0x0028(v0)            # 00000028
    lwc1    $f0, 0x0024(v0)            # 00000024
    lwc1    $f12, 0x002C(v0)           # 0000002C
    add.s   $f2, $f4, $f6              
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    sw      t6, 0x0028($sp)            
    sw      a2, 0x003C($sp)            
    swc1    $f2, 0x0014($sp)           
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addiu   a3, $zero, 0x008B          # a3 = 0000008B
    swc1    $f0, 0x0010($sp)           
    jal     func_800253F0              
    swc1    $f12, 0x0018($sp)          
    lw      a0, 0x003C($sp)            
    jal     func_8006FDCC              
    addiu   a1, $zero, 0x0067          # a1 = 00000067
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80970480:
    sw      a1, 0x0004($sp)            
    lui     $at, %hi(var_809734A4)     # $at = 80970000
    lwc1    $f6, %lo(var_809734A4)($at) 
    lwc1    $f4, 0x00BC(a0)            # 000000BC
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x00BC(a0)            # 000000BC
    jr      $ra                        
    nop


func_809704A0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lbu     t6, 0x1415(v0)             # 8011B9E5
    bnel    a3, t6, lbl_8097052C       
    lw      $ra, 0x0014($sp)           
    lw      t7, 0x1360(v0)             # 8011B930
    lui     t9, %hi(var_80972674)      # t9 = 80970000
    lw      t8, 0x0028($sp)            
    slti    $at, t7, 0x0004            
    beq     $at, $zero, lbl_80970528   
    addiu   t9, t9, %lo(var_80972674)  # t9 = 80972674
    lw      v1, 0x1C44(a2)             # 00001C44
    sw      a3, 0x0188(t8)             # 00000188
    sw      t9, 0x1D68(a2)             # 00001D68
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sb      t0, 0x1414(v0)             # 8011B9E4
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0067          # a1 = 00000067
    jal     func_8006FDCC              
    sw      v1, 0x001C($sp)            
    lw      t1, 0x0028($sp)            
    ori     $at, $zero, 0x8000         # $at = 00008000
    lw      v1, 0x001C($sp)            
    lh      v0, 0x0032(t1)             # 00000032
    addu    v0, v0, $at                
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sh      v0, 0x00B6(v1)             # 000000B6
    sh      v0, 0x0032(v1)             # 00000032
lbl_80970528:
    lw      $ra, 0x0014($sp)           
lbl_8097052C:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80970538:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_8097057C    
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x1D94(a1)             # 00001D94
    beql    v0, $zero, lbl_8097057C    
    lw      $ra, 0x0014($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    beql    v1, t7, lbl_8097057C       
    lw      $ra, 0x0014($sp)           
    sw      t8, 0x0188(a0)             # 00000188
    jal     func_809703A8              
    sw      v1, 0x018C(a0)             # 0000018C
    lw      $ra, 0x0014($sp)           
lbl_8097057C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80970588:
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    lwc1    $f4, 0x00BC(a0)            # 000000BC
    c.le.s  $f0, $f4                   
    nop
    bc1f    lbl_809705AC               
    nop
    sw      t6, 0x0188(a0)             # 00000188
    swc1    $f0, 0x00BC(a0)            # 000000BC
lbl_809705AC:
    jr      $ra                        
    nop


func_809705B4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_8097063C    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1D94(a1)             # 00001D94
    beql    v0, $zero, lbl_8097063C    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a0, 0x0600                 # a0 = 06000000
    beql    t7, $at, lbl_8097063C      
    lw      $ra, 0x0024($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x0800             # a0 = 06000800
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x0800             # a1 = 06000800
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t0, 0x0028($sp)            
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sw      t9, 0x0188(t0)             # 00000188
    lw      $ra, 0x0024($sp)           
lbl_8097063C:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80970648:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_809706A4    
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0D00             # a0 = 06000D00
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0D00             # a1 = 06000D00
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0188(t7)             # 00000188
lbl_809706A4:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809706B4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_809706F4    
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x1DA4(a1)             # 00001DA4
    beql    v0, $zero, lbl_809706F4    
    lw      $ra, 0x0014($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    bnel    t7, $at, lbl_809706F4      
    lw      $ra, 0x0014($sp)           
    jal     func_80970404              
    sw      t8, 0x0188(a0)             # 00000188
    lw      $ra, 0x0014($sp)           
lbl_809706F4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80970700:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809704A0              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80970720:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80970538              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80970740:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80970480              
    lw      a0, 0x0018($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    jal     func_80970588              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80970774:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809705B4              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809707B4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a0, 0x0018($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970648              
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809707EC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809706B4              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8097082C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a0, 0x0018($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80970858:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      a1, 0x0028($sp)            
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0x22A8             # a2 = 060122A8
    lw      a0, 0x002C($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_8008C788              
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    sw      t6, 0x0188(t7)             # 00000188
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809708A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x3879          # a1 = 00003879
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809708D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lhu     t6, 0x1D74(a0)             # 00001D74
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    bnel    t6, $at, lbl_809708F4      
    lw      $ra, 0x0014($sp)           
    jal     func_80064738              
    addiu   a0, $zero, 0x28A0          # a0 = 000028A0
    lw      $ra, 0x0014($sp)           
lbl_809708F4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80970900:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lw      v0, 0x1C44(a2)             # 00001C44
    addiu   a1, $zero, 0x3925          # a1 = 00003925
    addiu   a0, v0, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    sw      a0, 0x0024($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x6825          # a0 = 00006825
    lw      a1, 0x0024($sp)            
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80970958:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x3124          # a1 = 00003124
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80970980:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      t6, 0x0020($sp)            
    addiu   $at, $zero, 0x0578         # $at = 00000578
    lui     a3, 0x8010                 # a3 = 80100000
    lhu     t7, 0x1D74(t6)             # 00001D74
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   a0, $zero, 0x6828          # a0 = 00006828
    bne     t7, $at, lbl_809709C8      
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      v0, 0x1C44(t6)             # 00001C44
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    addiu   a1, v0, 0x00E4             # a1 = 000000E4
lbl_809709C8:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809709D8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      t6, 0x0020($sp)            
    addiu   $at, $zero, 0x00AE         # $at = 000000AE
    lui     a3, 0x8010                 # a3 = 80100000
    lhu     t7, 0x1D74(t6)             # 00001D74
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   a0, $zero, 0x6836          # a0 = 00006836
    bne     t7, $at, lbl_80970A20      
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      v0, 0x1C44(t6)             # 00001C44
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    addiu   a1, v0, 0x00E4             # a1 = 000000E4
lbl_80970A20:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80970A30:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lhu     t6, 0x1D74(a1)             # 00001D74
    slti    $at, t6, 0x0104            
    beql    $at, $zero, lbl_80970A70   
    lhu     v0, 0x1D74(a1)             # 00001D74
    jal     func_80970044              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809700E4              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_80970B28 
    lw      $ra, 0x001C($sp)           
    lhu     v0, 0x1D74(a1)             # 00001D74
lbl_80970A70:
    slti    $at, v0, 0x014F            
    beql    $at, $zero, lbl_80970A9C   
    slti    $at, v0, 0x016D            
    jal     func_80970044              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809700E4              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beq     $zero, $zero, lbl_80970B28 
    lw      $ra, 0x001C($sp)           
    slti    $at, v0, 0x016D            
lbl_80970A9C:
    beq     $at, $zero, lbl_80970AC0   
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809700CC              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809700E4              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_80970B28 
    lw      $ra, 0x001C($sp)           
lbl_80970AC0:
    slti    $at, v0, 0x018B            
    beq     $at, $zero, lbl_80970AE8   
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809700CC              
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809700E4              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beq     $zero, $zero, lbl_80970B28 
    lw      $ra, 0x001C($sp)           
lbl_80970AE8:
    slti    $at, v0, 0x019A            
    beq     $at, $zero, lbl_80970B10   
    nop
    jal     func_80970044              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809700E4              
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_80970B28 
    lw      $ra, 0x001C($sp)           
lbl_80970B10:
    jal     func_80970044              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809700E4              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      $ra, 0x001C($sp)           
lbl_80970B28:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80970B38:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a1, 0x003C($sp)            
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    lw      t6, 0x0038($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    lui     $at, 0x42C8                # $at = 42C80000
    lw      t8, 0x0024(t6)             # 00000024
    sw      t8, 0x0000(a1)             # FFFFFFF0
    lw      t7, 0x0028(t6)             # 00000028
    sw      t7, 0x0004(a1)             # FFFFFFF4
    lw      t8, 0x002C(t6)             # 0000002C
    sw      t8, 0x0008(a1)             # FFFFFFF8
    lw      v0, -0x4600(v0)            # 8011BA00
    lwc1    $f4, 0x002C($sp)           
    lw      a0, 0x003C($sp)            
    lh      t9, 0x145E(v0)             # 8012145E
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f6                   # $f6 = 100.00
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x002C($sp)          
    lh      t0, 0x1456(v0)             # 80121456
    lh      t1, 0x145A(v0)             # 8012145A
    lh      a3, 0x1458(v0)             # 80121458
    mtc1    t0, $f16                   # $f16 = 0.00
    addiu   t2, t1, 0x012C             # t2 = 0000012C
    sw      t2, 0x0010($sp)            
    cvt.s.w $f18, $f16                 
    lh      t3, 0x145C(v0)             # 8012145C
    sw      $zero, 0x0018($sp)         
    addiu   a3, a3, 0x000A             # a3 = 0000000A
    sw      t3, 0x0014($sp)            
    add.s   $f4, $f18, $f6             
    mfc1    a2, $f4                    
    jal     func_80026308              
    nop
    jal     func_809708A8              
    lw      a0, 0x0038($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80970BEC:
    addiu   $sp, $sp, 0xFF30           # $sp = FFFFFF30
    sdc1    $f28, 0x0048($sp)          
    lui     $at, 0x41F8                # $at = 41F80000
    mtc1    $at, $f28                  # $f28 = 31.00
    sw      $ra, 0x0074($sp)           
    sw      s8, 0x0070($sp)            
    sw      s7, 0x006C($sp)            
    sw      s6, 0x0068($sp)            
    sw      s5, 0x0064($sp)            
    sw      s4, 0x0060($sp)            
    sw      s3, 0x005C($sp)            
    sw      s2, 0x0058($sp)            
    sw      s1, 0x0054($sp)            
    sw      s0, 0x0050($sp)            
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a1, 0x00D4($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    mfc1    a1, $f28                   
    jal     func_8008D6A8              
    sw      a0, 0x0080($sp)            
    bne     v0, $zero, lbl_80970C60    
    lw      a0, 0x0080($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4224                 # a1 = 42240000
    beq     v0, $zero, lbl_80970E3C    
lbl_80970C60:
    addiu   s4, $sp, 0x00B0            # s4 = FFFFFFE0
    addiu   s5, $sp, 0x00A4            # s5 = FFFFFFD4
    lui     t7, %hi(var_80973364)      # t7 = 80970000
    lw      t6, 0x00D4($sp)            
    addiu   t7, t7, %lo(var_80973364)  # t7 = 80973364
    lw      t9, 0x0000(t7)             # 80973364
    lw      v0, 0x1C44(t6)             # 00001C44
    lui     t0, %hi(var_80973370)      # t0 = 80970000
    sw      t9, 0x0000(s4)             # FFFFFFE0
    lw      t8, 0x0004(t7)             # 80973368
    addiu   t0, t0, %lo(var_80973370)  # t0 = 80973370
    lui     $at, 0x4348                # $at = 43480000
    sw      t8, 0x0004(s4)             # FFFFFFE4
    lw      t9, 0x0008(t7)             # 8097336C
    mtc1    $at, $f26                  # $f26 = 200.00
    lui     $at, 0x4220                # $at = 42200000
    sw      t9, 0x0008(s4)             # FFFFFFE8
    lw      t2, 0x0000(t0)             # 80973370
    mtc1    $at, $f24                  # $f24 = 40.00
    lui     $at, 0x4120                # $at = 41200000
    sw      t2, 0x0000(s5)             # FFFFFFD4
    lw      t1, 0x0004(t0)             # 80973374
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x41A0                # $at = 41A00000
    sw      t1, 0x0004(s5)             # FFFFFFD8
    lw      t2, 0x0008(t0)             # 80973378
    lui     s0, %hi(var_809733B4)      # s0 = 80970000
    lui     s7, %hi(var_80973380)      # s7 = 80970000
    lui     s6, %hi(var_8097337C)      # s6 = 80970000
    mtc1    $at, $f20                  # $f20 = 20.00
    addiu   s6, s6, %lo(var_8097337C)  # s6 = 8097337C
    addiu   s7, s7, %lo(var_80973380)  # s7 = 80973380
    addiu   s0, s0, %lo(var_809733B4)  # s0 = 809733B4
    addiu   s8, $sp, 0x0088            # s8 = FFFFFFB8
    addiu   s3, $sp, 0x0098            # s3 = FFFFFFC8
    addiu   s2, $sp, 0x009C            # s2 = FFFFFFCC
    addiu   s1, v0, 0x097C             # s1 = 0000097C
    sw      t2, 0x0008(s5)             # FFFFFFDC
    lw      t4, 0x0000(s6)             # 8097337C
lbl_80970CFC:
    lw      t6, 0x0000(s7)             # 80973380
    mfc1    a1, $f28                   
    sw      t4, 0x0000(s2)             # FFFFFFCC
    sw      t6, 0x0000(s3)             # FFFFFFC8
    jal     func_8008D6A8              
    lw      a0, 0x0080($sp)            
    beql    v0, $zero, lbl_80970D54    
    lwc1    $f10, 0x0000(s0)           # 809733B4
    lwc1    $f4, 0x003C(s0)            # 809733F0
    lwc1    $f6, 0x0000(s1)            # 0000097C
    lwc1    $f10, 0x0040(s0)           # 809733F4
    add.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0044(s0)            # 809733F8
    swc1    $f8, 0x0088($sp)           
    lwc1    $f16, 0x0004(s1)           # 00000980
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x008C($sp)          
    lwc1    $f6, 0x0008(s1)            # 00000984
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80970D80 
    swc1    $f8, 0x0090($sp)           
    lwc1    $f10, 0x0000(s0)           # 809733B4
lbl_80970D54:
    lwc1    $f16, 0x0000(s1)           # 0000097C
    lwc1    $f4, 0x0004(s0)            # 809733B8
    add.s   $f18, $f10, $f16           
    lwc1    $f10, 0x0008(s0)           # 809733BC
    swc1    $f18, 0x0088($sp)          
    lwc1    $f6, 0x0004(s1)            # 00000980
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x008C($sp)           
    lwc1    $f16, 0x0008(s1)           # 00000984
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0090($sp)          
lbl_80970D80:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f20             
    lbu     t8, 0x009C($sp)            
    lbu     t0, 0x009D($sp)            
    lbu     t2, 0x009E($sp)            
    lbu     t4, 0x0098($sp)            
    lbu     t6, 0x0099($sp)            
    sub.s   $f6, $f4, $f22             
    trunc.w.s $f8, $f6                   
    mfc1    v0, $f8                    
    nop
    addu    t9, t8, v0                 
    lbu     t8, 0x009A($sp)            
    sb      t9, 0x009C($sp)            
    addu    t1, t0, v0                 
    addu    t3, t2, v0                 
    addu    t5, t4, v0                 
    addu    t7, t6, v0                 
    addu    t9, t8, v0                 
    sb      t1, 0x009D($sp)            
    sb      t3, 0x009E($sp)            
    sb      t5, 0x0098($sp)            
    sb      t7, 0x0099($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    sb      t9, 0x009A($sp)            
    mul.s   $f10, $f0, $f24            
    lw      a0, 0x00D4($sp)            
    or      a1, s8, $zero              # a1 = FFFFFFB8
    or      a2, s4, $zero              # a2 = FFFFFFE0
    or      a3, s5, $zero              # a3 = FFFFFFD4
    sw      s2, 0x0010($sp)            
    sw      s3, 0x0014($sp)            
    add.s   $f16, $f10, $f26           
    sw      $zero, 0x001C($sp)         
    trunc.w.s $f18, $f16                 
    mfc1    t1, $f18                   
    jal     func_8001BD94              
    sw      t1, 0x0018($sp)            
    lui     t2, %hi(var_80973384)      # t2 = 80970000
    addiu   t2, t2, %lo(var_80973384)  # t2 = 80973384
    addiu   s0, s0, 0xFFF4             # s0 = 809733A8
    sltu    $at, s0, t2                
    beql    $at, $zero, lbl_80970CFC   
    lw      t4, 0x0000(s6)             # 8097337C
    jal     func_80970900              
    lw      a0, 0x00D4($sp)            
lbl_80970E3C:
    lw      $ra, 0x0074($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    ldc1    $f28, 0x0048($sp)          
    lw      s0, 0x0050($sp)            
    lw      s1, 0x0054($sp)            
    lw      s2, 0x0058($sp)            
    lw      s3, 0x005C($sp)            
    lw      s4, 0x0060($sp)            
    lw      s5, 0x0064($sp)            
    lw      s6, 0x0068($sp)            
    lw      s7, 0x006C($sp)            
    lw      s8, 0x0070($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00D0           # $sp = 00000000


func_80970E80:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0038($sp)            
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    addiu   v1, a1, 0x1D64             # v1 = 00001D64
    beql    t6, $zero, lbl_80970F50    
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x0030(v1)             # 00001D94
    beql    v0, $zero, lbl_80970F50    
    lw      $ra, 0x0014($sp)           
    lhu     a0, 0x0004(v0)             # 00000004
    lhu     a1, 0x0002(v0)             # 00000002
    lhu     a2, 0x0010(v1)             # 00001D74
    jal     func_8005C690              
    sw      v0, 0x002C($sp)            
    lw      v0, 0x002C($sp)            
    lw      v1, 0x0038($sp)            
    lw      t8, 0x0010(v0)             # 00000010
    lw      t7, 0x000C(v0)             # 0000000C
    lw      t0, 0x0018(v0)             # 00000018
    lw      t9, 0x0014(v0)             # 00000014
    mtc1    t8, $f6                    # $f6 = 0.00
    lw      t2, 0x0020(v0)             # 00000020
    mtc1    t7, $f4                    # $f4 = 0.00
    lw      t1, 0x001C(v0)             # 0000001C
    mtc1    t0, $f10                   # $f10 = 0.00
    cvt.s.w $f12, $f6                  
    mtc1    t9, $f8                    # $f8 = 0.00
    mtc1    t2, $f6                    # $f6 = 0.00
    addiu   v1, v1, 0x0024             # v1 = 00000024
    cvt.s.w $f2, $f4                   
    mtc1    t1, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10                 
    cvt.s.w $f14, $f8                  
    cvt.s.w $f8, $f6                   
    cvt.s.w $f18, $f4                  
    swc1    $f8, 0x001C($sp)           
    sub.s   $f10, $f16, $f2            
    sub.s   $f8, $f18, $f12            
    mul.s   $f4, $f10, $f0             
    nop
    mul.s   $f10, $f8, $f0             
    add.s   $f6, $f4, $f2              
    add.s   $f4, $f10, $f12            
    swc1    $f6, 0x0000(v1)            # 00000024
    swc1    $f4, 0x0004(v1)            # 00000028
    lwc1    $f6, 0x001C($sp)           
    sub.s   $f8, $f6, $f14             
    mul.s   $f10, $f8, $f0             
    add.s   $f4, $f10, $f14            
    swc1    $f4, 0x0008(v1)            # 0000002C
    lw      $ra, 0x0014($sp)           
lbl_80970F50:
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80970F5C:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sw      t6, 0x0188(a0)             # 00000188
    jr      $ra                        
    nop


func_80970F70:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_80971008    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1D94(a1)             # 00001D94
    beql    v0, $zero, lbl_80971008    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a0, 0x0600                 # a0 = 06000000
    beq     t7, $at, lbl_80971004      
    addiu   a0, a0, 0x288C             # a0 = 0600288C
    jal     func_8008A194              
    sw      a1, 0x002C($sp)            
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x288C             # a1 = 0600288C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      a0, 0x0028($sp)            
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t9, 0x0188(a0)             # 00000188
    sw      t0, 0x018C(a0)             # 0000018C
    jal     func_80970E80              
    lw      a1, 0x002C($sp)            
lbl_80971004:
    lw      $ra, 0x0024($sp)           
lbl_80971008:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80971014:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    addiu   v0, a1, 0x1D64             # v0 = 00001D64
    beql    t6, $zero, lbl_8097105C    
    lw      $ra, 0x0014($sp)           
    lw      v1, 0x0030(v0)             # 00001D94
    beql    v1, $zero, lbl_8097105C    
    lw      $ra, 0x0014($sp)           
    lhu     t7, 0x0010(v0)             # 00001D74
    lhu     t8, 0x0004(v1)             # 00000004
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    slt     $at, t7, t8                
    bnel    $at, $zero, lbl_8097105C   
    lw      $ra, 0x0014($sp)           
    jal     func_80970B38              
    sw      t9, 0x0188(a0)             # 00000188
    lw      $ra, 0x0014($sp)           
lbl_8097105C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971068:
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beq     t6, $zero, lbl_80971098    
    nop
    lw      v0, 0x1D94(a1)             # 00001D94
    beq     v0, $zero, lbl_80971098    
    nop
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    beq     t7, $at, lbl_80971098      
    nop
    sw      t8, 0x0188(a0)             # 00000188
lbl_80971098:
    jr      $ra                        
    nop


func_809710A0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_809710FC    
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x74B0             # a0 = 060074B0
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x74B0             # a1 = 060074B0
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    sw      t6, 0x0188(t7)             # 00000188
lbl_809710FC:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_8097110C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_80971198    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1D94(a1)             # 00001D94
    beql    v0, $zero, lbl_80971198    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     a0, 0x0600                 # a0 = 06000000
    beql    t7, $at, lbl_80971198      
    lw      $ra, 0x0024($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x2374             # a0 = 06002374
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x2374             # a1 = 06002374
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t0, 0x0028($sp)            
    addiu   t9, $zero, 0x000D          # t9 = 0000000D
    sw      t9, 0x0188(t0)             # 00000188
    lw      $ra, 0x0024($sp)           
lbl_80971198:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809711A4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_80971200    
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x74B0             # a0 = 060074B0
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x74B0             # a1 = 060074B0
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    sw      t6, 0x0188(t7)             # 00000188
lbl_80971200:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80971210:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_80971298    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1D94(a1)             # 00001D94
    beql    v0, $zero, lbl_80971298    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     a0, 0x0600                 # a0 = 06000000
    beql    t7, $at, lbl_80971298      
    lw      $ra, 0x0024($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x1D70             # a0 = 06001D70
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x1D70             # a1 = 06001D70
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t0, 0x0028($sp)            
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    sw      t9, 0x0188(t0)             # 00000188
    lw      $ra, 0x0024($sp)           
lbl_80971298:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809712A4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_80971304    
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2374             # a0 = 06002374
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x2374             # a1 = 06002374
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t8, 0x0028($sp)            
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sw      t7, 0x0188(t8)             # 00000188
lbl_80971304:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80971314:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_80971370    
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x74B0             # a0 = 060074B0
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x74B0             # a1 = 060074B0
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x0011          # t6 = 00000011
    sw      t6, 0x0188(t7)             # 00000188
lbl_80971370:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80971380:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_80971408    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1D94(a1)             # 00001D94
    beql    v0, $zero, lbl_80971408    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     a0, 0x0600                 # a0 = 06000000
    beql    t7, $at, lbl_80971408      
    lw      $ra, 0x0024($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x0800             # a0 = 06000800
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    addiu   a1, a1, 0x0800             # a1 = 06000800
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t0, 0x0028($sp)            
    addiu   t9, $zero, 0x0012          # t9 = 00000012
    sw      t9, 0x0188(t0)             # 00000188
    lw      $ra, 0x0024($sp)           
lbl_80971408:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80971414:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    beq     a1, $zero, lbl_80971470    
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0D00             # a0 = 06000D00
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x0D00             # a1 = 06000D00
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x0028($sp)            
    addiu   t6, $zero, 0x0013          # t6 = 00000013
    sw      t6, 0x0188(t7)             # 00000188
lbl_80971470:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80971480:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_80971504    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x1D94(a1)             # 00001D94
    beql    v0, $zero, lbl_80971504    
    lw      $ra, 0x0024($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lui     a0, 0x0600                 # a0 = 06000000
    beql    t7, $at, lbl_80971504      
    lw      $ra, 0x0024($sp)           
    jal     func_8008A194              
    addiu   a0, a0, 0x74B0             # a0 = 060074B0
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0                    
    addiu   a1, a1, 0x74B0             # a1 = 060074B0
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t9, 0x0028($sp)            
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sw      t8, 0x0188(t9)             # 00000188
    lw      $ra, 0x0024($sp)           
lbl_80971504:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80971510:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_809708D0              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970F5C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971544:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_809708D0              
    lw      a0, 0x001C($sp)            
    jal     func_809709D8              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970F70              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971580:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80970E80              
    or      a1, s0, $zero              # a1 = 00000000
    lw      a0, 0x0020($sp)            
    jal     func_80970120              
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_809708D0              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809709D8              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0020($sp)            
    jal     func_80971014              
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809715DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809709D8              
    lw      a0, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80971068              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8097161C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80970120              
    lw      a1, 0x0024($sp)            
    jal     func_809700FC              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80970A30              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_809710A0              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8097166C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970A30              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8097110C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809716B8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80970120              
    lw      a1, 0x002C($sp)            
    jal     func_809700FC              
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)            
    jal     func_80970958              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80970A30              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809711A4              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80971718:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970A30              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80971210              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971764:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80970120              
    lw      a1, 0x002C($sp)            
    jal     func_809700FC              
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80970A30              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80970BEC              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809712A4              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809717C8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80970120              
    lw      a1, 0x002C($sp)            
    jal     func_809700FC              
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)            
    jal     func_80970958              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80970A30              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80971314              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80971828:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970A30              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80971380              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971874:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80970120              
    lw      a1, 0x0024($sp)            
    jal     func_809700FC              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80970A30              
    lw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80971414              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809718C4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970A30              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80971480              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971910:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970A30              
    lw      a1, 0x001C($sp)            
    jal     func_80970980              
    lw      a0, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971958:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0x2614             # a0 = 06012614
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a1, 0x0040($sp)            
    lui     a2, 0x0601                 # a2 = 06010000
    cvt.s.w $f6, $f4                   
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    sw      a1, 0x002C($sp)            
    addiu   a2, a2, 0x22A8             # a2 = 060122A8
    lw      a0, 0x0044($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    swc1    $f6, 0x0030($sp)           
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0030($sp)           
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x2614             # a1 = 06012614
    lw      a0, 0x002C($sp)            
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f8, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      v0, 0x0040($sp)            
    addiu   t7, $zero, 0x0015          # t7 = 00000015
    sw      t7, 0x0188(v0)             # 00000188
    sb      $zero, 0x00C8(v0)          # 000000C8
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_809719F8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80064738              
    addiu   a0, $zero, 0x4834          # a0 = 00004834
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971A18:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      a0, 0x0038($sp)            
    lwc1    $f4, 0x0024(a1)            # 00000024
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    swc1    $f4, 0x0010($sp)           
    lui     $at, 0x41B0                # $at = 41B00000
    lh      t7, 0x1474(t6)             # 80121474
    mtc1    $at, $f10                  # $f10 = 22.00
    lwc1    $f18, 0x0028(a1)           # 00000028
    mtc1    t7, $f6                    # $f6 = 0.00
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    cvt.s.w $f8, $f6                   
    addiu   a3, $zero, 0x00F5          # a3 = 000000F5
    add.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0014($sp)           
    lwc1    $f6, 0x002C(a1)            # 0000002C
    sw      t8, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    jal     func_800253F0              
    swc1    $f6, 0x0018($sp)           
    lw      $ra, 0x0034($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80971A98:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    jal     func_80970190              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80971ADC    
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0016          # t6 = 00000016
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x0188(a0)             # 00000188
    sw      t7, 0x018C(a0)             # 0000018C
    sw      $zero, 0x0198(a0)          # 00000198
    sb      $zero, 0x00C8(a0)          # 000000C8
    jal     func_809719F8              
    swc1    $f4, 0x0194(a0)            # 00000194
lbl_80971ADC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971AEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    jal     func_80970190              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80971B9C    
    lw      a0, 0x0018($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   v0, a0, 0x0194             # v0 = 00000194
    lwc1    $f4, 0x0000(v0)            # 00000194
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBA00             # a1 = 8011BA00
    add.s   $f8, $f4, $f6              
    addiu   t8, $zero, 0x0017          # t8 = 00000017
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f8, 0x0000(v0)            # 00000194
    lw      t6, 0x0000(a1)             # 8011BA00
    lwc1    $f0, 0x0000(v0)            # 00000194
    lh      t7, 0x145E(t6)             # 0000145E
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f18, $f16, $f2            
    c.le.s  $f18, $f0                  
    nop
    bc1f    lbl_80971BE4               
    nop
    sw      t8, 0x0188(a0)             # 00000188
    sw      t9, 0x018C(a0)             # 0000018C
    lw      t0, 0x0000(a1)             # 8011BA00
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lh      t1, 0x145E(t0)             # 0000145E
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f6, $f2              
    swc1    $f8, 0x0000(v0)            # 00000194
    sw      v1, 0x0198(a0)             # 00000198
    beq     $zero, $zero, lbl_80971C30 
    sb      v1, 0x00C8(a0)             # 000000C8
lbl_80971B9C:
    addiu   v0, a0, 0x0194             # v0 = 00000194
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f10, 0x0000(v0)           # 00000194
    mtc1    $zero, $f2                 # $f2 = 0.00
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0000(v0)           # 00000194
    lwc1    $f0, 0x0000(v0)            # 00000194
    c.le.s  $f0, $f2                   
    nop
    bc1f    lbl_80971BE4               
    addiu   t2, $zero, 0x0015          # t2 = 00000015
    sw      t2, 0x0188(a0)             # 00000188
    sw      $zero, 0x018C(a0)          # 0000018C
    swc1    $f2, 0x0000(v0)            # 00000194
    sw      $zero, 0x0198(a0)          # 00000198
    beq     $zero, $zero, lbl_80971C30 
    sb      $zero, 0x00C8(a0)          # 000000C8
lbl_80971BE4:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBA00             # a1 = 8011BA00
    lw      t3, 0x0000(a1)             # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lh      t4, 0x145E(t3)             # 0000145E
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f8, $f6, $f2              
    div.s   $f10, $f0, $f8             
    mul.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    v0, $f4                    
    nop
    sw      v0, 0x0198(a0)             # 00000198
    sb      v0, 0x00C8(a0)             # 000000C8
lbl_80971C30:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971C40:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    jal     func_809701DC              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80971CCC    
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0016          # t6 = 00000016
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x0188(a0)             # 00000188
    sw      t7, 0x018C(a0)             # 0000018C
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lh      t9, 0x145E(t8)             # 8012145E
    lw      t1, 0x019C(a0)             # 0000019C
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    mtc1    t9, $f4                    # $f4 = 0.00
    sw      t0, 0x0198(a0)             # 00000198
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    bne     t1, $zero, lbl_80971CC4    
    swc1    $f10, 0x0194(a0)           # 00000194
    lw      a1, 0x001C($sp)            
    jal     func_80971A18              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x019C(a0)             # 0000019C
lbl_80971CC4:
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    sb      t3, 0x00C8(a0)             # 000000C8
lbl_80971CCC:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971CDC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80971A98              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971CFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    jal     func_80970044              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80971AEC              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971D44:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    jal     func_80970044              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80971C40              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80971D8C:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0054($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x0180(a3)             # 00000180
    lh      a2, 0x0184(a3)             # 00000184
    lui     t3, %hi(var_80973344)      # t3 = 80970000
    lui     t4, %hi(var_80973354)      # t4 = 80970000
    sll     t6, v0,  2                 
    sll     t7, a2,  2                 
    addu    t3, t3, t6                 
    addu    t4, t4, t7                 
    lw      t3, %lo(var_80973344)(t3)  
    lw      t4, %lo(var_80973354)(t4)  
    lw      t8, 0x0054($sp)            
    lw      a0, 0x0000(t8)             # 00000000
    sw      t4, 0x0034($sp)            
    sw      t3, 0x0040($sp)            
    sw      a3, 0x0050($sp)            
    jal     func_8007E2C0              
    sw      a0, 0x002C($sp)            
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t1, 0x00FF                 # t1 = 00FF0000
    ori     t1, t1, 0xFFFF             # t1 = 00FFFFFF
    addiu   t0, t0, 0x0C38             # t0 = 80120C38
    lw      v1, 0x002C($sp)            
    lui     t2, 0x8000                 # t2 = 80000000
    lw      t3, 0x0040($sp)            
    lw      t4, 0x0034($sp)            
    lw      $ra, 0x0050($sp)           
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    sll     t7, t3,  4                 
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    srl     t8, t7, 28                 
    ori     t6, t6, 0x0020             # t6 = DB060020
    sll     t9, t8,  2                 
    sw      t6, 0x0000(v0)             # 00000000
    addu    t6, t0, t9                 
    lw      t7, 0x0000(t6)             # DB060020
    and     t8, t3, t1                 
    lui     a3, 0x0601                 # a3 = 06010000
    addu    t9, t7, t8                 
    addu    t6, t9, t2                 
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    sll     t9, t4,  4                 
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    srl     t6, t9, 28                 
    ori     t8, t8, 0x0024             # t8 = DB060024
    sll     t7, t6,  2                 
    sw      t8, 0x0000(v0)             # 00000000
    addu    t8, t0, t7                 
    lw      t9, 0x0000(t8)             # DB060024
    and     t6, t4, t1                 
    addiu   a3, a3, 0x85C0             # a3 = 060085C0
    addu    t7, t9, t6                 
    addu    t8, t7, t2                 
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    sll     t7, a3,  4                 
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    srl     t8, t7, 28                 
    ori     t6, t6, 0x0028             # t6 = DB060028
    sll     t9, t8,  2                 
    sw      t6, 0x0000(v0)             # 00000000
    addu    t6, t0, t9                 
    lw      t7, 0x0000(t6)             # DB060028
    and     t8, a3, t1                 
    addiu   t0, $ra, 0x013C            # t0 = 0000013C
    addu    t9, t7, t8                 
    addu    t6, t9, t2                 
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0198($ra)            # 00000198
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0030             # t8 = DB060030
    andi    t6, t9, 0x00FF             # t6 = 00000008
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x8510             # t9 = 800E8510
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      a1, 0x0004(t0)             # 00000140
    lw      a2, 0x0020(t0)             # 0000015C
    lbu     a3, 0x0002(t0)             # 0000013E
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    lw      t6, 0x02D0(v1)             # 000002D0
    sw      v1, 0x002C($sp)            
    lw      a0, 0x0054($sp)            
    jal     func_8008A88C              
    sw      t6, 0x001C($sp)            
    lw      v1, 0x002C($sp)            
    sw      v0, 0x02D0(v1)             # 000002D0
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80971F48:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x6DCC             # a3 = 06006DCC
    addiu   a2, a2, 0x22A8             # a2 = 060122A8
    lw      a0, 0x0034($sp)            
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    addiu   t6, $zero, 0x0018          # t6 = 00000018
    sw      t6, 0x0188(s0)             # 00000188
    sw      $zero, 0x018C(s0)          # 0000018C
    sb      $zero, 0x00C8(s0)          # 000000C8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809700E4              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80971FB4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0194(a0)            # 00000194
    lui     t6, 0x8012                 # t6 = 80120000
    lui     $at, 0x4120                # $at = 41200000
    add.s   $f8, $f4, $f6              
    mtc1    $at, $f18                  # $f18 = 10.00
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    swc1    $f8, 0x0194(a0)            # 00000194
    lw      t6, -0x4600(t6)            # 8011BA00
    lwc1    $f4, 0x0194(a0)            # 00000194
    lh      t7, 0x1476(t6)             # 80121476
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    add.s   $f0, $f16, $f18            
    c.le.s  $f0, $f4                   
    nop
    bc1fl   lbl_80972014               
    lwc1    $f6, 0x0194(a0)            # 00000194
    sw      v0, 0x0198(a0)             # 00000198
    jr      $ra                        
    sb      v0, 0x00C8(a0)             # 000000C8
lbl_80972010:
    lwc1    $f6, 0x0194(a0)            # 00000194
lbl_80972014:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    div.s   $f8, $f6, $f0              
    mul.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    v0, $f18                   
    nop
    sw      v0, 0x0198(a0)             # 00000198
    sb      v0, 0x00C8(a0)             # 000000C8
    jr      $ra                        
    nop


func_80972040:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80970228              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0019          # t6 = 00000019
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x0188(a0)             # 00000188
    sw      t7, 0x018C(a0)             # 0000018C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80972078:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lh      t7, 0x1476(t6)             # 80121476
    lwc1    $f4, 0x0194(a0)            # 00000194
    addiu   t8, $zero, 0x001A          # t8 = 0000001A
    mtc1    t7, $f6                    # $f6 = 0.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    cvt.s.w $f8, $f6                   
    add.s   $f16, $f8, $f10            
    c.le.s  $f16, $f4                  
    nop
    bc1f    lbl_809720BC               
    nop
    sw      t8, 0x0188(a0)             # 00000188
    sw      t9, 0x018C(a0)             # 0000018C
lbl_809720BC:
    jr      $ra                        
    nop


func_809720C4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5A58             # a1 = 06005A58
    lw      a0, 0x0020($sp)            
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_809702A8              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x001B          # t6 = 0000001B
    sw      t6, 0x0188(t7)             # 00000188
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80972104:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x6704             # a1 = 06006704
    lw      a0, 0x0020($sp)            
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_809702A8              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x001C          # t6 = 0000001C
    sw      t6, 0x0188(t7)             # 00000188
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80972144:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    beq     a1, $zero, lbl_8097217C    
    lw      a0, 0x0020($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x6DCC             # a1 = 06006DCC
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_809702A8              
    sw      $zero, 0x0010($sp)         
    lw      t7, 0x0020($sp)            
    addiu   t6, $zero, 0x001A          # t6 = 0000001A
    sw      t6, 0x0188(t7)             # 00000188
lbl_8097217C:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8097218C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80970168              
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beql    v0, $zero, lbl_80972228    
    lw      $ra, 0x001C($sp)           
    lhu     a2, 0x0000(v0)             # 00000000
    lw      v1, 0x01A0(s0)             # 000001A0
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beql    a2, v1, lbl_80972228       
    lw      $ra, 0x001C($sp)           
    beq     a2, $at, lbl_809721F0      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     a2, $at, lbl_80972204      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     a2, $at, lbl_80972214      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80972224 
    sw      a2, 0x01A0(s0)             # 000001A0
lbl_809721F0:
    lw      a1, 0x002C($sp)            
    jal     func_80972040              
    sw      a2, 0x0020($sp)            
    beq     $zero, $zero, lbl_80972220 
    lw      a2, 0x0020($sp)            
lbl_80972204:
    jal     func_809720C4              
    sw      a2, 0x0020($sp)            
    beq     $zero, $zero, lbl_80972220 
    lw      a2, 0x0020($sp)            
lbl_80972214:
    jal     func_80972104              
    sw      a2, 0x0020($sp)            
    lw      a2, 0x0020($sp)            
lbl_80972220:
    sw      a2, 0x01A0(s0)             # 000001A0
lbl_80972224:
    lw      $ra, 0x001C($sp)           
lbl_80972228:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80972238:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_8097218C              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80972258:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_80970120              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809700FC              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80970044              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80971FB4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80972078              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809722A4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    jal     func_80970044              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8097218C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809722EC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80970120              
    lw      a1, 0x001C($sp)            
    jal     func_809700FC              
    lw      a0, 0x0018($sp)            
    jal     func_80970044              
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8097218C              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80972334:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    jal     func_80970120              
    lw      a0, 0x0020($sp)            
    jal     func_809700FC              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    jal     func_80970044              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80972144              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80972378:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0188(a0)             # 00000188
    bltz    v0, lbl_809723B0           
    slti    $at, v0, 0x001D            
    beq     $at, $zero, lbl_809723B0   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_809733FC)      # v1 = 80970000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_809733FC)(v1)  
    beql    v1, $zero, lbl_809723B4    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_809723B0:
    lw      $ra, 0x0014($sp)           
lbl_809723B4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809723C0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 # a3 = 41F00000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a1, 0x0024($sp)            
    beq     v0, $at, lbl_80972418      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80972428      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80972438      
    nop
    beq     $zero, $zero, lbl_80972448 
    nop
lbl_80972418:
    jal     func_80970858              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80972454 
    lw      $ra, 0x001C($sp)           
lbl_80972428:
    jal     func_80971958              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80972454 
    lw      $ra, 0x001C($sp)           
lbl_80972438:
    jal     func_80971F48              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80972454 
    lw      $ra, 0x001C($sp)           
lbl_80972448:
    jal     func_80970338              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80972454:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80972464:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80972474:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0054($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x0180(a3)             # 00000180
    lh      a2, 0x0184(a3)             # 00000184
    lui     t3, %hi(var_80973344)      # t3 = 80970000
    lui     t4, %hi(var_80973354)      # t4 = 80970000
    sll     t6, v0,  2                 
    sll     t7, a2,  2                 
    addu    t3, t3, t6                 
    addu    t4, t4, t7                 
    lw      t3, %lo(var_80973344)(t3)  
    lw      t4, %lo(var_80973354)(t4)  
    lw      t8, 0x0054($sp)            
    lw      a0, 0x0000(t8)             # 00000000
    sw      t4, 0x0034($sp)            
    sw      t3, 0x0040($sp)            
    sw      a3, 0x0050($sp)            
    jal     func_8007E298              
    sw      a0, 0x002C($sp)            
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t1, 0x00FF                 # t1 = 00FF0000
    ori     t1, t1, 0xFFFF             # t1 = 00FFFFFF
    addiu   t0, t0, 0x0C38             # t0 = 80120C38
    lw      v1, 0x002C($sp)            
    lui     t2, 0x8000                 # t2 = 80000000
    lw      t3, 0x0040($sp)            
    lw      t4, 0x0034($sp)            
    lw      $ra, 0x0050($sp)           
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    sll     t7, t3,  4                 
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    srl     t8, t7, 28                 
    ori     t6, t6, 0x0020             # t6 = DB060020
    sll     t9, t8,  2                 
    sw      t6, 0x0000(v0)             # 00000000
    addu    t6, t0, t9                 
    lw      t7, 0x0000(t6)             # DB060020
    and     t8, t3, t1                 
    lui     a3, 0x0601                 # a3 = 06010000
    addu    t9, t7, t8                 
    addu    t6, t9, t2                 
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    sll     t9, t4,  4                 
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    srl     t6, t9, 28                 
    ori     t8, t8, 0x0024             # t8 = DB060024
    sll     t7, t6,  2                 
    sw      t8, 0x0000(v0)             # 00000000
    addu    t8, t0, t7                 
    lw      t9, 0x0000(t8)             # DB060024
    and     t6, t4, t1                 
    addiu   a3, a3, 0x85C0             # a3 = 060085C0
    addu    t7, t9, t6                 
    addu    t8, t7, t2                 
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    sll     t7, a3,  4                 
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    srl     t8, t7, 28                 
    ori     t6, t6, 0x0028             # t6 = DB060028
    sll     t9, t8,  2                 
    sw      t6, 0x0000(v0)             # 00000000
    addu    t6, t0, t9                 
    lw      t7, 0x0000(t6)             # DB060028
    and     t8, a3, t1                 
    addiu   t0, $ra, 0x013C            # t0 = 0000013C
    addu    t9, t7, t8                 
    addu    t6, t9, t2                 
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    addiu   t8, t8, 0x8520             # t8 = 800E8520
    ori     t7, t7, 0x0030             # t7 = DB060030
    sw      t7, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      a1, 0x0004(t0)             # 00000140
    lw      a2, 0x0020(t0)             # 0000015C
    lbu     a3, 0x0002(t0)             # 0000013E
    sw      $ra, 0x0018($sp)           
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    lw      a0, 0x0054($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_8097261C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x018C(a0)             # 0000018C
    bltz    v0, lbl_80972654           
    slti    $at, v0, 0x0003            
    beq     $at, $zero, lbl_80972654   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_80973470)      # v1 = 80970000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_80973470)(v1)  
    beql    v1, $zero, lbl_80972658    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_80972654:
    lw      $ra, 0x0014($sp)           
lbl_80972658:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

.word 0x00000000
var_80972674: .word \
0x0000001F, 0x00000BB8, 0x00000020, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0xFFFFFFFC, 0x00000002, 0x00000000, 0xFFFFFFFC, \
0x00000002, 0x00000000, 0x00000000, 0x00000000, \
0x0000001F, 0x00000005, 0x00010000, 0x02220000, \
0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, \
0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, \
0x00000000, 0x00000000, 0x00020222, 0x02230000, \
0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, \
0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, \
0x00000000, 0x00000000, 0x00040223, 0x02680000, \
0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, \
0x00000000, 0x000000D8, 0xFFFFFFF6, 0x00000000, \
0x00000000, 0x00000000, 0x00020268, 0x029B0000, \
0x00000000, 0x00000000, 0x000000D8, 0xFFFFFFF6, \
0x00000000, 0x00000052, 0x00000000, 0x00000000, \
0xC0282828, 0x00000000, 0x0003029B, 0x0B120000, \
0x00000000, 0x00000000, 0x00000052, 0x00000000, \
0x00000000, 0x00000052, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000000A, 0x00000003, \
0x000D0000, 0x01180000, 0x6AAA0000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x00050118, 0x02130000, 0x6AAA0000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x00130213, 0x06B40000, 0xEAAA0000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x00000029, 0x00000003, 0x00010000, 0x00AA0000, \
0x00000000, 0x00000062, 0x00000006, 0xFFFFFF57, \
0x00000062, 0x00000006, 0xFFFFFF57, 0x00000000, \
0x00000000, 0x00000000, 0x000200AA, 0x01D10000, \
0x00000000, 0x00000062, 0x00000006, 0xFFFFFF57, \
0x00000062, 0x00000006, 0xFFFFFF57, 0x00000000, \
0x00000000, 0x00000000, 0x000301D1, 0x0B630000, \
0x00000000, 0x00000062, 0x00000006, 0xFFFFFF57, \
0x00000062, 0x00000006, 0xFFFFFF57, 0x00000000, \
0x00000000, 0x00000000, 0x00000031, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0xFFFFFFF0, 0xFFFFFF87, 0x00000000, 0xFFFFFFF0, \
0xFFFFFF87, 0x00000000, 0x00000000, 0x00000000, \
0x0000002D, 0x00000001, 0x00010212, 0x021B021B, \
0x0000002D, 0x00000001, 0x0005021C, 0x023A023A, \
0x00000004, 0x00000002, 0x00010000, 0x000A0000, \
0x00000000, 0xFFFFFFDC, 0x00000000, 0x00000018, \
0xFFFFFFDC, 0x00000000, 0x00000018, 0x00000000, \
0x00000000, 0x00000000, 0x0001000A, 0x0BB80000, \
0x00000000, 0xFFFFFFDC, 0x00000000, 0x00000018, \
0xFFFFFFDC, 0x00000000, 0x00000018, 0x00000000, \
0x00000000, 0x00000000, 0x00000027, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000000, \
0xFFFFFFFE, 0x00000000, 0x00000000, 0x00000000, \
0x0000002D, 0x00000001, 0x00010325, 0x03430343, \
0x0000003E, 0x00000001, 0x00040000, 0x0BB80000, \
0x00000000, 0x00000020, 0x00000050, 0xFFFFFFCD, \
0x00000020, 0x00000050, 0xFFFFFFCD, 0x00000000, \
0x00000000, 0x00000000, 0x000003E8, 0x00000001, \
0x00620389, 0x04060406, 0x00000056, 0x00000001, \
0x00440267, 0x02680000, 0x00000000, 0xFFFFFF97, \
0x00000000, 0x00000030, 0xFFFFFF97, 0x00000000, \
0x00000030, 0x00000000, 0x00000000, 0x00000000, \
0x0000007C, 0x00000001, 0x000401F4, 0x02260000, \
0x00000000, 0x00000000, 0xFFFFFFC3, 0x0000006E, \
0x00000000, 0xFFFFFFC3, 0x0000006E, 0x00000000, \
0x00000000, 0x00000000, 0x00000013, 0x0000000A, \
0xFFFF0000, 0x0136FFFF, 0xFFFFFFFF, 0x303C0136, \
0x01430000, 0x00000000, 0xFFFF0143, 0x0158FFFF, \
0xFFFFFFFF, 0x30450158, 0x018A0000, 0x00000000, \
0xFFFF018A, 0x019FFFFF, 0xFFFFFFFF, 0x3046019F, \
0x01D10000, 0x00000000, 0xFFFF01D1, 0x0320FFFF, \
0xFFFFFFFF, 0x003C0320, 0x03250000, 0x00000000, \
0xFFFF0325, 0x0361FFFF, 0xFFFFFFFF, 0x303D0361, \
0x036B0000, 0x00000000, 0x00000001, 0x00010000, \
0x05510000, 0x00000000, 0x4271999A, 0xFFAB0C8B, \
0x031B00C6, 0x00000000, 0x4271999A, 0xFFAB0C8B, \
0x031B00C8, 0x00000000, 0x4271999A, 0xFFAB0B6D, \
0x031B00D7, 0x00000000, 0x4271999A, 0x004603CE, \
0x01F100E8, 0x00000000, 0x4271999A, 0x0140010C, \
0x012800EA, 0x00000000, 0x4271999A, 0x013800BE, \
0x0096013D, 0x00000000, 0x4271999A, 0x0105003D, \
0xFFBF013F, 0x00000000, 0x4271999A, 0x0105003D, \
0xFFBF014E, 0x00000000, 0x4271999A, 0x0105003D, \
0xFFBF015F, 0xFF000000, 0x4271999A, 0x0105003D, \
0xFFBF0161, 0x00000001, 0x00010107, 0x01FD0000, \
0x00000000, 0x41EB32F7, 0x0059001E, 0xFF9900C6, \
0x00000000, 0x4270CCCD, 0x0059001E, 0xFF9900C8, \
0x00000000, 0x4270CCCD, 0x0059001E, 0xFF9900D7, \
0x00000000, 0x4270CCCD, 0x0059001E, 0xFF9900E8, \
0xFF000000, 0x4270CCCD, 0x0059001E, 0xFF9900EA, \
0x00000001, 0x0001014D, 0x05900000, 0x00000000, \
0x4237FFF2, 0x00720032, 0xFF8C00C6, 0x00000000, \
0x4237FFF2, 0x00720032, 0xFF8C00C8, 0x00000000, \
0x4237FFF2, 0x00720032, 0xFF8C00D7, 0x00000000, \
0x4237FFF2, 0x00720032, 0xFF8C00E8, 0xFF000000, \
0x4237FFF2, 0x00720032, 0xFF8C00EA, 0x00000001, \
0x00010193, 0x05D60000, 0x00000000, 0x42366658, \
0x001A002D, 0xFFF600C6, 0x00000000, 0x42366658, \
0x001A002D, 0xFFF600C8, 0x00000000, 0x42366658, \
0x001A002D, 0xFFF600D7, 0x00000000, 0x42366658, \
0x001A002D, 0xFFF600E8, 0xFF000000, 0x42366658, \
0x001A002D, 0xFFF600EA, 0x00000001, 0x000101BB, \
0x06580000, 0x00000000, 0x4235998B, 0x000B0017, \
0xFFEF00C6, 0x00000000, 0x4235998B, 0x000B0017, \
0xFFEF00C8, 0x00000000, 0x4235998B, 0x001B001F, \
0xFFD300D7, 0x00000000, 0x4235998B, 0x002D0028, \
0xFFB400E8, 0x00000000, 0x4235998B, 0x002D0028, \
0xFFB400EA, 0x00000000, 0x4235998B, 0x002D0028, \
0xFFB4013D, 0x00000000, 0x4235998B, 0x002D0028, \
0xFFB4013F, 0xFF000000, 0x4235998B, 0x002D0028, \
0xFFB4002E, 0x00000001, 0x000101D9, 0x06440000, \
0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00C6, \
0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00C8, \
0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00D7, \
0x00000000, 0x4234CCBE, 0x00C0001D, 0xFF0A00E8, \
0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A00EA, \
0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A013D, \
0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A013F, \
0x00000000, 0x428CCCC2, 0x00C00116, 0xFF0A002E, \
0xFF000000, 0x428CCCC2, 0x00C00116, 0xFF0A0063, \
0x00000001, 0x0001021B, 0x03710000, 0x00000000, \
0x42700000, 0x000D0356, 0x000200C6, 0x00000000, \
0x42700000, 0x00090355, 0x000500C8, 0x00000000, \
0x42700000, 0xFFFD0355, 0x000500D7, 0x00000000, \
0x42700000, 0xFFF70355, 0xFFFA00E8, 0x00000000, \
0x42700000, 0xFFFE0354, 0xFFEF00EA, 0x00000000, \
0x42700000, 0x00090354, 0xFFEF013D, 0x00000000, \
0x42700000, 0x00100354, 0xFFFA013F, 0x00000000, \
0x42700000, 0x00090354, 0x0005002E, 0xFF000000, \
0x42700000, 0xFFFD0353, 0x00050063, 0x00000005, \
0x00010267, 0x07040000, 0x00000000, 0x4289332C, \
0x00000021, 0xFFE500C6, 0x00000000, 0x4289332C, \
0x00000021, 0xFFE500C8, 0x00000000, 0x4289332C, \
0x00000044, 0xFFE600D7, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE600E8, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE600EA, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE6013D, 0x00000000, 0x4289332C, \
0x00000067, 0xFFE6013F, 0xFF000000, 0x4289332C, \
0x00000067, 0xFFE6002E, 0x00000002, 0x00010000, \
0x056E0000, 0x0000003C, 0x4271999A, 0xFF8D0C5B, \
0x024900C6, 0x0000003C, 0x4271999A, 0xFF8D0C5B, \
0x024900C8, 0x0000003C, 0x4271999A, 0xFF8D0B3D, \
0x024900D7, 0x0000001E, 0x4271999A, 0x001B0338, \
0x015C00E8, 0x00000028, 0x4271999A, 0x00C5008F, \
0x00AE00EA, 0x00000028, 0x4271999A, 0x00930064, \
0x0037013D, 0x00000028, 0x4271999A, 0x00370023, \
0xFFBF013F, 0x000003E8, 0x4271999A, 0x00370023, \
0xFFBF014E, 0x0000001E, 0x4271999A, 0x00370023, \
0xFFBF015F, 0xFF00001E, 0x4271999A, 0x00380023, \
0xFFBF0161, 0x00000002, 0x00010107, 0x021A0000, \
0x0000001E, 0x429DFFE4, 0x0057009D, 0xFE7900C6, \
0x00000052, 0x429D997E, 0x0057009D, 0xFE7900C8, \
0x00000067, 0x428D998E, 0x0057009D, 0xFE7900D7, \
0x0000001E, 0x4270CCCD, 0x0057009D, 0xFE7900E8, \
0xFF00001E, 0x4270CCCD, 0x0057009D, 0xFE7900EA, \
0x00000002, 0x0001014D, 0x05AD0000, 0x0000001E, \
0x4237FFF2, 0xFFCC007F, 0xFECB00C6, 0x0000001E, \
0x4237FFF2, 0xFFCC007F, 0xFECB00C8, 0x000003E8, \
0x4237FFF2, 0xFFCC007F, 0xFECB00D7, 0x0000001E, \
0x4237FFF2, 0xFFCC007F, 0xFECB00E8, 0xFF00001E, \
0x4237FFF2, 0xFFCC007F, 0xFECB00EA, 0x00000002, \
0x00010193, 0x05F30000, 0x0000001E, 0x42366658, \
0xFEF300BA, 0x000D00C6, 0x0000001E, 0x42366658, \
0xFEF300BA, 0x000D00C8, 0x000003E8, 0x42366658, \
0xFEF300BA, 0x000D00D7, 0x0000001E, 0x42366658, \
0xFEF300BA, 0x000D00E8, 0xFF00001E, 0x42366658, \
0xFEF300BA, 0x000D00EA, 0x00000002, 0x000101BB, \
0x06750000, 0x0000001E, 0x4235998B, 0x00A30046, \
0xFEE500C6, 0x0000001E, 0x4235998B, 0x00A30046, \
0xFEE500C8, 0x0000001E, 0x4235998B, 0x00B1004A, \
0xFECB00D7, 0x0000001E, 0x4235998B, 0x00C1005C, \
0xFEAF00E8, 0x0000001E, 0x4235998B, 0x00C1005C, \
0xFEAF00EA, 0x000003E8, 0x4235998B, 0x00C0005B, \
0xFEB0013D, 0x0000001E, 0x4235998B, 0x00C0005B, \
0xFEB0013F, 0xFF00001E, 0x4235998B, 0x00C0005B, \
0xFEB0002E, 0x00000002, 0x000101D9, 0x06610000, \
0x00000014, 0x4234CCBE, 0xFFF70039, 0xFFCB00C6, \
0x00000014, 0x4234CCBE, 0xFFF70039, 0xFFCB00C8, \
0x00000014, 0x4234CCBE, 0xFFF70039, 0xFFCA00D7, \
0x00000014, 0x4237FFF2, 0xFFF80039, 0xFFCA00E8, \
0x0000000A, 0x428CCCC2, 0x00950223, 0xFF3300EA, \
0x0000000A, 0x428CCCC2, 0x00950223, 0xFF33013D, \
0x000003E8, 0x428CCCC2, 0x00950223, 0xFF33013F, \
0x0000001E, 0x428CCCC2, 0x00950223, 0xFF33002E, \
0xFF00001E, 0x428CCCC2, 0x00950223, 0xFF330063, \
0x00000002, 0x0001021B, 0x03A20000, 0x00000032, \
0x42700000, 0x00030006, 0xFFFA00C6, 0x00000028, \
0x42700000, 0x00030006, 0xFFFA00C8, 0x0000001E, \
0x424BFFF7, 0x00030006, 0xFFFA00D7, 0x00000014, \
0x41A4CC7E, 0x00030006, 0xFFFA00E8, 0x00000033, \
0x412CCC23, 0x00030006, 0xFFFA00EA, 0x00000032, \
0x412665BD, 0x00030006, 0xFFFA013D, 0x00000032, \
0x412665BD, 0x00030006, 0xFFFA013F, 0x00000032, \
0x4123328A, 0x00030006, 0xFFFA002E, 0xFF000032, \
0x412FFF56, 0x00030006, 0xFFFA0063, 0x00000006, \
0x00010267, 0x07210000, 0x0000001E, 0x4289332C, \
0x00000064, 0x000500C6, 0x0000001E, 0x4289332C, \
0x00000065, 0x000600C8, 0x0000001E, 0x4289332C, \
0x00010063, 0x002900D7, 0x0000001E, 0x4289332C, \
0x0000002A, 0x001000E8, 0x0000001E, 0x4289332C, \
0x0000002A, 0x001000EA, 0x000003E8, 0x4289332C, \
0x0000002A, 0x0010013D, 0x0000001E, 0x4289332C, \
0x0000002A, 0x0010013F, 0xFF00001E, 0x4289332C, \
0x0000002A, 0x0010002E, 0xFFFFFFFF, 0x00000000
var_80973344: .word 0x06008680, 0x06008A80, 0x06008E80, 0x0600AB40
var_80973354: .word 0x06009280, 0x0600A340, 0x0600AF40, 0x0600B780
var_80973364: .word 0x00000000, 0x00000000, 0x00000000
var_80973370: .word 0x00000000, 0x3E99999A, 0x00000000
var_8097337C: .word 0xBE966EFF
var_80973380: .word 0x785028FF
var_80973384: .word \
0x41300000, 0xC1300000, 0xC0C00000, 0x00000000, \
0x41600000, 0xC1500000, 0x41600000, 0xC0000000, \
0xC1200000, 0x41200000, 0xC0C00000, 0xC1000000
var_809733B4: .word \
0x41000000, 0x40C00000, 0x41000000, 0x41500000, \
0x41000000, 0xC1200000, 0xC1600000, 0x3F800000, \
0xC1600000, 0x40A00000, 0x41400000, 0xC1100000, \
0x41300000, 0x40C00000, 0xC0E00000, 0x41600000, \
0x41600000, 0xC1600000
var_809733FC: .word func_80970700
.word func_80970720
.word func_80970740
.word func_80970774
.word func_809707B4
.word func_809707EC
.word func_8097082C
.word func_80971510
.word func_80971544
.word func_80971580
.word func_809715DC
.word func_8097161C
.word func_8097166C
.word func_809716B8
.word func_80971718
.word func_80971764
.word func_809717C8
.word func_80971828
.word func_80971874
.word func_809718C4
.word func_80971910
.word func_80971CDC
.word func_80971CFC
.word func_80971D44
.word func_80972238
.word func_80972258
.word func_809722A4
.word func_809722EC
.word func_80972334
var_80973470: .word func_80972464
.word func_80972474
.word func_80971D8C
var_8097347C: .word 0x00A80400, 0x00000010, 0x009D0000, 0x000001A4
.word func_809723C0
.word func_80970020
.word func_80972378
.word func_8097261C
.word 0x00000000

.section .rodata

var_809734A0: .word 0xC61C4000
var_809734A4: .word 0x42A6AAAB, 0x00000000, 0x00000000

