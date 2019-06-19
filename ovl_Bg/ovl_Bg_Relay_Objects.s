.section .text
func_80A7D750:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_80A7DE20)      # a1 = 80A80000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_80A7DE20)  # a1 = 80A7DE20
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    sra     t9, t8,  8                 
    andi    t0, t9, 0x00FF             # t0 = 00000000
    andi    t7, t6, 0x003F             # t7 = 00000000
    sb      t7, 0x0158(s0)             # 00000158
    sh      t0, 0x001C(s0)             # 0000001C
    jal     func_80035260              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lh      t1, 0x001C(s0)             # 0000001C
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    bne     t1, $zero, lbl_80A7D848    
    addiu   a0, a0, 0x03C4             # a0 = 060003C4
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_80033EF4              
    addiu   a0, a0, 0x25FC             # a0 = 060025FC
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x4B50(t2)            # 8011B4B0
    addiu   t4, $zero, 0x0400          # t4 = 00000400
    addiu   t5, $zero, 0x0080          # t5 = 00000080
    andi    t3, t2, 0x0020             # t3 = 00000000
    beql    t3, $zero, lbl_80A7D7E8    
    sh      t5, 0x0032(s0)             # 00000032
    beq     $zero, $zero, lbl_80A7D7E8 
    sh      t4, 0x0032(s0)             # 00000032
    sh      t5, 0x0032(s0)             # 00000032
lbl_80A7D7E8:
    jal     func_800C646C              
    nop
    lui     v1, %hi(var_80A7DE28)      # v1 = 80A80000
    lw      v1, %lo(var_80A7DE28)(v1)  
    lw      t7, 0x0004(s0)             # 00000004
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    andi    t9, v1, 0x0002             # t9 = 00000000
    ori     t8, t7, 0x0020             # t8 = 00000020
    sb      t6, 0x0003(s0)             # 00000003
    beq     t9, $zero, lbl_80A7D82C    
    sw      t8, 0x0004(s0)             # 00000004
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    sh      t0, 0x001C(s0)             # 0000001C
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A7D968 
    lw      a0, 0x0034($sp)            
lbl_80A7D82C:
    lui     t1, %hi(func_80A7DCAC)     # t1 = 80A80000
    addiu   t1, t1, %lo(func_80A7DCAC) # t1 = 80A7DCAC
    ori     v1, v1, 0x0002             # v1 = 00000002
    sw      t1, 0x0154(s0)             # 00000154
    lui     $at, %hi(var_80A7DE28)     # $at = 80A80000
    beq     $zero, $zero, lbl_80A7D964 
    sw      v1, %lo(var_80A7DE28)($at) 
lbl_80A7D848:
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lb      v0, 0x0003(s0)             # 00000003
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    lui     v1, %hi(var_80A7DE28)      # v1 = 80A80000
    bne     v0, $zero, lbl_80A7D874    
    addiu   t4, v0, 0x0001             # t4 = 00000001
    lbu     t2, 0x0158(s0)             # 00000158
    addiu   t3, t2, 0xFFCD             # t3 = FFFFFFCD
    beq     $zero, $zero, lbl_80A7D878 
    sb      t3, 0x0159(s0)             # 00000159
lbl_80A7D874:
    sb      t4, 0x0159(s0)             # 00000159
lbl_80A7D878:
    lb      v0, 0x0159(s0)             # 00000159
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t5, 0x0003(s0)             # 00000003
    slti    $at, v0, 0x0006            
    bne     $at, $zero, lbl_80A7D8C8   
    sh      t6, 0x015A(s0)             # 0000015A
    lw      v1, %lo(var_80A7DE28)(v1)  
    lui     t8, %hi(func_80A7DC2C)     # t8 = 80A80000
    addiu   t8, t8, %lo(func_80A7DC2C) # t8 = 80A7DC2C
    andi    t7, v1, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80A7D8B8    
    ori     v1, v1, 0x0001             # v1 = 80A80001
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A7D968 
    lw      a0, 0x0034($sp)            
lbl_80A7D8B8:
    sw      t8, 0x0154(s0)             # 00000154
    lui     $at, %hi(var_80A7DE28)     # $at = 80A80000
    beq     $zero, $zero, lbl_80A7D964 
    sw      v1, %lo(var_80A7DE28)($at) 
lbl_80A7D8C8:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80A7D928      
    lw      a0, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    jal     func_80020510              
    lbu     a1, 0x0158(s0)             # 00000158
    lb      t9, 0x0159(s0)             # 00000159
    lui     v1, %hi(var_80A7DE28)      # v1 = 80A80000
    lw      v1, %lo(var_80A7DE28)(v1)  
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sllv    v0, t0, t9                 
    and     t1, v0, v1                 
    beq     t1, $zero, lbl_80A7D910    
    or      v1, v1, v0                 # v1 = 80A80000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A7D968 
    lw      a0, 0x0034($sp)            
lbl_80A7D910:
    lui     t2, %hi(func_80A7D9FC)     # t2 = 80A80000
    addiu   t2, t2, %lo(func_80A7D9FC) # t2 = 80A7D9FC
    sw      t2, 0x0154(s0)             # 00000154
    lui     $at, %hi(var_80A7DE28)     # $at = 80A80000
    beq     $zero, $zero, lbl_80A7D964 
    sw      v1, %lo(var_80A7DE28)($at) 
lbl_80A7D928:
    jal     func_800204D0              
    lbu     a1, 0x0158(s0)             # 00000158
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     v1, %hi(var_80A7DE28)      # v1 = 80A80000
    lw      v1, %lo(var_80A7DE28)(v1)  
    add.s   $f8, $f4, $f6              
    lui     t3, %hi(func_80A7DAB8)     # t3 = 80A80000
    addiu   t3, t3, %lo(func_80A7DAB8) # t3 = 80A7DAB8
    sw      t3, 0x0154(s0)             # 00000154
    swc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_80A7DE28)     # $at = 80A80000
    ori     v1, v1, 0x0001             # v1 = 80A80001
    sw      v1, %lo(var_80A7DE28)($at) 
lbl_80A7D964:
    lw      a0, 0x0034($sp)            
lbl_80A7D968:
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7D990:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      t7, 0x0018($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lh      t8, 0x001C(t7)             # 0000001C
    bnel    t8, $zero, lbl_80A7D9F0    
    lw      $ra, 0x0014($sp)           
    lw      t9, 0x0008(v0)             # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    slt     $at, t9, $at               
    beql    $at, $zero, lbl_80A7D9F0   
    lw      $ra, 0x0014($sp)           
    lhu     t0, 0x0EE0(v0)             # 8011B4B0
    andi    t1, t0, 0xFFDF             # t1 = 00000000
    sh      t1, 0x0EE0(v0)             # 8011B4B0
    lw      $ra, 0x0014($sp)           
lbl_80A7D9F0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7D9FC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8002049C              
    lbu     a1, 0x0158(s0)             # 00000158
    beql    v0, $zero, lbl_80A7DAA8    
    lw      $ra, 0x001C($sp)           
    lh      t6, 0x015A(s0)             # 0000015A
    or      a0, s0, $zero              # a0 = 00000000
    beql    t6, $zero, lbl_80A7DA74    
    lui     $at, 0x42F0                # $at = 42F00000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2814          # a1 = 00002814
    lui     t7, 0x8010                 # t7 = 80100000
    lbu     t7, -0x70C2(t7)            # 800F8F3E
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    addu    t8, t8, t7                 
    lbu     t8, -0x59BC(t8)            # 8011A644
    addiu   t9, $zero, 0x0078          # t9 = 00000078
    addiu   t0, $zero, 0x00A0          # t0 = 000000A0
    beql    t8, $at, lbl_80A7DA70      
    sh      t0, 0x015A(s0)             # 0000015A
    beq     $zero, $zero, lbl_80A7DA70 
    sh      t9, 0x015A(s0)             # 0000015A
    sh      t0, 0x015A(s0)             # 0000015A
lbl_80A7DA70:
    lui     $at, 0x42F0                # $at = 42F00000
lbl_80A7DA74:
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x4140                 # a2 = 41400000
    add.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_80A7DAA4    
    lui     t1, %hi(func_80A7DAB8)     # t1 = 80A80000
    addiu   t1, t1, %lo(func_80A7DAB8) # t1 = 80A7DAB8
    sw      t1, 0x0154(s0)             # 00000154
lbl_80A7DAA4:
    lw      $ra, 0x001C($sp)           
lbl_80A7DAA8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7DAB8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lb      t6, 0x0159(a0)             # 00000159
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    t6, $at, lbl_80A7DAF8      
    lh      t8, 0x015A(a0)             # 0000015A
    lh      a1, 0x015A(a0)             # 0000015A
    beq     a1, $zero, lbl_80A7DAE8    
    addiu   t7, a1, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x015A(a0)             # 0000015A
    lh      a1, 0x015A(a0)             # 0000015A
lbl_80A7DAE8:
    jal     func_80023164              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      t8, 0x015A(a0)             # 0000015A
lbl_80A7DAF8:
    lw      t9, 0x001C($sp)            
    lui     t0, 0x0001                 # t0 = 00010000
    beq     t8, $zero, lbl_80A7DB14    
    addu    t0, t0, t9                 
    lb      t0, 0x1CBC(t0)             # 00011CBC
    lb      t1, 0x0159(a0)             # 00000159
    bne     t0, t1, lbl_80A7DB30       
lbl_80A7DB14:
    addiu   a1, $zero, 0x281C          # a1 = 0000281C
    jal     func_80022FD0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     t2, %hi(func_80A7DB40)     # t2 = 80A80000
    addiu   t2, t2, %lo(func_80A7DB40) # t2 = 80A7DB40
    sw      t2, 0x0154(a0)             # 00000154
lbl_80A7DB30:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7DB40:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lwc1    $f4, 0x0060(s0)            # 00000060
    lwc1    $f6, 0x006C(s0)            # 0000006C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x000C(s0)             # 0000000C
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0060(s0)            # 00000060
    jal     func_8006385C              
    lw      a2, 0x0060(s0)             # 00000060
    beq     v0, $zero, lbl_80A7DC18    
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    lwc1    $f12, 0x008C(s0)           # 0000008C
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC              
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x281D          # a1 = 0000281D
    lw      a0, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    lb      t7, 0x0159(s0)             # 00000159
    addu    v0, a0, $at                
    lb      t6, 0x1CBC(v0)             # 00001CBC
    beql    t6, t7, lbl_80A7DBD8       
    lbu     a1, 0x0158(s0)             # 00000158
    jal     func_80064738              
    addiu   a0, $zero, 0x38EC          # a0 = 000038EC
    lui     t9, %hi(func_80A7DC3C)     # t9 = 80A80000
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    addiu   t9, t9, %lo(func_80A7DC3C) # t9 = 80A7DC3C
    sh      t8, 0x015A(s0)             # 0000015A
    beq     $zero, $zero, lbl_80A7DC18 
    sw      t9, 0x0154(s0)             # 00000154
    lbu     a1, 0x0158(s0)             # 00000158
lbl_80A7DBD8:
    jal     func_80020510              
    sw      v0, 0x0024($sp)            
    lw      t0, 0x0004(s0)             # 00000004
    lw      v0, 0x0024($sp)            
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t1, t0, $at                
    sw      t1, 0x0004(s0)             # 00000004
    lb      t2, 0x1CBC(v0)             # 00001CBC
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t4, %hi(func_80A7DC2C)     # t4 = 80A80000
    bne     t2, $at, lbl_80A7DC14      
    addiu   t4, t4, %lo(func_80A7DC2C) # t4 = 80A7DC2C
    addiu   t3, $zero, 0x000F          # t3 = 0000000F
    lui     $at, 0x8012                # $at = 80120000
    sh      t3, -0x4662($at)           # 8011B99E
lbl_80A7DC14:
    sw      t4, 0x0154(s0)             # 00000154
lbl_80A7DC18:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7DC2C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A7DC3C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x015A(a2)             # 0000015A
    beq     v0, $zero, lbl_80A7DC60    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a2)             # 0000015A
    lh      v0, 0x015A(a2)             # 0000015A
lbl_80A7DC60:
    bne     v0, $zero, lbl_80A7DC9C    
    lw      a0, 0x001C($sp)            
    jal     func_8007943C              
    sw      a2, 0x0018($sp)            
    bne     v0, $zero, lbl_80A7DC9C    
    lw      a2, 0x0018($sp)            
    addiu   a0, $zero, 0x5801          # a0 = 00005801
    jal     func_800646F0              
    sw      a2, 0x0018($sp)            
    jal     func_8009DAB0              
    lw      a0, 0x001C($sp)            
    lw      a2, 0x0018($sp)            
    lui     t7, %hi(func_80A7DC2C)     # t7 = 80A80000
    addiu   t7, t7, %lo(func_80A7DC2C) # t7 = 80A7DC2C
    sw      t7, 0x0154(a2)             # 00000154
lbl_80A7DC9C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7DCAC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8005991C              
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     v0, $zero, lbl_80A7DCE8    
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EE0(v0)             # 8011B4B0
    ori     t7, t6, 0x0020             # t7 = 00000020
    sh      t7, 0x0EE0(v0)             # 8011B4B0
lbl_80A7DCE8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0EE0(v0)             # 8011B4B0
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   a1, $zero, 0x0080          # a1 = 00000080
    andi    t9, t8, 0x0020             # t9 = 00000000
    beq     t9, $zero, lbl_80A7DD1C    
    nop
    addiu   a0, s0, 0x0032             # a0 = 00000032
    jal     func_80063704              
    addiu   a1, $zero, 0x0400          # a1 = 00000400
    beq     $zero, $zero, lbl_80A7DD28 
    lh      v0, 0x0032(s0)             # 00000032
lbl_80A7DD1C:
    jal     func_80063704              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lh      v0, 0x0032(s0)             # 00000032
lbl_80A7DD28:
    lh      t0, 0x00B6(s0)             # 000000B6
    lui     $at, %hi(var_80A7DE30)     # $at = 80A80000
    addiu   t2, v0, 0xFF80             # t2 = FFFFFF80
    mtc1    t2, $f4                    # $f4 = NaN
    addu    t1, t0, v0                 
    sh      t1, 0x00B6(s0)             # 000000B6
    cvt.s.w $f6, $f4                   
    lwc1    $f8, %lo(var_80A7DE30)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x2076          # a1 = 00002076
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    mfc1    a2, $f18                   
    jal     func_800C50AC              
    nop
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7DD80:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7DDA4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x001C(a0)             # 0000001C
    or      a0, a2, $zero              # a0 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    bne     t6, $zero, lbl_80A7DDDC    
    nop
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1AB0             # a1 = 06001AB0
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A7DDE8 
    lw      $ra, 0x0014($sp)           
lbl_80A7DDDC:
    jal     func_80028048              
    addiu   a1, a1, 0x01A0             # a1 = 000001A0
    lw      $ra, 0x0014($sp)           
lbl_80A7DDE8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80A7DE00: .word 0x01230100, 0x00000010, 0x006C0000, 0x0000015C
.word func_80A7D750
.word func_80A7D990
.word func_80A7DD80
.word func_80A7DDA4
var_80A7DE20: .word 0xB06C0005, 0x48500064
var_80A7DE28: .word 0x00000000, 0x00000000

.section .rodata

var_80A7DE30: .word 0x3A924925, 0x00000000, 0x00000000, 0x00000000

