.section .text
func_80B2C980:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a0, s0, 0x000C             # a0 = 0000000C
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s1, 0x000C             # a1 = 0000000C
    addiu   a0, s0, 0x0018             # a0 = 00000018
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s1, 0x0018             # a1 = 00000018
    lui     v0, 0x0401                 # v0 = 04010000
    addiu   v0, v0, 0x04F0             # v0 = 040104F0
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
    sw      t2, 0x0038(s0)             # 00000038
    lh      t3, 0x0030(s1)             # 00000030
    lui     t6, %hi(var_80B2D0C8)      # t6 = 80B30000
    lui     t7, %hi(func_80B2CB34)     # t7 = 80B30000
    sh      t3, 0x005C(s0)             # 0000005C
    lbu     t4, 0x0034(s1)             # 00000034
    addiu   t7, t7, %lo(func_80B2CB34) # t7 = 80B2CB34
    sll     t5, t4,  2                 
    addu    t6, t6, t5                 
    lw      t6, %lo(var_80B2D0C8)(t6)  
    sw      t7, 0x0028(s0)             # 00000028
    sw      t6, 0x0024(s0)             # 00000024
    lhu     t8, 0x0032(s1)             # 00000032
    andi    t9, t8, 0x0004             # t9 = 00000000
    beql    t9, $zero, lbl_80B2CABC    
    lbu     t3, 0x0024(s1)             # 00000024
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    mul.s   $f6, $f0, $f4              
    lbu     t1, 0x0024(s1)             # 00000024
    sub.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    v0, $f16                   
    nop
    addu    t2, t1, v0                 
    sh      t2, 0x0040(s0)             # 00000040
    lbu     t3, 0x0025(s1)             # 00000025
    addu    t4, t3, v0                 
    sh      t4, 0x0042(s0)             # 00000042
    lbu     t5, 0x0026(s1)             # 00000026
    addu    t6, t5, v0                 
    sh      t6, 0x0044(s0)             # 00000044
    lbu     t7, 0x0028(s1)             # 00000028
    addu    t8, t7, v0                 
    sh      t8, 0x0048(s0)             # 00000048
    lbu     t9, 0x0029(s1)             # 00000029
    addu    t0, t9, v0                 
    sh      t0, 0x004A(s0)             # 0000004A
    lbu     t1, 0x002A(s1)             # 0000002A
    addu    t2, t1, v0                 
    sh      t2, 0x004C(s0)             # 0000004C
    beq     $zero, $zero, lbl_80B2CAEC 
    lbu     t9, 0x0027(s1)             # 00000027
    lbu     t3, 0x0024(s1)             # 00000024
lbl_80B2CABC:
    sh      t3, 0x0040(s0)             # 00000040
    lbu     t4, 0x0025(s1)             # 00000025
    sh      t4, 0x0042(s0)             # 00000042
    lbu     t5, 0x0026(s1)             # 00000026
    sh      t5, 0x0044(s0)             # 00000044
    lbu     t6, 0x0028(s1)             # 00000028
    sh      t6, 0x0048(s0)             # 00000048
    lbu     t7, 0x0029(s1)             # 00000029
    sh      t7, 0x004A(s0)             # 0000004A
    lbu     t8, 0x002A(s1)             # 0000002A
    sh      t8, 0x004C(s0)             # 0000004C
    lbu     t9, 0x0027(s1)             # 00000027
lbl_80B2CAEC:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t9, 0x0046(s0)             # 00000046
    lbu     t0, 0x002B(s1)             # 0000002B
    sh      $zero, 0x0050(s0)          # 00000050
    sh      t0, 0x004E(s0)             # 0000004E
    lh      t1, 0x002C(s1)             # 0000002C
    sh      t1, 0x0052(s0)             # 00000052
    lh      t2, 0x002E(s1)             # 0000002E
    sh      t2, 0x0054(s0)             # 00000054
    lh      t3, 0x0030(s1)             # 00000030
    sh      t3, 0x0058(s0)             # 00000058
    lhu     t4, 0x0032(s1)             # 00000032
    sh      t4, 0x0056(s0)             # 00000056
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B2CB34:
    addiu   $sp, $sp, 0xFE88           # $sp = FFFFFE88
    sw      s1, 0x0018($sp)            
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a0, 0x0178($sp)            
    sw      a1, 0x017C($sp)            
    lw      t6, 0x0178($sp)            
    lw      s0, 0x0000(t6)             # 00000000
    lh      t7, 0x0052(s1)             # 00000052
    lui     $at, %hi(var_80B2D0F0)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B2D0F0)($at) 
    mtc1    t7, $f4                    # $f4 = 0.00
    lw      a1, 0x0000(s1)             # 00000000
    lw      a2, 0x0004(s1)             # 00000004
    cvt.s.w $f6, $f4                   
    lw      a3, 0x0008(s1)             # 00000008
    addiu   a0, $sp, 0x0134            # a0 = FFFFFFBC
    mul.s   $f0, $f6, $f8              
    jal     func_8008F82C              # guTranslateF
    swc1    $f0, 0x0068($sp)           
    lwc1    $f0, 0x0068($sp)           
    addiu   a0, $sp, 0x00F4            # a0 = FFFFFF7C
    lui     a3, 0x3F80                 # a3 = 3F800000
    mfc1    a1, $f0                    
    mfc1    a2, $f0                    
    jal     func_8008F4A8              # guScaleF
    nop
    lw      a1, 0x0178($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   a0, $sp, 0x0134            # a0 = FFFFFFBC
    addiu   a2, $sp, 0x0074            # a2 = FFFFFEFC
    jal     func_8008EDB8              
    addu    a1, a1, $at                
    addiu   a0, $sp, 0x0074            # a0 = FFFFFEFC
    addiu   a1, $sp, 0x00F4            # a1 = FFFFFF7C
    jal     func_8008EDB8              
    addiu   a2, $sp, 0x00B4            # a2 = FFFFFF3C
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    addiu   t2, t2, 0xEDB0             # t2 = 800FEDB0
    ori     t9, t9, 0x0003             # t9 = DA380003
    sw      t9, 0x0000(v0)             # 00000000
    sw      t2, 0x0004(v0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008FC98              
    addiu   a1, $sp, 0x00B4            # a1 = FFFFFF3C
    beq     v0, $zero, lbl_80B2CE64    
    or      t1, v0, $zero              # t1 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t6, 0xE700                 # t6 = E7000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lh      t9, 0x0050(s1)             # 00000050
    lui     t0, %hi(var_80B2D0D0)      # t0 = 80B30000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t9,  2                 
    addu    t0, t0, t2                 
    lw      t0, %lo(var_80B2D0D0)(t0)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t0,  4                 
    srl     t5, t4, 28                 
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, t0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x0004(v0)             # 00000004
    jal     func_8007DFBC              
    lw      a0, 0x02D0(s0)             # 000002D0
    lui     a2, 0xE700                 # a2 = E7000000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      a2, 0x0000(v0)             # 00000000
    lh      v1, 0x0056(s1)             # 00000056
    lui     t3, 0x5FFE                 # t3 = 5FFE0000
    ori     t3, t3, 0xFFF8             # t3 = 5FFEFFF8
    andi    t4, v1, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_80B2CD3C    
    andi    t6, v1, 0x0002             # t6 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFC30                 # t6 = FC300000
    ori     t6, t6, 0xB204             # t6 = FC30B204
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t8, 0xE200                 # t8 = E2000000
    lui     t9, 0xC810                 # t9 = C8100000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    ori     t9, t9, 0x4B50             # t9 = C8104B50
    ori     t8, t8, 0x001C             # t8 = E200001C
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t4, 0xD9FF                 # t4 = D9FF0000
    ori     t4, t4, 0xFFFF             # t4 = D9FFFFFF
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    lui     t5, 0x0003                 # t5 = 00030000
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80B2CDA8 
    lw      v0, 0x02D0(s0)             # 000002D0
lbl_80B2CD3C:
    beq     t6, $zero, lbl_80B2CD88    
    lui     t7, 0xE200                 # t7 = E2000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0C18                 # t8 = 0C180000
    ori     t8, t8, 0x4B50             # t8 = 0C184B50
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    ori     t7, t7, 0x001C             # t7 = E200001C
    sw      t7, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t2, 0xD9FC                 # t2 = D9FC0000
    ori     t2, t2, 0xFFFF             # t2 = D9FCFFFF
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80B2CDA8 
    lw      v0, 0x02D0(s0)             # 000002D0
lbl_80B2CD88:
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t5, 0xD9FD                 # t5 = D9FD0000
    ori     t5, t5, 0xFFFF             # t5 = D9FDFFFF
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
lbl_80B2CDA8:
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      a2, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x0044(s1)             # 00000044
    lh      t7, 0x0042(s1)             # 00000042
    lh      t5, 0x0040(s1)             # 00000040
    andi    t9, t8, 0x00FF             # t9 = 00000050
    sll     t2, t9,  8                 
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t6, t5, 24                 
    or      t3, t2, t6                 # t3 = D9FCFFFF
    sll     t9, t8, 16                 
    or      t4, t3, t9                 # t4 = D9FCFFFF
    ori     t5, t4, 0x00FF             # t5 = D9FCFFFF
    sw      t5, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lh      t9, 0x0048(s1)             # 00000048
    lh      t7, 0x004E(s1)             # 0000004E
    lh      t2, 0x004A(s1)             # 0000004A
    sll     t4, t9, 24                 
    lh      t9, 0x004C(s1)             # 0000004C
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t5, t8, t4                 # t5 = D9FCFFFF
    andi    t6, t2, 0x00FF             # t6 = 00000008
    sll     t7, t6, 16                 
    andi    t8, t9, 0x00FF             # t8 = 00000050
    sll     t4, t8,  8                 
    or      t3, t5, t7                 # t3 = FBFCFFFF
    or      t2, t3, t4                 # t2 = FBFCFFFF
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v0)             # 00000000
    lw      t7, 0x0038(s1)             # 00000038
    sw      t7, 0x0004(v0)             # 00000004
lbl_80B2CE64:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0178           # $sp = 00000000


func_80B2CE78:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0020($sp)            
    lui     $at, %hi(var_80B2D0F4)     # $at = 80B30000
    lwc1    $f4, %lo(var_80B2D0F4)($at) 
    lui     $at, %hi(var_80B2D0F8)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B2D0F8)($at) 
    mul.s   $f6, $f0, $f4              
    lw      a2, 0x0020($sp)            
    sub.s   $f10, $f6, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0018(a2)           # 00000018
    lui     $at, %hi(var_80B2D0FC)     # $at = 80B30000
    lwc1    $f16, %lo(var_80B2D0FC)($at) 
    lw      a2, 0x0020($sp)            
    lui     $at, %hi(var_80B2D100)     # $at = 80B30000
    mul.s   $f18, $f0, $f16            
    lwc1    $f4, %lo(var_80B2D100)($at) 
    lh      v0, 0x0058(a2)             # 00000058
    lh      v1, 0x005C(a2)             # 0000005C
    addiu   t6, v0, 0xFFF9             # t6 = FFFFFFF9
    slt     $at, v0, v1                
    sub.s   $f6, $f18, $f4             
    bne     $at, $zero, lbl_80B2CF4C   
    swc1    $f6, 0x0020(a2)            # 00000020
    slt     $at, v1, t6                
    bne     $at, $zero, lbl_80B2CF4C   
    slti    $at, v0, 0x0005            
    bne     $at, $zero, lbl_80B2CF08   
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    subu    t7, v0, v1                 
    beq     $zero, $zero, lbl_80B2CF54 
    sh      t7, 0x0050(a2)             # 00000050
lbl_80B2CF08:
    div     $zero, t8, v0              
    mflo    t9                         
    subu    t0, v0, v1                 
    bne     v0, $zero, lbl_80B2CF20    
    nop
    break   # 0x01C00
lbl_80B2CF20:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_80B2CF38      
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_80B2CF38      
    nop
    break   # 0x01800
lbl_80B2CF38:
    multu   t9, t0                     
    mflo    t1                         
    sh      t1, 0x0050(a2)             # 00000050
    beq     $zero, $zero, lbl_80B2CF58 
    lh      t3, 0x0052(a2)             # 00000052
lbl_80B2CF4C:
    addiu   t2, $zero, 0x0007          # t2 = 00000007
    sh      t2, 0x0050(a2)             # 00000050
lbl_80B2CF54:
    lh      t3, 0x0052(a2)             # 00000052
lbl_80B2CF58:
    lh      t4, 0x0054(a2)             # 00000054
    addu    t5, t3, t4                 
    sh      t5, 0x0052(a2)             # 00000052
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80B2CF70:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0020($sp)            
    lui     $at, %hi(var_80B2D104)     # $at = 80B30000
    lwc1    $f4, %lo(var_80B2D104)($at) 
    lui     $at, %hi(var_80B2D108)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B2D108)($at) 
    mul.s   $f6, $f0, $f4              
    lw      a2, 0x0020($sp)            
    sub.s   $f10, $f6, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0018(a2)           # 00000018
    lui     $at, %hi(var_80B2D10C)     # $at = 80B30000
    lwc1    $f16, %lo(var_80B2D10C)($at) 
    lui     $at, %hi(var_80B2D110)     # $at = 80B30000
    lwc1    $f4, %lo(var_80B2D110)($at) 
    mul.s   $f18, $f0, $f16            
    lw      a2, 0x0020($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   v0, $zero, 0x0096          # v0 = 00000096
    lh      v1, 0x0050(a2)             # 00000050
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    sub.s   $f6, $f18, $f4             
    beq     v1, $zero, lbl_80B2D00C    
    swc1    $f6, 0x0020(a2)            # 00000020
    beq     v1, $at, lbl_80B2D02C      
    addiu   t8, $zero, 0x00C8          # t8 = 000000C8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_80B2D054      
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_80B2D074      
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    beq     $zero, $zero, lbl_80B2D098 
    slti    $at, v1, 0x0007            
lbl_80B2D00C:
    sh      t6, 0x0040(a2)             # 00000040
    sh      v0, 0x0042(a2)             # 00000042
    sh      $zero, 0x0044(a2)          # 00000044
    sh      v0, 0x0048(a2)             # 00000048
    sh      t7, 0x004A(a2)             # 0000004A
    sh      $zero, 0x004C(a2)          # 0000004C
    beq     $zero, $zero, lbl_80B2D094 
    lh      v1, 0x0050(a2)             # 00000050
lbl_80B2D02C:
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    sh      t8, 0x0040(a2)             # 00000040
    sh      t9, 0x0042(a2)             # 00000042
    sh      $zero, 0x0044(a2)          # 00000044
    sh      t0, 0x0048(a2)             # 00000048
    sh      $zero, 0x004A(a2)          # 0000004A
    sh      $zero, 0x004C(a2)          # 0000004C
    beq     $zero, $zero, lbl_80B2D094 
    lh      v1, 0x0050(a2)             # 00000050
lbl_80B2D054:
    sh      t1, 0x0040(a2)             # 00000040
    sh      $zero, 0x0042(a2)          # 00000042
    sh      $zero, 0x0044(a2)          # 00000044
    sh      $zero, 0x0048(a2)          # 00000048
    sh      $zero, 0x004A(a2)          # 0000004A
    sh      $zero, 0x004C(a2)          # 0000004C
    beq     $zero, $zero, lbl_80B2D094 
    lh      v1, 0x0050(a2)             # 00000050
lbl_80B2D074:
    sh      $zero, 0x004C(a2)          # 0000004C
    lh      v0, 0x004C(a2)             # 0000004C
    sh      t2, 0x0040(a2)             # 00000040
    lh      v1, 0x0050(a2)             # 00000050
    sh      v0, 0x0044(a2)             # 00000044
    sh      v0, 0x004A(a2)             # 0000004A
    sh      v0, 0x0042(a2)             # 00000042
    sh      v0, 0x0048(a2)             # 00000048
lbl_80B2D094:
    slti    $at, v1, 0x0007            
lbl_80B2D098:
    beq     $at, $zero, lbl_80B2D0A4   
    addiu   t3, v1, 0x0001             # t3 = 00000001
    sh      t3, 0x0050(a2)             # 00000050
lbl_80B2D0A4:
    lh      t4, 0x0052(a2)             # 00000052
    lh      t5, 0x0054(a2)             # 00000054
    addu    t6, t4, t5                 
    sh      t6, 0x0052(a2)             # 00000052
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000

.section .data

.word 0x00000000
.word func_80B2C980
var_80B2D0C8: .word func_80B2CE78
.word func_80B2CF70
var_80B2D0D0: .word \
0x040572E0, 0x040576E0, 0x04057AE0, 0x04057EE0, \
0x040582E0, 0x040586E0, 0x04058AE0, 0x04058EE0

.section .rodata

var_80B2D0F0: .word 0x3B23D70A
var_80B2D0F4: .word 0x3ECCCCCD
var_80B2D0F8: .word 0x3E4CCCCD
var_80B2D0FC: .word 0x3ECCCCCD
var_80B2D100: .word 0x3E4CCCCD
var_80B2D104: .word 0x3ECCCCCD
var_80B2D108: .word 0x3E4CCCCD
var_80B2D10C: .word 0x3ECCCCCD
var_80B2D110: .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000

