.section .text
func_809006B0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_80900C90)      # a1 = 80900000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_80900C90)  # a1 = 80900C90
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x3CE0             # a0 = 06003CE0
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      v0, 0x013C(s0)             # 0000013C
    sh      t6, 0x015A(s0)             # 0000015A
    sb      $zero, 0x0158(s0)          # 00000158
    lw      a0, 0x0034($sp)            
    jal     func_8002049C              
    lh      a1, 0x001C(s0)             # 0000001C
    beq     v0, $zero, lbl_80900738    
    lui     t9, %hi(func_80900790)     # t9 = 80900000
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    beq     $zero, $zero, lbl_80900740 
    sb      t7, 0x0159(s0)             # 00000159
lbl_80900738:
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t8, 0x0159(s0)             # 00000159
lbl_80900740:
    addiu   t9, t9, %lo(func_80900790) # t9 = 80900790
    sw      t9, 0x0154(s0)             # 00000154
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8090075C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80900790:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x015A(a3)             # 0000015A
    beq     v0, $zero, lbl_809007B0    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a3)             # 0000015A
lbl_809007B0:
    lbu     t7, 0x0159(a3)             # 00000159
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bnel    v1, t7, lbl_80900834       
    lh      t0, 0x015A(a3)             # 0000015A
    lh      a1, 0x001C(a3)             # 0000001C
    lw      a0, 0x0024($sp)            
    slti    $at, a1, 0x0040            
    beql    $at, $zero, lbl_80900834   
    lh      t0, 0x015A(a3)             # 0000015A
    jal     func_8002049C              
    sw      a3, 0x0020($sp)            
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beq     v0, $zero, lbl_80900830    
    lw      a3, 0x0020($sp)            
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f6                   # $f6 = 140.00
    lwc1    $f4, 0x000C(a3)            # 0000000C
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    add.s   $f8, $f4, $f6              
    sb      t8, 0x0159(a3)             # 00000159
    sb      t9, 0x0158(a3)             # 00000158
    sh      $zero, 0x015A(a3)          # 0000015A
    swc1    $f8, 0x0028(a3)            # 00000028
    sw      a3, 0x0020($sp)            
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x0BF4          # a1 = 00000BF4
    jal     func_8006B6FC              
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lw      a3, 0x0020($sp)            
lbl_80900830:
    lh      t0, 0x015A(a3)             # 0000015A
lbl_80900834:
    lui     t8, %hi(func_80900B0C)     # t8 = 80900000
    addiu   t8, t8, %lo(func_80900B0C) # t8 = 80900B0C
    bnel    t0, $zero, lbl_80900928    
    lw      $ra, 0x001C($sp)           
    lbu     v0, 0x0158(a3)             # 00000158
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    sh      t1, 0x015A(a3)             # 0000015A
    bne     v0, $zero, lbl_80900874    
    lui     $at, 0x430C                # $at = 430C0000
    lwc1    $f10, 0x000C(a3)           # 0000000C
    mtc1    $at, $f16                  # $f16 = 140.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x0158(a3)             # 00000158
    add.s   $f18, $f10, $f16           
    beq     $zero, $zero, lbl_80900920 
    swc1    $f18, 0x015C(a3)           # 0000015C
lbl_80900874:
    bne     v1, v0, lbl_809008B8       
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lbu     t3, 0x0159(a3)             # 00000159
    lui     $at, 0x442F                # $at = 442F0000
    beql    v1, t3, lbl_809008AC       
    lwc1    $f10, 0x000C(a3)           # 0000000C
    lwc1    $f4, 0x000C(a3)            # 0000000C
    mtc1    $at, $f6                   # $f6 = 700.00
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sb      t4, 0x0158(a3)             # 00000158
    add.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_80900920 
    swc1    $f8, 0x015C(a3)            # 0000015C
    lwc1    $f10, 0x000C(a3)           # 0000000C
lbl_809008AC:
    sb      $zero, 0x0158(a3)          # 00000158
    beq     $zero, $zero, lbl_80900920 
    swc1    $f10, 0x015C(a3)           # 0000015C
lbl_809008B8:
    bnel    v0, $at, lbl_80900900      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lbu     t5, 0x0159(a3)             # 00000159
    lui     $at, 0x442F                # $at = 442F0000
    beql    v1, t5, lbl_809008F0       
    lwc1    $f6, 0x000C(a3)            # 0000000C
    lwc1    $f16, 0x000C(a3)           # 0000000C
    mtc1    $at, $f18                  # $f18 = 700.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x0158(a3)             # 00000158
    add.s   $f4, $f16, $f18            
    beq     $zero, $zero, lbl_80900920 
    swc1    $f4, 0x015C(a3)            # 0000015C
    lwc1    $f6, 0x000C(a3)            # 0000000C
lbl_809008F0:
    sb      $zero, 0x0158(a3)          # 00000158
    beq     $zero, $zero, lbl_80900920 
    swc1    $f6, 0x015C(a3)            # 0000015C
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80900900:
    bne     v0, $at, lbl_80900920      
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f10                  # $f10 = 140.00
    lwc1    $f8, 0x000C(a3)            # 0000000C
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sb      t7, 0x0158(a3)             # 00000158
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x015C(a3)           # 0000015C
lbl_80900920:
    sw      t8, 0x0154(a3)             # 00000154
    lw      $ra, 0x001C($sp)           
lbl_80900928:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80900934:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)            
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, s1                 
    swc1    $f4, 0x0038($sp)           
    lw      t6, 0x1DE4(t6)             # 00011DE4
    lui     $at, 0x42DC                # $at = 42DC0000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80900A2C    
    mtc1    $at, $f12                  # $f12 = 110.00
    lui     $at, 0x4282                # $at = 42820000
    mtc1    $at, $f8                   # $f8 = 65.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f12                  # $f12 = 110.00
    add.s   $f10, $f6, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x0034($sp)          
    lwc1    $f16, 0x002C(s0)           # 0000002C
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    add.s   $f18, $f0, $f16            
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    swc1    $f18, 0x003C($sp)          
    sw      t8, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_80026308              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x4282                # $at = 42820000
    mtc1    $at, $f6                   # $f6 = 65.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f12                  # $f12 = 110.00
    sub.s   $f8, $f4, $f6              
    jal     func_80026D90              
    swc1    $f8, 0x0034($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    addiu   t2, $zero, 0x003C          # t2 = 0000003C
    add.s   $f16, $f0, $f10            
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    swc1    $f16, 0x003C($sp)          
    sw      t1, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_80026308              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     $zero, $zero, lbl_80900AE0 
    lbu     t0, 0x0159(s0)             # 00000159
    mtc1    $at, $f12                  # $f12 = 0.00
lbl_80900A2C:
    jal     func_80026D90              
    nop
    lwc1    $f18, 0x0024(s0)           # 00000024
    lui     $at, 0x4282                # $at = 42820000
    mtc1    $at, $f8                   # $f8 = 65.00
    add.s   $f4, $f0, $f18             
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    addiu   t5, $zero, 0x003C          # t5 = 0000003C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    swc1    $f4, 0x0034($sp)           
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    add.s   $f10, $f6, $f8             
    sw      t4, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    swc1    $f10, 0x003C($sp)          
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_80026308              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f12                  # $f12 = 110.00
    jal     func_80026D90              
    nop
    lwc1    $f16, 0x0024(s0)           # 00000024
    lui     $at, 0x4282                # $at = 42820000
    mtc1    $at, $f6                   # $f6 = 65.00
    add.s   $f18, $f0, $f16            
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, $zero, 0x003C          # t8 = 0000003C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f18, 0x0034($sp)          
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sub.s   $f8, $f4, $f6              
    sw      t7, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFF4
    swc1    $f8, 0x003C($sp)           
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_80026308              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lbu     t0, 0x0159(s0)             # 00000159
lbl_80900AE0:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t0, $at, lbl_80900AFC      
    lw      $ra, 0x002C($sp)           
    jal     func_8002313C              
    addiu   a1, $zero, 0x2024          # a1 = 00002024
    lw      $ra, 0x002C($sp)           
lbl_80900AFC:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80900B0C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     t6, 0x0159(s0)             # 00000159
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_80900BA4      
    lbu     t0, 0x0159(s0)             # 00000159
    lh      a1, 0x001C(s0)             # 0000001C
    slti    $at, a1, 0x0040            
    beql    $at, $zero, lbl_80900BA4   
    lbu     t0, 0x0159(s0)             # 00000159
    jal     func_8002049C              
    lw      a0, 0x002C($sp)            
    beq     v0, $zero, lbl_80900BA0    
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f6                   # $f6 = 140.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lui     t9, %hi(func_80900790)     # t9 = 80900000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    add.s   $f8, $f4, $f6              
    addiu   t9, t9, %lo(func_80900790) # t9 = 80900790
    sb      t7, 0x0159(s0)             # 00000159
    sb      t8, 0x0158(s0)             # 00000158
    swc1    $f8, 0x0028(s0)            # 00000028
    sh      $zero, 0x015A(s0)          # 0000015A
    sw      t9, 0x0154(s0)             # 00000154
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0x0BF4          # a1 = 00000BF4
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC              
    or      a3, s0, $zero              # a3 = 00000000
    beq     $zero, $zero, lbl_80900BF4 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80900BA0:
    lbu     t0, 0x0159(s0)             # 00000159
lbl_80900BA4:
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x015C(s0)             # 0000015C
    mtc1    t0, $f10                   # $f10 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    t0, lbl_80900BC8           
    cvt.s.w $f10, $f10                 
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16           
lbl_80900BC8:
    mfc1    a2, $f10                   
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_80900BF0    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28F1          # a1 = 000028F1
    lui     t1, %hi(func_80900790)     # t1 = 80900000
    addiu   t1, t1, %lo(func_80900790) # t1 = 80900790
    sw      t1, 0x0154(s0)             # 00000154
lbl_80900BF0:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80900BF4:
    jal     func_80900934              
    lw      a1, 0x002C($sp)            
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80900C10:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80900C34:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x37B8             # a1 = 060037B8
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80900C70: .word 0x00580100, 0x00000030, 0x002B0000, 0x00000160
.word func_809006B0
.word func_8090075C
.word func_80900C10
.word func_80900C34
var_80900C90: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata


