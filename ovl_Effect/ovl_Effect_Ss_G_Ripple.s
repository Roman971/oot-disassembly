.section .text
func_80B2F820:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    sw      a1, 0x0054($sp)            
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFDC
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    addiu   t0, $sp, 0x0040            # t0 = FFFFFFF0
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    lui     t6, %hi(var_80B2FD18)      # t6 = 80B30000
    addiu   t6, t6, %lo(var_80B2FD18)  # t6 = 80B2FD18
    lw      t8, 0x0000(t6)             # 80B2FD18
    lui     v1, 0x0402                 # v1 = 04020000
    addiu   v1, v1, 0x5950             # v1 = 04025950
    sw      t8, 0x0000(t0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80B2FD1C
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t7, 0x0004(t0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80B2FD20
    or      a2, s1, $zero              # a2 = 00000000
    lui     a3, 0x4040                 # a3 = 40400000
    sw      t8, 0x0008(t0)             # FFFFFFF8
    sw      $zero, 0x003C($sp)         
    lw      t1, 0x0000(t0)             # FFFFFFF0
    lw      t9, 0x0004(t0)             # FFFFFFF4
    sll     t8, v1,  4                 
    sw      t1, 0x0000(a1)             # FFFFFFDC
    lw      t1, 0x0008(t0)             # FFFFFFF8
    lw      t3, 0x0000(a1)             # FFFFFFDC
    sw      t9, 0x0004(a1)             # FFFFFFE0
    sw      t1, 0x0008(a1)             # FFFFFFE4
    sw      t3, 0x0018(s0)             # 00000018
    lw      t2, 0x0004(a1)             # FFFFFFE0
    srl     t9, t8, 28                 
    sll     t1, t9,  2                 
    sw      t2, 0x001C(s0)             # 0000001C
    lw      t3, 0x0008(a1)             # FFFFFFE4
    lui     t2, 0x8012                 # t2 = 80120000
    addu    t2, t2, t1                 
    sw      t3, 0x0020(s0)             # 00000020
    lw      t5, 0x0000(a1)             # FFFFFFDC
    and     t3, v1, $at                
    lui     $at, 0x8000                # $at = 80000000
    sw      t5, 0x000C(s0)             # 0000000C
    lw      t4, 0x0004(a1)             # FFFFFFE0
    lui     t8, %hi(func_80B2FB98)     # t8 = 80B30000
    lui     t9, %hi(func_80B2FBD0)     # t9 = 80B30000
    sw      t4, 0x0010(s0)             # 00000010
    lw      t5, 0x0008(a1)             # FFFFFFE4
    addiu   t8, t8, %lo(func_80B2FB98) # t8 = 80B2FB98
    addiu   t9, t9, %lo(func_80B2FBD0) # t9 = 80B2FBD0
    sw      t5, 0x0014(s0)             # 00000014
    lw      t7, 0x0000(s1)             # 00000000
    addiu   a1, a0, 0x07C0             # a1 = 000007C0
    sw      t7, 0x0000(s0)             # 00000000
    lw      t6, 0x0004(s1)             # 00000004
    sw      t6, 0x0004(s0)             # 00000004
    lw      t7, 0x0008(s1)             # 00000008
    sw      t7, 0x0008(s0)             # 00000008
    lw      t2, 0x0C38(t2)             # 80120C38
    addu    t4, t2, t3                 
    addu    t5, t4, $at                
    sw      t5, 0x0038(s0)             # 00000038
    lh      t6, 0x0010(s1)             # 00000010
    sh      $zero, 0x005A(s0)          # 0000005A
    sw      t8, 0x0028(s0)             # 00000028
    addiu   t7, t6, 0x0014             # t7 = 80B2FD2C
    sh      t7, 0x005C(s0)             # 0000005C
    sw      t9, 0x0024(s0)             # 00000024
    lh      t1, 0x000C(s1)             # 0000000C
    addiu   t4, $sp, 0x003C            # t4 = FFFFFFEC
    sh      t1, 0x0042(s0)             # 00000042
    lh      t2, 0x000E(s1)             # 0000000E
    sh      t2, 0x0044(s0)             # 00000044
    lh      t3, 0x0010(s1)             # 00000010
    sh      v0, 0x0046(s0)             # 00000046
    sh      v0, 0x0048(s0)             # 00000048
    sh      v0, 0x004A(s0)             # 0000004A
    sh      v0, 0x004C(s0)             # 0000004C
    sh      v0, 0x004E(s0)             # 0000004E
    sh      v0, 0x0050(s0)             # 00000050
    sh      v0, 0x0052(s0)             # 00000052
    sh      v0, 0x0054(s0)             # 00000054
    sh      t3, 0x0056(s0)             # 00000056
    jal     func_80034A60              
    sw      t4, 0x0010($sp)            
    sh      v0, 0x0040(s0)             # 00000040
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80B2F99C:
    addiu   $sp, $sp, 0xFEE0           # $sp = FFFFFEE0
    sw      s1, 0x0018($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a2, 0x0128($sp)            
    lw      s0, 0x0000(a0)             # 00000000
    lh      t6, 0x0042(s1)             # 00000042
    lui     $at, %hi(var_80B2FD30)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B2FD30)($at) 
    mtc1    t6, $f4                    # $f4 = 0.00
    lh      v0, 0x0040(s1)             # 00000040
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    cvt.s.w $f6, $f4                   
    mul.s   $f2, $f6, $f8              
    beql    v0, $at, lbl_80B2FA14      
    lwc1    $f0, 0x0004(s1)            # 00000004
    lw      v1, 0x07C0(a0)             # 000007C0
    lhu     t7, 0x0024(v1)             # 00000024
    slt     $at, v0, t7                
    beql    $at, $zero, lbl_80B2FA14   
    lwc1    $f0, 0x0004(s1)            # 00000004
    lw      t9, 0x0028(v1)             # 00000028
    sll     t8, v0,  4                 
    addu    t0, t8, t9                 
    lh      t1, 0x0002(t0)             # 00000002
    mtc1    t1, $f10                   # $f10 = 0.00
    beq     $zero, $zero, lbl_80B2FA14 
    cvt.s.w $f0, $f10                  
    lwc1    $f0, 0x0004(s1)            # 00000004
lbl_80B2FA14:
    lw      a1, 0x0000(s1)             # 00000000
    mfc1    a2, $f0                    
    lw      a3, 0x0008(s1)             # 00000008
    swc1    $f2, 0x0118($sp)           
    jal     func_8008F82C              # guTranslateF
    addiu   a0, $sp, 0x00D4            # a0 = FFFFFFB4
    lwc1    $f2, 0x0118($sp)           
    addiu   a0, $sp, 0x0094            # a0 = FFFFFF74
    mfc1    a1, $f2                    
    mfc1    a2, $f2                    
    mfc1    a3, $f2                    
    jal     func_8008F4A8              # guScaleF
    nop
    addiu   a0, $sp, 0x00D4            # a0 = FFFFFFB4
    addiu   a1, $sp, 0x0094            # a1 = FFFFFF74
    jal     func_8008EDB8              
    addiu   a2, $sp, 0x0054            # a2 = FFFFFF34
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008FC98              
    addiu   a1, $sp, 0x0054            # a1 = FFFFFF34
    beq     v0, $zero, lbl_80B2FB84    
    or      a1, v0, $zero              # a1 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      a1, 0x0004(v0)             # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    jal     func_8007E930              
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v0)             # 00000000
    lh      t6, 0x004C(s1)             # 0000004C
    lh      t2, 0x0048(s1)             # 00000048
    lh      t9, 0x0046(s1)             # 00000046
    andi    t7, t6, 0x00FF             # t7 = 00000000
    lh      t6, 0x004A(s1)             # 0000004A
    andi    t3, t2, 0x00FF             # t3 = 00000000
    sll     t0, t9, 24                 
    or      t1, t7, t0                 # t1 = 00000000
    sll     t4, t3, 16                 
    andi    t8, t6, 0x00FF             # t8 = 00000000
    sll     t9, t8,  8                 
    or      t5, t1, t4                 # t5 = 00000008
    or      t7, t5, t9                 # t7 = 00000008
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v0)             # 00000000
    lh      t3, 0x0054(s1)             # 00000054
    lh      t9, 0x0050(s1)             # 00000050
    lh      t6, 0x004E(s1)             # 0000004E
    andi    t1, t3, 0x00FF             # t1 = 00000000
    lh      t3, 0x0052(s1)             # 00000052
    andi    t7, t9, 0x00FF             # t7 = 00000000
    sll     t8, t6, 24                 
    or      t5, t1, t8                 # t5 = 00000000
    sll     t0, t7, 16                 
    andi    t4, t3, 0x00FF             # t4 = 00000000
    sll     t6, t4,  8                 
    or      t2, t5, t0                 # t2 = 00000008
    or      t1, t2, t6                 # t1 = 00000008
    sw      t1, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xE300                 # t9 = E3000000
    ori     t9, t9, 0x1A01             # t9 = E3001A01
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sw      t7, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t0, 0xE300                 # t0 = E3000000
    ori     t0, t0, 0x1801             # t0 = E3001801
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    addiu   t3, $zero, 0x0080          # t3 = 00000080
    sw      t3, 0x0004(v0)             # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t6, 0x0038(s1)             # 00000038
    sw      t6, 0x0004(v0)             # 00000004
lbl_80B2FB84:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0120           # $sp = 00000000


func_80B2FB98:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a2, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x0056(a1)             # 00000056
    lui     a2, 0x0402                 # a2 = 04020000
    bnel    t6, $zero, lbl_80B2FBC4    
    lw      $ra, 0x0014($sp)           
    jal     func_80B2F99C              
    addiu   a2, a2, 0x4950             # a2 = 04024950
    lw      $ra, 0x0014($sp)           
lbl_80B2FBC4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B2FBD0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lh      v0, 0x0056(s0)             # 00000056
    bne     v0, $zero, lbl_80B2FBFC    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B2FC04 
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B2FBFC:
    sh      t6, 0x0056(s0)             # 00000056
    lh      v1, 0x0056(s0)             # 00000056
lbl_80B2FC04:
    bnel    v1, $zero, lbl_80B2FCFC    
    lw      $ra, 0x0024($sp)           
    lh      t7, 0x0042(s0)             # 00000042
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mtc1    t7, $f4                    # $f4 = 0.00
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    cvt.s.w $f6, $f4                   
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFFC
    lui     a3, 0x41F0                 # a3 = 41F00000
    swc1    $f6, 0x003C($sp)           
    lh      t8, 0x0044(s0)             # 00000044
    swc1    $f10, 0x0010($sp)          
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f8, $f8                   
    mfc1    a1, $f8                    
    jal     func_80064178              
    nop
    lh      t1, 0x004C(s0)             # 0000004C
    lwc1    $f16, 0x003C($sp)          
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    t1, $f4                    # $f4 = 0.00
    trunc.w.s $f18, $f16                 
    mtc1    $at, $f16                  # $f16 = 7.00
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    cvt.s.w $f6, $f4                   
    mfc1    t0, $f18                   
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, $sp, 0x0038            # a0 = FFFFFFF8
    sh      t0, 0x0042(s0)             # 00000042
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    swc1    $f6, 0x0038($sp)           
    lh      t2, 0x0054(s0)             # 00000054
    lui     a3, 0x4170                 # a3 = 41700000
    swc1    $f16, 0x0010($sp)          
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    jal     func_80064178              
    swc1    $f10, 0x0034($sp)          
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f18                  # $f18 = 7.00
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFF4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    lwc1    $f4, 0x0038($sp)           
    trunc.w.s $f6, $f4                   
    mfc1    t4, $f6                    
    nop
    sh      t4, 0x004C(s0)             # 0000004C
    lwc1    $f8, 0x0034($sp)           
    trunc.w.s $f10, $f8                  
    mfc1    t6, $f10                   
    nop
    sh      t6, 0x0054(s0)             # 00000054
    lw      $ra, 0x0024($sp)           
lbl_80B2FCFC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

.word 0x00000009
.word func_80B2F820
var_80B2FD18: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B2FD30: .word 0x3B23D70A, 0x00000000, 0x00000000, 0x00000000

