.section .text
func_80B35B40:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t7, 0x0000(a3)             # 00000000
    lui     t5, %hi(func_80B35C8C)     # t5 = 80B30000
    addiu   t5, t5, %lo(func_80B35C8C) # t5 = 80B35C8C
    sw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x0004(a3)             # 00000004
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    sw      t6, 0x0004(a2)             # 00000004
    lw      t7, 0x0008(a3)             # 00000008
    lui     t6, %hi(func_80B35EB8)     # t6 = 80B30000
    addiu   t6, t6, %lo(func_80B35EB8) # t6 = 80B35EB8
    sw      t7, 0x0008(a2)             # 00000008
    lw      t9, 0x0000(a3)             # 00000000
    sw      t9, 0x002C(a2)             # 0000002C
    lw      t8, 0x0004(a3)             # 00000004
    sw      t8, 0x0030(a2)             # 00000030
    lw      t9, 0x0008(a3)             # 00000008
    sw      t9, 0x0034(a2)             # 00000034
    lw      t1, 0x0010(a3)             # 00000010
    sw      t1, 0x000C(a2)             # 0000000C
    lw      t0, 0x0014(a3)             # 00000014
    sw      t0, 0x0010(a2)             # 00000010
    lw      t1, 0x0018(a3)             # 00000018
    sw      t1, 0x0014(a2)             # 00000014
    lw      t3, 0x001C(a3)             # 0000001C
    sw      t3, 0x0018(a2)             # 00000018
    lw      t2, 0x0020(a3)             # 00000020
    sw      t2, 0x001C(a2)             # 0000001C
    lw      t3, 0x0024(a3)             # 00000024
    sw      t3, 0x0020(a2)             # 00000020
    lw      t4, 0x0028(a3)             # 00000028
    sw      t5, 0x0028(a2)             # 00000028
    sw      t6, 0x0024(a2)             # 00000024
    sh      t4, 0x005C(a2)             # 0000005C
    lw      t7, 0x0028(a3)             # 00000028
    sh      t7, 0x0040(a2)             # 00000040
    lwc1    $f4, 0x000C(a3)            # 0000000C
    mul.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t9, $f10                   
    nop
    sh      t9, 0x0048(a2)             # 00000048
    lwc1    $f14, 0x0010(a3)           # 00000010
    lwc1    $f12, 0x0018(a3)           # 00000018
    sw      a3, 0x0034($sp)            
    jal     func_800AA4F8              
    sw      a2, 0x0030($sp)            
    lw      a2, 0x0030($sp)            
    lw      a3, 0x0034($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    sh      v0, 0x0042(a2)             # 00000042
    sh      $zero, 0x0044(a2)          # 00000044
    lwc1    $f0, 0x0014(a3)            # 00000014
    mtc1    $at, $f12                  # $f12 = 1.00
    abs.s   $f0, $f0                   
    swc1    $f0, 0x001C($sp)           
    lwc1    $f0, 0x0010(a3)            # 00000010
    abs.s   $f0, $f0                   
    jal     func_80026D64              
    swc1    $f0, 0x0020($sp)           
    lwc1    $f16, 0x0020($sp)          
    lwc1    $f18, 0x001C($sp)          
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    add.s   $f4, $f16, $f18            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lw      a2, 0x0030($sp)            
    mul.s   $f8, $f4, $f6              
    add.s   $f16, $f0, $f10            
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mul.s   $f18, $f16, $f8            
    trunc.w.s $f4, $f18                  
    mfc1    t1, $f4                    
    nop
    sh      t1, 0x0046(a2)             # 00000046
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80B35C8C:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s2, 0x0048($sp)            
    sw      s1, 0x0044($sp)            
    or      s1, a2, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s0, 0x0040($sp)            
    sdc1    $f20, 0x0038($sp)          
    sw      a1, 0x0074($sp)            
    lh      t6, 0x0048(s1)             # 00000048
    lui     $at, %hi(var_80B35F20)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B35F20)($at) 
    mtc1    t6, $f4                    # $f4 = 0.00
    lw      s0, 0x0000(s2)             # 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f6, $f4                   
    mul.s   $f10, $f6, $f8             
    swc1    $f10, 0x0064($sp)          
    lw      t7, 0x009C(s2)             # 0000009C
    sw      t7, 0x0060($sp)            
    lh      v0, 0x0040(s1)             # 00000040
    blezl   v0, lbl_80B35D2C           
    lui     $at, 0x437F                # $at = 437F0000
    lh      v1, 0x005C(s1)             # 0000005C
    sra     t8, v0,  1                 
    slt     $at, v1, t8                
    beql    $at, $zero, lbl_80B35D2C   
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    v1, $f16                   # $f16 = 0.00
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x437F                # $at = 437F0000
    cvt.s.w $f0, $f16                  
    mtc1    $at, $f8                   # $f8 = 255.00
    cvt.s.w $f6, $f4                   
    add.s   $f18, $f0, $f0             
    div.s   $f20, $f18, $f6            
    mul.s   $f20, $f20, $f8            
    beq     $zero, $zero, lbl_80B35D38 
    lwc1    $f12, 0x0000(s1)           # 00000000
    lui     $at, 0x437F                # $at = 437F0000
lbl_80B35D2C:
    mtc1    $at, $f20                  # $f20 = 255.00
    nop
    lwc1    $f12, 0x0000(s1)           # 00000000
lbl_80B35D38:
    lwc1    $f14, 0x0004(s1)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 00000008
    lwc1    $f12, 0x0064($sp)          
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lh      t9, 0x0042(s1)             # 00000042
    lui     $at, %hi(var_80B35F24)     # $at = 80B30000
    lwc1    $f4, %lo(var_80B35F24)($at) 
    mtc1    t9, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f4            
    jal     func_800AAB94              
    nop
    lh      t0, 0x0044(s1)             # 00000044
    lui     $at, %hi(var_80B35F28)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B35F28)($at) 
    mtc1    t0, $f18                   # $f18 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f18                  
    mul.s   $f12, $f6, $f8             
    jal     func_800AA9E0              
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      v1, 0x0050($sp)            
    lw      a1, 0x0050($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    jal     func_8007E2C0              
    lw      a0, 0x0000(s2)             # 00000000
    trunc.w.s $f10, $f20                 
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     $at, 0x0032                # $at = 00320000
    ori     $at, $at, 0x6400           # $at = 00326400
    mfc1    t7, $f10                   
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = 00326400
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      t4, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80027188              
    or      a1, s2, $zero              # a1 = 00000000
    lw      v0, 0x0060($sp)            
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0020             # t1 = DB060020
    addiu   t0, s1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(s1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sll     t5, v0,  1                 
    andi    t6, t5, 0x00FF             # t6 = 00000000
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0010          # t3 = 00000010
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0028($sp)            
    sw      t7, 0x0024($sp)            
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    sw      t6, 0x0020($sp)            
    sw      $zero, 0x001C($sp)         
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84              
    andi    a3, v0, 0x00FF             # a3 = 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0x0403                 # t1 = 04030000
    addiu   t1, t1, 0x3BC0             # t1 = 04033BC0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      t0, 0x0000(v1)             # 00000000
    sw      t1, 0x0004(v1)             # 00000004
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0038($sp)          
    lw      s0, 0x0040($sp)            
    lw      s1, 0x0044($sp)            
    lw      s2, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_80B35EB8:
    lui     $at, %hi(var_80B35F2C)     # $at = 80B30000
    lwc1    $f0, %lo(var_80B35F2C)($at) 
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    lwc1    $f4, 0x000C(a2)            # 0000000C
    lwc1    $f8, 0x0010(a2)            # 00000010
    lwc1    $f16, 0x0014(a2)           # 00000014
    mul.s   $f6, $f4, $f0              
    lh      t6, 0x0044(a2)             # 00000044
    lh      t7, 0x0046(a2)             # 00000046
    mul.s   $f10, $f8, $f0             
    addu    t8, t6, t7                 
    mul.s   $f18, $f16, $f0            
    sh      t8, 0x0044(a2)             # 00000044
    swc1    $f6, 0x000C(a2)            # 0000000C
    swc1    $f10, 0x0010(a2)           # 00000010
    swc1    $f18, 0x0014(a2)           # 00000014
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

.word 0x0000001A
.word func_80B35B40
.word 0x00000000, 0x00000000

.section .rodata

var_80B35F20: .word 0x3C23D70A
var_80B35F24: .word 0x38C90FDB
var_80B35F28: .word 0x38C90FDB
var_80B35F2C: .word 0x3F59999A

