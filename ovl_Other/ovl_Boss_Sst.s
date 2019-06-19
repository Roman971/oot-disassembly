.section .text
func_80A17AF0:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)           
    lui     a1, %hi(var_80A22D1C)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A22D1C)  # a1 = 80A22D1C
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x06A4             # a1 = 000006A4
    sw      a1, 0x0044($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x03C4             # a1 = 000003C4
    sw      a1, 0x0040($sp)            
    jal     func_8004A484              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, %hi(var_80A22CBC)      # a1 = 80A20000
    lui     a2, %hi(var_80A22CB4)      # a2 = 80A20000
    addiu   a2, a2, %lo(var_80A22CB4)  # a2 = 80A22CB4
    addiu   a1, a1, %lo(var_80A22CBC)  # a1 = 80A22CBC
    jal     func_80050344              
    addiu   a0, s0, 0x0098             # a0 = 00000098
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800204D0              
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    or      a0, s1, $zero              # a0 = 00000000
    bne     t6, $at, lbl_80A17E54      
    lw      a1, 0x0040($sp)            
    lui     v0, %hi(var_80A227D0)      # v0 = 80A20000
    addiu   v0, v0, %lo(var_80A227D0)  # v0 = 80A227D0
    lwc1    $f4, 0x0004(v0)            # 80A227D4
    lwc1    $f6, 0x0008(v0)            # 80A227D8
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    sw      a0, 0x003C($sp)            
    lw      a3, 0x0000(v0)             # 80A227D0
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0166          # a2 = 00000166
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f4, 0x0010($sp)           
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)           
    lui     $at, %hi(var_80A24020)     # $at = 80A20000
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0601                 # a3 = 06010000
    addiu   t7, s0, 0x0198             # t7 = 00000198
    addiu   t8, s0, 0x02A6             # t8 = 000002A6
    addiu   t9, $zero, 0x002D          # t9 = 0000002D
    sw      v0, %lo(var_80A24020)($at) 
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a3, a3, 0xE7B8             # a3 = 0600E7B8
    addiu   a2, a2, 0x6840             # a2 = 06016840
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a1, 0x4788                 # a1 = 47880000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    ori     a1, a1, 0xB800             # a1 = 4788B800
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_8001EC20              
    lui     a3, 0x42BE                 # a3 = 42BE0000
    lui     a3, %hi(var_80A22C4C)      # a3 = 80A20000
    addiu   t0, s0, 0x03E4             # t0 = 000003E4
    sw      t0, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80A22C4C)  # a3 = 80A22C4C
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0040($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a3, %hi(var_80A22C5C)      # a3 = 80A20000
    addiu   a3, a3, %lo(var_80A22C5C)  # a3 = 80A22C5C
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, %hi(var_80A24010)     # $at = 80A20000
    sw      s0, %lo(var_80A24010)($at) 
    swc1    $f0, 0x0024(s0)            # 00000024
    lui     $at, %hi(var_80A22D80)     # $at = 80A20000
    swc1    $f0, 0x0028(s0)            # 00000028
    lwc1    $f8, %lo(var_80A22D80)($at) 
    lw      t2, 0x0024(s0)             # 00000024
    lw      t1, 0x0028(s0)             # 00000028
    swc1    $f8, 0x002C(s0)            # 0000002C
    sw      t2, 0x0008(s0)             # 00000008
    lw      t2, 0x002C(s0)             # 0000002C
    lui     a1, 0x0001                 # a1 = 00010000
    sh      $zero, 0x00B6(s0)          # 000000B6
    addu    a1, a1, s1                 
    sw      t1, 0x000C(s0)             # 0000000C
    sw      t2, 0x0010(s0)             # 00000010
    lb      a1, 0x1CBC(a1)             # 00011CBC
    jal     func_80020640              
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A17D1C    
    lui     $at, 0x4348                # $at = 43480000
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f16                  # $f16 = 400.00
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    sw      t3, 0x0024($sp)            
    lw      a0, 0x003C($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005D          # a2 = 0000005D
    lui     a3, 0xC248                 # a3 = C2480000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    swc1    $f16, 0x0014($sp)          
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0010($sp)          
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f4                   # $f4 = -200.00
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      a0, 0x003C($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    lui     a3, 0xC248                 # a3 = C2480000
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f4, 0x0014($sp)           
    jal     func_80025110              # ActorSpawn
    swc1    $f18, 0x0010($sp)          
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A17F68 
    lw      $ra, 0x0034($sp)           
lbl_80A17D1C:
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f6, 0x0024(s0)            # 00000024
    mtc1    $at, $f8                   # $f8 = 0.00
    lui     $at, 0x43C8                # $at = 43C80000
    swc1    $f16, 0x0010($sp)          
    lwc1    $f18, 0x002C(s0)           # 0000002C
    mtc1    $at, $f4                   # $f4 = 400.00
    add.s   $f10, $f6, $f8             
    sw      $zero, 0x0018($sp)         
    lw      a0, 0x003C($sp)            
    add.s   $f6, $f18, $f4             
    mfc1    a3, $f10                   
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00E9          # a2 = 000000E9
    swc1    $f6, 0x0014($sp)           
    lh      t4, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0024($sp)         
    sw      $zero, 0x0020($sp)         
    jal     func_80025110              # ActorSpawn
    sw      t4, 0x001C($sp)            
    lui     v1, %hi(var_80A24018)      # v1 = 80A20000
    addiu   v1, v1, %lo(var_80A24018)  # v1 = 80A24018
    sw      v0, 0x0000(v1)             # 80A24018
    lwc1    $f18, 0x0028(s0)           # 00000028
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f10                  # $f10 = -200.00
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, 0x43C8                # $at = 43C80000
    swc1    $f18, 0x0010($sp)          
    lwc1    $f4, 0x002C(s0)            # 0000002C
    mtc1    $at, $f6                   # $f6 = 400.00
    add.s   $f16, $f8, $f10            
    sw      $zero, 0x0018($sp)         
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    add.s   $f8, $f4, $f6              
    mfc1    a3, $f16                   
    lw      a0, 0x003C($sp)            
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f8, 0x0014($sp)           
    lh      t5, 0x00B6(s0)             # 000000B6
    sw      t6, 0x0024($sp)            
    sw      $zero, 0x0020($sp)         
    addiu   a2, $zero, 0x00E9          # a2 = 000000E9
    jal     func_80025110              # ActorSpawn
    sw      t5, 0x001C($sp)            
    lui     v1, %hi(var_80A24018)      # v1 = 80A20000
    addiu   v1, v1, %lo(var_80A24018)  # v1 = 80A24018
    lw      t8, 0x0000(v1)             # 80A24018
    sw      v0, 0x0004(v1)             # 80A2401C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      v0, 0x011C(t8)             # 0000011C
    lw      t0, 0x0004(v1)             # 80A2401C
    lw      t9, 0x0000(v1)             # 80A24018
    lui     t3, %hi(func_80A1F88C)     # t3 = 80A20000
    lui     t4, %hi(func_80A20808)     # t4 = 80A20000
    sw      t9, 0x011C(t0)             # 0000011C
    lw      t1, 0x0004(s0)             # 00000004
    addiu   t3, t3, %lo(func_80A1F88C) # t3 = 80A1F88C
    addiu   t4, t4, %lo(func_80A20808) # t4 = 80A20808
    and     t2, t1, $at                
    sw      t2, 0x0004(s0)             # 00000004
    sw      t3, 0x0130(s0)             # 00000130
    sw      t4, 0x0134(s0)             # 00000134
    lui     $at, %hi(var_80A22D84)     # $at = 80A20000
    lwc1    $f10, %lo(var_80A22D84)($at) 
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f16                  # $f16 = 4000.00
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f10, 0x03B4(s0)           # 000003B4
    jal     func_80A17FC4              
    swc1    $f16, 0x004C(s0)           # 0000004C
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800265D4              
    addiu   a3, $zero, 0x0009          # a3 = 00000009
    beq     $zero, $zero, lbl_80A17F68 
    lw      $ra, 0x0034($sp)           
lbl_80A17E54:
    lui     a3, %hi(var_80A22AB0)      # a3 = 80A20000
    addiu   t5, s0, 0x03E4             # t5 = 000003E4
    sw      t5, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80A22AB0)  # a3 = 80A22AB0
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a3, %hi(var_80A22C88)      # a3 = 80A20000
    addiu   a3, a3, %lo(var_80A22C88)  # a3 = 80A22C88
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    bne     t6, $zero, lbl_80A17EF0    
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t7, s0, 0x0198             # t7 = 00000198
    addiu   t8, s0, 0x02A6             # t8 = 000002A6
    addiu   t9, $zero, 0x001B          # t9 = 0000001B
    sw      t9, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a3, a3, 0x02E8             # a3 = 060002E8
    addiu   a2, a2, 0x4DE0             # a2 = 06004DE0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lw      v1, 0x03E0(s0)             # 000003E0
    addiu   a0, $zero, 0xFFFF          # a0 = FFFFFFFF
    sb      a0, 0x0184(s0)             # 00000184
    lh      t0, 0x002C(v1)             # 0000002C
    multu   t0, a0                     
    mflo    t1                         
    sh      t1, 0x002C(v1)             # 0000002C
    beq     $zero, $zero, lbl_80A17F20 
    nop
lbl_80A17EF0:
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t2, s0, 0x0198             # t2 = 00000198
    addiu   t3, s0, 0x02A6             # t3 = 000002A6
    addiu   t4, $zero, 0x001B          # t4 = 0000001B
    sw      t4, 0x0018($sp)            
    sw      t3, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    addiu   a3, a3, 0x5860             # a3 = 06005860
    jal     func_8008C788              
    addiu   a2, a2, 0xA350             # a2 = FFFFA350
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t5, 0x0184(s0)             # 00000184
lbl_80A17F20:
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x42BE                 # a3 = 42BE0000
    addiu   t6, $zero, 0xF254          # t6 = FFFFF254
    lw      t7, 0x0004(s0)             # 00000004
    sh      t6, 0x018E(s0)             # 0000018E
    lui     $at, %hi(var_80A22D88)     # $at = 80A20000
    lwc1    $f18, %lo(var_80A22D88)($at) 
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t8, t7, $at                
    sw      t8, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1B13C              
    swc1    $f18, 0x004C(s0)           # 0000004C
    lw      $ra, 0x0034($sp)           
lbl_80A17F68:
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80A17F78:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a1, 0x03C4             # a1 = 000003C4
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x06A4             # a1 = 000006A4
    lw      a0, 0x0018($sp)            
    jal     func_800C9568              
    addiu   a0, a0, 0x03B8             # a0 = 000003B8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A17FC4:
    lui     v0, %hi(var_80A24018)      # v0 = 80A20000
    addiu   v0, v0, %lo(var_80A24018)  # v0 = 80A24018
    sw      $zero, 0x0134(a0)          # 00000134
    lw      t6, 0x0000(v0)             # 80A24018
    lui     t8, %hi(func_80A17FF8)     # t8 = 80A10000
    addiu   t8, t8, %lo(func_80A17FF8) # t8 = 80A17FF8
    sw      $zero, 0x0134(t6)          # 00000134
    lw      t7, 0x0004(v0)             # 80A2401C
    sw      $zero, 0x0134(t7)          # 00000134
    sb      $zero, 0x0184(a0)          # 00000184
    sw      t8, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_80A17FF8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    lwc1    $f4, 0x0094(a0)            # 00000094
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A18028               
    lw      $ra, 0x0014($sp)           
    jal     func_80A18034              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A18028:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A18034:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    lui     v1, %hi(var_80A227D0)      # v1 = 80A20000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   v1, v1, %lo(var_80A227D0)  # v1 = 80A227D0
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   v0, $zero, 0x8000          # v0 = FFFF8000
    lw      s0, 0x1C44(s1)             # 00001C44
    addiu   t6, $zero, 0x0263          # t6 = 00000263
    sh      t6, 0x0188(a2)             # 00000188
    sb      $zero, 0x0185(a2)          # 00000185
    lui     $at, 0x447A                # $at = 447A0000
    lwc1    $f4, 0x0000(v1)            # 80A227D0
    mtc1    $at, $f6                   # $f6 = 1000.00
    lw      t7, 0x066C(s0)             # 0000066C
    swc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x0008(v1)            # 80A227D8
    ori     t8, t7, 0x0020             # t8 = 00000020
    swc1    $f0, 0x0828(s0)            # 00000828
    sh      v0, 0x00B6(s0)             # 000000B6
    sh      v0, 0x082E(s0)             # 0000082E
    sh      v0, 0x082C(s0)             # 0000082C
    swc1    $f0, 0x0060(s0)            # 00000060
    sh      $zero, 0x0884(s0)          # 00000884
    sw      t8, 0x066C(s0)             # 0000066C
    swc1    $f8, 0x002C(s0)            # 0000002C
    sw      a2, 0x0020($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80052328              
    addiu   a1, s1, 0x1D64             # a1 = 00001D64
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0020($sp)            
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8009D0F0              
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, %hi(var_80A24044)     # $at = 80A20000
    sh      v0, %lo(var_80A24044)($at) 
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, %hi(var_80A24044)      # a1 = 80A20000
    lh      a1, %lo(var_80A24044)(a1)  
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     a0, %hi(var_80A227DC)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A227DC)  # a0 = 80A227DC
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     t9, 0x8012                 # t9 = 80120000
    lhu     t9, -0x4B4E(t9)            # 8011B4B2
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, %hi(var_80A24044)      # a1 = 80A20000
    andi    t0, t9, 0x0080             # t0 = 00000000
    beq     t0, $zero, lbl_80A1813C    
    lui     a2, %hi(var_80A227DC)      # a2 = 80A20000
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f10                  # $f10 = -100.00
    lui     $at, %hi(var_80A227F0)     # $at = 80A20000
    swc1    $f10, %lo(var_80A227F0)($at) 
lbl_80A1813C:
    lui     a3, %hi(var_80A227E8)      # a3 = 80A20000
    addiu   a3, a3, %lo(var_80A227E8)  # a3 = 80A227E8
    lh      a1, %lo(var_80A24044)(a1)  
    jal     func_8009D328              
    addiu   a2, a2, %lo(var_80A227DC)  # a2 = 80A227DC
    lui     a0, 0x1001                 # a0 = 10010000
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    lw      t2, 0x0020($sp)            
    lui     t1, %hi(func_80A18180)     # t1 = 80A20000
    addiu   t1, t1, %lo(func_80A18180) # t1 = 80A18180
    sw      t1, 0x0180(t2)             # 00000180
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A18180:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s2, 0x0030($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s1, 0x002C($sp)            
    sw      s0, 0x0028($sp)            
    sw      a1, 0x0054($sp)            
    lh      a2, 0x0188(s2)             # 00000188
    lw      t6, 0x0054($sp)            
    addiu   a0, s2, 0x013C             # a0 = 0000013C
    beq     a2, $zero, lbl_80A181B8    
    lw      a3, 0x1C44(t6)             # 00001C44
    addiu   t7, a2, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0188(s2)             # 00000188
lbl_80A181B8:
    sw      a0, 0x0038($sp)            
    jal     func_8008C9C0              
    sw      a3, 0x004C($sp)            
    beq     v0, $zero, lbl_80A181E8    
    lw      a3, 0x004C($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xDC2C             # a1 = 0600DC2C
    lw      a0, 0x0038($sp)            
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D328              
    sw      a3, 0x004C($sp)            
    lw      a3, 0x004C($sp)            
lbl_80A181E8:
    lh      a2, 0x0188(s2)             # 00000188
    bnel    a2, $zero, lbl_80A18340    
    slti    $at, a2, 0x0222            
    lui     a2, %hi(var_80A24018)      # a2 = 80A20000
    addiu   a2, a2, %lo(var_80A24018)  # a2 = 80A24018
    lw      v0, 0x0004(a2)             # 80A2401C
    lw      a0, 0x0054($sp)            
    addiu   $at, $zero, 0xFFDF         # $at = FFFFFFDF
    lw      t8, 0x0004(v0)             # 00000004
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    ori     t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0004(v0)             # 00000004
    lw      v1, 0x0000(a2)             # 80A24018
    lw      t2, 0x0004(v1)             # 00000004
    ori     t3, t2, 0x0001             # t3 = 00000001
    sw      t3, 0x0004(v1)             # 00000004
    lw      t4, 0x066C(a3)             # 0000066C
    and     t5, t4, $at                
    jal     func_80052340              
    sw      t5, 0x066C(a3)             # 0000066C
    lw      a0, 0x0054($sp)            
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    lui     $at, 0x4396                # $at = 43960000
    lwc1    $f4, 0x0004(s1)            # 80A227E0
    mtc1    $at, $f16                  # $f16 = 300.00
    lwc1    $f10, 0x0008(s1)           # 80A227E4
    add.s   $f8, $f4, $f6              
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    add.s   $f18, $f10, $f16           
    swc1    $f8, 0x0004(s1)            # 80A227E0
    lui     a1, %hi(var_80A24044)      # a1 = 80A20000
    or      a3, s0, $zero              # a3 = 80A227E8
    swc1    $f18, 0x0008(s1)           # 80A227E4
    lh      a1, %lo(var_80A24044)(a1)  
    or      a2, s1, $zero              # a2 = 80A227DC
    jal     func_8009D328              
    lw      a0, 0x0054($sp)            
    lui     a2, %hi(var_80A24044)      # a2 = 80A20000
    lh      a2, %lo(var_80A24044)(a2)  
    lw      a0, 0x0054($sp)            
    jal     func_8009D5F0              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a1, %hi(var_80A24044)      # a1 = 80A20000
    lh      a1, %lo(var_80A24044)(a1)  
    lw      a0, 0x0054($sp)            
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0054($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     a1, %hi(var_80A24044)      # a1 = 80A20000
    lh      a1, %lo(var_80A24044)(a1)  
    jal     func_8009D21C              
    lw      a0, 0x0054($sp)            
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lhu     t6, 0x0EE2(a1)             # 8011B4B2
    or      a0, s2, $zero              # a0 = 00000000
    ori     t7, t6, 0x0080             # t7 = 00000080
    jal     func_80A19064              
    sh      t7, 0x0EE2(a1)             # 8011B4B2
    lbu     t8, 0x03D6(s2)             # 000003D6
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A24018)  # a0 = 80A24018
    ori     t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x03D6(s2)             # 000003D6
    lw      v1, 0x0000(a0)             # 80A24018
    addiu   t6, $zero, 0x0070          # t6 = 00000070
    lbu     t2, 0x03D6(v1)             # 000003D6
    ori     t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x03D6(v1)             # 000003D6
    lw      v0, 0x0004(a0)             # 80A2401C
    lbu     t4, 0x03D6(v0)             # 000003D6
    ori     t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x03D6(v0)             # 000003D6
    beq     $zero, $zero, lbl_80A18F58 
    sh      t6, 0x0188(s2)             # 00000188
    slti    $at, a2, 0x0222            
lbl_80A18340:
    bne     $at, $zero, lbl_80A18480   
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lwc1    $f6, 0x0028(a3)            # 00000028
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    lui     v1, %hi(var_80A227D0)      # v1 = 80A20000
    c.lt.s  $f4, $f6                   
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    addiu   v1, v1, %lo(var_80A227D0)  # v1 = 80A227D0
    or      a0, s1, $zero              # a0 = 80A227DC
    bc1f    lbl_80A18398               
    addiu   a1, a3, 0x0024             # a1 = 00000024
    lwc1    $f8, 0x0000(v1)            # 80A227D0
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   v0, $zero, 0x8000          # v0 = FFFF8000
    swc1    $f8, 0x0024(a3)            # 00000024
    lwc1    $f10, 0x0008(v1)           # 80A227D8
    sh      v0, 0x00B6(a3)             # 000000B6
    sh      v0, 0x082E(a3)             # 0000082E
    sh      v0, 0x082C(a3)             # 0000082C
    swc1    $f16, 0x0828(a3)           # 00000828
    swc1    $f10, 0x002C(a3)           # 0000002C
lbl_80A18398:
    jal     func_80063CAC              # Vec3f_Copy
    sw      a3, 0x004C($sp)            
    lw      a3, 0x004C($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    lhu     t7, 0x0088(a3)             # 00000088
    andi    t8, t7, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_80A18478    
    nop
    lb      t9, 0x0185(s2)             # 00000185
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bne     t9, $zero, lbl_80A18410    
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lui     s0, %hi(var_80A24020)      # s0 = 80A20000
    addiu   s0, s0, %lo(var_80A24020)  # s0 = 80A24020
    lw      t2, 0x0000(s0)             # 80A24020
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    sh      v0, 0x001C(t2)             # 0000001C
    sb      v0, 0x0185(s2)             # 00000185
    lwc1    $f12, 0x008C(s2)           # 0000008C
    jal     func_800915CC              
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    lw      a0, 0x0000(s0)             # 80A24020
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3951          # a1 = 00003951
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    beq     $zero, $zero, lbl_80A18F58 
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
lbl_80A18410:
    lhu     t3, 0x0EE2(a1)             # 00000EE2
    lui     v0, %hi(func_80A1FBB0)     # v0 = 80A20000
    addiu   v0, v0, %lo(func_80A1FBB0) # v0 = 80A1FBB0
    andi    t4, t3, 0x0080             # t4 = 00000000
    beq     t4, $zero, lbl_80A18474    
    addiu   t9, $zero, 0x0222          # t9 = 00000222
    lui     t5, %hi(var_80A2401C)      # t5 = 80A20000
    lw      t5, %lo(var_80A2401C)(t5)  
    lui     t6, %hi(var_80A24018)      # t6 = 80A20000
    lui     t7, %hi(func_80A20808)     # t7 = 80A20000
    sw      v0, 0x0134(t5)             # 80A20134
    lw      t6, %lo(var_80A24018)(t6)  
    addiu   t7, t7, %lo(func_80A20808) # t7 = 80A20808
    addiu   t8, $zero, 0x00B2          # t8 = 000000B2
    sw      v0, 0x0134(t6)             # 80A20134
    lui     $at, 0xC292                # $at = C2920000
    mtc1    $at, $f18                  # $f18 = -73.00
    sw      t7, 0x0134(s2)             # 00000134
    sh      t8, 0x0188(s2)             # 00000188
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    swc1    $f0, 0x0004(s1)            # 80A227E0
    swc1    $f0, 0x0008(s1)            # 80A227E4
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    beq     $zero, $zero, lbl_80A18F58 
    swc1    $f18, 0x0000(s1)           # 80A227DC
lbl_80A18474:
    sh      t9, 0x0188(s2)             # 00000188
lbl_80A18478:
    beq     $zero, $zero, lbl_80A18F58 
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A24FD0
lbl_80A18480:
    slti    $at, a2, 0x01DE            
    bne     $at, $zero, lbl_80A184C8   
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lwc1    $f4, 0x0000(s0)            # 80A227E8
    lwc1    $f8, 0x0004(s0)            # 80A227EC
    lwc1    $f16, 0x0008(s0)           # 80A227F0
    add.s   $f6, $f4, $f0              
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    add.s   $f10, $f8, $f0             
    swc1    $f6, 0x0000(s0)            # 80A227E8
    sub.s   $f18, $f16, $f0            
    swc1    $f10, 0x0004(s0)           # 80A227EC
    beq     $zero, $zero, lbl_80A18F58 
    swc1    $f18, 0x0008(s0)           # 80A227F0
lbl_80A184C8:
    slti    $at, a2, 0x01C0            
    bne     $at, $zero, lbl_80A18614   
    addiu   s0, $zero, 0x01CC          # s0 = 000001CC
    bne     s0, a2, lbl_80A1852C       
    lui     v1, %hi(var_80A227D0)      # v1 = 80A20000
    lui     t2, %hi(var_80A2401C)      # t2 = 80A20000
    lw      t2, %lo(var_80A2401C)(t2)  
    lui     v0, %hi(func_80A1FBB0)     # v0 = 80A20000
    addiu   v0, v0, %lo(func_80A1FBB0) # v0 = 80A1FBB0
    lui     t3, %hi(var_80A24018)      # t3 = 80A20000
    sw      v0, 0x0134(t2)             # 80A20134
    lw      t3, %lo(var_80A24018)(t3)  
    lui     t4, %hi(func_80A20808)     # t4 = 80A20000
    addiu   t4, t4, %lo(func_80A20808) # t4 = 80A20808
    sw      v0, 0x0134(t3)             # 80A20134
    addiu   v1, v1, %lo(var_80A227D0)  # v1 = 80A227D0
    sw      t4, 0x0134(s2)             # 00000134
    lwc1    $f4, 0x0000(v1)            # 80A227D0
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    swc1    $f4, 0x0024(a3)            # 00000024
    lwc1    $f6, 0x0008(v1)            # 80A227D8
    swc1    $f6, 0x002C(a3)            # 0000002C
    jal     func_80A1B328              
    lw      a0, %lo(var_80A2401C)(a0)  
    lh      a2, 0x0188(s2)             # 00000188
lbl_80A1852C:
    slti    $at, a2, 0x01CD            
    bne     $at, $zero, lbl_80A18578   
    nop
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lwc1    $f8, 0x0000(s0)            # 80A227E8
    lui     $at, 0x41A0                # $at = 41A00000
    lwc1    $f16, 0x0004(s0)           # 80A227EC
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x0008(s0)            # 80A227F0
    sub.s   $f10, $f8, $f2             
    sub.s   $f18, $f16, $f2            
    swc1    $f10, 0x0000(s0)           # 80A227E8
    add.s   $f8, $f4, $f6              
    swc1    $f18, 0x0004(s0)           # 80A227EC
    beq     $zero, $zero, lbl_80A18600 
    swc1    $f8, 0x0008(s0)            # 80A227F0
lbl_80A18578:
    bne     s0, a2, lbl_80A18600       
    lui     v0, %hi(var_80A2401C)      # v0 = 80A20000
    lw      v0, %lo(var_80A2401C)(v0)  
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    lui     $at, 0x4120                # $at = 41200000
    lwc1    $f10, 0x0008(v0)           # 80A20008
    mtc1    $at, $f0                   # $f0 = 10.00
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    lui     $at, 0x41A0                # $at = 41A00000
    swc1    $f10, 0x0000(s1)           # 80A227DC
    mtc1    $at, $f18                  # $f18 = 20.00
    lwc1    $f16, 0x000C(v0)           # 80A2000C
    lui     $at, 0x4316                # $at = 43160000
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    sub.s   $f4, $f16, $f18            
    mtc1    $at, $f16                  # $f16 = 150.00
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    lui     $at, 0x42C8                # $at = 42C80000
    swc1    $f4, 0x0004(s1)            # 80A227E0
    lwc1    $f6, 0x0010(v0)            # 80A20010
    add.s   $f8, $f6, $f0              
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, 0x42A0                # $at = 42A00000
    swc1    $f8, 0x0008(s1)            # 80A227E4
    lwc1    $f10, 0x0008(v0)           # 80A20008
    add.s   $f18, $f10, $f16           
    mtc1    $at, $f16                  # $f16 = 80.00
    swc1    $f18, 0x0000(s0)           # 80A227E8
    lwc1    $f4, 0x000C(v0)            # 80A2000C
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0004(s0)            # 80A227EC
    lwc1    $f10, 0x0010(v0)           # 80A20010
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0008(s0)           # 80A227F0
lbl_80A18600:
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    beq     $zero, $zero, lbl_80A18F58 
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
lbl_80A18614:
    slti    $at, a2, 0x0174            
    bne     $at, $zero, lbl_80A187BC   
    addiu   $at, $zero, 0x01BF         # $at = 000001BF
    addiu   t0, a2, 0xFE8C             # t0 = FFFFFE8C
    bne     a2, $at, lbl_80A18680      
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    lw      t6, 0x0024(a3)             # 00000024
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    sw      t6, 0x0000(s1)             # 80A227DC
    lw      t5, 0x0028(a3)             # 00000028
    lui     $at, 0xC37A                # $at = C37A0000
    mtc1    $at, $f4                   # $f4 = -250.00
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f6                   # $f6 = 160.00
    sw      t5, 0x0004(s1)             # 80A227E0
    lw      t6, 0x002C(a3)             # 0000002C
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    lui     $at, 0xC33E                # $at = C33E0000
    mtc1    $at, $f8                   # $f8 = -190.00
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    swc1    $f4, 0x0000(s0)            # 80A227E8
    swc1    $f6, 0x0004(s0)            # 80A227EC
    sw      t6, 0x0008(s1)             # 80A227E4
    swc1    $f8, 0x0008(s0)            # 80A227F0
    beq     $zero, $zero, lbl_80A187A8 
    lh      a2, 0x0188(s2)             # 00000188
lbl_80A18680:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     t0, $at, lbl_80A18714      
    lui     v0, %hi(var_80A2401C)      # v0 = 80A20000
    lw      v0, %lo(var_80A2401C)(v0)  
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lwc1    $f10, 0x0008(v0)           # 80A20008
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    add.s   $f18, $f10, $f16           
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     $at, 0x42C8                # $at = 42C80000
    swc1    $f18, 0x0000(s1)           # 80A227DC
    lwc1    $f4, 0x000C(v0)            # 80A2000C
    mtc1    $at, $f18                  # $f18 = 100.00
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    swc1    $f4, 0x0004(s1)            # 80A227E0
    lwc1    $f6, 0x0010(v0)            # 80A20010
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    lui     $at, 0x4352                # $at = 43520000
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0008(s1)           # 80A227E4
    lwc1    $f16, 0x0008(v0)           # 80A20008
    add.s   $f4, $f16, $f18            
    mtc1    $at, $f16                  # $f16 = 210.00
    swc1    $f4, 0x0000(s0)            # 80A227E8
    lwc1    $f6, 0x000C(v0)            # 80A2000C
    add.s   $f8, $f6, $f0              
    swc1    $f8, 0x0004(s0)            # 80A227EC
    lwc1    $f10, 0x0010(v0)           # 80A20010
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0008(s0)           # 80A227F0
    beq     $zero, $zero, lbl_80A187A8 
    lh      a2, 0x0188(s2)             # 00000188
lbl_80A18714:
    addiu   $at, $zero, 0x003E         # $at = 0000003E
    bne     t0, $at, lbl_80A187A8      
    nop
    lui     v1, %hi(var_80A24018)      # v1 = 80A20000
    lw      v1, %lo(var_80A24018)(v1)  
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    lwc1    $f4, 0x0008(v1)            # 80A20008
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    swc1    $f4, 0x0000(s1)            # 80A227DC
    lwc1    $f6, 0x000C(v1)            # 80A2000C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    add.s   $f10, $f6, $f8             
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f8                   # $f8 = 110.00
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    swc1    $f10, 0x0004(s1)           # 80A227E0
    lwc1    $f16, 0x0010(v1)           # 80A20010
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    lui     $at, 0x4334                # $at = 43340000
    add.s   $f4, $f16, $f18            
    mtc1    $at, $f18                  # $f18 = 180.00
    lui     $at, 0x428C                # $at = 428C0000
    swc1    $f4, 0x0008(s1)            # 80A227E4
    lwc1    $f6, 0x0008(v1)            # 80A20008
    add.s   $f10, $f6, $f8             
    mtc1    $at, $f8                   # $f8 = 70.00
    swc1    $f10, 0x0000(s0)           # 80A227E8
    lwc1    $f16, 0x000C(v1)           # 80A2000C
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0004(s0)            # 80A227EC
    lwc1    $f6, 0x0010(v1)            # 80A20010
    sub.s   $f10, $f6, $f8             
    swc1    $f10, 0x0008(s0)           # 80A227F0
    lh      a2, 0x0188(s2)             # 00000188
lbl_80A187A8:
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    beq     $zero, $zero, lbl_80A18C10 
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
lbl_80A187BC:
    slti    $at, a2, 0x0130            
    bne     $at, $zero, lbl_80A18900   
    addiu   t0, a2, 0xFED0             # t0 = FFFFFED0
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     t0, $at, lbl_80A18864      
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    lui     v0, %hi(var_80A2401C)      # v0 = 80A20000
    lw      v0, %lo(var_80A2401C)(v0)  
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lwc1    $f16, 0x0008(v0)           # 80A20008
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    add.s   $f18, $f16, $f2            
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f6                   # $f6 = 90.00
    lui     $at, 0x41A0                # $at = 41A00000
    swc1    $f18, 0x0000(s1)           # 80A227DC
    lwc1    $f4, 0x000C(v0)            # 80A2000C
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    sub.s   $f8, $f4, $f6              
    mtc1    $at, $f4                   # $f4 = 20.00
    lui     $at, 0x4352                # $at = 43520000
    swc1    $f8, 0x0004(s1)            # 80A227E0
    lwc1    $f10, 0x0010(v0)           # 80A20010
    sub.s   $f16, $f10, $f2            
    mtc1    $at, $f10                  # $f10 = 210.00
    lui     $at, 0x432A                # $at = 432A0000
    swc1    $f16, 0x0008(s1)           # 80A227E4
    lwc1    $f18, 0x0008(v0)           # 80A20008
    sub.s   $f6, $f18, $f4             
    mtc1    $at, $f4                   # $f4 = 170.00
    swc1    $f6, 0x0000(s0)            # 80A227E8
    lwc1    $f8, 0x000C(v0)            # 80A2000C
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0004(s0)           # 80A227EC
    lwc1    $f18, 0x0010(v0)           # 80A20010
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0008(s0)            # 80A227F0
    beq     $zero, $zero, lbl_80A188EC 
    lh      a2, 0x0188(s2)             # 00000188
lbl_80A18864:
    addiu   $at, $zero, 0x0170         # $at = 00000170
    bne     a2, $at, lbl_80A188EC      
    nop
    lui     v1, %hi(var_80A24018)      # v1 = 80A20000
    lw      v1, %lo(var_80A24018)(v1)  
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x0008(v1)            # 80A20008
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    sub.s   $f16, $f8, $f10            
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f8                   # $f8 = 70.00
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    swc1    $f16, 0x0000(s1)           # 80A227DC
    lwc1    $f18, 0x000C(v1)           # 80A2000C
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    lui     $at, 0x432A                # $at = 432A0000
    swc1    $f18, 0x0004(s1)           # 80A227E0
    lwc1    $f4, 0x0010(v1)            # 80A20010
    mtc1    $at, $f18                  # $f18 = 170.00
    lui     $at, 0x4316                # $at = 43160000
    swc1    $f4, 0x0008(s1)            # 80A227E4
    lwc1    $f6, 0x0008(v1)            # 80A20008
    sub.s   $f10, $f6, $f8             
    mtc1    $at, $f8                   # $f8 = 150.00
    swc1    $f10, 0x0000(s0)           # 80A227E8
    lwc1    $f16, 0x000C(v1)           # 80A2000C
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0004(s0)            # 80A227EC
    lwc1    $f6, 0x0010(v1)            # 80A20010
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0008(s0)           # 80A227F0
    lh      a2, 0x0188(s2)             # 00000188
lbl_80A188EC:
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    beq     $zero, $zero, lbl_80A18C10 
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
lbl_80A18900:
    slti    $at, a2, 0x00F4            
    bne     $at, $zero, lbl_80A18A5C   
    addiu   t0, a2, 0xFF0C             # t0 = FFFFFF0C
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     t0, $at, lbl_80A189B0      
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lui     v0, %hi(var_80A2401C)      # v0 = 80A20000
    lw      v0, %lo(var_80A2401C)(v0)  
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    lwc1    $f16, 0x0008(v0)           # 80A20008
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    add.s   $f4, $f16, $f18            
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f8                   # $f8 = 70.00
    lui     $at, 0x42DC                # $at = 42DC0000
    swc1    $f4, 0x0000(s1)            # 80A227DC
    lwc1    $f6, 0x000C(v0)            # 80A2000C
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    add.s   $f10, $f6, $f8             
    mtc1    $at, $f6                   # $f6 = 110.00
    lui     $at, 0x430C                # $at = 430C0000
    swc1    $f10, 0x0004(s1)           # 80A227E0
    lwc1    $f16, 0x0010(v0)           # 80A20010
    add.s   $f18, $f16, $f2            
    mtc1    $at, $f16                  # $f16 = 140.00
    swc1    $f18, 0x0008(s1)           # 80A227E4
    lwc1    $f4, 0x0008(v0)            # 80A20008
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0000(s0)            # 80A227E8
    lwc1    $f10, 0x000C(v0)           # 80A2000C
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0004(s0)           # 80A227EC
    lwc1    $f4, 0x0010(v0)            # 80A20010
    sub.s   $f6, $f4, $f0              
    swc1    $f6, 0x0008(s0)            # 80A227F0
    beq     $zero, $zero, lbl_80A18A48 
    lh      a2, 0x0188(s2)             # 00000188
lbl_80A189B0:
    addiu   $at, $zero, 0x012C         # $at = 0000012C
    bne     a2, $at, lbl_80A18A48      
    nop
    lui     v1, %hi(var_80A24018)      # v1 = 80A20000
    lw      v1, %lo(var_80A24018)(v1)  
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f0                   # $f0 = 130.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x0008(v1)            # 80A20008
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    sub.s   $f16, $f8, $f10            
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lui     $at, 0x43A0                # $at = 43A00000
    swc1    $f16, 0x0000(s1)           # 80A227DC
    lwc1    $f18, 0x000C(v1)           # 80A2000C
    mtc1    $at, $f10                  # $f10 = 320.00
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    sub.s   $f6, $f18, $f4             
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    lui     $at, 0x4316                # $at = 43160000
    swc1    $f6, 0x0004(s1)            # 80A227E0
    lwc1    $f8, 0x0010(v1)            # 80A20010
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x0008(s1)           # 80A227E4
    lwc1    $f18, 0x0008(v1)           # 80A20008
    mtc1    $at, $f16                  # $f16 = 150.00
    sub.s   $f4, $f18, $f0             
    swc1    $f4, 0x0000(s0)            # 80A227E8
    lwc1    $f6, 0x000C(v1)            # 80A2000C
    add.s   $f8, $f6, $f0              
    swc1    $f8, 0x0004(s0)            # 80A227EC
    lwc1    $f10, 0x0010(v1)           # 80A20010
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0008(s0)           # 80A227F0
    lh      a2, 0x0188(s2)             # 00000188
lbl_80A18A48:
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    beq     $zero, $zero, lbl_80A18C10 
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
lbl_80A18A5C:
    slti    $at, a2, 0x00C0            
    bne     $at, $zero, lbl_80A18BA8   
    addiu   $at, $zero, 0x00F0         # $at = 000000F0
    addiu   t0, a2, 0xFF40             # t0 = FFFFFF40
    bne     a2, $at, lbl_80A18B0C      
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f0                   # $f0 = 130.00
    lui     v1, %hi(var_80A24018)      # v1 = 80A20000
    lw      v1, %lo(var_80A24018)(v1)  
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lui     $at, 0x433E                # $at = 433E0000
    mtc1    $at, $f6                   # $f6 = 190.00
    lwc1    $f4, 0x0008(v1)            # 80A20008
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    sub.s   $f8, $f4, $f6              
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f16                  # $f16 = 110.00
    lui     $at, 0x42F0                # $at = 42F00000
    swc1    $f8, 0x0000(s1)            # 80A227DC
    lwc1    $f10, 0x000C(v1)           # 80A2000C
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    sub.s   $f18, $f10, $f16           
    mtc1    $at, $f10                  # $f10 = 120.00
    lui     $at, 0x4248                # $at = 42480000
    swc1    $f18, 0x0004(s1)           # 80A227E0
    lwc1    $f4, 0x0010(v1)            # 80A20010
    add.s   $f6, $f4, $f2              
    swc1    $f6, 0x0008(s1)            # 80A227E4
    lwc1    $f8, 0x0008(v1)            # 80A20008
    add.s   $f16, $f8, $f10            
    mtc1    $at, $f8                   # $f8 = 50.00
    swc1    $f16, 0x0000(s0)           # 80A227E8
    lwc1    $f18, 0x000C(v1)           # 80A2000C
    add.s   $f4, $f18, $f0             
    swc1    $f4, 0x0004(s0)            # 80A227EC
    lwc1    $f6, 0x0010(v1)            # 80A20010
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0008(s0)           # 80A227F0
    beq     $zero, $zero, lbl_80A18B94 
    lh      a2, 0x0188(s2)             # 00000188
lbl_80A18B0C:
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     t0, $at, lbl_80A18B94      
    nop
    lui     v1, %hi(var_80A227D0)      # v1 = 80A20000
    addiu   v1, v1, %lo(var_80A227D0)  # v1 = 80A227D0
    lwc1    $f16, 0x0000(v1)           # 80A227D0
    lwc1    $f12, 0x0004(v1)           # 80A227D4
    lwc1    $f0, 0x0008(v1)            # 80A227D8
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f18                  # $f18 = 50.00
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f4                   # $f4 = 90.00
    add.s   $f2, $f16, $f18            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    sub.s   $f6, $f12, $f4             
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    sub.s   $f10, $f0, $f8             
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f16                  # $f16 = 350.00
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    add.s   $f18, $f12, $f16           
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f4                   # $f4 = 150.00
    swc1    $f6, 0x0004(s1)            # 80A227E0
    swc1    $f2, 0x0000(s1)            # 80A227DC
    add.s   $f6, $f0, $f4              
    swc1    $f10, 0x0008(s1)           # 80A227E4
    swc1    $f2, 0x0000(s0)            # 80A227E8
    swc1    $f18, 0x0004(s0)           # 80A227EC
    swc1    $f6, 0x0008(s0)            # 80A227F0
    lh      a2, 0x0188(s2)             # 00000188
lbl_80A18B94:
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    beq     $zero, $zero, lbl_80A18C10 
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
lbl_80A18BA8:
    slti    $at, a2, 0x0094            
    bne     $at, $zero, lbl_80A18BCC   
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    addiu   t0, a2, 0xFF6C             # t0 = FFFFFF6C
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    beq     $zero, $zero, lbl_80A18C10 
    addiu   t1, $zero, 0x0002          # t1 = 00000002
lbl_80A18BCC:
    slti    $at, a2, 0x0070            
    bne     $at, $zero, lbl_80A18BF4   
    or      t1, $zero, $zero           # t1 = 00000000
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    addiu   t0, a2, 0xFF90             # t0 = FFFFFF90
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
    beq     $zero, $zero, lbl_80A18C10 
    addiu   t1, $zero, 0x0001          # t1 = 00000001
lbl_80A18BF4:
    addiu   $at, $zero, 0x001C         # $at = 0000001C
    div     $zero, a2, $at             
    mfhi    t0                         
    lui     s1, %hi(var_80A227DC)      # s1 = 80A20000
    lui     s0, %hi(var_80A227E8)      # s0 = 80A20000
    addiu   s0, s0, %lo(var_80A227E8)  # s0 = 80A227E8
    addiu   s1, s1, %lo(var_80A227DC)  # s1 = 80A227DC
lbl_80A18C10:
    slti    $at, a2, 0x00C7            
    beql    $at, $zero, lbl_80A18EE4   
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lhu     v1, 0x0EE2(a1)             # 8011B4B2
    addiu   t7, $zero, 0x00C6          # t7 = 000000C6
    subu    v0, t7, a2                 
    andi    v1, v1, 0x0080             # v1 = 00000080
    beq     v1, $zero, lbl_80A18CA8    
    slti    $at, v0, 0x002D            
    beq     $at, $zero, lbl_80A18CA8   
    lui     $at, %hi(var_80A22D8C)     # $at = 80A20000
    lwc1    $f10, %lo(var_80A22D8C)($at) 
    lui     $at, 0x4000                # $at = 40000000
    lwc1    $f8, 0x0000(s1)            # 80A227DC
    mtc1    $at, $f4                   # $f4 = 2.00
    lwc1    $f18, 0x0004(s1)           # 80A227E0
    add.s   $f16, $f8, $f10            
    lui     $at, %hi(var_80A22D90)     # $at = 80A20000
    lwc1    $f8, 0x0000(s0)            # 80A227E8
    add.s   $f6, $f18, $f4             
    swc1    $f16, 0x0000(s1)           # 80A227DC
    lwc1    $f18, 0x0004(s0)           # 80A227EC
    swc1    $f6, 0x0004(s1)            # 80A227E0
    lwc1    $f10, %lo(var_80A22D90)($at) 
    lui     $at, %hi(var_80A22D94)     # $at = 80A20000
    sub.s   $f16, $f8, $f10            
    lwc1    $f8, 0x0008(s0)            # 80A227F0
    swc1    $f16, 0x0000(s0)           # 80A227E8
    lwc1    $f4, %lo(var_80A22D94)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    sub.s   $f6, $f18, $f4             
    add.s   $f16, $f8, $f10            
    swc1    $f6, 0x0004(s0)            # 80A227EC
    beq     $zero, $zero, lbl_80A18EE0 
    swc1    $f16, 0x0008(s0)           # 80A227F0
lbl_80A18CA8:
    slti    $at, a2, 0x0015            
    beq     $at, $zero, lbl_80A18D2C   
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f4                   # $f4 = 7.00
    lwc1    $f18, 0x0004(s1)           # 80A227E0
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f10                  # $f10 = 9.00
    sub.s   $f6, $f18, $f4             
    lui     $at, 0x40D0                # $at = 40D00000
    lwc1    $f8, 0x0008(s1)            # 80A227E4
    mtc1    $at, $f4                   # $f4 = 6.50
    lwc1    $f18, 0x0000(s0)           # 80A227E8
    swc1    $f6, 0x0004(s1)            # 80A227E0
    add.s   $f16, $f8, $f10            
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    add.s   $f6, $f18, $f4             
    lui     $at, 0x4178                # $at = 41780000
    lwc1    $f8, 0x0004(s0)            # 80A227EC
    mtc1    $at, $f4                   # $f4 = 15.50
    lwc1    $f18, 0x0008(s0)           # 80A227F0
    swc1    $f16, 0x0008(s1)           # 80A227E4
    swc1    $f6, 0x0000(s0)            # 80A227E8
    add.s   $f16, $f8, $f10            
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    add.s   $f6, $f18, $f4             
    swc1    $f16, 0x0004(s0)           # 80A227EC
    swc1    $f6, 0x0008(s0)            # 80A227F0
    lw      t8, 0x0004(s2)             # 00000004
    sb      v0, 0x0184(s2)             # 00000184
    ori     t9, t8, 0x0080             # t9 = 00000080
    beq     $zero, $zero, lbl_80A18EE0 
    sw      t9, 0x0004(s2)             # 00000004
lbl_80A18D2C:
    slti    $at, v0, 0x0028            
    beq     $at, $zero, lbl_80A18D9C   
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f10                  # $f10 = 1.25
    lwc1    $f8, 0x0000(s1)            # 80A227DC
    lui     $at, 0x4060                # $at = 40600000
    mtc1    $at, $f4                   # $f4 = 3.50
    add.s   $f16, $f8, $f10            
    lui     $at, 0x40A0                # $at = 40A00000
    lwc1    $f18, 0x0004(s1)           # 80A227E0
    mtc1    $at, $f10                  # $f10 = 5.00
    lwc1    $f8, 0x0008(s1)            # 80A227E4
    swc1    $f16, 0x0000(s1)           # 80A227DC
    add.s   $f6, $f18, $f4             
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    add.s   $f16, $f8, $f10            
    lui     $at, 0x4108                # $at = 41080000
    lwc1    $f18, 0x0000(s0)           # 80A227E8
    mtc1    $at, $f10                  # $f10 = 8.50
    lwc1    $f8, 0x0004(s0)            # 80A227EC
    swc1    $f6, 0x0004(s1)            # 80A227E0
    swc1    $f16, 0x0008(s1)           # 80A227E4
    add.s   $f6, $f18, $f4             
    sub.s   $f16, $f8, $f10            
    swc1    $f6, 0x0000(s0)            # 80A227E8
    beq     $zero, $zero, lbl_80A18EE0 
    swc1    $f16, 0x0004(s0)           # 80A227EC
lbl_80A18D9C:
    slti    $at, v0, 0x002D            
    bne     $at, $zero, lbl_80A18EE0   
    slti    $at, v0, 0x0055            
    beq     $at, $zero, lbl_80A18E28   
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f4                   # $f4 = 2.50
    lui     $at, 0x4088                # $at = 40880000
    lwc1    $f18, 0x0000(s1)           # 80A227DC
    mtc1    $at, $f10                  # $f10 = 4.25
    lwc1    $f8, 0x0004(s1)            # 80A227E0
    sub.s   $f6, $f18, $f4             
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f4                   # $f4 = 12.00
    add.s   $f16, $f8, $f10            
    lui     $at, 0x40D0                # $at = 40D00000
    lwc1    $f18, 0x0008(s1)           # 80A227E4
    mtc1    $at, $f10                  # $f10 = 6.50
    lwc1    $f8, 0x0000(s0)            # 80A227E8
    swc1    $f6, 0x0000(s1)            # 80A227DC
    swc1    $f16, 0x0004(s1)           # 80A227E0
    sub.s   $f6, $f18, $f4             
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f4                   # $f4 = 1.25
    sub.s   $f16, $f8, $f10            
    lui     $at, 0x4060                # $at = 40600000
    lwc1    $f18, 0x0004(s0)           # 80A227EC
    mtc1    $at, $f10                  # $f10 = 3.50
    lwc1    $f8, 0x0008(s0)            # 80A227F0
    swc1    $f6, 0x0008(s1)            # 80A227E4
    swc1    $f16, 0x0000(s0)           # 80A227E8
    add.s   $f6, $f18, $f4             
    sub.s   $f16, $f8, $f10            
    swc1    $f6, 0x0004(s0)            # 80A227EC
    beq     $zero, $zero, lbl_80A18EE0 
    swc1    $f16, 0x0008(s0)           # 80A227F0
lbl_80A18E28:
    addiu   $at, $zero, 0x0055         # $at = 00000055
    bnel    v0, $at, lbl_80A18EE4      
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     v1, $zero, lbl_80A18EA8    
    lw      a0, 0x0054($sp)            
    lui     v0, 0x0601                 # v0 = 06010000
    addiu   v0, v0, 0x3D80             # v0 = 06013D80
    sll     t3, v0,  4                 
    srl     t4, t3, 28                 
    sll     t5, t4,  2                 
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t5                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t7, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addiu   t8, $zero, 0x00B4          # t8 = 000000B4
    addiu   t9, $zero, 0x0080          # t9 = 00000080
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    addu    a2, t6, t7                 
    addu    a2, a2, $at                
    sw      t2, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    addiu   a1, a0, 0x1D4C             # a1 = 00001D4C
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    sw      t0, 0x0044($sp)            
    jal     func_80020780              
    sw      t1, 0x0048($sp)            
    lw      t0, 0x0044($sp)            
    lw      t1, 0x0048($sp)            
lbl_80A18EA8:
    addiu   a0, $zero, 0x001B          # a0 = 0000001B
    sw      t0, 0x0044($sp)            
    jal     func_800CAA70              
    sw      t1, 0x0048($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC288             # a1 = 0600C288
    lw      a0, 0x0038($sp)            
    jal     func_8008D21C              
    lui     a2, 0xC0A0                 # a2 = C0A00000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80A1F2A4              
    addiu   a1, $zero, 0x396B          # a1 = 0000396B
    lw      t0, 0x0044($sp)            
    lw      t1, 0x0048($sp)            
lbl_80A18EE0:
    addiu   $at, $zero, 0x000C         # $at = 0000000C
lbl_80A18EE4:
    bnel    t0, $at, lbl_80A18F0C      
    addiu   v0, $zero, 0x0005          # v0 = 00000005
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    lw      a0, %lo(var_80A2401C)(a0)  
    sw      t0, 0x0044($sp)            
    jal     func_80A1B328              
    sw      t1, 0x0048($sp)            
    lw      t0, 0x0044($sp)            
    lw      t1, 0x0048($sp)            
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80A18F0C:
    beq     t0, v0, lbl_80A18F58       
    sll     t3, t1,  1                 
    addiu   t4, t3, 0x0007             # t4 = 00000007
    div     $zero, t0, t4              
    mfhi    t5                         
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    bne     t4, $zero, lbl_80A18F30    
    nop
    break   # 0x01C00
lbl_80A18F30:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t4, $at, lbl_80A18F48      
    lui     $at, 0x8000                # $at = 80000000
    bne     t0, $at, lbl_80A18F48      
    nop
    break   # 0x01800
lbl_80A18F48:
    bnel    v0, t5, lbl_80A18F5C       
    lw      t7, 0x0180(s2)             # 00000180
    jal     func_80A1B63C              
    lw      a0, %lo(var_80A24018)(a0)  
lbl_80A18F58:
    lw      t7, 0x0180(s2)             # 00000180
lbl_80A18F5C:
    lui     t6, %hi(func_80A19084)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A19084) # t6 = 80A19084
    beq     t6, t7, lbl_80A18F80       
    lui     a1, %hi(var_80A24044)      # a1 = 80A20000
    lh      a1, %lo(var_80A24044)(a1)  
    lw      a0, 0x0054($sp)            
    or      a2, s1, $zero              # a2 = 80A227DC
    jal     func_8009D328              
    or      a3, s0, $zero              # a3 = 80A227E8
lbl_80A18F80:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80A18F98:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xDC2C             # a1 = 0600DC2C
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0144(a3)             # 00000144
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    beq     a1, t6, lbl_80A18FCC       
    nop
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
lbl_80A18FCC:
    lui     t7, %hi(func_80A18FE8)     # t7 = 80A20000
    addiu   t7, t7, %lo(func_80A18FE8) # t7 = 80A18FE8
    sw      t7, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A18FE8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lui     v1, %hi(var_80A24018)      # v1 = 80A20000
    addiu   v1, v1, %lo(var_80A24018)  # v1 = 80A24018
    lw      t6, 0x0000(v1)             # 80A24018
    lui     v0, %hi(var_80A228FC)      # v0 = 80A20000
    addiu   v0, v0, %lo(var_80A228FC)  # v0 = 80A228FC
    lh      t7, 0x001C(t6)             # 0000001C
    sll     t8, t7,  2                 
    addu    t9, v0, t8                 
    lw      t0, 0x0000(t9)             # 00000000
    bnel    t0, $zero, lbl_80A19058    
    lw      $ra, 0x0014($sp)           
    lw      t1, 0x0004(v1)             # 80A2401C
    lh      t2, 0x001C(t1)             # 0000001C
    sll     t3, t2,  2                 
    addu    t4, v0, t3                 
    lw      t5, 0x0000(t4)             # 00000000
    bnel    t5, $zero, lbl_80A19058    
    lw      $ra, 0x0014($sp)           
    jal     func_80A19064              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A19058:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19064:
    lui     t7, %hi(func_80A19084)     # t7 = 80A20000
    addiu   t6, $zero, 0x007F          # t6 = 0000007F
    addiu   t7, t7, %lo(func_80A19084) # t7 = 80A19084
    sh      t6, 0x0188(a0)             # 00000188
    sb      $zero, 0x0185(a0)          # 00000185
    sw      t7, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_80A19084:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lb      v1, 0x0185(s0)             # 00000185
    lw      a2, 0x0024($sp)            
    lui     t6, %hi(var_80A24018)      # t6 = 80A20000
    bne     v1, $zero, lbl_80A19114    
    nop
    lw      t6, %lo(var_80A24018)(t6)  
    lui     a0, %hi(var_80A228FC)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A228FC)  # a0 = 80A228FC
    lh      t7, 0x001C(t6)             # 80A2001C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     t0, %hi(var_80A2401C)      # t0 = 80A20000
    sll     t8, t7,  2                 
    addu    t9, a0, t8                 
    lw      v0, 0x0000(t9)             # 00000000
    beq     a1, v0, lbl_80A190E8       
    nop
    bne     v0, $zero, lbl_80A19114    
    nop
lbl_80A190E8:
    lw      t0, %lo(var_80A2401C)(t0)  
    lh      t1, 0x001C(t0)             # 80A2001C
    sll     t2, t1,  2                 
    addu    t3, a0, t2                 
    lw      v0, 0x0000(t3)             # 00000000
    beql    a1, v0, lbl_80A19110       
    sb      a1, 0x0185(s0)             # 00000185
    bne     v0, $zero, lbl_80A19114    
    nop
    sb      a1, 0x0185(s0)             # 00000185
lbl_80A19110:
    lb      v1, 0x0185(s0)             # 00000185
lbl_80A19114:
    beq     v1, $zero, lbl_80A1912C    
    lui     a1, %hi(var_80A227D0)      # a1 = 80A20000
    lh      v0, 0x0188(s0)             # 00000188
    beq     v0, $zero, lbl_80A1912C    
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x0188(s0)             # 00000188
lbl_80A1912C:
    lh      t5, 0x0188(s0)             # 00000188
    addiu   a1, a1, %lo(var_80A227D0)  # a1 = 80A227D0
    bne     t5, $zero, lbl_80A191C8    
    nop
    lw      v0, 0x1C44(a2)             # 00001C44
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f4                   # $f4 = -50.00
    lwc1    $f6, 0x0028(v0)            # 00000028
    addiu   t1, $zero, 0x001C          # t1 = 0000001C
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A191C0               
    sh      t1, 0x0188(s0)             # 00000188
    lw      t6, 0x066C(v0)             # 0000066C
    andi    t7, t6, 0x6080             # t7 = 00000000
    bnel    t7, $zero, lbl_80A191C0    
    sh      t1, 0x0188(s0)             # 00000188
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      t8, $zero, $zero           # t8 = 00000000
    c.le.s  $f0, $f8                   
    lui     t0, %hi(var_80A24018)      # t0 = 80A20000
    bc1fl   lbl_80A191A0               
    sll     t9, t8,  2                 
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sll     t9, t8,  2                 
lbl_80A191A0:
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80A24018)(t0)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A18F98              
    sb      a1, 0x0185(t0)             # 80A20185
    beq     $zero, $zero, lbl_80A19218 
    lw      $ra, 0x001C($sp)           
    sh      t1, 0x0188(s0)             # 00000188
lbl_80A191C0:
    beq     $zero, $zero, lbl_80A19218 
    lw      $ra, 0x001C($sp)           
lbl_80A191C8:
    jal     func_8002140C              
    lw      a0, 0x1C44(a2)             # 00001C44
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, v0, $at                
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80064624              
    addiu   a3, $zero, 0x0400          # a3 = 00000400
    lh      v0, 0x0188(s0)             # 00000188
    addiu   $at, $zero, 0x001C         # $at = 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80A1920C      
    addiu   $at, $zero, 0x0054         # $at = 00000054
    bnel    v0, $at, lbl_80A19218      
    lw      $ra, 0x001C($sp)           
lbl_80A1920C:
    jal     func_80A1F2A4              
    addiu   a1, $zero, 0x398E          # a1 = 0000398E
    lw      $ra, 0x001C($sp)           
lbl_80A19218:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19228:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    beq     a1, $zero, lbl_80A1925C    
    lw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC9BC             # a1 = 0600C9BC
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80A19274 
    lw      t7, 0x0018($sp)            
lbl_80A1925C:
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC5B0             # a1 = 0600C5B0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lw      t7, 0x0018($sp)            
lbl_80A19274:
    lui     t6, %hi(func_80A19290)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A19290) # t6 = 80A19290
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19290:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    beq     v0, $zero, lbl_80A19378    
    lw      a1, 0x0018($sp)            
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A24018)  # a0 = 80A24018
    lw      t6, 0x0000(a0)             # 80A24018
    lui     v1, %hi(var_80A228FC)      # v1 = 80A20000
    addiu   v1, v1, %lo(var_80A228FC)  # v1 = 80A228FC
    lh      t7, 0x001C(t6)             # 0000001C
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     t8, t7,  2                 
    addu    t9, v1, t8                 
    lw      v0, 0x0000(t9)             # 00000000
    bnel    a2, v0, lbl_80A19318       
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    lw      t0, 0x0004(a0)             # 80A2401C
    lh      t1, 0x001C(t0)             # 0000001C
    sll     t2, t1,  2                 
    addu    t3, v1, t2                 
    lw      t4, 0x0000(t3)             # 00000000
    bnel    a2, t4, lbl_80A19318       
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    jal     func_80A19388              
    or      a0, a1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1937C 
    lw      $ra, 0x0014($sp)           
    addiu   a2, $zero, 0x0009          # a2 = 00000009
lbl_80A19318:
    beq     a2, v0, lbl_80A1933C       
    nop
    lw      t5, 0x0004(a0)             # 00000004
    lh      t6, 0x001C(t5)             # 0000001C
    sll     t7, t6,  2                 
    addu    t8, v1, t7                 
    lw      t9, 0x0000(t8)             # 00000000
    bnel    a2, t9, lbl_80A19350       
    lw      t1, 0x0144(a1)             # 00000144
lbl_80A1933C:
    jal     func_80A19894              
    or      a0, a1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1937C 
    lw      $ra, 0x0014($sp)           
    lw      t1, 0x0144(a1)             # 00000144
lbl_80A19350:
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0xC9BC             # t0 = 0600C9BC
    bne     t0, t1, lbl_80A19370       
    nop
    jal     func_80A19930              
    or      a0, a1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1937C 
    lw      $ra, 0x0014($sp)           
lbl_80A19370:
    jal     func_80A18F98              
    or      a0, a1, $zero              # a0 = 00000000
lbl_80A19378:
    lw      $ra, 0x0014($sp)           
lbl_80A1937C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19388:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE7B8             # a1 = 0600E7B8
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t8, %hi(func_80A193E0)     # t8 = 80A20000
    lbu     t6, 0x06B5(a3)             # 000006B5
    addiu   t8, t8, %lo(func_80A193E0) # t8 = 80A193E0
    sw      t8, 0x0180(a3)             # 00000180
    ori     t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x06B5(a3)             # 000006B5
    swc1    $f4, 0x0068(a3)            # 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A193E0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A24018)  # a0 = 80A24018
    lw      v0, 0x0000(a0)             # 80A24018
    lw      t6, 0x0020($sp)            
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lb      t7, 0x0185(v0)             # 00000185
    addiu   a3, $zero, 0x0800          # a3 = 00000800
    addiu   t2, $zero, 0x0400          # t2 = 00000400
    beq     t7, $zero, lbl_80A19464    
    or      t0, t6, $zero              # t0 = 00000000
    lw      t8, 0x0180(v0)             # 00000180
    lui     v1, %hi(func_80A1DDC0)     # v1 = 80A20000
    addiu   v1, v1, %lo(func_80A1DDC0) # v1 = 80A1DDC0
    bnel    v1, t8, lbl_80A19468       
    lh      a1, 0x008A(t0)             # 0000008A
    lw      v0, 0x0004(a0)             # 80A2401C
    lb      t9, 0x0185(v0)             # 00000185
    beql    t9, $zero, lbl_80A19468    
    lh      a1, 0x008A(t0)             # 0000008A
    lw      t1, 0x0180(v0)             # 00000180
    bnel    v1, t1, lbl_80A19468       
    lh      a1, 0x008A(t0)             # 0000008A
    jal     func_80A19484              
    or      a0, t6, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A19478 
    lw      $ra, 0x001C($sp)           
lbl_80A19464:
    lh      a1, 0x008A(t0)             # 0000008A
lbl_80A19468:
    sw      t2, 0x0010($sp)            
    jal     func_80064508              
    addiu   a0, t0, 0x00B6             # a0 = 000000B6
    lw      $ra, 0x001C($sp)           
lbl_80A19478:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19484:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xB0D8             # a0 = 0600B0D8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f8                   # $f8 = -5.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0xB0D8             # a1 = 0600B0D8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    lw      a0, %lo(var_80A24018)(a0)  
    jal     func_80A1F1F8              
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    lw      a0, %lo(var_80A2401C)(a0)  
    jal     func_80A1F1F8              
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    lbu     t7, 0x03D4(s0)             # 000003D4
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    ori     t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x03D4(s0)             # 000003D4
    lui     $at, %hi(var_80A22D98)     # $at = 80A20000
    swc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f16, %lo(var_80A22D98)($at) 
    lui     t9, %hi(func_80A19540)     # t9 = 80A20000
    addiu   t9, t9, %lo(func_80A19540) # t9 = 80A19540
    sb      $zero, 0x0185(s0)          # 00000185
    sw      t9, 0x0180(s0)             # 00000180
    swc1    $f16, 0x03B4(s0)           # 000003B4
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19540:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x002C($sp)            
    sw      v0, 0x0030($sp)            
    lb      t6, 0x0185(s0)             # 00000185
    lw      a0, 0x002C($sp)            
    bnel    t6, $zero, lbl_80A195A4    
    lui     $at, 0x4234                # $at = 42340000
    jal     func_8008D6A8              
    lui     a1, 0x40C0                 # a1 = 40C00000
    beq     v0, $zero, lbl_80A195A0    
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f4                   # $f4 = 0.25
    sb      t7, 0x0185(s0)             # 00000185
    lui     $at, %hi(var_80A22D9C)     # $at = 80A20000
    swc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f6, %lo(var_80A22D9C)($at) 
    swc1    $f6, 0x0158(s0)            # 00000158
lbl_80A195A0:
    lui     $at, 0x4234                # $at = 42340000
lbl_80A195A4:
    mtc1    $at, $f2                   # $f2 = 45.00
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f10                  # $f10 = 1.25
    lwc1    $f8, 0x0068(s0)            # 00000068
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f16, $f8, $f10            
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    addiu   a0, s0, 0x03B4             # a0 = 000003B4
    lui     a1, 0xC42F                 # a1 = C42F0000
    swc1    $f16, 0x0068(s0)           # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A195F0               
    swc1    $f0, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80A195F0 
    swc1    $f2, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_80A195F0:
    lb      t8, 0x0185(s0)             # 00000185
    beq     t8, $zero, lbl_80A196D4    
    nop
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     a1, 0x4422                 # a1 = 44220000
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    lw      a3, 0x0068(s0)             # 00000068
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    ori     a1, a1, 0x8000             # a1 = 44228000
    addiu   a0, s0, 0x03B4             # a0 = 000003B4
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    lui     $at, %hi(var_80A22DA0)     # $at = 80A20000
    lwc1    $f12, %lo(var_80A22DA0)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x4334                # $at = 43340000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80A1965C               
    lwc1    $f6, 0x03B4(s0)            # 000003B4
    jal     func_80A197A0              
    swc1    $f12, 0x03B4(s0)           # 000003B4
    beq     $zero, $zero, lbl_80A19698 
    lw      t9, 0x0030($sp)            
    lwc1    $f6, 0x03B4(s0)            # 000003B4
lbl_80A1965C:
    mtc1    $at, $f2                   # $f2 = 0.00
    lui     $at, 0x4040                # $at = 40400000
    sub.s   $f8, $f12, $f6             
    mtc1    $at, $f10                  # $f10 = 3.00
    nop
    mul.s   $f0, $f8, $f10             
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A1968C               
    lwc1    $f16, 0x000C(s0)           # 0000000C
    mov.s   $f0, $f2                   
    lwc1    $f16, 0x000C(s0)           # 0000000C
lbl_80A1968C:
    sub.s   $f18, $f16, $f0            
    swc1    $f18, 0x0028(s0)           # 00000028
    lw      t9, 0x0030($sp)            
lbl_80A19698:
    lui     v1, %hi(var_80A24028)      # v1 = 80A20000
    addiu   v1, v1, %lo(var_80A24028)  # v1 = 80A24028
    bne     t9, $zero, lbl_80A196C4    
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f0                   # $f0 = 5.00
    lwc1    $f4, 0x0008(v1)            # 80A24030
    lwc1    $f8, 0x0014(v1)            # 80A2403C
    add.s   $f6, $f4, $f0              
    add.s   $f10, $f8, $f0             
    swc1    $f6, 0x0008(v1)            # 80A24030
    swc1    $f10, 0x0014(v1)           # 80A2403C
lbl_80A196C4:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f0                   # $f0 = 5.00
    beq     $zero, $zero, lbl_80A1972C 
    lbu     t1, 0x03D4(s0)             # 000003D4
lbl_80A196D4:
    jal     func_80064280              
    lw      a3, 0x0068(s0)             # 00000068
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f2                   # $f2 = 180.00
    lwc1    $f16, 0x000C(s0)           # 0000000C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x41A0                 # a2 = 41A00000
    sub.s   $f18, $f16, $f2            
    mfc1    a1, $f18                   
    jal     func_8006385C              
    nop
    lui     v1, %hi(var_80A24028)      # v1 = 80A20000
    addiu   v1, v1, %lo(var_80A24028)  # v1 = 80A24028
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f0                   # $f0 = 5.00
    lwc1    $f4, 0x0004(v1)            # 80A2402C
    lwc1    $f8, 0x0010(v1)            # 80A24038
    add.s   $f6, $f4, $f0              
    add.s   $f10, $f8, $f0             
    swc1    $f6, 0x0004(v1)            # 80A2402C
    swc1    $f10, 0x0010(v1)           # 80A24038
    lbu     t1, 0x03D4(s0)             # 000003D4
lbl_80A1972C:
    lui     t2, %hi(var_80A24018)      # t2 = 80A20000
    addiu   t2, t2, %lo(var_80A24018)  # t2 = 80A24018
    andi    t3, t1, 0x0002             # t3 = 00000000
    beq     t3, $zero, lbl_80A1978C    
    andi    t4, t1, 0xFFFC             # t4 = 00000000
    sb      t4, 0x03D4(s0)             # 000003D4
    lw      v0, 0x0000(t2)             # 80A24018
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4120                 # a2 = 41200000
    lbu     t5, 0x03D4(v0)             # 000003D4
    andi    t6, t5, 0xFFFC             # t6 = 00000000
    sb      t6, 0x03D4(v0)             # 000003D4
    lw      v1, 0x0004(t2)             # 80A2401C
    lbu     t7, 0x03D4(v1)             # 80A243FC
    andi    t8, t7, 0xFFFC             # t8 = 00000000
    sb      t8, 0x03D4(v1)             # 80A243FC
    lh      a3, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0010($sp)           
    jal     func_80022EC4              
    lw      a0, 0x003C($sp)            
    lw      t9, 0x003C($sp)            
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    jal     func_80022F84              
    lw      a0, 0x1C44(t9)             # 00001C44
lbl_80A1978C:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A197A0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xDC2C             # a1 = 0600DC2C
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC1A0                 # a2 = C1A00000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lui     a1, %hi(var_80A227D0)      # a1 = 80A20000
    lw      a0, 0x0018($sp)            
    jal     func_8002140C              
    addiu   a1, a1, %lo(var_80A227D0)  # a1 = 80A227D0
    lw      a3, 0x0018($sp)            
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    lwc1    $f4, 0x03B4(a3)            # 000003B4
    lbu     t6, 0x03D4(a3)             # 000003D4
    lbu     t8, 0x06B5(a3)             # 000006B5
    mul.s   $f8, $f4, $f6              
    lui     t0, %hi(func_80A19824)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A19824) # t0 = 80A19824
    andi    t7, t6, 0xFFFC             # t7 = 00000000
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    sh      v0, 0x0194(a3)             # 00000194
    sb      t7, 0x03D4(a3)             # 000003D4
    sb      t9, 0x06B5(a3)             # 000006B5
    swc1    $f8, 0x03B4(a3)            # 000003B4
    sw      t0, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19824:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v1, 0x0020($sp)            
    addiu   t6, $zero, 0x0100          # t6 = 00000100
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lh      a1, 0x0194(v1)             # 00000194
    sw      t6, 0x0010($sp)            
    addiu   a3, $zero, 0x0800          # a3 = 00000800
    jal     func_80064508              
    addiu   a0, v1, 0x00B6             # a0 = 000000B6
    bne     v0, $zero, lbl_80A19884    
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    jal     func_80A1B9D0              
    lw      a0, %lo(var_80A24018)(a0)  
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    jal     func_80A1B9D0              
    lw      a0, %lo(var_80A2401C)(a0)  
    jal     func_80A19064              
    lw      a0, 0x0020($sp)            
lbl_80A19884:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19894:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE7B8             # a1 = 0600E7B8
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_80A198E8)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A198E8) # t8 = 80A198E8
    lbu     t6, 0x06B5(a3)             # 000006B5
    sb      $zero, 0x0185(a3)          # 00000185
    sw      t8, 0x0180(a3)             # 00000180
    ori     t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x06B5(a3)             # 000006B5
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A198E8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    lb      t6, 0x0185(a1)             # 00000185
    beql    t6, $zero, lbl_80A19924    
    lw      $ra, 0x0014($sp)           
    jal     func_80A19930              
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_80A19924:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19930:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xC288             # a1 = 0600C288
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_80A1997C)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1997C) # t8 = 80A1997C
    lbu     t6, 0x06B5(a3)             # 000006B5
    sw      t8, 0x0180(a3)             # 00000180
    andi    t7, t6, 0xFFFE             # t7 = 00000000
    sb      t7, 0x06B5(a3)             # 000006B5
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A1997C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80A199AC    
    lw      $ra, 0x0014($sp)           
    jal     func_80A18F98              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A199AC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A199B8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xB6FC             # a1 = 0600B6FC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xB6FC             # a0 = 0600B6FC
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090              
    sw      v0, 0x0010($sp)            
    lbu     t6, 0x03D4(s0)             # 000003D4
    lbu     t8, 0x06B5(s0)             # 000006B5
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFF7F         # $at = FFFFFF7F
    andi    t7, t6, 0xFFFC             # t7 = 00000000
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    and     t1, t0, $at                
    sb      t7, 0x03D4(s0)             # 000003D4
    sb      t9, 0x06B5(s0)             # 000006B5
    sb      $zero, 0x0184(s0)          # 00000184
    sw      t1, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1F2A4              
    addiu   a1, $zero, 0x396E          # a1 = 0000396E
    lui     t2, %hi(func_80A19A58)     # t2 = 80A20000
    addiu   t2, t2, %lo(func_80A19A58) # t2 = 80A19A58
    sw      t2, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19A58:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lui     a0, %hi(var_80A24030)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A24030)  # a0 = 80A24030
    lui     a1, 0x4416                 # a1 = 44160000
    jal     func_8006385C              
    lui     a2, 0x41A0                 # a2 = 41A00000
    lui     a0, %hi(var_80A2403C)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A2403C)  # a0 = 80A2403C
    lui     a1, 0x4416                 # a1 = 44160000
    jal     func_8006385C              
    lui     a2, 0x41A0                 # a2 = 41A00000
    lui     a0, %hi(var_80A24028)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A24028)  # a0 = 80A24028
    lui     a1, 0x4348                 # a1 = 43480000
    jal     func_8006385C              
    lui     a2, 0x41A0                 # a2 = 41A00000
    lui     a0, %hi(var_80A24034)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A24034)  # a0 = 80A24034
    lui     a1, 0xC348                 # a1 = C3480000
    jal     func_8006385C              
    lui     a2, 0x41A0                 # a2 = 41A00000
    lwc1    $f4, 0x0060(s0)            # 00000060
    lwc1    $f6, 0x006C(s0)            # 0000006C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0060(s0)            # 00000060
    jal     func_8008C9C0              
    sw      a0, 0x0028($sp)            
    sw      v0, 0x0030($sp)            
    lui     $at, 0x40C0                # $at = 40C00000
    lwc1    $f0, 0x0154(s0)            # 00000154
    mtc1    $at, $f10                  # $f10 = 6.00
    lui     $at, 0x4130                # $at = 41300000
    c.le.s  $f0, $f10                  
    nop
    bc1fl   lbl_80A19B54               
    mtc1    $at, $f18                  # $f18 = 11.00
    lui     $at, %hi(var_80A22DA4)     # $at = 80A20000
    lwc1    $f16, %lo(var_80A22DA4)($at) 
    mul.s   $f12, $f16, $f0            
    jal     func_800CF470              
    nop
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f4                   # $f4 = 180.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lwc1    $f18, 0x000C(s0)           # 0000000C
    lwc1    $f16, 0x0028(s0)           # 00000028
    mul.s   $f10, $f0, $f8             
    sub.s   $f6, $f18, $f4             
    add.s   $f2, $f10, $f6             
    c.lt.s  $f16, $f2                  
    nop
    bc1fl   lbl_80A19BE8               
    lw      t6, 0x0030($sp)            
    swc1    $f2, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_80A19BE8 
    lw      t6, 0x0030($sp)            
    mtc1    $at, $f18                  # $f18 = 100.00
lbl_80A19B54:
    lui     $at, 0x4130                # $at = 41300000
    c.le.s  $f0, $f18                  
    nop
    bc1fl   lbl_80A19BA8               
    mtc1    $at, $f8                   # $f8 = 11.00
    lui     $at, %hi(var_80A22DA8)     # $at = 80A20000
    lwc1    $f4, %lo(var_80A22DA8)($at) 
    mul.s   $f12, $f4, $f0             
    jal     func_800CF470              
    nop
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f10                  # $f10 = 250.00
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f16                  # $f16 = 170.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    mul.s   $f18, $f0, $f16            
    sub.s   $f6, $f8, $f10             
    add.s   $f4, $f18, $f6             
    beq     $zero, $zero, lbl_80A19BE4 
    swc1    $f4, 0x0028(s0)            # 00000028
    mtc1    $at, $f8                   # $f8 = 170.00
lbl_80A19BA8:
    lui     $at, %hi(var_80A22DAC)     # $at = 80A20000
    lwc1    $f16, %lo(var_80A22DAC)($at) 
    sub.s   $f10, $f0, $f8             
    mul.s   $f12, $f10, $f16           
    jal     func_800CF470              
    nop
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f6                   # $f6 = 250.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    lwc1    $f18, 0x000C(s0)           # 0000000C
    mul.s   $f10, $f0, $f8             
    sub.s   $f4, $f18, $f6             
    add.s   $f16, $f10, $f4            
    swc1    $f16, 0x0028(s0)           # 00000028
lbl_80A19BE4:
    lw      t6, 0x0030($sp)            
lbl_80A19BE8:
    lw      a0, 0x0028($sp)            
    bnel    t6, $zero, lbl_80A19C04    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008D6A8              
    lui     a1, 0x4130                 # a1 = 41300000
    beq     v0, $zero, lbl_80A19C0C    
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A19C04:
    jal     func_80A1F2A4              
    addiu   a1, $zero, 0x3966          # a1 = 00003966
lbl_80A19C0C:
    lui     $at, 0xC3FA                # $at = C3FA0000
    mtc1    $at, $f0                   # $f0 = -500.00
    lwc1    $f18, 0x03B4(s0)           # 000003B4
    lui     a3, 0x4248                 # a3 = 42480000
    lui     $at, 0x4040                # $at = 40400000
    c.lt.s  $f18, $f0                  
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F00                 # a2 = 3F000000
    bc1fl   lbl_80A19C60               
    mtc1    $at, $f8                   # $f8 = 3.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    mfc1    a1, $f0                    
    addiu   a0, s0, 0x03B4             # a0 = 000003B4
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    beq     $zero, $zero, lbl_80A19C80 
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f8                   # $f8 = 400.00
lbl_80A19C60:
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80064178              
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x03B4(s0)           # 000003B4
    lwc1    $f4, 0x0068(s0)            # 00000068
    add.s   $f16, $f10, $f4            
    swc1    $f16, 0x03B4(s0)           # 000003B4
    lui     $at, 0x43C8                # $at = 43C80000
lbl_80A19C80:
    mtc1    $at, $f2                   # $f2 = 400.00
    lwc1    $f0, 0x03B4(s0)            # 000003B4
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A19CA4               
    swc1    $f0, 0x03B4(s0)            # 000003B4
    beq     $zero, $zero, lbl_80A19CA4 
    swc1    $f2, 0x03B4(s0)            # 000003B4
    swc1    $f0, 0x03B4(s0)            # 000003B4
lbl_80A19CA4:
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f6, 0x0060(s0)            # 00000060
    add.s   $f8, $f18, $f6             
    swc1    $f8, 0x0028(s0)            # 00000028
    lw      t7, 0x0030($sp)            
    beql    t7, $zero, lbl_80A19CCC    
    lw      $ra, 0x0024($sp)           
    jal     func_80A19CDC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A19CCC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19CDC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xACD4             # a1 = 0600ACD4
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t8, 0x0FC0                 # t8 = 0FC00000
    lbu     t6, 0x06B5(a3)             # 000006B5
    lw      v0, 0x03E0(a3)             # 000003E0
    ori     t8, t8, 0x0702             # t8 = 0FC00702
    ori     t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x06B5(a3)             # 000006B5
    sw      t8, 0x06C4(a3)             # 000006C4
    swc1    $f4, 0x0068(a3)            # 00000068
    lbu     t9, 0x0296(v0)             # 00000296
    lui     t3, %hi(func_80A19F4C)     # t3 = 80A20000
    addiu   t3, t3, %lo(func_80A19F4C) # t3 = 80A19F4C
    ori     t0, t9, 0x0005             # t0 = 00000005
    sb      t0, 0x0296(v0)             # 00000296
    lw      v0, 0x03E0(a3)             # 000003E0
    lui     t6, %hi(func_80A19D7C)     # t6 = 80A20000
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    lbu     t1, 0x0016(v0)             # 00000016
    addiu   t6, t6, %lo(func_80A19D7C) # t6 = 80A19D7C
    andi    t2, t1, 0xFFFE             # t2 = 00000000
    sb      t2, 0x0016(v0)             # 00000016
    lw      t4, 0x0180(a3)             # 00000180
    beql    t3, t4, lbl_80A19D6C       
    sw      t6, 0x0180(a3)             # 00000180
    sh      t5, 0x0188(a3)             # 00000188
    sw      t6, 0x0180(a3)             # 00000180
lbl_80A19D6C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19D7C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a0, %hi(var_80A24030)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A24030)  # a0 = 80A24030
    lui     a1, 0x4416                 # a1 = 44160000
    jal     func_8006385C              
    lui     a2, 0x41A0                 # a2 = 41A00000
    lui     a0, %hi(var_80A2403C)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A2403C)  # a0 = 80A2403C
    lui     a1, 0x4416                 # a1 = 44160000
    jal     func_8006385C              
    lui     a2, 0x41A0                 # a2 = 41A00000
    lui     a0, %hi(var_80A24028)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A24028)  # a0 = 80A24028
    lui     a1, 0x4348                 # a1 = 43480000
    jal     func_8006385C              
    lui     a2, 0x41A0                 # a2 = 41A00000
    lui     a0, %hi(var_80A24034)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A24034)  # a0 = 80A24034
    lui     a1, 0xC348                 # a1 = C3480000
    jal     func_8006385C              
    lui     a2, 0x41A0                 # a2 = 41A00000
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0x2000         # $at = 00002000
    andi    t7, t6, 0x2000             # t7 = 00000000
    bnel    t7, $at, lbl_80A19E30      
    lh      v0, 0x0188(s0)             # 00000188
    lh      t8, 0x0188(s0)             # 00000188
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    addiu   t9, t8, 0x0002             # t9 = 00000002
    sh      t9, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
    slti    $at, v0, 0x0033            
    bne     $at, $zero, lbl_80A19E24   
    nop
    beq     $zero, $zero, lbl_80A19E68 
    sh      t0, 0x0188(s0)             # 00000188
lbl_80A19E24:
    beq     $zero, $zero, lbl_80A19E68 
    sh      v0, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A19E30:
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    beq     v0, $zero, lbl_80A19E44    
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A19E44:
    bnel    v0, $zero, lbl_80A19E6C    
    lw      $ra, 0x001C($sp)           
    jal     func_80A1E7A8              
    lw      a0, %lo(var_80A24018)(a0)  
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    jal     func_80A1E7A8              
    lw      a0, %lo(var_80A2401C)(a0)  
    jal     func_80A19F9C              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A19E68:
    lw      $ra, 0x001C($sp)           
lbl_80A19E6C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19E7C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xCC6C             # a1 = 0600CC6C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0xC040                 # a2 = C0400000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xCC6C             # a0 = 0600CC6C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090              
    sw      v0, 0x0010($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xCC6C             # a0 = 0600CC6C
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    lw      a0, %lo(var_80A24018)(a0)  
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090              
    sw      v0, 0x0010($sp)            
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xCC6C             # a0 = 0600CC6C
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    lw      a0, %lo(var_80A2401C)(a0)  
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090              
    sw      v0, 0x0010($sp)            
    lbu     t6, 0x06B5(s0)             # 000006B5
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3969          # a1 = 00003969
    andi    t7, t6, 0xFFFE             # t7 = 00000000
    jal     func_80A1F2A4              
    sb      t7, 0x06B5(s0)             # 000006B5
    lui     t8, %hi(func_80A19F4C)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A19F4C) # t8 = 80A19F4C
    sw      t8, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19F4C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lh      v0, 0x0188(a1)             # 00000188
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80A19F74    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(a1)             # 00000188
lbl_80A19F74:
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    beq     v0, $zero, lbl_80A19F8C    
    lw      a1, 0x0018($sp)            
    jal     func_80A19CDC              
    or      a0, a1, $zero              # a0 = 00000000
lbl_80A19F8C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A19F9C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xD458             # a1 = 0600D458
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     t8, 0xFFCF                 # t8 = FFCF0000
    ori     t8, t8, 0xFFFF             # t8 = FFCFFFFF
    lbu     t6, 0x06B5(a3)             # 000006B5
    lw      v0, 0x03E0(a3)             # 000003E0
    sw      t8, 0x06C4(a3)             # 000006C4
    andi    t7, t6, 0xFFFE             # t7 = 00000000
    sb      t7, 0x06B5(a3)             # 000006B5
    lbu     t9, 0x0296(v0)             # 00000296
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    andi    t0, t9, 0xFFFA             # t0 = 00000000
    sb      t0, 0x0296(v0)             # 00000296
    lw      v0, 0x03E0(a3)             # 000003E0
    lui     t4, %hi(func_80A1A028)     # t4 = 80A20000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lbu     t1, 0x0016(v0)             # 00000016
    addiu   t4, t4, %lo(func_80A1A028) # t4 = 80A1A028
    ori     t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x0016(v0)             # 00000016
    sb      t3, 0x0184(a3)             # 00000184
    sw      t4, 0x0180(a3)             # 00000180
    swc1    $f4, 0x0068(a3)            # 00000068
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A1A028:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x4120                # $at = 41200000
    sw      v0, 0x0034($sp)            
    mtc1    $at, $f2                   # $f2 = 10.00
    lwc1    $f0, 0x0154(s0)            # 00000154
    lui     a1, 0xC422                 # a1 = C4220000
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f0, $f2                   
    ori     a1, a1, 0x8000             # a1 = C4228000
    addiu   a0, s0, 0x03B4             # a0 = 000003B4
    lui     a2, 0x3F80                 # a2 = 3F800000
    bc1fl   lbl_80A1A0D0               
    mtc1    $at, $f12                  # $f12 = 50.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     v0, %hi(var_80A24028)      # v0 = 80A20000
    addiu   v0, v0, %lo(var_80A24028)  # v0 = 80A24028
    add.s   $f6, $f4, $f2              
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    lui     a1, 0xC43B                 # a1 = C43B0000
    swc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x0004(v0)            # 80A2402C
    lwc1    $f16, 0x0010(v0)           # 80A24038
    ori     a1, a1, 0x8000             # a1 = C43B8000
    sub.s   $f10, $f8, $f2             
    addiu   a0, s0, 0x03B4             # a0 = 000003B4
    lui     a2, 0x3F80                 # a2 = 3F800000
    sub.s   $f18, $f16, $f2            
    swc1    $f10, 0x0004(v0)           # 80A2402C
    swc1    $f18, 0x0010(v0)           # 80A24038
    lw      a3, 0x0068(s0)             # 00000068
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    beq     $zero, $zero, lbl_80A1A14C 
    lw      t6, 0x0034($sp)            
    mtc1    $at, $f12                  # $f12 = 0.00
lbl_80A1A0D0:
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f8                   # $f8 = 1.25
    lwc1    $f6, 0x0068(s0)            # 00000068
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    mul.s   $f10, $f6, $f8             
    swc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_80A1A10C               
    swc1    $f0, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80A1A10C 
    swc1    $f12, 0x0068(s0)           # 00000068
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_80A1A10C:
    lw      a3, 0x0068(s0)             # 00000068
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f18                  # $f18 = 3.00
    swc1    $f0, 0x002C($sp)           
    lw      a1, 0x000C(s0)             # 0000000C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    lwc1    $f4, 0x002C($sp)           
    add.s   $f6, $f4, $f0              
    swc1    $f6, 0x002C($sp)           
    lw      t6, 0x0034($sp)            
lbl_80A1A14C:
    lwc1    $f8, 0x002C($sp)           
    lui     $at, 0x4120                # $at = 41200000
    beql    t6, $zero, lbl_80A1A1AC    
    lw      $ra, 0x0024($sp)           
    mtc1    $at, $f10                  # $f10 = 10.00
    nop
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80A1A1AC               
    lw      $ra, 0x0024($sp)           
    lwc1    $f16, 0x000C(s0)           # 0000000C
    lui     $at, %hi(var_80A22DB0)     # $at = 80A20000
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    swc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f18, %lo(var_80A22DB0)($at) 
    swc1    $f18, 0x03B4(s0)           # 000003B4
    jal     func_80A1B9D0              
    lw      a0, %lo(var_80A24018)(a0)  
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    jal     func_80A1B9D0              
    lw      a0, %lo(var_80A2401C)(a0)  
    jal     func_80A19064              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A1A1AC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1A1BC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lui     a0, %hi(var_80A227DC)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A227DC)  # a0 = 80A227DC
    beq     t6, $zero, lbl_80A1A224    
    sll     a2, t6,  2                 
    subu    a2, a2, t6                 
    sll     a2, a2,  2                 
    lui     t8, %hi(var_80A2280C)      # t8 = 80A20000
    addiu   t8, t8, %lo(var_80A2280C)  # t8 = 80A2280C
    addiu   t7, a2, 0xFFF4             # t7 = FFFFFFF4
    addu    a1, t7, t8                 
    sw      a2, 0x001C($sp)            
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f12, 0x0028($sp)          
    lw      a2, 0x001C($sp)            
    lui     t0, %hi(var_80A2286C)      # t0 = 80A20000
    addiu   t0, t0, %lo(var_80A2286C)  # t0 = 80A2286C
    lui     a0, %hi(var_80A227E8)      # a0 = 80A20000
    addiu   t9, a2, 0xFFF4             # t9 = FFFFFFF4
    addu    a1, t9, t0                 
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, %lo(var_80A227E8)  # a0 = 80A227E8
    lwc1    $f12, 0x0028($sp)          
lbl_80A1A224:
    lw      $at, 0x002C($sp)           
    lui     t1, %hi(var_80A2280C)      # t1 = 80A20000
    lui     a0, %hi(var_80A227DC)      # a0 = 80A20000
    sll     a2, $at,  2                
    subu    a2, a2, $at                
    sll     a2, a2,  2                 
    addiu   t1, t1, %lo(var_80A2280C)  # t1 = 80A2280C
    addiu   a0, a0, %lo(var_80A227DC)  # a0 = 80A227DC
    addu    v0, a2, t1                 
    lwc1    $f4, 0x0000(v0)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 80A227DC
    lui     $at, %hi(var_80A227F4)     # $at = 80A20000
    lui     t2, %hi(var_80A2286C)      # t2 = 80A20000
    sub.s   $f8, $f4, $f6              
    lui     a1, %hi(var_80A227E8)      # a1 = 80A20000
    addiu   t2, t2, %lo(var_80A2286C)  # t2 = 80A2286C
    addiu   a1, a1, %lo(var_80A227E8)  # a1 = 80A227E8
    mul.s   $f10, $f8, $f12            
    addu    v1, a2, t2                 
    lw      $ra, 0x0014($sp)           
    swc1    $f10, %lo(var_80A227F4)($at) 
    lwc1    $f18, 0x0004(a0)           # 80A227E0
    lwc1    $f16, 0x0004(v0)           # 00000004
    sub.s   $f4, $f16, $f18            
    mul.s   $f6, $f4, $f12             
    swc1    $f6, %lo(var_80A227F8)($at) 
    lwc1    $f10, 0x0008(a0)           # 80A227E4
    lwc1    $f8, 0x0008(v0)            # 00000008
    sub.s   $f16, $f8, $f10            
    mul.s   $f18, $f16, $f12           
    swc1    $f18, %lo(var_80A227FC)($at) 
    lwc1    $f6, 0x0000(a1)            # 80A227E8
    lwc1    $f4, 0x0000(v1)            # 00000000
    lui     $at, %hi(var_80A22800)     # $at = 80A20000
    sub.s   $f8, $f4, $f6              
    mul.s   $f10, $f8, $f12            
    swc1    $f10, %lo(var_80A22800)($at) 
    lwc1    $f18, 0x0004(a1)           # 80A227EC
    lwc1    $f16, 0x0004(v1)           # 00000004
    sub.s   $f4, $f16, $f18            
    mul.s   $f6, $f4, $f12             
    swc1    $f6, %lo(var_80A22804)($at) 
    lwc1    $f10, 0x0008(a1)           # 80A227F0
    lwc1    $f8, 0x0008(v1)            # 00000008
    sub.s   $f16, $f8, $f10            
    mul.s   $f18, $f16, $f12           
    swc1    $f18, %lo(var_80A22808)($at) 
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80A1A2E8:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0018($sp)            
    lui     v0, %hi(var_80A227DC)      # v0 = 80A20000
    lui     v1, %hi(var_80A227E8)      # v1 = 80A20000
    lui     a2, %hi(var_80A227F4)      # a2 = 80A20000
    lui     a3, %hi(var_80A22800)      # a3 = 80A20000
    addiu   a3, a3, %lo(var_80A22800)  # a3 = 80A22800
    addiu   a2, a2, %lo(var_80A227F4)  # a2 = 80A227F4
    addiu   v1, v1, %lo(var_80A227E8)  # v1 = 80A227E8
    addiu   v0, v0, %lo(var_80A227DC)  # v0 = 80A227DC
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x004C($sp)            
    lwc1    $f18, 0x0000(v0)           # 80A227DC
    lwc1    $f16, 0x0000(a2)           # 80A227F4
    lwc1    $f14, 0x0004(v0)           # 80A227E0
    lwc1    $f12, 0x0004(a2)           # 80A227F8
    add.s   $f16, $f18, $f16           
    lwc1    $f18, 0x0008(v0)           # 80A227E4
    lwc1    $f10, 0x0008(a2)           # 80A227FC
    add.s   $f12, $f14, $f12           
    lwc1    $f14, 0x0000(v1)           # 80A227E8
    lwc1    $f8, 0x0000(a3)            # 80A22800
    add.s   $f10, $f18, $f10           
    lwc1    $f18, 0x0004(v1)           # 80A227EC
    lwc1    $f6, 0x0004(a3)            # 80A22804
    add.s   $f8, $f14, $f8             
    lwc1    $f14, 0x0008(v1)           # 80A227F0
    lwc1    $f4, 0x0008(a3)            # 80A22808
    add.s   $f6, $f18, $f6             
    swc1    $f16, 0x0000(v0)           # 80A227DC
    swc1    $f12, 0x0004(v0)           # 80A227E0
    add.s   $f4, $f14, $f4             
    swc1    $f10, 0x0008(v0)           # 80A227E4
    swc1    $f8, 0x0000(v1)            # 80A227E8
    swc1    $f6, 0x0004(v1)            # 80A227EC
    swc1    $f4, 0x0008(v1)            # 80A227F0
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lh      a0, 0x00B6(s0)             # 000000B6
    jal     func_80063684              # coss?
    swc1    $f0, 0x002C($sp)           
    lui     v0, %hi(var_80A227DC)      # v0 = 80A20000
    addiu   v0, v0, %lo(var_80A227DC)  # v0 = 80A227DC
    lwc1    $f18, 0x002C($sp)          
    lwc1    $f12, 0x0008(v0)           # 80A227E4
    lwc1    $f2, 0x0000(v0)            # 80A227DC
    lwc1    $f8, 0x0024(s0)            # 00000024
    mul.s   $f10, $f12, $f18           
    lui     $at, 0x430C                # $at = 430C0000
    lui     v1, %hi(var_80A227E8)      # v1 = 80A20000
    mul.s   $f6, $f2, $f0              
    addiu   v1, v1, %lo(var_80A227E8)  # v1 = 80A227E8
    lwc1    $f16, 0x0008(v1)           # 80A227F0
    lwc1    $f14, 0x0000(v1)           # 80A227E8
    lui     a1, %hi(var_80A24044)      # a1 = 80A20000
    add.s   $f4, $f8, $f10             
    lh      a1, %lo(var_80A24044)(a1)  
    lw      a0, 0x004C($sp)            
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFF4
    add.s   $f8, $f4, $f6              
    mtc1    $at, $f4                   # $f4 = 140.00
    addiu   a3, $sp, 0x0030            # a3 = FFFFFFE8
    swc1    $f8, 0x003C($sp)           
    lwc1    $f10, 0x000C(s0)           # 0000000C
    lwc1    $f8, 0x0004(v0)            # 80A227E0
    sub.s   $f6, $f10, $f4             
    add.s   $f10, $f6, $f8             
    mul.s   $f6, $f12, $f0             
    swc1    $f10, 0x0040($sp)          
    mul.s   $f10, $f2, $f18            
    lwc1    $f4, 0x002C(s0)            # 0000002C
    add.s   $f8, $f4, $f6              
    sub.s   $f4, $f8, $f10             
    mul.s   $f8, $f16, $f18            
    swc1    $f4, 0x0044($sp)           
    mul.s   $f4, $f14, $f0             
    lwc1    $f6, 0x0024(s0)            # 00000024
    add.s   $f10, $f6, $f8             
    add.s   $f6, $f10, $f4             
    mtc1    $at, $f10                  # $f10 = 140.00
    swc1    $f6, 0x0030($sp)           
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f6, 0x0004(v1)            # 80A227EC
    sub.s   $f4, $f8, $f10             
    add.s   $f8, $f4, $f6              
    mul.s   $f4, $f16, $f0             
    swc1    $f8, 0x0034($sp)           
    mul.s   $f8, $f14, $f18            
    lwc1    $f10, 0x002C(s0)           # 0000002C
    add.s   $f6, $f10, $f4             
    sub.s   $f10, $f6, $f8             
    jal     func_8009D328              
    swc1    $f10, 0x0038($sp)          
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1A474:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x1C44(s0)             # 00001C44
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE7B8             # a1 = 0600E7B8
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328              
    sw      t6, 0x002C($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80A1F2A4              
    addiu   a1, $zero, 0x396F          # a1 = 0000396F
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    sw      t7, 0x0010($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    addiu   t8, $zero, 0x003C          # t8 = 0000003C
    sw      t8, 0x0010($sp)            
    lw      a0, %lo(var_80A24018)(a0)  
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    sw      t9, 0x0010($sp)            
    lw      a0, %lo(var_80A2401C)(a0)  
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     t1, 0x06B5(s1)             # 000006B5
    lbu     t3, 0x03D6(s1)             # 000003D6
    lui     a2, %hi(var_80A24018)      # a2 = 80A20000
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    andi    t2, t1, 0xFFFE             # t2 = 00000000
    andi    t4, t3, 0xFFFE             # t4 = 00000000
    addiu   a2, a2, %lo(var_80A24018)  # a2 = 80A24018
    sh      t0, 0x0188(s1)             # 00000188
    sb      t2, 0x06B5(s1)             # 000006B5
    sb      t4, 0x03D6(s1)             # 000003D6
    lw      v0, 0x0000(a2)             # 80A24018
    lui     a0, 0x1001                 # a0 = 10010000
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    lbu     t5, 0x03D6(v0)             # 000003D6
    andi    t6, t5, 0xFFFE             # t6 = 00000000
    sb      t6, 0x03D6(v0)             # 000003D6
    lw      v1, 0x0004(a2)             # 80A2401C
    lbu     t7, 0x03D6(v1)             # 000003D6
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    jal     func_800CAA70              
    sb      t8, 0x03D6(v1)             # 000003D6
    jal     func_8009D0F0              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_80A24044)     # $at = 80A20000
    sh      v0, %lo(var_80A24044)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, %hi(var_80A24044)      # a1 = 80A20000
    lh      a1, %lo(var_80A24044)(a1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     a1, %hi(var_80A24044)      # a1 = 80A20000
    lh      a1, %lo(var_80A24044)(a1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009D5F0              
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    jal     func_800218EC              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80052328              
    addiu   a1, s0, 0x1D64             # a1 = 00001D64
    lh      t9, 0x07A0(s0)             # 000007A0
    lui     a0, %hi(var_80A227E8)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A227E8)  # a0 = 80A227E8
    sll     t0, t9,  2                 
    addu    t1, s0, t0                 
    lw      a1, 0x0790(t1)             # 00000790
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, 0x005C             # a1 = 0000005C
    lui     t2, %hi(func_80A1A608)     # t2 = 80A20000
    addiu   t2, t2, %lo(func_80A1A608) # t2 = 80A1A608
    sw      t2, 0x0180(s1)             # 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A1A608:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      v1, 0x0188(s0)             # 00000188
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f6                   # $f6 = 140.00
    beq     v1, $zero, lbl_80A1A640    
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(s0)             # 00000188
lbl_80A1A640:
    lwc1    $f4, 0x000C(s0)            # 0000000C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x41A0                 # a2 = 41A00000
    sub.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    lh      v1, 0x0188(s0)             # 00000188
    bne     v1, $zero, lbl_80A1A690    
    slti    $at, v1, 0x0031            
    lui     s1, %hi(var_80A24018)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A24018)  # s1 = 80A24018
    jal     func_80A1E274              
    lw      a0, 0x0000(s1)             # 80A24018
    jal     func_80A1E274              
    lw      a0, 0x0004(s1)             # 80A2401C
    jal     func_80A1A858              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1A848 
    lw      $ra, 0x001C($sp)           
lbl_80A1A690:
    bne     $at, $zero, lbl_80A1A6C8   
    or      a0, s1, $zero              # a0 = 80A24018
    lui     a1, %hi(var_80A24044)      # a1 = 80A20000
    lui     a3, %hi(var_80A227E8)      # a3 = 80A20000
    addiu   a3, a3, %lo(var_80A227E8)  # a3 = 80A227E8
    lh      a1, %lo(var_80A24044)(a1)  
    jal     func_8009D328              
    addiu   a2, s0, 0x0038             # a2 = 00000038
    addiu   a0, s0, 0x03B4             # a0 = 000003B4
    lui     a1, 0xC3AF                 # a1 = C3AF0000
    jal     func_8006385C              
    lui     a2, 0x4120                 # a2 = 41200000
    beq     $zero, $zero, lbl_80A1A848 
    lw      $ra, 0x001C($sp)           
lbl_80A1A6C8:
    addiu   $at, $zero, 0x0030         # $at = 00000030
    bne     v1, $at, lbl_80A1A83C      
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x1C44(s1)             # 80A25C5C
    sw      t7, 0x0024($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0020($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f10                  # $f10 = 400.00
    lwc1    $f16, 0x0020($sp)          
    lui     $at, %hi(var_80A227D0)     # $at = 80A20000
    lwc1    $f4, %lo(var_80A227D0)($at) 
    mul.s   $f18, $f10, $f16           
    lui     $at, 0xC2F0                # $at = C2F00000
    mtc1    $at, $f8                   # $f8 = -120.00
    lw      t8, 0x0024($sp)            
    mul.s   $f10, $f0, $f8             
    add.s   $f6, $f4, $f18             
    add.s   $f16, $f10, $f6            
    swc1    $f16, 0x0024(t8)           # 00000024
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0020($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f4                   # $f4 = 400.00
    lwc1    $f18, 0x0020($sp)          
    lui     $at, 0xC2F0                # $at = C2F00000
    mtc1    $at, $f16                  # $f16 = -120.00
    mul.s   $f8, $f4, $f18             
    lui     a1, %hi(var_80A227D0)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A227D0)  # a1 = 80A227D0
    mul.s   $f4, $f0, $f16             
    lwc1    $f10, 0x0008(a1)           # 80A227D8
    lw      a0, 0x0024($sp)            
    add.s   $f6, $f10, $f8             
    sub.s   $f18, $f6, $f4             
    jal     func_8002140C              
    swc1    $f18, 0x002C(a0)           # 0000002C
    lw      t9, 0x0024($sp)            
    lui     a1, %hi(var_80A227E8)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A227E8)  # a1 = 80A227E8
    sh      v0, 0x00B6(t9)             # 000000B6
    lh      t0, 0x07A0(s1)             # 80A247B8
    or      a0, s0, $zero              # a0 = 00000000
    sll     t1, t0,  2                 
    addu    t2, s1, t1                 
    lw      a2, 0x0790(t2)             # 00000790
    jal     func_8002154C              
    addiu   a2, a2, 0x005C             # a2 = 0000005C
    lh      t3, 0x07A0(s1)             # 80A247B8
    lui     a1, %hi(var_80A227DC)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A227DC)  # a1 = 80A227DC
    sll     t4, t3,  2                 
    addu    t5, s1, t4                 
    lw      a2, 0x0790(t5)             # 00000790
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002154C              
    addiu   a2, a2, 0x0050             # a2 = 00000050
    lui     $at, 0xC3AF                # $at = C3AF0000
    mtc1    $at, $f10                  # $f10 = -350.00
    lh      a0, 0x00B6(s0)             # 000000B6
    jal     func_800636C4              # sins?
    swc1    $f10, 0x03B4(s0)           # 000003B4
    lui     $at, %hi(var_80A227D0)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A227D0)($at) 
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f16                  # $f16 = 350.00
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f6, $f0, $f16             
    sub.s   $f4, $f8, $f6              
    jal     func_80063684              # coss?
    swc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, %hi(var_80A227D8)     # $at = 80A20000
    lwc1    $f18, %lo(var_80A227D8)($at) 
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f10                  # $f10 = 350.00
    lui     $at, %hi(var_80A22DB4)     # $at = 80A20000
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f16, $f0, $f10            
    sub.s   $f8, $f18, $f16            
    swc1    $f8, 0x002C(s0)            # 0000002C
    jal     func_80A1A1BC              
    lwc1    $f12, %lo(var_80A22DB4)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1A2E8              
    or      a1, s1, $zero              # a1 = 80A24018
    beq     $zero, $zero, lbl_80A1A848 
    lw      $ra, 0x001C($sp)           
lbl_80A1A83C:
    jal     func_80A1A2E8              
    or      a1, s1, $zero              # a1 = 80A24018
    lw      $ra, 0x001C($sp)           
lbl_80A1A848:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80A1A858:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE7B8             # a1 = 0600E7B8
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D21C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    addiu   t6, $zero, 0x00A0          # t6 = 000000A0
    lui     $at, %hi(var_80A22DB8)     # $at = 80A20000
    lh      t7, 0x00B6(a3)             # 000000B6
    sh      t6, 0x0188(a3)             # 00000188
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t7, 0x0194(a3)             # 00000194
    jal     func_80A1A1BC              
    lwc1    $f12, %lo(var_80A22DB8)($at) 
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_80A1A8C0)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1A8C0) # t8 = 80A1A8C0
    sw      t8, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1A8C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lh      v0, 0x0188(a2)             # 00000188
    beq     v0, $zero, lbl_80A1A8F4    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(a2)             # 00000188
    lh      v0, 0x0188(a2)             # 00000188
lbl_80A1A8F4:
    bne     v0, $zero, lbl_80A1A91C    
    slti    $at, v0, 0x0050            
    lh      t7, 0x0194(a2)             # 00000194
    lh      t8, 0x00B6(a2)             # 000000B6
    bne     t7, t8, lbl_80A1A91C       
    nop
    jal     func_80A1A93C              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1A930 
    lw      $ra, 0x0014($sp)           
lbl_80A1A91C:
    bne     $at, $zero, lbl_80A1A92C   
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80A1A2E8              
    lw      a1, 0x001C($sp)            
lbl_80A1A92C:
    lw      $ra, 0x0014($sp)           
lbl_80A1A930:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1A93C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      t7, 0x0018($sp)            
    addiu   t6, $zero, 0x00A0          # t6 = 000000A0
    lui     $at, %hi(var_80A22DBC)     # $at = 80A20000
    sh      t6, 0x0188(t7)             # 00000188
    lwc1    $f12, %lo(var_80A22DBC)($at) 
    jal     func_80A1A1BC              
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      t9, 0x0018($sp)            
    lui     t8, %hi(func_80A1A984)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1A984) # t8 = 80A1A984
    sw      t8, 0x0180(t9)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1A984:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      a2, 0x0188(a0)             # 00000188
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    beq     a2, $zero, lbl_80A1A9A4    
    addiu   t6, a2, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(a0)             # 00000188
    lh      a2, 0x0188(a0)             # 00000188
lbl_80A1A9A4:
    slti    $at, a2, 0x0050            
    bne     $at, $zero, lbl_80A1AA1C   
    subu    t4, a3, a2                 
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    bne     a3, a2, lbl_80A1A9C4       
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, %hi(var_80A228D8)     # $at = 80A20000
    sw      t7, %lo(var_80A228D8)($at) 
lbl_80A1A9C4:
    jal     func_80A1A2E8              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     v1, %hi(var_80A228F4)      # v1 = 80A20000
    addiu   v1, v1, %lo(var_80A228F4)  # v1 = 80A228F4
    lh      t8, 0x0188(a0)             # 00000188
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    lui     $at, %hi(var_80A22DC0)     # $at = 80A20000
    sll     t9, t8,  2                 
    subu    t9, t9, t8                 
    addiu   t2, t9, 0xFF10             # t2 = FFFFFF10
    sb      t2, 0x0002(v1)             # 80A228F6
    sb      t2, 0x0001(v1)             # 80A228F5
    sb      t2, 0x0000(v1)             # 80A228F4
    lh      t3, 0x0188(a0)             # 00000188
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    bnel    a3, t3, lbl_80A1ABA0       
    lw      $ra, 0x0014($sp)           
    jal     func_80A1A1BC              
    lwc1    $f12, %lo(var_80A22DC0)($at) 
    beq     $zero, $zero, lbl_80A1ABA0 
    lw      $ra, 0x0014($sp)           
lbl_80A1AA1C:
    mtc1    t4, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    cvt.s.w $f6, $f4                   
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     v0, %hi(var_80A228F8)      # v0 = 80A20000
    lui     v1, %hi(var_80A228F4)      # v1 = 80A20000
    addiu   v1, v1, %lo(var_80A228F4)  # v1 = 80A228F4
    addiu   v0, v0, %lo(var_80A228F8)  # v0 = 80A228F8
    mul.s   $f10, $f6, $f8             
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t5, $f31                   
    ctc1    t6, $f31                   
    nop
    cvt.w.s $f16, $f10                 
    cfc1    t6, $f31                   
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80A1AAB4    
    mfc1    t6, $f16                   
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f16, $f10, $f16           
    ctc1    t6, $f31                   
    nop
    cvt.w.s $f16, $f16                 
    cfc1    t6, $f31                   
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80A1AAA8    
    nop
    mfc1    t6, $f16                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A1AAC0 
    or      t6, t6, $at                # t6 = 80000000
lbl_80A1AAA8:
    beq     $zero, $zero, lbl_80A1AAC0 
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f16                   
lbl_80A1AAB4:
    nop
    bltz    t6, lbl_80A1AAA8           
    nop
lbl_80A1AAC0:
    sb      t6, 0x0002(v1)             # 80A228F6
    lh      t7, 0x0188(a0)             # 00000188
    ctc1    t5, $f31                   
    lui     $at, 0x3E00                # $at = 3E000000
    subu    t8, a3, t7                 
    mtc1    t8, $f18                   # $f18 = 0.00
    mtc1    $at, $f6                   # $f6 = 0.13
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    cvt.s.w $f4, $f18                  
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f8, $f4, $f6              
    cfc1    t9, $f31                   
    ctc1    t0, $f31                   
    nop
    cvt.w.s $f10, $f8                  
    cfc1    t0, $f31                   
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_80A1AB58    
    mfc1    t0, $f10                   
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f10, $f8, $f10            
    ctc1    t0, $f31                   
    nop
    cvt.w.s $f10, $f10                 
    cfc1    t0, $f31                   
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_80A1AB4C    
    nop
    mfc1    t0, $f10                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A1AB64 
    or      t0, t0, $at                # t0 = 80000000
lbl_80A1AB4C:
    beq     $zero, $zero, lbl_80A1AB64 
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f10                   
lbl_80A1AB58:
    nop
    bltz    t0, lbl_80A1AB4C           
    nop
lbl_80A1AB64:
    ctc1    t9, $f31                   
    sb      t0, 0x0002(v0)             # 80A228FA
    sb      t0, 0x0001(v0)             # 80A228F9
    sb      t0, 0x0000(v0)             # 80A228F8
    sb      t0, 0x0001(v1)             # 80A228F5
    sb      t0, 0x0000(v1)             # 80A228F4
    jal     func_80A1A2E8              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      t5, 0x0188(a0)             # 00000188
    bnel    t5, $zero, lbl_80A1ABA0    
    lw      $ra, 0x0014($sp)           
    jal     func_80A1ABAC              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A1ABA0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1ABAC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      t6, 0x0018($sp)            
    lui     a0, %hi(var_80A227DC)      # a0 = 80A20000
    lui     a1, %hi(var_80A22830)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A22830)  # a1 = 80A22830
    addiu   a0, a0, %lo(var_80A227DC)  # a0 = 80A227DC
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f4, 0x0068(t6)            # 00000068
    lui     a0, %hi(var_80A227E8)      # a0 = 80A20000
    lui     a1, %hi(var_80A22890)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A22890)  # a1 = 80A22890
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, a0, %lo(var_80A227E8)  # a0 = 80A227E8
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     v0, %hi(var_80A227F4)      # v0 = 80A20000
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f6                   # $f6 = -50.00
    addiu   v0, v0, %lo(var_80A227F4)  # v0 = 80A227F4
    lui     a0, %hi(var_80A22800)      # a0 = 80A20000
    lui     a1, %hi(var_80A228CC)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A228CC)  # a1 = 80A228CC
    addiu   a0, a0, %lo(var_80A22800)  # a0 = 80A22800
    swc1    $f0, 0x0000(v0)            # 80A227F4
    swc1    $f0, 0x0008(v0)            # 80A227FC
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f6, 0x0004(v0)            # 80A227F8
    lw      t8, 0x0018($sp)            
    lui     t7, %hi(func_80A1AC44)     # t7 = 80A20000
    addiu   t7, t7, %lo(func_80A1AC44) # t7 = 80A1AC44
    sw      t7, 0x0180(t8)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1AC44:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lwc1    $f4, 0x0068(a3)            # 00000068
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f16                  # $f16 = 230.00
    mul.s   $f8, $f4, $f6              
    lwc1    $f10, 0x000C(a3)           # 0000000C
    addiu   a0, a3, 0x0028             # a0 = 00000028
    sub.s   $f18, $f10, $f16           
    swc1    $f8, 0x0068(a3)            # 00000068
    lw      a2, 0x0068(a3)             # 00000068
    mfc1    a1, $f18                   
    jal     func_8006385C              
    sw      a3, 0x0018($sp)            
    beq     v0, $zero, lbl_80A1ACA4    
    lw      a3, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80A1ACE0              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
lbl_80A1ACA4:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lui     $at, %hi(var_80A227E0)     # $at = 80A20000
    lwc1    $f6, %lo(var_80A227E0)($at) 
    or      a0, a3, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A1ACD4               
    lw      $ra, 0x0014($sp)           
    jal     func_80A1A2E8              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A1ACD4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1ACE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    jal     func_80A20C58              
    lw      a0, 0x0018($sp)            
    lw      t7, 0x0018($sp)            
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    lui     $at, %hi(var_80A22DC4)     # $at = 80A20000
    sh      t6, 0x0188(t7)             # 00000188
    lwc1    $f12, %lo(var_80A22DC4)($at) 
    jal     func_80A1A1BC              
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    lw      t9, 0x0018($sp)            
    lui     t8, %hi(func_80A1AD30)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1AD30) # t8 = 80A1AD30
    sw      t8, 0x0180(t9)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1AD30:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      v0, 0x0188(a0)             # 00000188
    lui     $at, %hi(var_80A22DC8)     # $at = 80A20000
    beq     v0, $zero, lbl_80A1AD50    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(a0)             # 00000188
    lh      v0, 0x0188(a0)             # 00000188
lbl_80A1AD50:
    lwc1    $f0, %lo(var_80A22DC8)($at) 
    lui     $at, %hi(var_80A22DCC)     # $at = 80A20000
    lwc1    $f6, %lo(var_80A22DCC)($at) 
    lwc1    $f4, 0x0054(a0)            # 00000054
    lwc1    $f10, 0x0050(a0)           # 00000050
    lwc1    $f18, 0x0058(a0)           # 00000058
    sub.s   $f8, $f4, $f6              
    lui     $at, %hi(var_80A22DD0)     # $at = 80A20000
    add.s   $f16, $f10, $f0            
    swc1    $f8, 0x0054(a0)            # 00000054
    lwc1    $f8, 0x0054(a0)            # 00000054
    add.s   $f4, $f18, $f0             
    swc1    $f16, 0x0050(a0)           # 00000050
    lwc1    $f16, 0x000C(a0)           # 0000000C
    swc1    $f4, 0x0058(a0)            # 00000058
    lwc1    $f6, %lo(var_80A22DD0)($at) 
    mul.s   $f10, $f6, $f8             
    sub.s   $f18, $f16, $f10           
    bne     v0, $zero, lbl_80A1ADB0    
    swc1    $f18, 0x0028(a0)           # 00000028
    jal     func_80A1ADE8              
    nop
    beq     $zero, $zero, lbl_80A1ADDC 
    lw      $ra, 0x0014($sp)           
lbl_80A1ADB0:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    cvt.s.w $f6, $f4                   
    c.le.s  $f8, $f6                   
    nop
    bc1fl   lbl_80A1ADDC               
    lw      $ra, 0x0014($sp)           
    jal     func_80A1A2E8              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A1ADDC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1ADE8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    lui     t6, %hi(func_80A21894)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A21894) # t6 = 80A21894
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    sw      t6, 0x0134(a1)             # 00000134
    sh      t7, 0x0188(a1)             # 00000188
    sw      a1, 0x0018($sp)            
    jal     func_800CAA70              
    addiu   a0, $zero, 0x0021          # a0 = 00000021
    lui     $at, %hi(var_80A22DD4)     # $at = 80A20000
    lwc1    $f12, %lo(var_80A22DD4)($at) 
    jal     func_80A1A1BC              
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lw      t9, 0x0018($sp)            
    lui     t8, %hi(func_80A1AE44)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1AE44) # t8 = 80A1AE44
    sw      t8, 0x0180(t9)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1AE44:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s6, 0x0060($sp)            
    sw      s0, 0x0048($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    lh      t6, 0x0188(s0)             # 00000188
    lbu     t8, 0x0186(s0)             # 00000186
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    bne     t8, $zero, lbl_80A1AF48    
    sh      t7, 0x0188(s0)             # 00000188
    lh      t9, 0x0188(s0)             # 00000188
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t9, 0xFF56            
    beq     $at, $zero, lbl_80A1AF40   
    nop
    jal     func_80A1A2E8              
    or      a1, s6, $zero              # a1 = 00000000
    lui     s1, %hi(var_80A24044)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A24044)  # s1 = 80A24044
    lh      a2, 0x0000(s1)             # 80A24044
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_8009D5F0              
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s6, $zero              # a0 = 00000000
    lh      a1, 0x0000(s1)             # 80A24044
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_8009D21C              
    lh      a1, 0x0000(s1)             # 80A24044
    or      a0, s6, $zero              # a0 = 00000000
    lw      a1, 0x1C44(s6)             # 00001C44
    jal     func_800218EC              
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_80052340              
    addiu   a1, s6, 0x1D64             # a1 = 00001D64
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lui     s1, %hi(var_80A24018)      # s1 = 80A20000
    addiu   s1, s1, %lo(var_80A24018)  # s1 = 80A24018
    jal     func_80020EB4              
    lw      a0, 0x0000(s1)             # 80A24018
    jal     func_80020EB4              
    lw      a0, 0x0004(s1)             # 80A2401C
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, s6                 
    lb      a1, 0x1CBC(a1)             # 00011CBC
    jal     func_80020658              
    or      a0, s6, $zero              # a0 = 00000000
lbl_80A1AF40:
    beq     $zero, $zero, lbl_80A1B04C 
    lbu     v0, 0x0714(s0)             # 00000714
lbl_80A1AF48:
    lbu     v0, 0x0714(s0)             # 00000714
    addiu   s1, s6, 0x1C24             # s1 = 00001C24
    lui     $at, 0xC248                # $at = C2480000
    bne     v0, $zero, lbl_80A1B004    
    or      a0, s1, $zero              # a0 = 00001C24
    mtc1    $at, $f24                  # $f24 = -50.00
    mtc1    $zero, $f22                # $f22 = 0.00
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    a3, $f24                   
    sw      t0, 0x0024($sp)            
    or      a1, s6, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x005D          # a2 = 0000005D
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    swc1    $f22, 0x0010($sp)          
    jal     func_80025110              # ActorSpawn
    swc1    $f22, 0x0014($sp)          
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f2                   # $f2 = 200.00
    or      a0, s1, $zero              # a0 = 00001C24
    or      a1, s6, $zero              # a1 = 00000000
    mul.s   $f4, $f20, $f2             
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    swc1    $f22, 0x0010($sp)          
    mul.s   $f8, $f0, $f2              
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    add.s   $f6, $f4, $f24             
    swc1    $f8, 0x0014($sp)           
    mfc1    a3, $f6                    
    jal     func_80025110              # ActorSpawn
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    jal     func_80A1A1BC              
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    sb      $zero, 0x0186(s0)          # 00000186
    beq     $zero, $zero, lbl_80A1B04C 
    lbu     v0, 0x0714(s0)             # 00000714
lbl_80A1B004:
    lh      v1, 0x0188(s0)             # 00000188
    bne     v1, $zero, lbl_80A1B028    
    nop
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    sh      $zero, 0x0712(s0)          # 00000712
    sh      v1, 0x073A(s0)             # 0000073A
    sh      v1, 0x0762(s0)             # 00000762
    beq     $zero, $zero, lbl_80A1B04C 
    lbu     v0, 0x0714(s0)             # 00000714
lbl_80A1B028:
    blez    v1, lbl_80A1B04C           
    nop
    lh      t1, 0x0712(s0)             # 00000712
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = 00000000
    addiu   t2, t1, 0x0005             # t2 = 00000005
    jal     func_80A1A2E8              
    sh      t2, 0x0712(s0)             # 00000712
    lbu     v0, 0x0714(s0)             # 00000714
lbl_80A1B04C:
    lui     $at, %hi(var_80A22D2B)     # $at = 80A20000
    sb      v0, %lo(var_80A22D2B)($at) 
    lbu     t3, 0x0714(s0)             # 00000714
    lui     $at, %hi(var_80A22D2F)     # $at = 80A20000
    lui     s0, %hi(var_80A227D0)      # s0 = 80A20000
    sb      t3, %lo(var_80A22D2F)($at) 
    lui     $at, 0xC1E0                # $at = C1E00000
    mtc1    $at, $f24                  # $f24 = -28.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f22                  # $f22 = 5.00
    lui     $at, 0x4448                # $at = 44480000
    lui     s4, %hi(var_80A22D2C)      # s4 = 80A20000
    lui     s3, %hi(var_80A22D28)      # s3 = 80A20000
    mtc1    $at, $f20                  # $f20 = 800.00
    addiu   s3, s3, %lo(var_80A22D28)  # s3 = 80A22D28
    addiu   s4, s4, %lo(var_80A22D2C)  # s4 = 80A22D2C
    addiu   s0, s0, %lo(var_80A227D0)  # s0 = 80A227D0
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s5, $zero, 0x0005          # s5 = 00000005
    addiu   s2, $sp, 0x007C            # s2 = FFFFFFF4
lbl_80A1B09C:
    jal     func_80026D90              
    mov.s   $f12, $f20                 
    lwc1    $f10, 0x0000(s0)           # 80A227D0
    add.s   $f16, $f0, $f10            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x007C($sp)          
    mul.s   $f18, $f0, $f22            
    lwc1    $f4, 0x0004(s0)            # 80A227D4
    mov.s   $f12, $f20                 
    add.s   $f6, $f4, $f24             
    add.s   $f8, $f18, $f6             
    jal     func_80026D90              
    swc1    $f8, 0x0080($sp)           
    lwc1    $f10, 0x0008(s0)           # 80A227D8
    addiu   t4, $zero, 0x03E8          # t4 = 000003E8
    sw      t4, 0x0014($sp)            
    add.s   $f16, $f0, $f10            
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFF4
    or      a2, s3, $zero              # a2 = 80A22D28
    swc1    $f16, 0x0084($sp)          
    or      a3, s4, $zero              # a3 = 80A22D2C
    jal     func_8001CF94              
    sw      $zero, 0x0010($sp)         
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bne     s1, s5, lbl_80A1B09C       
    nop
    lw      $ra, 0x0064($sp)           
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    ldc1    $f24, 0x0040($sp)          
    lw      s0, 0x0048($sp)            
    lw      s1, 0x004C($sp)            
    lw      s2, 0x0050($sp)            
    lw      s3, 0x0054($sp)            
    lw      s4, 0x0058($sp)            
    lw      s5, 0x005C($sp)            
    lw      s6, 0x0060($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_80A1B13C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    lui     a1, %hi(var_80A22CDC)      # a1 = 80A20000
    sll     t7, t6,  2                 
    addu    $at, $at, t7               
    sw      $zero, %lo(var_80A228FC)($at) 
    lbu     t8, 0x03D4(a3)             # 000003D4
    lh      t0, 0x001C(a3)             # 0000001C
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    andi    t9, t8, 0xFFFC             # t9 = 00000000
    sll     t1, t0,  2                 
    sb      t9, 0x03D4(a3)             # 000003D4
    addu    a1, a1, t1                 
    lw      a1, %lo(var_80A22CDC)(a1)  
    sw      a3, 0x0018($sp)            
    jal     func_8008D328              
    lui     a2, 0x40A0                 # a2 = 40A00000
    lw      a3, 0x0018($sp)            
    lui     t3, %hi(func_80A1B1B8)     # t3 = 80A20000
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t3, t3, %lo(func_80A1B1B8) # t3 = 80A1B1B8
    sb      $zero, 0x0185(a3)          # 00000185
    sh      t2, 0x0188(a3)             # 00000188
    sw      t3, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B1B8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x0080(s0)             # 00000080
    jal     func_8006385C              
    lui     a2, 0x41A0                 # a2 = 41A00000
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x0008(s0)             # 00000008
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x0010(s0)             # 00000010
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      t6, 0x011C(s0)             # 0000011C
    lui     t9, %hi(var_80A228FC)      # t9 = 80A20000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lh      t7, 0x001C(t6)             # 0000001C
    lui     v0, %hi(var_80A24010)      # v0 = 80A20000
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, %lo(var_80A228FC)(t9)  
    bne     t9, $at, lbl_80A1B28C      
    nop
    lh      v0, 0x0188(s0)             # 00000188
    lw      t0, 0x0024($sp)            
    lui     $at, 0xC248                # $at = C2480000
    beq     v0, $zero, lbl_80A1B24C    
    lw      v1, 0x1C44(t0)             # 00001C44
    addiu   t1, v0, 0xFFFF             # t1 = 80A1FFFF
    sh      t1, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1B24C:
    bnel    v0, $zero, lbl_80A1B318    
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f4                   # $f4 = -50.00
    lwc1    $f6, 0x0028(v1)            # 00000028
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A1B318               
    lw      $ra, 0x001C($sp)           
    lw      t2, 0x066C(v1)             # 0000066C
    andi    t3, t2, 0x6080             # t3 = 00000000
    bnel    t3, $zero, lbl_80A1B318    
    lw      $ra, 0x001C($sp)           
    jal     func_80A1F0FC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1B318 
    lw      $ra, 0x001C($sp)           
lbl_80A1B28C:
    lw      v0, %lo(var_80A24010)(v0)  
    lui     t4, %hi(func_80A19084)     # t4 = 80A20000
    addiu   t4, t4, %lo(func_80A19084) # t4 = 80A19084
    lw      t5, 0x0180(v0)             # 00000180
    bnel    t4, t5, lbl_80A1B318       
    lw      $ra, 0x001C($sp)           
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_80A1B2E0      
    nop
    lh      t6, 0x0188(v0)             # 00000188
    addiu   $at, $zero, 0x001C         # $at = 0000001C
    div     $zero, t6, $at             
    mfhi    t7                         
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     t7, $at, lbl_80A1B2E0      
    nop
    jal     func_80A1B328              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1B318 
    lw      $ra, 0x001C($sp)           
lbl_80A1B2E0:
    bnel    v1, $zero, lbl_80A1B318    
    lw      $ra, 0x001C($sp)           
    lh      v1, 0x0188(v0)             # 00000188
    addiu   $at, $zero, 0x0007         # $at = 00000007
    div     $zero, v1, $at             
    mfhi    t8                         
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     t8, $at, lbl_80A1B314      
    slti    $at, v1, 0x0070            
    beql    $at, $zero, lbl_80A1B318   
    lw      $ra, 0x001C($sp)           
    jal     func_80A1B63C              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A1B314:
    lw      $ra, 0x001C($sp)           
lbl_80A1B318:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B328:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t7, 0x001C(a3)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lh      t9, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CEC)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    lw      a1, %lo(var_80A22CEC)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x40A0                 # a2 = 40A00000
    lw      a3, 0x0018($sp)            
    lui     t2, %hi(func_80A1B39C)     # t2 = 80A20000
    addiu   t1, $zero, 0x000C          # t1 = 0000000C
    addiu   t2, t2, %lo(func_80A1B39C) # t2 = 80A1B39C
    sh      $zero, 0x00B4(a3)          # 000000B4
    sh      t1, 0x0188(a3)             # 00000188
    sw      t2, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B39C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t6, 0x011C(s0)             # 0000011C
    lui     t9, %hi(var_80A228FC)      # t9 = 80A20000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lh      t7, 0x001C(t6)             # 0000001C
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, %lo(var_80A228FC)(t9)  
    bnel    t9, $at, lbl_80A1B3F0      
    lh      v0, 0x0188(s0)             # 00000188
    jal     func_80A1B13C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1B4DC 
    lw      $ra, 0x001C($sp)           
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1B3F0:
    lui     a1, 0x4334                 # a1 = 43340000
    addiu   a0, s0, 0x0028             # a0 = 00000028
    beq     v0, $zero, lbl_80A1B408    
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1B408:
    slti    $at, v0, 0x0003            
    bnel    $at, $zero, lbl_80A1B438   
    lh      t3, 0x00B4(s0)             # 000000B4
    lh      t1, 0x00B4(s0)             # 000000B4
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x41A0                 # a2 = 41A00000
    addiu   t2, t1, 0xFF00             # t2 = FFFFFF00
    jal     func_8006385C              
    sh      t2, 0x00B4(s0)             # 000000B4
    beq     $zero, $zero, lbl_80A1B450 
    lh      t5, 0x0188(s0)             # 00000188
    lh      t3, 0x00B4(s0)             # 000000B4
lbl_80A1B438:
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x4270                 # a2 = 42700000
    addiu   t4, t3, 0x0300             # t4 = 00000300
    jal     func_8006385C              
    sh      t4, 0x00B4(s0)             # 000000B4
    lh      t5, 0x0188(s0)             # 00000188
lbl_80A1B450:
    lui     t7, %hi(var_80A24020)      # t7 = 80A20000
    bnel    t5, $zero, lbl_80A1B4DC    
    lw      $ra, 0x001C($sp)           
    lw      t7, %lo(var_80A24020)(t7)  
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     t9, %hi(var_80A24010)      # t9 = 80A20000
    sh      t6, 0x001C(t7)             # 80A2001C
    lw      t9, %lo(var_80A24010)(t9)  
    lui     t8, %hi(func_80A18FE8)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A18FE8) # t8 = 80A18FE8
    lw      t0, 0x0180(t9)             # 80A20180
    bne     t8, t0, lbl_80A1B4B0       
    nop
    lb      t1, 0x0185(s0)             # 00000185
    beq     t1, $zero, lbl_80A1B4A0    
    nop
    jal     func_80A1F0FC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1B4BC 
    lwc1    $f12, 0x008C(s0)           # 0000008C
lbl_80A1B4A0:
    jal     func_80A1B13C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1B4BC 
    lwc1    $f12, 0x008C(s0)           # 0000008C
lbl_80A1B4B0:
    jal     func_80A1B4EC              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f12, 0x008C(s0)           # 0000008C
lbl_80A1B4BC:
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC              
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3951          # a1 = 00003951
    lw      $ra, 0x001C($sp)           
lbl_80A1B4DC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B4EC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lui     t7, %hi(var_80A24020)      # t7 = 80A20000
    lw      t7, %lo(var_80A24020)(t7)  
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    sh      t6, 0x001C(t7)             # 80A2001C
    lh      t8, 0x001C(a2)             # 0000001C
    sw      a2, 0x0018($sp)            
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    sll     t9, t8,  2                 
    addu    a1, a1, t9                 
    jal     func_8008D1C4              
    lw      a1, %lo(var_80A22CE4)(a1)  
    lw      a2, 0x0018($sp)            
    lui     t0, %hi(func_80A1B548)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A1B548) # t0 = 80A1B548
    sw      t0, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B548:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t6, 0x011C(s0)             # 0000011C
    lui     t9, %hi(var_80A228FC)      # t9 = 80A20000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lh      t7, 0x001C(t6)             # 0000001C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4220                 # a1 = 42200000
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, %lo(var_80A228FC)(t9)  
    lui     a2, 0x3F00                 # a2 = 3F000000
    bnel    t9, $at, lbl_80A1B5A8      
    lui     $at, 0x4040                # $at = 40400000
    jal     func_80A1B13C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1B62C 
    lw      $ra, 0x0024($sp)           
    lui     $at, 0x4040                # $at = 40400000
lbl_80A1B5A8:
    mtc1    $at, $f4                   # $f4 = 3.00
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0xF800          # a1 = FFFFF800
    jal     func_80063704              
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x0008(s0)             # 00000008
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x0010(s0)             # 00000010
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     v0, %hi(var_80A24010)      # v0 = 80A20000
    lw      v0, %lo(var_80A24010)(v0)  
    lui     t0, %hi(func_80A18180)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A18180) # t0 = 80A18180
    lw      t1, 0x0180(v0)             # 80A20180
    beql    t0, t1, lbl_80A1B62C       
    lw      $ra, 0x0024($sp)           
    lh      t2, 0x0188(v0)             # 80A20188
    addiu   $at, $zero, 0x001C         # $at = 0000001C
    div     $zero, t2, $at             
    mfhi    t3                         
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bnel    t3, $at, lbl_80A1B62C      
    lw      $ra, 0x0024($sp)           
    jal     func_80A1B328              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A1B62C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B63C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t7, 0x001C(a3)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lh      t9, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CEC)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    lw      a1, %lo(var_80A22CEC)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x40A0                 # a2 = 40A00000
    lw      a3, 0x0018($sp)            
    lui     t2, %hi(func_80A1B6B0)     # t2 = 80A20000
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   t2, t2, %lo(func_80A1B6B0) # t2 = 80A1B6B0
    sh      $zero, 0x00B4(a3)          # 000000B4
    sh      t1, 0x0188(a3)             # 00000188
    sw      t2, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B6B0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t6, 0x011C(s0)             # 0000011C
    lui     t9, %hi(var_80A228FC)      # t9 = 80A20000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lh      t7, 0x001C(t6)             # 0000001C
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, %lo(var_80A228FC)(t9)  
    bnel    t9, $at, lbl_80A1B704      
    lh      v0, 0x0188(s0)             # 00000188
    jal     func_80A1B13C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1B780 
    lw      $ra, 0x001C($sp)           
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1B704:
    lui     a1, 0x4270                 # a1 = 42700000
    addiu   a0, s0, 0x0028             # a0 = 00000028
    beq     v0, $zero, lbl_80A1B71C    
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1B71C:
    beql    v0, $zero, lbl_80A1B748    
    lh      t3, 0x00B4(s0)             # 000000B4
    lh      t1, 0x00B4(s0)             # 000000B4
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x4170                 # a2 = 41700000
    addiu   t2, t1, 0xFEC0             # t2 = FFFFFEC0
    jal     func_8006385C              
    sh      t2, 0x00B4(s0)             # 000000B4
    beq     $zero, $zero, lbl_80A1B760 
    lh      t5, 0x0188(s0)             # 00000188
    lh      t3, 0x00B4(s0)             # 000000B4
lbl_80A1B748:
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x4270                 # a2 = 42700000
    addiu   t4, t3, 0x0500             # t4 = 00000500
    jal     func_8006385C              
    sh      t4, 0x00B4(s0)             # 000000B4
    lh      t5, 0x0188(s0)             # 00000188
lbl_80A1B760:
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t5, $zero, lbl_80A1B780    
    lw      $ra, 0x001C($sp)           
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3950          # a1 = 00003950
    jal     func_80A1B790              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A1B780:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B790:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    sw      a2, 0x0018($sp)            
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22CE4)(a1)  
    jal     func_8008D1C4              
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    lw      a2, 0x0018($sp)            
    lui     t8, %hi(func_80A1B7DC)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1B7DC) # t8 = 80A1B7DC
    sw      t8, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B7DC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t6, 0x011C(s0)             # 0000011C
    lui     t9, %hi(var_80A228FC)      # t9 = 80A20000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lh      t7, 0x001C(t6)             # 0000001C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4220                 # a1 = 42200000
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, %lo(var_80A228FC)(t9)  
    lui     a2, 0x3F00                 # a2 = 3F000000
    bnel    t9, $at, lbl_80A1B83C      
    lui     $at, 0x4040                # $at = 40400000
    jal     func_80A1B13C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1B910 
    lw      $ra, 0x0024($sp)           
    lui     $at, 0x4040                # $at = 40400000
lbl_80A1B83C:
    mtc1    $at, $f4                   # $f4 = 3.00
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0xFC00          # a1 = FFFFFC00
    jal     func_80063704              
    addiu   a2, $zero, 0x00A0          # a2 = 000000A0
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x0008(s0)             # 00000008
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      a1, 0x0010(s0)             # 00000010
    jal     func_8006385C              
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     v0, %hi(var_80A24010)      # v0 = 80A20000
    lw      v0, %lo(var_80A24010)(v0)  
    lui     t0, %hi(func_80A18FE8)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A18FE8) # t0 = 80A18FE8
    lw      v1, 0x0180(v0)             # 80A20180
    lui     t2, %hi(func_80A18180)     # t2 = 80A20000
    addiu   t2, t2, %lo(func_80A18180) # t2 = 80A18180
    bne     t0, v1, lbl_80A1B8CC       
    nop
    lb      t1, 0x0185(s0)             # 00000185
    beq     t1, $zero, lbl_80A1B8BC    
    nop
    jal     func_80A1F0FC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1B910 
    lw      $ra, 0x0024($sp)           
lbl_80A1B8BC:
    jal     func_80A1B13C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1B910 
    lw      $ra, 0x0024($sp)           
lbl_80A1B8CC:
    beql    t2, v1, lbl_80A1B910       
    lw      $ra, 0x0024($sp)           
    lh      v1, 0x0188(v0)             # 00000188
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    div     $zero, v1, $at             
    mfhi    t3                         
    addiu   $at, $zero, 0x001C         # $at = 0000001C
    bnel    a0, t3, lbl_80A1B910       
    lw      $ra, 0x0024($sp)           
    div     $zero, v1, $at             
    mfhi    t4                         
    beql    a0, t4, lbl_80A1B910       
    lw      $ra, 0x0024($sp)           
    jal     func_80A1B63C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A1B910:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B920:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t7, 0x001C(a3)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lbu     t9, 0x03D4(a3)             # 000003D4
    lh      t1, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22D0C)      # a1 = 80A20000
    andi    t0, t9, 0xFFFC             # t0 = 00000000
    sll     t2, t1,  2                 
    sb      t0, 0x03D4(a3)             # 000003D4
    addu    a1, a1, t2                 
    lw      a1, %lo(var_80A22D0C)(a1)  
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x40C0                 # a2 = 40C00000
    lw      a3, 0x0018($sp)            
    lui     t3, %hi(func_80A1B994)     # t3 = 80A20000
    addiu   t3, t3, %lo(func_80A1B994) # t3 = 80A1B994
    sw      t3, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B994:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80A1B9C4    
    lw      $ra, 0x0014($sp)           
    jal     func_80A1B9D0              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A1B9C4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1B9D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t7, 0x001C(a3)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lh      t9, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22D14)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    lw      a1, %lo(var_80A22D14)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    lw      a0, 0x0018($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    lbu     t1, 0x03D4(a0)             # 000003D4
    lbu     t3, 0x03D5(a0)             # 000003D5
    lw      t5, 0x0004(a0)             # 00000004
    andi    t2, t1, 0xFFFC             # t2 = 00000000
    ori     t4, t3, 0x0001             # t4 = 00000001
    ori     t7, t5, 0x0001             # t7 = 00000001
    sb      t2, 0x03D4(a0)             # 000003D4
    sb      t4, 0x03D5(a0)             # 000003D5
    jal     func_80A1F264              
    sw      t7, 0x0004(a0)             # 00000004
    lw      a3, 0x0018($sp)            
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lui     t6, %hi(func_80A1BA78)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A1BA78) # t6 = 80A1BA78
    sh      $zero, 0x0188(a3)          # 00000188
    sw      t6, 0x0180(a3)             # 00000180
    swc1    $f4, 0x0068(a3)            # 00000068
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1BA78:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x002C($sp)            
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f2                   # $f2 = 50.00
    lui     $at, %hi(var_80A22DD8)     # $at = 80A20000
    lwc1    $f6, %lo(var_80A22DD8)($at) 
    lwc1    $f4, 0x0068(s0)            # 00000068
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f8, $f4, $f6              
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0024             # a0 = 00000024
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A1BAE8               
    swc1    $f0, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80A1BAE8 
    swc1    $f2, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_80A1BAE8:
    lw      a1, 0x0008(s0)             # 00000008
    lw      a3, 0x0068(s0)             # 00000068
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    swc1    $f0, 0x003C($sp)           
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lw      a3, 0x0068(s0)             # 00000068
    lw      a1, 0x0010(s0)             # 00000010
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    lwc1    $f18, 0x003C($sp)          
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    add.s   $f4, $f18, $f0             
    swc1    $f4, 0x003C($sp)           
    lh      v0, 0x0188(s0)             # 00000188
    beq     v0, $zero, lbl_80A1BBDC    
    nop
    beq     v0, $zero, lbl_80A1BB50    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1BB50:
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80A22DDC)     # $at = 80A20000
    lwc1    $f10, %lo(var_80A22DDC)($at) 
    cvt.s.w $f8, $f6                   
    lui     $at, 0x3D80                # $at = 3D800000
    mtc1    $at, $f18                  # $f18 = 0.06
    mul.s   $f16, $f8, $f10            
    nop
    mul.s   $f12, $f16, $f18           
    jal     func_800CF470              
    nop
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f4                   # $f4 = 250.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lh      v0, 0x0188(s0)             # 00000188
    mul.s   $f6, $f0, $f4              
    addiu   $at, $zero, 0x0004         # $at = 00000004
    add.s   $f10, $f6, $f8             
    bne     v0, $zero, lbl_80A1BBB0    
    swc1    $f10, 0x0028(s0)           # 00000028
    jal     func_80A1B13C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1BC94 
    lw      $ra, 0x0024($sp)           
lbl_80A1BBB0:
    bne     v0, $at, lbl_80A1BC90      
    lw      a0, 0x002C($sp)            
    lh      t7, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A22CDC)      # a1 = 80A20000
    lui     a2, 0x4080                 # a2 = 40800000
    sll     t8, t7,  2                 
    addu    a1, a1, t8                 
    jal     func_8008D328              
    lw      a1, %lo(var_80A22CDC)(a1)  
    beq     $zero, $zero, lbl_80A1BC94 
    lw      $ra, 0x0024($sp)           
lbl_80A1BBDC:
    jal     func_80063704              
    lh      a1, 0x0016(s0)             # 00000016
    sw      v0, 0x0038($sp)            
    lh      a1, 0x0018(s0)             # 00000018
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    lw      t9, 0x0038($sp)            
    addiu   a0, s0, 0x0190             # a0 = 00000190
    or      a1, $zero, $zero           # a1 = 00000000
    and     t0, t9, v0                 
    sw      t0, 0x0038($sp)            
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    lw      t1, 0x0038($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3167          # a1 = 00003167
    and     t2, t1, v0                 
    jal     func_8002313C              
    sw      t2, 0x0038($sp)            
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x437A                 # a1 = 437A0000
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x428C                 # a3 = 428C0000
    jal     func_80064178              
    swc1    $f16, 0x0010($sp)          
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lw      t3, 0x0038($sp)            
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80A1BC94               
    lw      $ra, 0x0024($sp)           
    beq     t3, $zero, lbl_80A1BC90    
    lwc1    $f4, 0x003C($sp)           
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A1BC94               
    lw      $ra, 0x0024($sp)           
    sh      t4, 0x0188(s0)             # 00000188
lbl_80A1BC90:
    lw      $ra, 0x0024($sp)           
lbl_80A1BC94:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1BCA4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t7, 0x001C(a3)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lh      t9, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CEC)      # a1 = 80A20000
    sh      $zero, 0x0188(a3)          # 00000188
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    lw      a1, %lo(var_80A22CEC)(a1)  
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    lw      a3, 0x0018($sp)            
    lui     t1, %hi(func_80A1BD10)     # t1 = 80A20000
    addiu   t1, t1, %lo(func_80A1BD10) # t1 = 80A1BD10
    sw      t1, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1BD10:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      v1, 0x0188(s0)             # 00000188
    lw      t7, 0x002C($sp)            
    addiu   a0, s0, 0x0028             # a0 = 00000028
    beq     v1, $zero, lbl_80A1BD68    
    lui     a1, 0x4396                 # a1 = 43960000
    beq     v1, $zero, lbl_80A1BD50    
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(s0)             # 00000188
    lh      v1, 0x0188(s0)             # 00000188
lbl_80A1BD50:
    bnel    v1, $zero, lbl_80A1BDF0    
    lw      $ra, 0x001C($sp)           
    jal     func_80A1BE00              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1BDF0 
    lw      $ra, 0x001C($sp)           
lbl_80A1BD68:
    lw      t8, 0x1C44(t7)             # 00001C44
    lui     a2, 0x41F0                 # a2 = 41F00000
    jal     func_8006385C              
    sw      t8, 0x0024($sp)            
    beq     v0, $zero, lbl_80A1BDA4    
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f6                   # $f6 = 140.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A1BDA8               
    addiu   a1, $zero, 0xF000          # a1 = FFFFF000
    sh      t9, 0x0188(s0)             # 00000188
lbl_80A1BDA4:
    addiu   a1, $zero, 0xF000          # a1 = FFFFF000
lbl_80A1BDA8:
    jal     func_80063704              
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    lw      t0, 0x0024($sp)            
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4220                 # a3 = 42200000
    jal     func_80064280              
    lw      a1, 0x0024(t0)             # 00000024
    lw      t1, 0x0024($sp)            
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4220                 # a3 = 42200000
    jal     func_80064280              
    lw      a1, 0x002C(t1)             # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x3167          # a1 = 00003167
    lw      $ra, 0x001C($sp)           
lbl_80A1BDF0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1BE00:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t7, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lh      t9, 0x001C(s0)             # 0000001C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    swc1    $f4, 0x0060(s0)            # 00000060
    lw      a1, %lo(var_80A22CE4)(a1)  
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1F1F8              
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    sb      $zero, 0x0185(s0)          # 00000185
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3953          # a1 = 00003953
    lui     t1, %hi(func_80A1BE90)     # t1 = 80A20000
    addiu   t1, t1, %lo(func_80A1BE90) # t1 = 80A1BE90
    sw      t1, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1BE90:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x018E             # a0 = 0000018E
    addiu   a1, $zero, 0xF254          # a1 = FFFFF254
    jal     func_800637D4              
    addiu   a2, $zero, 0x01F4          # a2 = 000001F4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    sw      a0, 0x0028($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x1000          # a2 = 00001000
    addiu   a0, s0, 0x0190             # a0 = 00000190
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x1000          # a2 = 00001000
    lh      v1, 0x0188(s0)             # 00000188
    beql    v1, $zero, lbl_80A1BF3C    
    lb      t9, 0x0185(s0)             # 00000185
    beq     v1, $zero, lbl_80A1BEFC    
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(s0)             # 00000188
    lh      v1, 0x0188(s0)             # 00000188
lbl_80A1BEFC:
    bnel    v1, $zero, lbl_80A1C064    
    lw      $ra, 0x0024($sp)           
    lbu     v0, 0x03D5(s0)             # 000003D5
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80A1BF28    
    ori     t8, v0, 0x0001             # t8 = 00000001
    jal     func_80A1B920              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1C064 
    lw      $ra, 0x0024($sp)           
lbl_80A1BF28:
    jal     func_80A1B13C              
    sb      t8, 0x03D5(s0)             # 000003D5
    beq     $zero, $zero, lbl_80A1C064 
    lw      $ra, 0x0024($sp)           
    lb      t9, 0x0185(s0)             # 00000185
lbl_80A1BF3C:
    lui     $at, 0x3FC0                # $at = 3FC00000
    beql    t9, $zero, lbl_80A1BF64    
    lwc1    $f4, 0x0060(s0)            # 00000060
    lbu     t1, 0x03D4(s0)             # 000003D4
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    sh      t0, 0x0188(s0)             # 00000188
    andi    t2, t1, 0xFFFC             # t2 = 00000000
    beq     $zero, $zero, lbl_80A1BFC4 
    sb      t2, 0x03D4(s0)             # 000003D4
    lwc1    $f4, 0x0060(s0)            # 00000060
lbl_80A1BF64:
    mtc1    $at, $f6                   # $f6 = 1.50
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x0080(s0)             # 00000080
    mul.s   $f8, $f4, $f6              
    swc1    $f8, 0x0060(s0)            # 00000060
    jal     func_8006385C              
    lw      a2, 0x0060(s0)             # 00000060
    beq     v0, $zero, lbl_80A1BFC4    
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x0185(s0)             # 00000185
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3950          # a1 = 00003950
    jal     func_80A20E38              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t4, 0x06B4(s0)             # 000006B4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x06A4             # a1 = 000006A4
    ori     t5, t4, 0x0001             # t5 = 00000001
    jal     func_80050B00              
    sb      t5, 0x06B4(s0)             # 000006B4
    lui     t6, %hi(var_80A22CA8)      # t6 = 80A20000
    lh      t6, %lo(var_80A22CA8)(t6)  
    sh      t6, 0x06E4(s0)             # 000006E4
lbl_80A1BFC4:
    lbu     t7, 0x03D4(s0)             # 000003D4
    lw      t9, 0x0034($sp)            
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_80A1C054    
    lw      a0, 0x0028($sp)            
    lw      t0, 0x1C44(t9)             # 00001C44
    sw      t0, 0x002C($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x008A(s0)             # 0000008A
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lwc1    $f18, 0x0024(s0)           # 00000024
    lw      t1, 0x002C($sp)            
    mul.s   $f16, $f0, $f10            
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0024(t1)            # 00000024
    jal     func_80063684              # coss?
    lh      a0, 0x008A(s0)             # 0000008A
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lw      t2, 0x002C($sp)            
    mul.s   $f8, $f0, $f6              
    mtc1    $zero, $f18                # $f18 = 0.00
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40A0                 # a2 = 40A00000
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x002C(t2)           # 0000002C
    lbu     t3, 0x03D4(s0)             # 000003D4
    lh      a3, 0x008A(s0)             # 0000008A
    andi    t4, t3, 0xFFFC             # t4 = 00000000
    sb      t4, 0x03D4(s0)             # 000003D4
    lw      a0, 0x0034($sp)            
    jal     func_80022EC4              
    swc1    $f18, 0x0010($sp)          
    lw      a0, 0x0028($sp)            
lbl_80A1C054:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    lw      $ra, 0x0024($sp)           
lbl_80A1C064:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1C074:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t7, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lh      t9, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A22CEC)      # a1 = 80A20000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    lw      a1, %lo(var_80A22CEC)(a1)  
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    lui     a1, %hi(var_80A24010)      # a1 = 80A20000
    lw      a1, %lo(var_80A24010)(a1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021528              
    addiu   a1, a1, 0x0024             # a1 = 80A20024
    swc1    $f0, 0x03B4(s0)            # 000003B4
    lui     a0, %hi(var_80A24010)      # a0 = 80A20000
    lw      a0, %lo(var_80A24010)(a0)  
    jal     func_8002140C              
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lb      t2, 0x0184(s0)             # 00000184
    lh      t1, 0x0016(s0)             # 00000016
    lui     t5, %hi(func_80A1C11C)     # t5 = 80A20000
    sll     t3, t2, 13                 
    addiu   t5, t5, %lo(func_80A1C11C) # t5 = 80A1C11C
    addu    t4, t1, t3                 
    sh      v0, 0x0032(s0)             # 00000032
    sh      t4, 0x0194(s0)             # 00000194
    sw      t5, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1C11C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s1, 0x0020($sp)            
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x4248                 # a1 = 42480000
    jal     func_8006385C              
    lui     a2, 0x4080                 # a2 = 40800000
    or      s1, v0, $zero              # s1 = 00000000
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0194(s0)             # 00000194
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    and     s1, s1, v0                 
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x0194(s0)             # 00000194
    jal     func_80063704              
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    lui     t6, %hi(var_80A24010)      # t6 = 80A20000
    lw      t6, %lo(var_80A24010)(t6)  
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      a1, 0x0090(t6)             # 80A20090
    and     s1, s1, v0                 
    addiu   a0, s0, 0x03B4             # a0 = 000003B4
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4270                 # a3 = 42700000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    or      t7, $zero, $zero           # t7 = 00000000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80A1C1C4               
    and     s1, s1, t7                 
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    and     s1, s1, t7                 
lbl_80A1C1C4:
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f8, 0x03B4(s0)            # 000003B4
    lui     t8, %hi(var_80A24010)      # t8 = 80A20000
    lw      t8, %lo(var_80A24010)(t8)  
    mul.s   $f10, $f0, $f8             
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f16, 0x0024(t8)           # 80A20024
    add.s   $f18, $f10, $f16           
    jal     func_80063684              # coss?
    swc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x03B4(s0)            # 000003B4
    lui     t9, %hi(var_80A24010)      # t9 = 80A20000
    lw      t9, %lo(var_80A24010)(t9)  
    mul.s   $f6, $f0, $f4              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f8, 0x002C(t9)            # 80A2002C
    add.s   $f10, $f6, $f8             
    beq     s1, $zero, lbl_80A1C224    
    swc1    $f10, 0x002C(s0)           # 0000002C
    jal     func_80A1C240              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1C230 
    lw      $ra, 0x0024($sp)           
lbl_80A1C224:
    jal     func_8002313C              
    addiu   a1, $zero, 0x3167          # a1 = 00003167
    lw      $ra, 0x0024($sp)           
lbl_80A1C230:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80A1C240:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22CE4)(a1)  
    jal     func_8008D21C              
    lui     a2, 0x40A0                 # a2 = 40A00000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1F1F8              
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    lb      t9, 0x0184(s0)             # 00000184
    lh      t8, 0x0016(s0)             # 00000016
    addiu   t2, $zero, 0x0300          # t2 = 00000300
    sll     t0, t9, 13                 
    subu    t1, t8, t0                 
    sh      t1, 0x0194(s0)             # 00000194
    sh      t2, 0x018C(s0)             # 0000018C
    sh      $zero, 0x018A(s0)          # 0000018A
    sb      $zero, 0x0185(s0)          # 00000185
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3953          # a1 = 00003953
    lui     t3, %hi(func_80A1C2CC)     # t3 = 80A20000
    addiu   t3, t3, %lo(func_80A1C2CC) # t3 = 80A1C2CC
    sw      t3, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1C2CC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0              
    sw      t7, 0x002C($sp)            
    lh      t8, 0x018A(s0)             # 0000018A
    lh      a0, 0x018C(s0)             # 0000018C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   t9, t8, 0x0060             # t9 = 00000060
    sh      t9, 0x018A(s0)             # 0000018A
    lh      v1, 0x018A(s0)             # 0000018A
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    slt     $at, a0, v1                
    beql    $at, $zero, lbl_80A1C328   
    sh      v1, 0x018A(s0)             # 0000018A
    beq     $zero, $zero, lbl_80A1C328 
    sh      a0, 0x018A(s0)             # 0000018A
    sh      v1, 0x018A(s0)             # 0000018A
lbl_80A1C328:
    lh      a1, 0x0194(s0)             # 00000194
    lh      a3, 0x018A(s0)             # 0000018A
    sw      t0, 0x0010($sp)            
    jal     func_80064508              
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    bnel    v0, $zero, lbl_80A1C364    
    lbu     v0, 0x03D4(s0)             # 000003D4
    lbu     t1, 0x03D6(s0)             # 000003D6
    or      a0, s0, $zero              # a0 = 00000000
    andi    t2, t1, 0xFFFB             # t2 = 00000000
    jal     func_80A1B9D0              
    sb      t2, 0x03D6(s0)             # 000003D6
    beq     $zero, $zero, lbl_80A1C408 
    lbu     v0, 0x03D4(s0)             # 000003D4
    lbu     v0, 0x03D4(s0)             # 000003D4
lbl_80A1C364:
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    or      a1, s0, $zero              # a1 = 00000000
    andi    t3, v0, 0x0002             # t3 = 00000000
    beq     t3, $zero, lbl_80A1C408    
    andi    t4, v0, 0xFFFC             # t4 = 00000000
    lb      t7, 0x0184(s0)             # 00000184
    lh      t6, 0x00B6(s0)             # 000000B6
    mtc1    $zero, $f4                 # $f4 = 0.00
    sll     t8, t7,  3                 
    subu    t8, t8, t7                 
    sll     t8, t8, 11                 
    subu    a3, t6, t8                 
    sb      t4, 0x03D4(s0)             # 000003D4
    sb      t5, 0x0185(s0)             # 00000185
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    lw      a0, 0x0034($sp)            
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_80022EC4              
    swc1    $f4, 0x0010($sp)           
    lw      a0, 0x002C($sp)            
    jal     func_80022F84              
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    lb      v0, 0x0184(s0)             # 00000184
    lh      t9, 0x00B6(s0)             # 000000B6
    lh      t1, 0x0194(s0)             # 00000194
    sll     t0, v0,  2                 
    addu    t0, t0, v0                 
    sll     t0, t0, 10                 
    subu    v1, t9, t0                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    subu    t2, v1, t1                 
    sll     t3, t2, 16                 
    sra     t4, t3, 16                 
    multu   t4, v0                     
    mflo    t5                         
    blezl   t5, lbl_80A1C408           
    lbu     v0, 0x03D4(s0)             # 000003D4
    sh      v1, 0x0194(s0)             # 00000194
    lbu     v0, 0x03D4(s0)             # 000003D4
lbl_80A1C408:
    lb      t7, 0x0185(s0)             # 00000185
    lw      v1, 0x002C($sp)            
    bnel    t7, $zero, lbl_80A1C474    
    lbu     t2, 0x03D6(s0)             # 000003D6
    lh      t6, 0x04CA(v1)             # 000004CA
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    mtc1    t6, $f8                    # $f8 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f10, $f8                  
    c.lt.s  $f6, $f10                  
    nop
    bc1tl   lbl_80A1C45C               
    lbu     t9, 0x03D6(s0)             # 000003D6
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f18, 0x0028(v1)           # 00000028
    c.lt.s  $f16, $f18                 
    nop
    bc1fl   lbl_80A1C474               
    lbu     t2, 0x03D6(s0)             # 000003D6
    lbu     t9, 0x03D6(s0)             # 000003D6
lbl_80A1C45C:
    ori     t8, v0, 0x0001             # t8 = 00000001
    sb      t8, 0x03D4(s0)             # 000003D4
    andi    t0, t9, 0xFFFB             # t0 = 00000000
    beq     $zero, $zero, lbl_80A1C484 
    sb      t0, 0x03D6(s0)             # 000003D6
    lbu     t2, 0x03D6(s0)             # 000003D6
lbl_80A1C474:
    andi    t1, v0, 0xFFFE             # t1 = 00000000
    sb      t1, 0x03D4(s0)             # 000003D4
    ori     t3, t2, 0x0004             # t3 = 00000004
    sb      t3, 0x03D6(s0)             # 000003D6
lbl_80A1C484:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f4, 0x03B4(s0)            # 000003B4
    lui     t4, %hi(var_80A24010)      # t4 = 80A20000
    lw      t4, %lo(var_80A24010)(t4)  
    mul.s   $f8, $f0, $f4              
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f6, 0x0024(t4)            # 80A20024
    add.s   $f10, $f8, $f6             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x03B4(s0)           # 000003B4
    lui     t5, %hi(var_80A24010)      # t5 = 80A20000
    lw      t5, %lo(var_80A24010)(t5)  
    mul.s   $f18, $f0, $f16            
    lwc1    $f4, 0x002C(t5)            # 80A2002C
    add.s   $f8, $f18, $f4             
    swc1    $f8, 0x002C(s0)            # 0000002C
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A1C4DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t7, 0x001C(a3)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lh      t9, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22D0C)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    lw      a1, %lo(var_80A22D0C)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    lw      a3, 0x0018($sp)            
    lui     t1, %hi(func_80A1C544)     # t1 = 80A20000
    addiu   t1, t1, %lo(func_80A1C544) # t1 = 80A1C544
    sw      t1, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1C544:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      a1, 0x008A(a3)             # 0000008A
    sw      a3, 0x0020($sp)            
    addiu   a0, a3, 0x00B6             # a0 = 000000B6
    jal     func_80063704              
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80A1C590    
    lw      t6, 0x001C($sp)            
    beql    t6, $zero, lbl_80A1C594    
    lw      $ra, 0x0014($sp)           
    jal     func_80A1C5A0              
    lw      a0, 0x0020($sp)            
lbl_80A1C590:
    lw      $ra, 0x0014($sp)           
lbl_80A1C594:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1C5A0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     a1, %hi(var_80A22CF4)      # a1 = 80A20000
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    swc1    $f4, 0x0068(s0)            # 00000068
    lw      a1, %lo(var_80A22CF4)(a1)  
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x40A0                 # a2 = 40A00000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1F264              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lb      t8, 0x0184(s0)             # 00000184
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    sll     t9, t8,  6                 
    subu    t9, t9, t8                 
    sll     t9, t9,  8                 
    jal     func_80A1F1F8              
    sh      t9, 0x0196(s0)             # 00000196
    lui     t0, %hi(func_80A1C628)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A1C628) # t0 = 80A1C628
    sw      t0, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1C628:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x42A0                 # a1 = 42A00000
    jal     func_8006385C              
    lui     a2, 0x41A0                 # a2 = 41A00000
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    lh      a1, 0x0196(s0)             # 00000196
    jal     func_80063704              
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    beq     v0, $zero, lbl_80A1C678    
    lui     $at, 0x4248                # $at = 42480000
    lh      t6, 0x0196(s0)             # 00000196
    subu    t7, $zero, t6              
    sh      t7, 0x0196(s0)             # 00000196
lbl_80A1C678:
    mtc1    $at, $f2                   # $f2 = 50.00
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f6                   # $f6 = 1.25
    lwc1    $f4, 0x0068(s0)            # 00000068
    mul.s   $f8, $f4, $f6              
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A1C6B0               
    swc1    $f0, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80A1C6B0 
    swc1    $f2, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_80A1C6B0:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f16, 0x0068(s0)           # 00000068
    lwc1    $f10, 0x0024(s0)           # 00000024
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f18, $f16, $f0            
    add.s   $f4, $f10, $f18            
    jal     func_80063684              # coss?
    swc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lhu     t8, 0x0088(s0)             # 00000088
    mul.s   $f16, $f8, $f0             
    andi    t9, t8, 0x0008             # t9 = 00000000
    add.s   $f10, $f6, $f16            
    beq     t9, $zero, lbl_80A1C704    
    swc1    $f10, 0x002C(s0)           # 0000002C
    jal     func_80A1B9D0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1C750 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A1C704:
    lbu     t0, 0x03D4(s0)             # 000003D4
    lw      t2, 0x002C($sp)            
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    andi    t1, t0, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_80A1C750    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022F84              
    lw      a0, 0x1C44(t2)             # 00001C44
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    lh      a3, 0x00B6(s0)             # 000000B6
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4120                 # a2 = 41200000
    jal     func_80022EC4              
    swc1    $f18, 0x0010($sp)          
    jal     func_80A1B9D0              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A1C750:
    jal     func_8002313C              
    addiu   a1, $zero, 0x3167          # a1 = 00003167
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1C76C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    lui     v0, %hi(var_80A228FC)      # v0 = 80A20000
    addiu   v0, v0, %lo(var_80A228FC)  # v0 = 80A228FC
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   v1, $zero, 0x0006          # v1 = 00000006
    lh      t6, 0x001C(s0)             # 0000001C
    sll     t7, t6,  2                 
    addu    t8, v0, t7                 
    sw      v1, 0x0000(t8)             # 00000000
    lw      a1, 0x011C(s0)             # 0000011C
    lh      t9, 0x001C(a1)             # 0000001C
    sll     t0, t9,  2                 
    addu    t1, v0, t0                 
    lw      t2, 0x0000(t1)             # 00000000
    beql    v1, t2, lbl_80A1C7C0       
    lh      t3, 0x001C(s0)             # 0000001C
    jal     func_80A1C76C              
    or      a0, a1, $zero              # a0 = 00000000
    lh      t3, 0x001C(s0)             # 0000001C
lbl_80A1C7C0:
    lui     a1, %hi(var_80A22CEC)      # a1 = 80A20000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sll     t4, t3,  2                 
    addu    a1, a1, t4                 
    lw      a1, %lo(var_80A22CEC)(a1)  
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    lui     a1, %hi(var_80A24010)      # a1 = 80A20000
    lw      a1, %lo(var_80A24010)(a1)  
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021528              
    addiu   a1, a1, 0x0024             # a1 = 80A20024
    swc1    $f0, 0x03B4(s0)            # 000003B4
    lui     a0, %hi(var_80A24010)      # a0 = 80A20000
    lw      a0, %lo(var_80A24010)(a0)  
    jal     func_8002140C              
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lb      v1, 0x0184(s0)             # 00000184
    lh      t5, 0x0016(s0)             # 00000016
    lw      t9, 0x011C(s0)             # 0000011C
    sll     t6, v1,  2                 
    subu    t6, t6, v1                 
    sll     t6, t6, 11                 
    sll     t8, v1, 14                 
    subu    t7, t5, t6                 
    sh      v0, 0x0032(s0)             # 00000032
    sh      t7, 0x0194(s0)             # 00000194
    sh      t8, 0x0196(s0)             # 00000196
    sh      $zero, 0x0188(s0)          # 00000188
    sb      $zero, 0x0185(s0)          # 00000185
    lui     t0, %hi(func_80A1C85C)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A1C85C) # t0 = 80A1C85C
    sb      $zero, 0x0185(t9)          # 00000185
    sw      t0, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1C85C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lh      v0, 0x0188(s0)             # 00000188
    beql    v0, $zero, lbl_80A1C8B8    
    lb      t8, 0x0185(s0)             # 00000185
    beq     v0, $zero, lbl_80A1C88C    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1C88C:
    bnel    v0, $zero, lbl_80A1CA3C    
    lw      $ra, 0x0024($sp)           
    jal     func_80A1CA4C              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1CA4C              
    lw      a0, 0x011C(s0)             # 0000011C
    lwc1    $f4, 0x03B4(s0)            # 000003B4
    lw      t7, 0x011C(s0)             # 0000011C
    beq     $zero, $zero, lbl_80A1CA38 
    swc1    $f4, 0x03B4(t7)            # 000003B4
    lb      t8, 0x0185(s0)             # 00000185
lbl_80A1C8B8:
    bnel    t8, $zero, lbl_80A1CA24    
    lw      t6, 0x011C(s0)             # 0000011C
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sb      v0, 0x0185(s0)             # 00000185
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0600          # a2 = 00000600
    lb      t9, 0x0185(s0)             # 00000185
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    lh      a1, 0x0196(s0)             # 00000196
    and     t0, t9, v0                 
    sb      t0, 0x0185(s0)             # 00000185
    jal     func_80063704              
    addiu   a2, $zero, 0x0600          # a2 = 00000600
    lb      t1, 0x0185(s0)             # 00000185
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0194(s0)             # 00000194
    and     t2, t1, v0                 
    sb      t2, 0x0185(s0)             # 00000185
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    lb      t3, 0x0185(s0)             # 00000185
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x0194(s0)             # 00000194
    and     t4, t3, v0                 
    sb      t4, 0x0185(s0)             # 00000185
    jal     func_80063704              
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    lb      t5, 0x0185(s0)             # 00000185
    lui     t7, %hi(var_80A24010)      # t7 = 80A20000
    lui     $at, 0x3F80                # $at = 3F800000
    and     t6, t5, v0                 
    sb      t6, 0x0185(s0)             # 00000185
    lw      t7, %lo(var_80A24010)(t7)  
    mtc1    $at, $f6                   # $f6 = 1.00
    addiu   a0, s0, 0x03B4             # a0 = 000003B4
    lw      a1, 0x0090(t7)             # 80A20090
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lb      t8, 0x0185(s0)             # 00000185
    or      t9, $zero, $zero           # t9 = 00000000
    c.lt.s  $f0, $f8                   
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x42BE                 # a1 = 42BE0000
    lui     a2, 0x3F00                 # a2 = 3F000000
    bc1f    lbl_80A1C990               
    lui     a3, 0x41F0                 # a3 = 41F00000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
lbl_80A1C990:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    and     t0, t8, t9                 
    sb      t0, 0x0185(s0)             # 00000185
    jal     func_80064178              
    swc1    $f10, 0x0010($sp)          
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lb      t1, 0x0185(s0)             # 00000185
    or      t2, $zero, $zero           # t2 = 00000000
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80A1C9D0               
    and     t3, t1, t2                 
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    and     t3, t1, t2                 
lbl_80A1C9D0:
    sb      t3, 0x0185(s0)             # 00000185
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f18, 0x03B4(s0)           # 000003B4
    lui     t4, %hi(var_80A24010)      # t4 = 80A20000
    lw      t4, %lo(var_80A24010)(t4)  
    mul.s   $f4, $f0, $f18             
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f6, 0x0024(t4)            # 80A20024
    add.s   $f8, $f4, $f6              
    jal     func_80063684              # coss?
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x03B4(s0)           # 000003B4
    lui     t5, %hi(var_80A24010)      # t5 = 80A20000
    lw      t5, %lo(var_80A24010)(t5)  
    mul.s   $f16, $f0, $f10            
    lwc1    $f18, 0x002C(t5)           # 80A2002C
    add.s   $f4, $f16, $f18            
    beq     $zero, $zero, lbl_80A1CA38 
    swc1    $f4, 0x002C(s0)            # 0000002C
    lw      t6, 0x011C(s0)             # 0000011C
lbl_80A1CA24:
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    lb      t7, 0x0185(t6)             # 00000185
    beql    t7, $zero, lbl_80A1CA3C    
    lw      $ra, 0x0024($sp)           
    sh      t8, 0x0188(s0)             # 00000188
lbl_80A1CA38:
    lw      $ra, 0x0024($sp)           
lbl_80A1CA3C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1CA4C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22CE4)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4040                 # a2 = 40400000
    lw      a0, 0x0018($sp)            
    addiu   t8, $zero, 0x0240          # t8 = 00000240
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    sh      $zero, 0x0188(a0)          # 00000188
    sh      t8, 0x018C(a0)             # 0000018C
    sh      $zero, 0x018A(a0)          # 0000018A
    jal     func_80A1F1F8              
    sb      $zero, 0x0185(a0)          # 00000185
    lw      a3, 0x0018($sp)            
    lui     t9, %hi(func_80A1CABC)     # t9 = 80A20000
    addiu   t9, t9, %lo(func_80A1CABC) # t9 = 80A1CABC
    sw      t9, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1CABC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0              
    sw      t7, 0x0024($sp)            
    lh      v1, 0x0188(s0)             # 00000188
    beql    v1, $zero, lbl_80A1CB7C    
    lbu     v1, 0x03D4(s0)             # 000003D4
    beq     v1, $zero, lbl_80A1CB00    
    addiu   t8, v1, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0188(s0)             # 00000188
    lh      v1, 0x0188(s0)             # 00000188
lbl_80A1CB00:
    bne     v1, $zero, lbl_80A1CCA8    
    lui     t9, %hi(var_80A22D38)      # t9 = 80A20000
    lw      t9, %lo(var_80A22D38)(t9)  
    beql    t9, $zero, lbl_80A1CB5C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lw      a0, 0x002C($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    c.lt.s  $f0, $f4                   
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
    bc1f    lbl_80A1CB44               
    nop
    beq     $zero, $zero, lbl_80A1CB44 
    addiu   v0, $zero, 0x0008          # v0 = 00000008
lbl_80A1CB44:
    sll     a2, v0, 16                 
    jal     func_80013678              
    sra     a2, a2, 16                 
    lui     $at, %hi(var_80A22D38)     # $at = 80A20000
    sw      $zero, %lo(var_80A22D38)($at) 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A1CB5C:
    lw      a1, 0x002C($sp)            
    jal     func_80A1EEEC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80A1CCE8              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1CCAC 
    lw      v0, 0x0024($sp)            
    lbu     v1, 0x03D4(s0)             # 000003D4
lbl_80A1CB7C:
    andi    t0, v1, 0x0002             # t0 = 00000000
    beql    t0, $zero, lbl_80A1CBB0    
    lb      t4, 0x0185(s0)             # 00000185
    lw      v0, 0x011C(s0)             # 0000011C
    andi    t1, v1, 0xFFFC             # t1 = 00000000
    sb      t1, 0x03D4(s0)             # 000003D4
    lbu     t2, 0x03D4(v0)             # 000003D4
    or      a0, s0, $zero              # a0 = 00000000
    andi    t3, t2, 0xFFFC             # t3 = 00000000
    sb      t3, 0x03D4(v0)             # 000003D4
    jal     func_80A1EE4C              
    lw      a1, 0x002C($sp)            
    lb      t4, 0x0185(s0)             # 00000185
lbl_80A1CBB0:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    beql    t4, $zero, lbl_80A1CBF8    
    lh      t2, 0x018A(s0)             # 0000018A
    lbu     t6, 0x03D4(s0)             # 000003D4
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    sh      t5, 0x0188(s0)             # 00000188
    andi    t7, t6, 0xFFFC             # t7 = 00000000
    sb      t7, 0x03D4(s0)             # 000003D4
    lw      t8, 0x0024($sp)            
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     $at, %hi(var_80A22D38)     # $at = 80A20000
    lw      t9, 0x0670(t8)             # 00000670
    andi    t0, t9, 0x0080             # t0 = 00000000
    bnel    t0, $zero, lbl_80A1CCAC    
    lw      v0, 0x0024($sp)            
    beq     $zero, $zero, lbl_80A1CCA8 
    sw      t1, %lo(var_80A22D38)($at) 
    lh      t2, 0x018A(s0)             # 0000018A
lbl_80A1CBF8:
    lh      v1, 0x018C(s0)             # 0000018C
    addiu   t3, t2, 0x0040             # t3 = 00000040
    sh      t3, 0x018A(s0)             # 0000018A
    lh      v0, 0x018A(s0)             # 0000018A
    slt     $at, v1, v0                
    beql    $at, $zero, lbl_80A1CC20   
    sh      v0, 0x018A(s0)             # 0000018A
    beq     $zero, $zero, lbl_80A1CC20 
    sh      v1, 0x018A(s0)             # 0000018A
    sh      v0, 0x018A(s0)             # 0000018A
lbl_80A1CC20:
    lh      a1, 0x0016(s0)             # 00000016
    jal     func_80063704              
    lh      a2, 0x018A(s0)             # 0000018A
    beq     v0, $zero, lbl_80A1CC58    
    or      a0, s0, $zero              # a0 = 00000000
    lh      t4, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t4, $zero, lbl_80A1CC50    
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3952          # a1 = 00003952
    addiu   t5, $zero, 0x0001          # t5 = 00000001
lbl_80A1CC50:
    beq     $zero, $zero, lbl_80A1CC60 
    sb      t5, 0x0185(s0)             # 00000185
lbl_80A1CC58:
    jal     func_8002313C              
    addiu   a1, $zero, 0x3167          # a1 = 00003167
lbl_80A1CC60:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f6, 0x03B4(s0)            # 000003B4
    lui     t6, %hi(var_80A24010)      # t6 = 80A20000
    lw      t6, %lo(var_80A24010)(t6)  
    mul.s   $f8, $f0, $f6              
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f10, 0x0024(t6)           # 80A20024
    add.s   $f16, $f8, $f10            
    jal     func_80063684              # coss?
    swc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x03B4(s0)           # 000003B4
    lui     t7, %hi(var_80A24010)      # t7 = 80A20000
    lw      t7, %lo(var_80A24010)(t7)  
    mul.s   $f4, $f0, $f18             
    lwc1    $f6, 0x002C(t7)            # 80A2002C
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x002C(s0)            # 0000002C
lbl_80A1CCA8:
    lw      v0, 0x0024($sp)            
lbl_80A1CCAC:
    lw      t8, 0x0118(v0)             # 00000118
    bnel    s0, t8, lbl_80A1CCD8       
    lw      $ra, 0x001C($sp)           
    sh      $zero, 0x0840(v0)          # 00000840
    lw      t0, 0x0024(s0)             # 00000024
    sw      t0, 0x0024(v0)             # 00000024
    lw      t9, 0x0028(s0)             # 00000028
    sw      t9, 0x0028(v0)             # 00000028
    lw      t0, 0x002C(s0)             # 0000002C
    sw      t0, 0x002C(v0)             # 0000002C
    lw      $ra, 0x001C($sp)           
lbl_80A1CCD8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1CCE8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lb      t7, 0x0184(a3)             # 00000184
    lh      t6, 0x0016(a3)             # 00000016
    lh      t0, 0x001C(a3)             # 0000001C
    sll     t8, t7, 12                 
    lui     a1, %hi(var_80A22CEC)      # a1 = 80A20000
    subu    t9, t6, t8                 
    sll     t1, t0,  2                 
    sh      t9, 0x0194(a3)             # 00000194
    addu    a1, a1, t1                 
    lw      a1, %lo(var_80A22CEC)(a1)  
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    lw      a3, 0x0018($sp)            
    lui     t4, %hi(func_80A1CD54)     # t4 = 80A20000
    addiu   t4, t4, %lo(func_80A1CD54) # t4 = 80A1CD54
    lbu     t2, 0x03D4(a3)             # 000003D4
    sw      t4, 0x0180(a3)             # 00000180
    andi    t3, t2, 0xFFFC             # t3 = 00000000
    sb      t3, 0x03D4(a3)             # 000003D4
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A1CD54:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0194(s0)             # 00000194
    jal     func_80063704              
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    beq     v0, $zero, lbl_80A1CDA0    
    nop
    jal     func_80A1B9D0              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A1CDA0:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f4, 0x03B4(s0)            # 000003B4
    lui     t6, %hi(var_80A24010)      # t6 = 80A20000
    lw      t6, %lo(var_80A24010)(t6)  
    mul.s   $f6, $f0, $f4              
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f8, 0x0024(t6)            # 80A20024
    add.s   $f10, $f6, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x03B4(s0)           # 000003B4
    lui     t7, %hi(var_80A24010)      # t7 = 80A20000
    lw      t7, %lo(var_80A24010)(t7)  
    mul.s   $f18, $f0, $f16            
    lwc1    $f4, 0x002C(t7)            # 80A2002C
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x002C(s0)            # 0000002C
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A1CDF8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t7, 0x001C(a3)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lh      t9, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CEC)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    lw      a1, %lo(var_80A22CEC)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    lw      a3, 0x0018($sp)            
    lui     t3, %hi(func_80A1CE7C)     # t3 = 80A20000
    addiu   t3, t3, %lo(func_80A1CE7C) # t3 = 80A1CE7C
    lb      v0, 0x0184(a3)             # 00000184
    sw      t3, 0x0180(a3)             # 00000180
    subu    $at, $zero, v0             
    sll     t1, $at,  2                
    addu    t1, t1, $at                
    sll     t1, t1, 12                 
    sll     t2, v0, 14                 
    sh      t1, 0x0194(a3)             # 00000194
    sh      t2, 0x0196(a3)             # 00000196
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A1CE7C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      a1, 0x0196(s0)             # 00000196
    addiu   t6, $zero, 0x0100          # t6 = 00000100
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80064508              
    addiu   a3, $zero, 0x0800          # a3 = 00000800
    sltiu   t7, v0, 0x0001             
    sw      t7, 0x002C($sp)            
    lh      t9, 0x0194(s0)             # 00000194
    lh      t8, 0x008A(s0)             # 0000008A
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0A00          # a2 = 00000A00
    addu    a1, t8, t9                 
    sll     a1, a1, 16                 
    jal     func_80063704              
    sra     a1, a1, 16                 
    lw      t0, 0x002C($sp)            
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x42BE                 # a1 = 42BE0000
    and     t1, t0, v0                 
    sw      t1, 0x002C($sp)            
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280              
    lui     a3, 0x41A0                 # a3 = 41A00000
    lw      t2, 0x002C($sp)            
    beql    t2, $zero, lbl_80A1CF14    
    lw      $ra, 0x0024($sp)           
    jal     func_80A1CF24              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_80A1CF14:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1CF24:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CF4)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22CF4)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x40A0                 # a2 = 40A00000
    lw      a0, 0x0018($sp)            
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lb      t9, 0x0184(a0)             # 00000184
    lh      t8, 0x00B6(a0)             # 000000B6
    addiu   t3, $zero, 0x001E          # t3 = 0000001E
    sll     t0, t9, 14                 
    addu    t1, t8, t0                 
    sh      t1, 0x0032(a0)             # 00000032
    lh      t2, 0x0032(a0)             # 00000032
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    sh      t3, 0x0188(a0)             # 00000188
    swc1    $f4, 0x0068(a0)            # 00000068
    jal     func_80A1F1F8              
    sh      t2, 0x0194(a0)             # 00000194
    lw      a3, 0x0018($sp)            
    lui     t4, %hi(func_80A1CFB0)     # t4 = 80A20000
    addiu   t4, t4, %lo(func_80A1CFB0) # t4 = 80A1CFB0
    sw      t4, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1CFB0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x002C($sp)            
    lh      v0, 0x0188(s0)             # 00000188
    beq     v0, $zero, lbl_80A1CFE4    
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1CFE4:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A22DE0)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A22DE0)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    lb      v0, 0x0184(s0)             # 00000184
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    sll     t9, v0, 13                 
    mtc1    t9, $f18                   # $f18 = 0.00
    lh      t0, 0x0194(s0)             # 00000194
    sub.s   $f16, $f10, $f0            
    lh      t6, 0x0188(s0)             # 00000188
    mtc1    t0, $f8                    # $f8 = 0.00
    cvt.s.w $f4, $f18                  
    sll     t4, v0, 14                 
    slti    $at, t6, 0x0005            
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F00                 # a2 = 3F000000
    cvt.s.w $f10, $f8                  
    mul.s   $f6, $f16, $f4             
    lui     a3, 0x41C8                 # a3 = 41C80000
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f18, $f6, $f10            
    trunc.w.s $f16, $f18                 
    mfc1    t2, $f16                   
    nop
    sh      t2, 0x0032(s0)             # 00000032
    lh      t3, 0x0032(s0)             # 00000032
    subu    t5, t3, t4                 
    beq     $at, $zero, lbl_80A1D148   
    sh      t5, 0x00B6(s0)             # 000000B6
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80A1D190    
    lbu     v0, 0x03D4(s0)             # 000003D4
    lbu     t7, 0x03D4(s0)             # 000003D4
    mtc1    $zero, $f8                 # $f8 = 0.00
    andi    t8, t7, 0xFFFC             # t8 = 00000000
    sb      t8, 0x03D4(s0)             # 000003D4
    swc1    $f8, 0x0068(s0)            # 00000068
    lw      t9, 0x002C($sp)            
    lw      t0, 0x0670(t9)             # 00000670
    andi    t1, t0, 0x0080             # t1 = 00000000
    beq     t1, $zero, lbl_80A1D0FC    
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    nop
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_80A1D0EC               
    nop
    jal     func_80A1D25C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1D190 
    lbu     v0, 0x03D4(s0)             # 000003D4
lbl_80A1D0EC:
    jal     func_80A1D458              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1D190 
    lbu     v0, 0x03D4(s0)             # 000003D4
lbl_80A1D0FC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lw      a0, 0x0034($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    c.lt.s  $f0, $f10                  
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
    bc1f    lbl_80A1D12C               
    nop
    beq     $zero, $zero, lbl_80A1D12C 
    addiu   v0, $zero, 0x0008          # v0 = 00000008
lbl_80A1D12C:
    sll     a2, v0, 16                 
    jal     func_80013678              
    sra     a2, a2, 16                 
    jal     func_80A1B9D0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1D190 
    lbu     v0, 0x03D4(s0)             # 000003D4
lbl_80A1D148:
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f2                   # $f2 = 70.00
    lui     $at, %hi(var_80A22DE4)     # $at = 80A20000
    lwc1    $f16, %lo(var_80A22DE4)($at) 
    lwc1    $f18, 0x0068(s0)           # 00000068
    mul.s   $f4, $f18, $f16            
    swc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A1D184               
    swc1    $f0, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80A1D184 
    swc1    $f2, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_80A1D184:
    jal     func_8002313C              
    addiu   a1, $zero, 0x3167          # a1 = 00003167
    lbu     v0, 0x03D4(s0)             # 000003D4
lbl_80A1D190:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3965          # a1 = 00003965
    andi    t2, v0, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_80A1D1D8    
    andi    t3, v0, 0xFFFC             # t3 = 00000000
    jal     func_80022FD0              
    sb      t3, 0x03D4(s0)             # 000003D4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1EE4C              
    lw      a1, 0x0034($sp)            
    lh      v0, 0x0188(s0)             # 00000188
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    slti    $at, v0, 0x0006            
    bnel    $at, $zero, lbl_80A1D1D8   
    sh      v0, 0x0188(s0)             # 00000188
    beq     $zero, $zero, lbl_80A1D1D8 
    sh      t4, 0x0188(s0)             # 00000188
    sh      v0, 0x0188(s0)             # 00000188
lbl_80A1D1D8:
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x0024(s0)            # 00000024
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f10, $f6, $f0             
    add.s   $f18, $f8, $f10            
    jal     func_80063684              # coss?
    swc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lw      v0, 0x002C($sp)            
    mul.s   $f6, $f4, $f0              
    add.s   $f8, $f16, $f6             
    swc1    $f8, 0x002C(s0)            # 0000002C
    lw      t5, 0x0670(v0)             # 00000670
    andi    t6, t5, 0x0080             # t6 = 00000000
    beql    t6, $zero, lbl_80A1D24C    
    lw      $ra, 0x0024($sp)           
    sh      $zero, 0x0840(v0)          # 00000840
    lw      t8, 0x0024(s0)             # 00000024
    sw      t8, 0x0024(v0)             # 00000024
    lw      t7, 0x0028(s0)             # 00000028
    sw      t7, 0x0028(v0)             # 00000028
    lw      t8, 0x002C(s0)             # 0000002C
    sw      t8, 0x002C(v0)             # 0000002C
    lh      t9, 0x00B6(s0)             # 000000B6
    sh      t9, 0x00B6(v0)             # 000000B6
    lw      $ra, 0x0024($sp)           
lbl_80A1D24C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1D25C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CFC)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22CFC)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D328              
    lui     a2, 0xC120                 # a2 = C1200000
    lw      a3, 0x0018($sp)            
    lui     t9, %hi(func_80A1D2B4)     # t9 = 80A20000
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t9, t9, %lo(func_80A1D2B4) # t9 = 80A1D2B4
    sh      t8, 0x0188(a3)             # 00000188
    sw      t9, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1D2B4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a2, 0x1C44(t6)             # 00001C44
    sw      a0, 0x0020($sp)            
    jal     func_8008C9C0              
    sw      a2, 0x0024($sp)            
    lh      v1, 0x0188(s0)             # 00000188
    lw      a2, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    beq     v1, $zero, lbl_80A1D2F8    
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0188(s0)             # 00000188
lbl_80A1D2F8:
    lw      t8, 0x0670(a2)             # 00000670
    lw      a1, 0x002C($sp)            
    andi    t9, t8, 0x0080             # t9 = 00000000
    bnel    t9, $zero, lbl_80A1D328    
    lw      t1, 0x0024(s0)             # 00000024
    jal     func_80A1EEEC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80A1D3CC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1D3BC 
    lw      $ra, 0x001C($sp)           
    lw      t1, 0x0024(s0)             # 00000024
lbl_80A1D328:
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    lui     t4, 0x8012                 # t4 = 80120000
    sw      t1, 0x0024(a2)             # 00000024
    lw      t0, 0x0028(s0)             # 00000028
    sw      t0, 0x0028(a2)             # 00000028
    lw      t1, 0x002C(s0)             # 0000002C
    sw      t1, 0x002C(a2)             # 0000002C
    lh      t2, 0x0188(s0)             # 00000188
    bnel    t2, $zero, lbl_80A1D3A0    
    lw      a0, 0x0020($sp)            
    sh      t3, 0x0188(s0)             # 00000188
    lw      t4, -0x5A2C(t4)            # 8011A5D4
    addiu   a1, $zero, 0x6825          # a1 = 00006825
    or      a0, a2, $zero              # a0 = 00000000
    beq     t4, $zero, lbl_80A1D378    
    nop
    jal     func_80022F84              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1D384 
    lw      a0, 0x002C($sp)            
lbl_80A1D378:
    jal     func_80022F84              
    addiu   a1, $zero, 0x6805          # a1 = 00006805
    lw      a0, 0x002C($sp)            
lbl_80A1D384:
    lui     t9, 0x0001                 # t9 = 00010000
    addiu   a1, $zero, 0xFFF8          # a1 = FFFFFFF8
    addu    t9, t9, a0                 
    lw      t9, 0x1D58(t9)             # 00011D58
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0020($sp)            
lbl_80A1D3A0:
    jal     func_8008D6A8              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_80A1D3B8    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3965          # a1 = 00003965
lbl_80A1D3B8:
    lw      $ra, 0x001C($sp)           
lbl_80A1D3BC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1D3CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22CE4)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_80A1D41C)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1D41C) # t8 = 80A1D41C
    sw      t8, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1D41C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80A1D44C    
    lw      $ra, 0x0014($sp)           
    jal     func_80A1B9D0              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A1D44C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1D458:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    addiu   t6, $zero, 0xC000          # t6 = FFFFC000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t6, 0x0192(a1)             # 00000192
    sh      t7, 0x0188(a1)             # 00000188
    lh      a0, 0x00B6(a1)             # 000000B6
    jal     func_800636C4              # sins?
    sw      a1, 0x0018($sp)            
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lw      a1, 0x0018($sp)            
    mul.s   $f8, $f0, $f6              
    lwc1    $f4, 0x0024(a1)            # 00000024
    lwc1    $f16, 0x0028(a1)           # 00000028
    lh      a0, 0x00B6(a1)             # 000000B6
    swc1    $f16, 0x03BC(a1)           # 000003BC
    sub.s   $f10, $f4, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x03B8(a1)           # 000003B8
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lw      a1, 0x0018($sp)            
    lui     t8, %hi(func_80A1D4E0)     # t8 = 80A20000
    mul.s   $f4, $f0, $f6              
    lwc1    $f18, 0x002C(a1)           # 0000002C
    addiu   t8, t8, %lo(func_80A1D4E0) # t8 = 80A1D4E0
    sw      t8, 0x0180(a1)             # 00000180
    sub.s   $f8, $f18, $f4             
    swc1    $f8, 0x03C0(a1)            # 000003C0
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A1D4E0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      s1, 0x0020($sp)            
    sw      a1, 0x0034($sp)            
    lh      a2, 0x0188(s0)             # 00000188
    lw      t6, 0x0034($sp)            
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addu    $at, a2, $zero             
    sll     a2, a2,  3                 
    subu    a2, a2, $at                
    sll     a2, a2,  3                 
    addu    a2, a2, $at                
    sll     a2, a2,  2                 
    addiu   a2, a2, 0x01C8             # a2 = 000001C8
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    lh      a1, 0x0192(s0)             # 00000192
    jal     func_80063704              
    lw      s1, 0x1C44(t6)             # 00001C44
    beql    v0, $zero, lbl_80A1D5D4    
    lh      a0, 0x00B4(s0)             # 000000B4
    lh      t7, 0x0192(s0)             # 00000192
    beql    t7, $zero, lbl_80A1D584    
    lh      v0, 0x0188(s0)             # 00000188
    lh      t8, 0x0188(s0)             # 00000188
    addiu   $at, $zero, 0x0004         # $at = 00000004
    sh      $zero, 0x0192(s0)          # 00000192
    bne     t8, $at, lbl_80A1D5D0      
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t9, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    lui     a2, 0x4080                 # a2 = 40800000
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    jal     func_8008D21C              
    lw      a1, %lo(var_80A22CE4)(a1)  
    beq     $zero, $zero, lbl_80A1D5D4 
    lh      a0, 0x00B4(s0)             # 000000B4
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1D584:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $at, lbl_80A1D5AC      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sh      $zero, 0x00B4(s1)          # 000000B4
    jal     func_80A1B9D0              
    sh      $zero, 0x00B8(s1)          # 000000B8
    beq     $zero, $zero, lbl_80A1D804 
    lw      $ra, 0x0024($sp)           
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80A1D5AC:
    bne     v0, $at, lbl_80A1D5C0      
    addiu   t2, $zero, 0xC000          # t2 = FFFFC000
    addiu   t1, $zero, 0xA000          # t1 = FFFFA000
    beq     $zero, $zero, lbl_80A1D5C4 
    sh      t1, 0x0192(s0)             # 00000192
lbl_80A1D5C0:
    sh      t2, 0x0192(s0)             # 00000192
lbl_80A1D5C4:
    lh      t3, 0x0188(s0)             # 00000188
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x0188(s0)             # 00000188
lbl_80A1D5D0:
    lh      a0, 0x00B4(s0)             # 000000B4
lbl_80A1D5D4:
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f8, 0x03BC(s0)            # 000003BC
    lh      a0, 0x00B4(s0)             # 000000B4
    mul.s   $f6, $f0, $f4              
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    add.s   $f10, $f6, $f8             
    jal     func_800636C4              # sins?
    swc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    nop
    mul.s   $f18, $f0, $f16            
    swc1    $f18, 0x0028($sp)          
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f4, 0x0028($sp)           
    lwc1    $f8, 0x03B8(s0)            # 000003B8
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f6, $f0, $f4              
    add.s   $f10, $f6, $f8             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x0028($sp)          
    lwc1    $f4, 0x03C0(s0)            # 000003C0
    lh      t5, 0x0188(s0)             # 00000188
    mul.s   $f18, $f0, $f16            
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    or      a1, $zero, $zero           # a1 = 00000000
    add.s   $f6, $f18, $f4             
    beq     t5, $at, lbl_80A1D690      
    swc1    $f6, 0x002C(s0)            # 0000002C
    lh      t6, 0x00B4(s0)             # 000000B4
    lb      t8, 0x0184(s0)             # 00000184
    addiu   t7, t6, 0x4000             # t7 = 00004000
    multu   t7, t8                     
    mflo    t9                         
    sh      t9, 0x00B8(s0)             # 000000B8
    beq     $zero, $zero, lbl_80A1D69C 
    lw      t0, 0x0670(s1)             # 00000670
lbl_80A1D690:
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    lw      t0, 0x0670(s1)             # 00000670
lbl_80A1D69C:
    addiu   a0, s1, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    andi    t1, t0, 0x0080             # t1 = 00000000
    beq     t1, $zero, lbl_80A1D6E4    
    nop
    sh      $zero, 0x0840(s1)          # 00000840
    addiu   a0, s1, 0x0024             # a0 = 00000024
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lh      t2, 0x00B4(s0)             # 000000B4
    sh      t2, 0x00B4(s1)             # 000000B4
    lb      t3, 0x0184(s0)             # 00000184
    lh      t5, 0x00B8(s0)             # 000000B8
    subu    $at, $zero, t3             
    sll     t4, $at, 14                
    addu    t6, t4, t5                 
    beq     $zero, $zero, lbl_80A1D73C 
    sh      t6, 0x00B8(s1)             # 000000B8
lbl_80A1D6E4:
    jal     func_80063704              
    addiu   a2, $zero, 0x0600          # a2 = 00000600
    addiu   a0, s1, 0x00B8             # a0 = 000000B8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0600          # a2 = 00000600
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x0024(s1)            # 00000024
    mul.s   $f16, $f10, $f0            
    add.s   $f18, $f8, $f16            
    swc1    $f18, 0x0024(s1)           # 00000024
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x002C(s1)            # 0000002C
    mul.s   $f10, $f6, $f0             
    add.s   $f8, $f4, $f10             
    swc1    $f8, 0x002C(s1)            # 0000002C
lbl_80A1D73C:
    lh      t7, 0x0188(s0)             # 00000188
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t7, $at, lbl_80A1D7F8      
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x0192(s0)             # 00000192
    bnel    t8, $zero, lbl_80A1D7F8    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_80A1D7F8    
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0670(s1)             # 00000670
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)            
    andi    t0, t9, 0x0080             # t0 = 00000000
    beql    t0, $zero, lbl_80A1D7F8    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1EEEC              
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f18                  # $f18 = 70.00
    lwc1    $f16, 0x0024(s1)           # 00000024
    mul.s   $f6, $f18, $f0             
    add.s   $f4, $f16, $f6             
    swc1    $f4, 0x0024(s1)            # 00000024
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f8                   # $f8 = 70.00
    lwc1    $f10, 0x002C(s1)           # 0000002C
    lui     $at, 0x4000                # $at = 40000000
    mul.s   $f18, $f8, $f0             
    mtc1    $at, $f6                   # $f6 = 2.00
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4170                 # a2 = 41700000
    add.s   $f16, $f10, $f18           
    swc1    $f16, 0x002C(s1)           # 0000002C
    lh      a3, 0x00B6(s0)             # 000000B6
    lw      a0, 0x0034($sp)            
    jal     func_80022EC4              
    swc1    $f6, 0x0010($sp)           
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022F84              
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A1D7F8:
    jal     func_8002313C              
    addiu   a1, $zero, 0x3167          # a1 = 00003167
    lw      $ra, 0x0024($sp)           
lbl_80A1D804:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A1D814:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t7, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lh      t9, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    lw      a1, %lo(var_80A22CE4)(a1)  
    jal     func_8008D21C              
    lui     a2, 0x4080                 # a2 = 40800000
    addiu   t1, $zero, 0x0024          # t1 = 00000024
    sh      t1, 0x0188(s0)             # 00000188
    addiu   a0, s0, 0x03B8             # a0 = 000003B8
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   t2, $zero, 0x00C8          # t2 = 000000C8
    sw      t2, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t3, %hi(func_80A1D8AC)     # t3 = 80A20000
    addiu   t3, t3, %lo(func_80A1D8AC) # t3 = 80A1D8AC
    sw      t3, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1D8AC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0020($sp)            
    lh      v0, 0x0188(s0)             # 00000188
    lw      a0, 0x0020($sp)            
    beq     v0, $zero, lbl_80A1D8E4    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1D8E4:
    bgez    v0, lbl_80A1D8F8           
    andi    t7, v0, 0x0003             # t7 = 00000000
    beq     t7, $zero, lbl_80A1D8F8    
    nop
    addiu   t7, t7, 0xFFFC             # t7 = FFFFFFFC
lbl_80A1D8F8:
    bnel    t7, $zero, lbl_80A1D960    
    lui     $at, 0x41A0                # $at = 41A00000
    bgez    v0, lbl_80A1D914           
    andi    t8, v0, 0x0007             # t8 = 00000000
    beq     t8, $zero, lbl_80A1D914    
    nop
    addiu   t8, t8, 0xFFF8             # t8 = FFFFFFF8
lbl_80A1D914:
    beql    t8, $zero, lbl_80A1D944    
    lh      t1, 0x001C(s0)             # 0000001C
    lh      t9, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    lui     a2, 0x4080                 # a2 = 40800000
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    jal     func_8008D21C              
    lw      a1, %lo(var_80A22CE4)(a1)  
    beq     $zero, $zero, lbl_80A1D960 
    lui     $at, 0x41A0                # $at = 41A00000
    lh      t1, 0x001C(s0)             # 0000001C
lbl_80A1D944:
    lui     a1, %hi(var_80A22CF4)      # a1 = 80A20000
    lui     a2, 0x40C0                 # a2 = 40C00000
    sll     t2, t1,  2                 
    addu    a1, a1, t2                 
    jal     func_8008D21C              
    lw      a1, %lo(var_80A22CF4)(a1)  
    lui     $at, 0x41A0                # $at = 41A00000
lbl_80A1D960:
    addiu   t3, $zero, 0x00C8          # t3 = 000000C8
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90              
    sb      t3, 0x0114(s0)             # 00000114
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f6, $f4, $f0              
    jal     func_80026D90              
    swc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f10, $f8, $f0             
    jal     func_80026D90              
    swc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0080(s0)            # 00000080
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    add.s   $f2, $f4, $f6              
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f18, $f16, $f0            
    c.lt.s  $f8, $f2                   
    swc1    $f18, 0x002C(s0)           # 0000002C
    bc1fl   lbl_80A1D9E0               
    lh      t4, 0x0188(s0)             # 00000188
    mfc1    a1, $f2                    
    jal     func_8006385C              
    lui     a2, 0x41A0                 # a2 = 41A00000
    lh      t4, 0x0188(s0)             # 00000188
lbl_80A1D9E0:
    bnel    t4, $zero, lbl_80A1D9F4    
    lw      $ra, 0x001C($sp)           
    jal     func_80A1DA04              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A1D9F4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1DA04:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22D04)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22D04)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4100                 # a2 = 41000000
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_80A1DA54)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1DA54) # t8 = 80A1DA54
    sw      t8, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1DA54:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0028($sp)            
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x0034($sp)            
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      a1, 0x0008(s0)             # 00000008
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lw      a1, 0x0010(s0)             # 00000010
    mov.s   $f20, $f0                  
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    jal     func_80064178              
    swc1    $f6, 0x0010($sp)           
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    add.s   $f16, $f8, $f10            
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    add.s   $f20, $f20, $f0            
    mfc1    a1, $f16                   
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80064178              
    swc1    $f18, 0x0010($sp)          
    add.s   $f20, $f20, $f0            
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    jal     func_80063704              
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    or      s1, v0, $zero              # s1 = 00000000
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x1000          # a2 = 00001000
    and     s1, s1, v0                 
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0016(s0)             # 00000016
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    and     s1, s1, v0                 
    addiu   a0, s0, 0x018E             # a0 = 0000018E
    addiu   a1, $zero, 0xFA24          # a1 = FFFFFA24
    jal     func_800637D4              
    addiu   a2, $zero, 0x01F4          # a2 = 000001F4
    lb      a1, 0x0184(s0)             # 00000184
    and     s1, s1, v0                 
    addiu   a0, s0, 0x0190             # a0 = 00000190
    subu    $at, $zero, a1             
    or      a1, $at, $zero             # a1 = 00000000
    sll     a1, a1, 29                 
    sra     a1, a1, 16                 
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    and     s1, s1, v0                 
    c.lt.s  $f20, $f4                  
    sb      t6, 0x0114(s0)             # 00000114
    or      a0, s0, $zero              # a0 = 00000000
    bc1f    lbl_80A1DB9C               
    nop
    beq     s1, $zero, lbl_80A1DB9C    
    nop
    jal     func_80A1DBBC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1DBA8 
    lw      $ra, 0x002C($sp)           
lbl_80A1DB9C:
    jal     func_8002313C              
    addiu   a1, $zero, 0x3167          # a1 = 00003167
    lw      $ra, 0x002C($sp)           
lbl_80A1DBA8:
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A1DBBC:
    lui     t7, %hi(func_80A1DBD8)     # t7 = 80A20000
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    addiu   t7, t7, %lo(func_80A1DBD8) # t7 = 80A1DBD8
    sh      t6, 0x0188(a0)             # 00000188
    sw      t7, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_80A1DBD8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      v0, 0x0188(s0)             # 00000188
    beq     v0, $zero, lbl_80A1DC08    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1DC08:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A22DE8)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A22DE8)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    lui     $at, 0x4600                # $at = 46000000
    mtc1    $at, $f10                  # $f10 = 8192.00
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f18                  # $f18 = 16384.00
    mul.s   $f16, $f0, $f10            
    lh      t9, 0x0188(s0)             # 00000188
    lui     $at, %hi(var_80A22DEC)     # $at = 80A20000
    mtc1    t9, $f8                    # $f8 = 0.00
    add.s   $f4, $f16, $f18            
    cvt.s.w $f10, $f8                  
    trunc.w.s $f6, $f4                   
    mfc1    t8, $f6                    
    nop
    sh      t8, 0x00B4(s0)             # 000000B4
    lwc1    $f16, %lo(var_80A22DEC)($at) 
    mul.s   $f12, $f10, $f16           
    jal     func_800CF470              
    nop
    lb      t0, 0x0184(s0)             # 00000184
    lui     $at, 0x4620                # $at = 46200000
    mtc1    $at, $f18                  # $f18 = 10240.00
    subu    $at, $zero, t0             
    sll     t1, $at, 13                
    mtc1    t1, $f6                    # $f6 = 0.00
    mul.s   $f4, $f0, $f18             
    lh      t4, 0x0188(s0)             # 00000188
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f8, $f6                   
    add.s   $f10, $f4, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t3, $f16                   
    nop
    sh      t3, 0x0190(s0)             # 00000190
    bgez    t4, lbl_80A1DCBC           
    andi    t5, t4, 0x0007             # t5 = 00000000
    beq     t5, $zero, lbl_80A1DCBC    
    nop
    addiu   t5, t5, 0xFFF8             # t5 = FFFFFFF8
lbl_80A1DCBC:
    bnel    t5, $zero, lbl_80A1DCD0    
    lw      v0, 0x011C(s0)             # 0000011C
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3968          # a1 = 00003968
    lw      v0, 0x011C(s0)             # 0000011C
lbl_80A1DCD0:
    lui     t8, %hi(var_80A228FC)      # t8 = 80A20000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lh      t6, 0x001C(v0)             # 0000001C
    sll     t7, t6,  2                 
    addu    t8, t8, t7                 
    lw      t8, %lo(var_80A228FC)(t8)  
    bnel    t8, $at, lbl_80A1DD3C      
    lh      t3, 0x0188(s0)             # 00000188
    lw      v1, 0x0180(v0)             # 00000180
    lui     t9, %hi(func_80A1DBD8)     # t9 = 80A20000
    addiu   t9, t9, %lo(func_80A1DBD8) # t9 = 80A1DBD8
    beq     t9, v1, lbl_80A1DD10       
    lui     t0, %hi(func_80A1DDC0)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A1DDC0) # t0 = 80A1DDC0
    bnel    t0, v1, lbl_80A1DD24       
    lh      t1, 0x0188(s0)             # 00000188
lbl_80A1DD10:
    jal     func_80A1DD6C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1DD5C 
    lw      $ra, 0x001C($sp)           
    lh      t1, 0x0188(s0)             # 00000188
lbl_80A1DD24:
    addiu   t2, $zero, 0x0050          # t2 = 00000050
    bnel    t1, $zero, lbl_80A1DD5C    
    lw      $ra, 0x001C($sp)           
    beq     $zero, $zero, lbl_80A1DD58 
    sh      t2, 0x0188(s0)             # 00000188
    lh      t3, 0x0188(s0)             # 00000188
lbl_80A1DD3C:
    bnel    t3, $zero, lbl_80A1DD5C    
    lw      $ra, 0x001C($sp)           
    lw      t4, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    ori     t5, t4, 0x0001             # t5 = 00000001
    jal     func_80A1BE00              
    sw      t5, 0x0004(s0)             # 00000004
lbl_80A1DD58:
    lw      $ra, 0x001C($sp)           
lbl_80A1DD5C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1DD6C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CF4)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22CF4)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_80A1DDC0)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1DDC0) # t8 = 80A1DDC0
    sb      $zero, 0x0185(a3)          # 00000185
    sw      t8, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1DDC0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lb      t6, 0x0185(s0)             # 00000185
    bnel    t6, $zero, lbl_80A1DEBC    
    lbu     t1, 0x03D4(s0)             # 000003D4
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sb      v0, 0x0185(s0)             # 00000185
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    lb      t2, 0x0184(s0)             # 00000184
    lh      t9, 0x0016(s0)             # 00000016
    lb      t7, 0x0185(s0)             # 00000185
    sll     t3, t2, 12                 
    addu    a1, t9, t3                 
    sll     a1, a1, 16                 
    and     t8, t7, v0                 
    sb      t8, 0x0185(s0)             # 00000185
    sra     a1, a1, 16                 
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    lb      t4, 0x0185(s0)             # 00000185
    addiu   a0, s0, 0x0190             # a0 = 00000190
    or      a1, $zero, $zero           # a1 = 00000000
    and     t5, t4, v0                 
    sb      t5, 0x0185(s0)             # 00000185
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    lb      a1, 0x0184(s0)             # 00000184
    lb      t6, 0x0185(s0)             # 00000185
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    addu    $at, a1, $zero             
    sll     a1, a1,  2                 
    addu    a1, a1, $at                
    sll     a1, a1, 11                 
    sll     a1, a1, 16                 
    and     t7, t6, v0                 
    sb      t7, 0x0185(s0)             # 00000185
    sra     a1, a1, 16                 
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    lb      t8, 0x0185(s0)             # 00000185
    addiu   a0, s0, 0x018E             # a0 = 0000018E
    addiu   a1, $zero, 0xF254          # a1 = FFFFF254
    and     t2, t8, v0                 
    sb      t2, 0x0185(s0)             # 00000185
    jal     func_800637D4              
    addiu   a2, $zero, 0x01F4          # a2 = 000001F4
    lb      t9, 0x0185(s0)             # 00000185
    and     t3, t9, v0                 
    sb      t3, 0x0185(s0)             # 00000185
    lb      t4, 0x0185(s0)             # 00000185
    beql    t4, $zero, lbl_80A1DF28    
    lw      $ra, 0x0024($sp)           
    beq     $zero, $zero, lbl_80A1DF24 
    sb      $zero, 0x0114(s0)          # 00000114
    lbu     t1, 0x03D4(s0)             # 000003D4
lbl_80A1DEBC:
    andi    t5, t1, 0x0002             # t5 = 00000000
    beql    t5, $zero, lbl_80A1DF28    
    lw      $ra, 0x0024($sp)           
    lw      v0, 0x011C(s0)             # 0000011C
    andi    t6, t1, 0xFFFC             # t6 = 00000000
    sb      t6, 0x03D4(s0)             # 000003D4
    lbu     t7, 0x03D4(v0)             # 000003D4
    lui     v1, %hi(var_80A24010)      # v1 = 80A20000
    lui     $at, 0x40A0                # $at = 40A00000
    andi    t8, t7, 0xFFFC             # t8 = 00000000
    sb      t8, 0x03D4(v0)             # 000003D4
    lw      v1, %lo(var_80A24010)(v1)  
    mtc1    $at, $f4                   # $f4 = 5.00
    or      a1, s0, $zero              # a1 = 00000000
    lbu     t2, 0x03D4(v1)             # 80A203D4
    lui     a2, 0x4120                 # a2 = 41200000
    andi    t9, t2, 0xFFFC             # t9 = 00000000
    sb      t9, 0x03D4(v1)             # 80A203D4
    lh      a3, 0x00B6(s0)             # 000000B6
    lw      a0, 0x002C($sp)            
    jal     func_80022EC4              
    swc1    $f4, 0x0010($sp)           
    lw      t3, 0x002C($sp)            
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    jal     func_80022F84              
    lw      a0, 0x1C44(t3)             # 00001C44
lbl_80A1DF24:
    lw      $ra, 0x0024($sp)           
lbl_80A1DF28:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1DF38:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A22CDC)      # a1 = 80A20000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22CDC)(a1)  
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    lw      t9, 0x0180(s0)             # 00000180
    lui     t8, %hi(func_80A1E19C)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1E19C) # t8 = 80A1E19C
    beq     t8, t9, lbl_80A1DF80       
    or      a0, s0, $zero              # a0 = 00000000
    sb      $zero, 0x0185(s0)          # 00000185
lbl_80A1DF80:
    lbu     t0, 0x03D4(s0)             # 000003D4
    lbu     t2, 0x03D5(s0)             # 000003D5
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    andi    t1, t0, 0xFFFC             # t1 = 00000000
    ori     t3, t2, 0x0001             # t3 = 00000001
    sb      t1, 0x03D4(s0)             # 000003D4
    jal     func_80A1F264              
    sb      t3, 0x03D5(s0)             # 000003D5
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194              
    addiu   a0, a0, 0xB6FC             # a0 = 0600B6FC
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090              
    sw      v0, 0x0010($sp)            
    lui     t4, %hi(func_80A1DFE4)     # t4 = 80A20000
    addiu   t4, t4, %lo(func_80A1DFE4) # t4 = 80A1DFE4
    sw      t4, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1DFE4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x0020($sp)            
    lui     t6, %hi(var_80A24010)      # t6 = 80A20000
    lw      t6, %lo(var_80A24010)(t6)  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(t6)             # 80A200B6
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f8, 0x0010(s0)            # 00000010
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    mul.s   $f6, $f0, $f4              
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    add.s   $f10, $f6, $f8             
    mfc1    a1, $f10                   
    jal     func_80064280              
    nop
    lui     t7, %hi(var_80A24010)      # t7 = 80A20000
    lw      t7, %lo(var_80A24010)(t7)  
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(t7)             # 80A200B6
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lwc1    $f4, 0x0008(s0)            # 00000008
    addiu   a0, s0, 0x0024             # a0 = 00000024
    mul.s   $f18, $f0, $f16            
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    add.s   $f6, $f18, $f4             
    mfc1    a1, $f6                    
    jal     func_80064280              
    nop
    lb      t8, 0x0185(s0)             # 00000185
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a0, s0, 0x0028             # a0 = 00000028
    bne     t8, $zero, lbl_80A1E124    
    lui     a2, 0x41F0                 # a2 = 41F00000
    addiu   a0, s0, 0x0190             # a0 = 00000190
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    addiu   a0, s0, 0x018E             # a0 = 0000018E
    addiu   a1, $zero, 0xF254          # a1 = FFFFF254
    jal     func_800637D4              
    addiu   a2, $zero, 0x01F4          # a2 = 000001F4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lh      a1, 0x0014(s0)             # 00000014
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    lh      a1, 0x0018(s0)             # 00000018
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0016(s0)             # 00000016
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    lui     t0, %hi(var_80A24010)      # t0 = 80A20000
    lw      t0, %lo(var_80A24010)(t0)  
    lui     t9, %hi(func_80A19D7C)     # t9 = 80A20000
    addiu   t9, t9, %lo(func_80A19D7C) # t9 = 80A19D7C
    lw      t1, 0x0180(t0)             # 80A20180
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     a1, %hi(var_80A22D04)      # a1 = 80A20000
    bne     t9, t1, lbl_80A1E12C       
    lui     a2, 0x4120                 # a2 = 41200000
    lh      t3, 0x001C(s0)             # 0000001C
    sb      t2, 0x0185(s0)             # 00000185
    lw      a0, 0x0020($sp)            
    sll     t4, t3,  2                 
    addu    a1, a1, t4                 
    jal     func_8008D21C              
    lw      a1, %lo(var_80A22D04)(a1)  
    beq     $zero, $zero, lbl_80A1E130 
    lw      $ra, 0x001C($sp)           
lbl_80A1E124:
    jal     func_8006385C              
    lw      a1, 0x0080(s0)             # 00000080
lbl_80A1E12C:
    lw      $ra, 0x001C($sp)           
lbl_80A1E130:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E140:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CEC)      # a1 = 80A20000
    sh      $zero, 0x00B4(a3)          # 000000B4
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22CEC)(a1)  
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4040                 # a2 = 40400000
    lw      a3, 0x0018($sp)            
    lui     t9, %hi(func_80A1E19C)     # t9 = 80A20000
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    addiu   t9, t9, %lo(func_80A1E19C) # t9 = 80A1E19C
    sh      t8, 0x0188(a3)             # 00000188
    sw      t9, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E19C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      v0, 0x0188(s0)             # 00000188
    beq     v0, $zero, lbl_80A1E1C0    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(s0)             # 00000188
lbl_80A1E1C0:
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t7, 0x0188(s0)             # 00000188
    addiu   a0, s0, 0x0028             # a0 = 00000028
    slti    $at, t7, 0x0002            
    bne     $at, $zero, lbl_80A1E210   
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0080(s0)            # 00000080
    lh      t8, 0x00B4(s0)             # 000000B4
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f8, $f4, $f6              
    addiu   t9, t8, 0xFE00             # t9 = FFFFFE00
    sh      t9, 0x00B4(s0)             # 000000B4
    lui     a2, 0x4248                 # a2 = 42480000
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    beq     $zero, $zero, lbl_80A1E22C 
    lh      t2, 0x0188(s0)             # 00000188
lbl_80A1E210:
    lh      t0, 0x00B4(s0)             # 000000B4
    lw      a1, 0x0080(s0)             # 00000080
    lui     a2, 0x42C8                 # a2 = 42C80000
    addiu   t1, t0, 0x0400             # t1 = 00000400
    jal     func_8006385C              
    sh      t1, 0x00B4(s0)             # 000000B4
    lh      t2, 0x0188(s0)             # 00000188
lbl_80A1E22C:
    bnel    t2, $zero, lbl_80A1E264    
    lw      $ra, 0x001C($sp)           
    lwc1    $f10, 0x0080(s0)           # 00000080
    mtc1    $zero, $f16                # $f16 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f16, $f10                 
    nop
    bc1f    lbl_80A1E258               
    nop
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3951          # a1 = 00003951
lbl_80A1E258:
    jal     func_80A1DF38              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A1E264:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E274:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t7, 0x001C(a3)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lh      t9, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CEC)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    lw      a1, %lo(var_80A22CEC)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4000                 # a2 = 40000000
    lw      a3, 0x0018($sp)            
    addiu   t1, $zero, 0x00A0          # t1 = 000000A0
    addiu   t5, $zero, 0x0180          # t5 = 00000180
    lh      t2, 0x001C(a3)             # 0000001C
    lui     t7, %hi(func_80A1E310)     # t7 = 80A20000
    sh      $zero, 0x00B4(a3)          # 000000B4
    bne     t2, $zero, lbl_80A1E2E8    
    sh      t1, 0x0188(a3)             # 00000188
    addiu   t3, $zero, 0xF800          # t3 = FFFFF800
    beq     $zero, $zero, lbl_80A1E2F4 
    sh      t3, 0x0192(a3)             # 00000192
lbl_80A1E2E8:
    addiu   t4, $zero, 0xF800          # t4 = FFFFF800
    sh      $zero, 0x0192(a3)          # 00000192
    sh      t4, 0x00B4(a3)             # 000000B4
lbl_80A1E2F4:
    addiu   t7, t7, %lo(func_80A1E310) # t7 = 80A1E310
    sh      t5, 0x018A(a3)             # 0000018A
    sw      t7, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E310:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      v0, 0x0188(s0)             # 00000188
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80A1E338    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(s0)             # 00000188
lbl_80A1E338:
    jal     func_8008C9C0              
    sw      a0, 0x0020($sp)            
    lui     t7, %hi(var_80A24010)      # t7 = 80A20000
    lw      t7, %lo(var_80A24010)(t7)  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(t7)             # 80A200B6
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f8, 0x0010(s0)            # 00000010
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    mul.s   $f6, $f0, $f4              
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    add.s   $f10, $f6, $f8             
    mfc1    a1, $f10                   
    jal     func_80064280              
    nop
    lui     t8, %hi(var_80A24010)      # t8 = 80A20000
    lw      t8, %lo(var_80A24010)(t8)  
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(t8)             # 80A200B6
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lwc1    $f4, 0x0008(s0)            # 00000008
    addiu   a0, s0, 0x0024             # a0 = 00000024
    mul.s   $f18, $f0, $f16            
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    add.s   $f6, $f18, $f4             
    mfc1    a1, $f6                    
    jal     func_80064280              
    nop
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lh      a1, 0x0192(s0)             # 00000192
    jal     func_80063704              
    lh      a2, 0x018A(s0)             # 0000018A
    beql    v0, $zero, lbl_80A1E490    
    lh      t9, 0x018A(s0)             # 0000018A
    lh      t9, 0x0192(s0)             # 00000192
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    lui     a2, 0x40A0                 # a2 = 40A00000
    beq     t9, $zero, lbl_80A1E408    
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x001C(s0)             # 0000001C
    sh      $zero, 0x0192(s0)          # 00000192
    lw      a0, 0x0020($sp)            
    sll     t1, t0,  2                 
    addu    a1, a1, t1                 
    jal     func_8008D21C              
    lw      a1, %lo(var_80A22CE4)(a1)  
    beq     $zero, $zero, lbl_80A1E43C 
    lh      t5, 0x0188(s0)             # 00000188
lbl_80A1E408:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3951          # a1 = 00003951
    lh      t3, 0x001C(s0)             # 0000001C
    addiu   t2, $zero, 0xF800          # t2 = FFFFF800
    lui     a1, %hi(var_80A22CEC)      # a1 = 80A20000
    sll     t4, t3,  2                 
    sh      t2, 0x0192(s0)             # 00000192
    addu    a1, a1, t4                 
    lw      a1, %lo(var_80A22CEC)(a1)  
    lw      a0, 0x0020($sp)            
    jal     func_8008D21C              
    lui     a2, 0x40A0                 # a2 = 40A00000
    lh      t5, 0x0188(s0)             # 00000188
lbl_80A1E43C:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f16                  # $f16 = 80.00
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.lt.s  $f10, $f16                 
    nop
    bc1fl   lbl_80A1E490               
    lh      t9, 0x018A(s0)             # 0000018A
    lh      t6, 0x018A(s0)             # 0000018A
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t7, t6, 0xFFC0             # t7 = FFFFFFC0
    sh      t7, 0x018A(s0)             # 0000018A
    lh      v0, 0x018A(s0)             # 0000018A
    slti    $at, v0, 0x0040            
    beql    $at, $zero, lbl_80A1E48C   
    sh      v0, 0x018A(s0)             # 0000018A
    beq     $zero, $zero, lbl_80A1E48C 
    sh      t8, 0x018A(s0)             # 0000018A
    sh      v0, 0x018A(s0)             # 0000018A
lbl_80A1E48C:
    lh      t9, 0x018A(s0)             # 0000018A
lbl_80A1E490:
    lui     $at, 0x3B80                # $at = 3B800000
    mtc1    $at, $f6                   # $f6 = 0.00
    mtc1    t9, $f18                   # $f18 = 0.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    cvt.s.w $f4, $f18                  
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    lh      t0, 0x00B4(s0)             # 000000B4
    lui     $at, 0xBA00                # $at = BA000000
    lh      t1, 0x0188(s0)             # 00000188
    mul.s   $f8, $f4, $f6              
    mtc1    $at, $f6                   # $f6 = 0.00
    add.s   $f16, $f8, $f10            
    mtc1    t0, $f10                   # $f10 = 0.00
    mul.s   $f4, $f16, $f18            
    cvt.s.w $f16, $f10                 
    mul.s   $f8, $f4, $f6              
    nop
    mul.s   $f18, $f8, $f16            
    bne     t1, $zero, lbl_80A1E4F0    
    swc1    $f18, 0x0028(s0)           # 00000028
    jal     func_80A1E504              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A1E4F0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E504:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22CE4)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x40A0                 # a2 = 40A00000
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_80A1E554)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1E554) # t8 = 80A1E554
    sw      t8, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E554:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0xF800          # a1 = FFFFF800
    jal     func_80063704              
    lh      a2, 0x018A(s0)             # 0000018A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x42B4                 # a1 = 42B40000
    jal     func_8006385C              
    lui     a2, 0x40A0                 # a2 = 40A00000
    lui     t7, %hi(var_80A24010)      # t7 = 80A20000
    lw      t7, %lo(var_80A24010)(t7)  
    lui     t6, %hi(func_80A1AC44)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A1AC44) # t6 = 80A1AC44
    lw      t8, 0x0180(t7)             # 80A20180
    bnel    t6, t8, lbl_80A1E5B8       
    lw      $ra, 0x001C($sp)           
    jal     func_80A1E5C8              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A1E5B8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E5C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22CE4)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22CE4)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4040                 # a2 = 40400000
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_80A1E618)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1E618) # t8 = 80A1E618
    sw      t8, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E618:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0018($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    jal     func_80063704              
    addiu   a0, a0, 0x00B4             # a0 = 000000B4
    lui     v0, %hi(var_80A24010)      # v0 = 80A20000
    addiu   v0, v0, %lo(var_80A24010)  # v0 = 80A24010
    lw      t6, 0x0000(v0)             # 80A24010
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f6                   # $f6 = 230.00
    lwc1    $f4, 0x0028(t6)            # 00000028
    lw      a0, 0x0018($sp)            
    lui     t7, %hi(func_80A1AD30)     # t7 = 80A20000
    add.s   $f8, $f4, $f6              
    addiu   t7, t7, %lo(func_80A1AD30) # t7 = 80A1AD30
    swc1    $f8, 0x0028(a0)            # 00000028
    lw      t8, 0x0000(v0)             # 80A24010
    lw      t9, 0x0180(t8)             # 00000180
    bnel    t7, t9, lbl_80A1E690       
    lw      $ra, 0x0014($sp)           
    jal     func_80A1E69C              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A1E690:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E69C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80A20D84              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     t7, %hi(func_80A1E6D8)     # t7 = 80A20000
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    addiu   t7, t7, %lo(func_80A1E6D8) # t7 = 80A1E6D8
    sw      $zero, 0x00C0(a0)          # 000000C0
    sh      t6, 0x0188(a0)             # 00000188
    sw      t7, 0x0180(a0)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E6D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x0188(a0)             # 00000188
    lui     $at, %hi(var_80A22DF0)     # $at = 80A20000
    beq     v0, $zero, lbl_80A1E6FC    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(a0)             # 00000188
    lh      v0, 0x0188(a0)             # 00000188
lbl_80A1E6FC:
    lwc1    $f0, %lo(var_80A22DF0)($at) 
    lui     $at, %hi(var_80A22DF4)     # $at = 80A20000
    lwc1    $f6, %lo(var_80A22DF4)($at) 
    lwc1    $f4, 0x0054(a0)            # 00000054
    lwc1    $f10, 0x0050(a0)           # 00000050
    lwc1    $f18, 0x0058(a0)           # 00000058
    sub.s   $f8, $f4, $f6              
    mtc1    $zero, $f6                 # $f6 = 0.00
    add.s   $f16, $f10, $f0            
    swc1    $f8, 0x0054(a0)            # 00000054
    swc1    $f6, 0x0028(a0)            # 00000028
    add.s   $f4, $f18, $f0             
    swc1    $f16, 0x0050(a0)           # 00000050
    bne     v0, $zero, lbl_80A1E740    
    swc1    $f4, 0x0058(a0)            # 00000058
    jal     func_80A1E750              
    nop
lbl_80A1E740:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E750:
    lui     t6, %hi(func_80A21894)     # t6 = 80A20000
    lui     t8, %hi(func_80A1E77C)     # t8 = 80A20000
    addiu   t6, t6, %lo(func_80A21894) # t6 = 80A21894
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, t8, %lo(func_80A1E77C) # t8 = 80A1E77C
    sw      t6, 0x0134(a0)             # 00000134
    sh      t7, 0x0188(a0)             # 00000188
    sh      $zero, 0x0712(a0)          # 00000712
    sw      t8, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_80A1E77C:
    sw      a1, 0x0004($sp)            
    lh      v0, 0x0188(a0)             # 00000188
    beq     v0, $zero, lbl_80A1E794    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(a0)             # 00000188
    lh      v0, 0x0188(a0)             # 00000188
lbl_80A1E794:
    bne     v0, $zero, lbl_80A1E7A0    
    nop
    sb      $zero, 0x0186(a0)          # 00000186
lbl_80A1E7A0:
    jr      $ra                        
    nop


func_80A1E7A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80A22D0C)      # a1 = 80A20000
    sw      a3, 0x0018($sp)            
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    lw      a1, %lo(var_80A22D0C)(a1)  
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D21C              
    lui     a2, 0x4120                 # a2 = 41200000
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_80A1E7FC)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1E7FC) # t8 = 80A1E7FC
    sb      $zero, 0x0185(a3)          # 00000185
    sw      t8, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E7FC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a1, 0x437A                 # a1 = 437A0000
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x428C                 # a3 = 428C0000
    jal     func_80064178              
    swc1    $f4, 0x0010($sp)           
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x002C($sp)            
    beq     v0, $zero, lbl_80A1E874    
    lw      a0, 0x002C($sp)            
    lb      t6, 0x0185(s0)             # 00000185
    bnel    t6, $zero, lbl_80A1E878    
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A22D14)      # a1 = 80A20000
    lui     a2, 0x4120                 # a2 = 41200000
    sll     t8, t7,  2                 
    addu    a1, a1, t8                 
    jal     func_8008D21C              
    lw      a1, %lo(var_80A22D14)(a1)  
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x0185(s0)             # 00000185
lbl_80A1E874:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A1E878:
    jal     func_8002313C              
    addiu   a1, $zero, 0x3167          # a1 = 00003167
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E894:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t7, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    addiu   a0, s0, 0x03B8             # a0 = 000003B8
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s0, 0x0024             # a1 = 00000024
    jal     func_80A1EAC0              
    lw      a0, 0x011C(s0)             # 0000011C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0023          # t0 = 00000023
    sb      $zero, 0x0185(s0)          # 00000185
    sb      t9, 0x0186(s0)             # 00000186
    sh      t0, 0x0188(s0)             # 00000188
    sh      $zero, 0x0710(s0)          # 00000710
    sh      $zero, 0x0738(s0)          # 00000738
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    addiu   v0, s0, 0x0050             # v0 = 00000050
    addiu   a0, $zero, 0x0012          # a0 = 00000012
lbl_80A1E8F8:
    addiu   v1, v1, 0x0004             # v1 = 00000006
    sh      $zero, 0x0738(v0)          # 00000788
    sh      $zero, 0x0760(v0)          # 000007B0
    sh      $zero, 0x0788(v0)          # 000007D8
    addiu   v0, v0, 0x00A0             # v0 = 000000F0
    bne     v1, a0, lbl_80A1E8F8       
    sh      $zero, 0x0670(v0)          # 00000760
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A20F14              
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sw      t1, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t2, %hi(func_80A1E960)     # t2 = 80A20000
    addiu   t2, t2, %lo(func_80A1E960) # t2 = 80A1E960
    sh      $zero, 0x018A(s0)          # 0000018A
    sw      t2, 0x0180(s0)             # 00000180
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1E960:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      v0, 0x0188(s0)             # 00000188
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A1E98C    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1E98C:
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80A1E9A0    
    sra     a1, v0,  1                 
    jal     func_80A20F14              
    addiu   a1, a1, 0x0001             # a1 = 00000001
lbl_80A1E9A0:
    lb      t8, 0x0185(s0)             # 00000185
    beql    t8, $zero, lbl_80A1E9D4    
    lh      t2, 0x018A(s0)             # 0000018A
    jal     func_80A21424              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1B9D0              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t0, %hi(var_80A24010)      # t0 = 80A20000
    lw      t0, %lo(var_80A24010)(t0)  
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     $zero, $zero, lbl_80A1EAAC 
    sb      t9, 0x0185(t0)             # 80A20185
    lh      t2, 0x018A(s0)             # 0000018A
lbl_80A1E9D4:
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sb      t1, 0x0114(s0)             # 00000114
    beql    t2, $zero, lbl_80A1EAB0    
    lw      $ra, 0x001C($sp)           
    lw      t3, 0x011C(s0)             # 0000011C
    jal     func_800636C4              # sins?
    lh      a0, 0x00B4(t3)             # 000000B4
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lw      t4, 0x011C(s0)             # 0000011C
    mul.s   $f2, $f0, $f4              
    lh      a0, 0x00B4(t4)             # 000000B4
    jal     func_80063684              # coss?
    swc1    $f2, 0x0024($sp)           
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lh      t5, 0x018A(s0)             # 0000018A
    lwc1    $f2, 0x0024($sp)           
    mul.s   $f14, $f0, $f6             
    andi    t6, t5, 0x0001             # t6 = 00000000
    lui     $at, 0xBF80                # $at = BF800000
    beq     t6, $zero, lbl_80A1EA48    
    mov.s   $f12, $f14                 
    mtc1    $at, $f0                   # $f0 = -1.00
    nop
    mul.s   $f2, $f2, $f0              
    nop
    mul.s   $f12, $f14, $f0            
    nop
lbl_80A1EA48:
    lw      t7, 0x011C(s0)             # 0000011C
    lh      a0, 0x00B6(t7)             # 000000B6
    swc1    $f12, 0x0020($sp)          
    jal     func_80063684              # coss?
    swc1    $f2, 0x0024($sp)           
    lwc1    $f12, 0x0020($sp)          
    lwc1    $f2, 0x0024($sp)           
    lwc1    $f10, 0x03B8(s0)           # 000003B8
    mul.s   $f8, $f0, $f12             
    lwc1    $f18, 0x03BC(s0)           # 000003BC
    lw      t8, 0x011C(s0)             # 0000011C
    add.s   $f4, $f18, $f2             
    add.s   $f16, $f8, $f10            
    swc1    $f4, 0x0028(s0)            # 00000028
    swc1    $f16, 0x0024(s0)           # 00000024
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(t8)             # 000000B6
    lwc1    $f12, 0x0020($sp)          
    lwc1    $f8, 0x03C0(s0)            # 000003C0
    lh      t9, 0x018A(s0)             # 0000018A
    mul.s   $f6, $f0, $f12             
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x018A(s0)             # 0000018A
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x002C(s0)           # 0000002C
lbl_80A1EAAC:
    lw      $ra, 0x001C($sp)           
lbl_80A1EAB0:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1EAC0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t7, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80A228FC)     # $at = 80A20000
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sll     t8, t7,  2                 
    addu    $at, $at, t8               
    sw      t6, %lo(var_80A228FC)($at) 
    lh      t9, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A22CF4)      # a1 = 80A20000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    lw      a1, %lo(var_80A22CF4)(a1)  
    jal     func_8008D21C              
    lui     a2, 0x40A0                 # a2 = 40A00000
    lbu     t1, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sb      $zero, 0x0185(s0)          # 00000185
    bne     t1, $at, lbl_80A1EB20      
    sb      $zero, 0x0114(s0)          # 00000114
    sb      $zero, 0x0186(s0)          # 00000186
lbl_80A1EB20:
    lw      a1, 0x011C(s0)             # 0000011C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021528              
    addiu   a1, a1, 0x03B8             # a1 = 000003B8
    lw      a1, 0x011C(s0)             # 0000011C
    swc1    $f0, 0x03B4(s0)            # 000003B4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002140C              
    addiu   a1, a1, 0x03B8             # a1 = 000003B8
    sh      v0, 0x0194(s0)             # 00000194
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1F264              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     t2, %hi(func_80A1EB74)     # t2 = 80A20000
    addiu   t2, t2, %lo(func_80A1EB74) # t2 = 80A1EB74
    sw      t2, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1EB74:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s1, 0x0018($sp)            
    sw      a1, 0x0024($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0194(s0)             # 00000194
    jal     func_80063704              
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    or      s1, v0, $zero              # s1 = 00000000
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x1000          # a1 = 00001000
    jal     func_80063704              
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    and     s1, s1, v0                 
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    and     s1, s1, v0                 
    addiu   a0, s0, 0x0190             # a0 = 00000190
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704              
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    lw      t6, 0x011C(s0)             # 0000011C
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x03BC(t6)            # 000003BC
    and     s1, s1, v0                 
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f8, $f4, $f6              
    lui     a2, 0x4248                 # a2 = 42480000
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    and     s1, s1, v0                 
    addiu   a0, s0, 0x03B4             # a0 = 000003B4
    lui     a1, 0x43C8                 # a1 = 43C80000
    jal     func_8006385C              
    lui     a2, 0x4270                 # a2 = 42700000
    and     s1, s1, v0                 
    jal     func_800636C4              # sins?
    lh      a0, 0x0194(s0)             # 00000194
    lwc1    $f16, 0x03B4(s0)           # 000003B4
    lw      t7, 0x011C(s0)             # 0000011C
    lh      a0, 0x0194(s0)             # 00000194
    mul.s   $f18, $f0, $f16            
    lwc1    $f10, 0x03B8(t7)           # 000003B8
    sub.s   $f4, $f10, $f18            
    jal     func_80063684              # coss?
    swc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x03B4(s0)            # 000003B4
    lw      t8, 0x011C(s0)             # 0000011C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    mul.s   $f16, $f0, $f8             
    lwc1    $f6, 0x03C0(t8)            # 000003C0
    sub.s   $f10, $f6, $f16            
    jal     func_8008C9C0              
    swc1    $f10, 0x002C(s0)           # 0000002C
    beql    v0, $zero, lbl_80A1EC80    
    lw      $ra, 0x001C($sp)           
    beql    s1, $zero, lbl_80A1EC80    
    lw      $ra, 0x001C($sp)           
    jal     func_80A1EC90              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A1EC80:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A1EC90:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     t7, %hi(func_80A1ECB8)     # t7 = 80A20000
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   t7, t7, %lo(func_80A1ECB8) # t7 = 80A1ECB8
    sh      t6, 0x0188(a0)             # 00000188
    sw      t7, 0x0180(a0)             # 00000180
    swc1    $f4, 0x0068(a0)            # 00000068
    jr      $ra                        
    nop


func_80A1ECB8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x0188(s0)             # 00000188
    addiu   a0, s0, 0x03B4             # a0 = 000003B4
    lui     a1, 0x42C8                 # a1 = 42C80000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80A1ED70    
    lui     $at, %hi(var_80A22DF8)     # $at = 80A20000
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f2                   # $f2 = 60.00
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f6                   # $f6 = 1.50
    lwc1    $f4, 0x0068(s0)            # 00000068
    mul.s   $f8, $f4, $f6              
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A1ED20               
    swc1    $f0, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80A1ED20 
    swc1    $f2, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_80A1ED20:
    jal     func_8006385C              
    lw      a2, 0x0068(s0)             # 00000068
    beq     v0, $zero, lbl_80A1EDBC    
    nop
    jal     func_80A211D0              
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x0188(s0)             # 00000188
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A1ED50    
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0188(s0)             # 00000188
    lh      v0, 0x0188(s0)             # 00000188
lbl_80A1ED50:
    beql    v0, $zero, lbl_80A1ED64    
    lw      t0, 0x011C(s0)             # 0000011C
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28CB          # a1 = 000028CB
    lw      t0, 0x011C(s0)             # 0000011C
lbl_80A1ED64:
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    beq     $zero, $zero, lbl_80A1EDBC 
    sh      t9, 0x018A(t0)             # 0000018A
lbl_80A1ED70:
    lwc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f16, %lo(var_80A22DF8)($at) 
    addiu   a0, s0, 0x03B4             # a0 = 000003B4
    lui     a1, 0x43FA                 # a1 = 43FA0000
    mul.s   $f18, $f10, $f16           
    swc1    $f18, 0x0068(s0)           # 00000068
    jal     func_8006385C              
    lw      a2, 0x0068(s0)             # 00000068
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lwc1    $f4, 0x0068(s0)            # 00000068
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80A1EDBC               
    nop
    lh      v0, 0x0188(s0)             # 00000188
    beq     v0, $zero, lbl_80A1EDBC    
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0188(s0)             # 00000188
lbl_80A1EDBC:
    jal     func_800636C4              # sins?
    lh      a0, 0x0194(s0)             # 00000194
    lwc1    $f10, 0x03B4(s0)           # 000003B4
    lw      t2, 0x011C(s0)             # 0000011C
    lh      a0, 0x0194(s0)             # 00000194
    mul.s   $f16, $f0, $f10            
    lwc1    $f8, 0x03B8(t2)            # 000003B8
    sub.s   $f18, $f8, $f16            
    jal     func_80063684              # coss?
    swc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f2, 0x03B4(s0)            # 000003B4
    lw      v0, 0x011C(s0)             # 0000011C
    lui     $at, %hi(var_80A22DFC)     # $at = 80A20000
    mul.s   $f6, $f0, $f2              
    lwc1    $f4, 0x03C0(v0)            # 000003C0
    lh      t3, 0x0188(s0)             # 00000188
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    sub.s   $f10, $f4, $f6             
    swc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f16, %lo(var_80A22DFC)($at) 
    lwc1    $f8, 0x03BC(v0)            # 000003BC
    mul.s   $f18, $f2, $f16            
    add.s   $f4, $f8, $f18             
    bne     t3, $zero, lbl_80A1EE2C    
    swc1    $f4, 0x0028(s0)            # 00000028
    jal     func_80A1B9D0              
    sb      t4, 0x0185(v0)             # 00000185
lbl_80A1EE2C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x3167          # a1 = 00003167
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1EE4C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lw      a1, 0x1C44(a2)             # 00001C44
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, a2                 
    sw      a3, 0x0020($sp)            
    sw      a1, 0x001C($sp)            
    lw      t9, 0x1D4C(t9)             # 00011D4C
    or      a0, a2, $zero              # a0 = 00000000
    jalr    $ra, t9                    
    nop
    lw      a1, 0x001C($sp)            
    beq     v0, $zero, lbl_80A1EEDC    
    lw      a3, 0x0020($sp)            
    lbu     t6, 0x00AF(a1)             # 000000AF
    sw      a3, 0x0118(a1)             # 00000118
    blezl   t6, lbl_80A1EEE0           
    lw      $ra, 0x0014($sp)           
    lbu     t7, 0x03D6(a3)             # 000003D6
    lh      t0, 0x001C(a3)             # 0000001C
    lui     t2, %hi(var_80A228FC)      # t2 = 80A20000
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sll     t1, t0,  2                 
    sb      t8, 0x03D6(a3)             # 000003D6
    addu    t2, t2, t1                 
    lw      t2, %lo(var_80A228FC)(t2)  
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   v1, $zero, 0xFFFE          # v1 = FFFFFFFE
    bnel    t2, $at, lbl_80A1EEE0      
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x011C(a3)             # 0000011C
    lbu     t3, 0x03D6(v0)             # 000003D6
    and     t4, t3, v1                 
    sb      t4, 0x03D6(v0)             # 000003D6
lbl_80A1EEDC:
    lw      $ra, 0x0014($sp)           
lbl_80A1EEE0:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1EEEC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    lw      v1, 0x1C44(t6)             # 00001C44
    lw      t7, 0x0118(v1)             # 00000118
    bnel    s0, t7, lbl_80A1EF60       
    lw      $ra, 0x0024($sp)           
    sw      $zero, 0x0118(v1)          # 00000118
    sh      t8, 0x0840(v1)             # 00000840
    lbu     t9, 0x03D6(s0)             # 000003D6
    lw      v0, 0x011C(s0)             # 0000011C
    or      a1, s0, $zero              # a1 = 00000000
    ori     t0, t9, 0x0001             # t0 = 00000001
    sb      t0, 0x03D6(s0)             # 000003D6
    lbu     t1, 0x03D6(v0)             # 000003D6
    ori     t2, t1, 0x0001             # t2 = 00000001
    beq     a2, $zero, lbl_80A1EF5C    
    sb      t2, 0x03D6(v0)             # 000003D6
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      a3, 0x00B6(s0)             # 000000B6
    lw      a0, 0x002C($sp)            
    mfc1    a2, $f0                    
    jal     func_80022EC4              
    swc1    $f0, 0x0010($sp)           
lbl_80A1EF5C:
    lw      $ra, 0x0024($sp)           
lbl_80A1EF60:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1EF70:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    lh      a0, 0x00B6(a1)             # 000000B6
    jal     func_800636C4              # sins?
    sw      a1, 0x0028($sp)            
    lw      a1, 0x0028($sp)            
    lh      a0, 0x00B6(a1)             # 000000B6
    jal     func_80063684              # coss?
    swc1    $f0, 0x001C($sp)           
    lw      a1, 0x0028($sp)            
    lui     t6, %hi(func_80A19824)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A19824) # t6 = 80A19824
    lw      t7, 0x0180(a1)             # 00000180
    lui     a2, %hi(var_80A24018)      # a2 = 80A20000
    lwc1    $f12, 0x001C($sp)          
    beq     t6, t7, lbl_80A1EFE4       
    addiu   a2, a2, %lo(var_80A24018)  # a2 = 80A24018
    lwc1    $f2, 0x03B4(a1)            # 000003B4
    lui     v0, %hi(var_80A227D0)      # v0 = 80A20000
    addiu   v0, v0, %lo(var_80A227D0)  # v0 = 80A227D0
    mul.s   $f4, $f2, $f12             
    lwc1    $f6, 0x0000(v0)            # 80A227D0
    mul.s   $f10, $f2, $f0             
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0024(a1)            # 00000024
    lwc1    $f4, 0x0008(v0)            # 80A227D8
    add.s   $f6, $f10, $f4             
    swc1    $f6, 0x002C(a1)            # 0000002C
lbl_80A1EFE4:
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f8                   # $f8 = 400.00
    mtc1    $at, $f10                  # $f10 = 400.00
    lui     $at, 0xC348                # $at = C3480000
    mul.s   $f14, $f8, $f12            
    lui     v1, %hi(var_80A24028)      # v1 = 80A20000
    lui     a0, %hi(var_80A24040)      # a0 = 80A20000
    lui     a3, %hi(var_80A24044)      # a3 = 80A20000
    mtc1    $at, $f18                  # $f18 = -200.00
    mul.s   $f16, $f10, $f0            
    addiu   a3, a3, %lo(var_80A24044)  # a3 = 80A24044
    addiu   a0, a0, %lo(var_80A24040)  # a0 = 80A24040
    addiu   v1, v1, %lo(var_80A24028)  # v1 = 80A24028
lbl_80A1F018:
    lwc1    $f6, 0x0008(v1)            # 80A24030
    lwc1    $f4, 0x0024(a1)            # 00000024
    lw      v0, 0x0000(a2)             # 80A24018
    mul.s   $f8, $f6, $f12             
    lwc1    $f6, 0x0000(v1)            # 80A24028
    lb      t8, 0x0184(v0)             # 80A22954
    addiu   a2, a2, 0x0004             # a2 = 80A2401C
    addiu   a0, a0, 0x0002             # a0 = 80A24042
    add.s   $f10, $f4, $f8             
    mul.s   $f4, $f6, $f0              
    add.s   $f8, $f10, $f4             
    swc1    $f8, 0x0024(v0)            # 80A227F4
    lwc1    $f6, 0x0028(a1)            # 00000028
    lwc1    $f10, 0x0004(v1)           # 80A2402C
    add.s   $f4, $f6, $f10             
    swc1    $f4, 0x0028(v0)            # 80A227F8
    lwc1    $f6, 0x0008(v1)            # 80A24030
    lwc1    $f8, 0x002C(a1)            # 0000002C
    mul.s   $f10, $f6, $f0             
    lwc1    $f6, 0x0000(v1)            # 80A24028
    add.s   $f4, $f8, $f10             
    mul.s   $f8, $f6, $f12             
    mtc1    t8, $f6                    # $f6 = 0.00
    sub.s   $f10, $f4, $f8             
    cvt.s.w $f4, $f6                   
    swc1    $f10, 0x002C(v0)           # 80A227FC
    lwc1    $f8, 0x0024(a1)            # 00000024
    add.s   $f10, $f8, $f14            
    mul.s   $f2, $f18, $f4             
    nop
    mul.s   $f6, $f2, $f0              
    add.s   $f4, $f10, $f6             
    swc1    $f4, 0x0008(v0)            # 80A227D8
    lwc1    $f8, 0x0028(a1)            # 00000028
    mul.s   $f4, $f2, $f12             
    lwc1    $f2, 0x0080(v0)            # 80A22850
    swc1    $f8, 0x000C(v0)            # 80A227DC
    lwc1    $f10, 0x002C(a1)           # 0000002C
    add.s   $f6, $f10, $f16            
    lwc1    $f10, 0x0028(v0)           # 80A227F8
    sub.s   $f8, $f6, $f4              
    c.lt.s  $f10, $f2                  
    swc1    $f8, 0x0010(v0)            # 80A227E0
    lh      t9, 0x00B6(a1)             # 000000B6
    sh      t9, 0x0016(v0)             # 80A227E6
    lh      t1, 0x00B6(a1)             # 000000B6
    lh      t0, -0x0002(a0)            # 80A24040
    addu    t2, t0, t1                 
    bc1f    lbl_80A1F0E4               
    sh      t2, 0x00B6(v0)             # 80A22886
    swc1    $f2, 0x0028(v0)            # 80A227F8
lbl_80A1F0E4:
    bne     a0, a3, lbl_80A1F018       
    addiu   v1, v1, 0x000C             # v1 = 80A24034
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1F0FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lw      t6, 0x011C(a0)             # 0000011C
    lui     t9, %hi(var_80A228FC)      # t9 = 80A20000
    mul.s   $f12, $f0, $f4             
    lh      t7, 0x001C(t6)             # 0000001C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    lw      t9, %lo(var_80A228FC)(t9)  
    mov.s   $f2, $f12                  
    bne     t9, $at, lbl_80A1F168      
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f0                   # $f0 = 4.00
    lui     $at, %hi(var_80A22E00)     # $at = 80A20000
    lwc1    $f6, %lo(var_80A22E00)($at) 
    mul.s   $f2, $f12, $f6             
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80A1F16C               
    trunc.w.s $f8, $f2                   
    mov.s   $f2, $f0                   
lbl_80A1F168:
    trunc.w.s $f8, $f2                   
lbl_80A1F16C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    mfc1    v0, $f8                    
    nop
    bne     v0, $zero, lbl_80A1F190    
    nop
    jal     func_80A1BCA4              
    nop
    beq     $zero, $zero, lbl_80A1F1EC 
    lw      $ra, 0x0014($sp)           
lbl_80A1F190:
    bnel    v0, $at, lbl_80A1F1AC      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    jal     func_80A1C074              
    nop
    beq     $zero, $zero, lbl_80A1F1EC 
    lw      $ra, 0x0014($sp)           
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A1F1AC:
    bnel    v0, $at, lbl_80A1F1C8      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    jal     func_80A1C4DC              
    nop
    beq     $zero, $zero, lbl_80A1F1EC 
    lw      $ra, 0x0014($sp)           
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_80A1F1C8:
    bne     v0, $at, lbl_80A1F1E0      
    nop
    jal     func_80A1C76C              
    nop
    beq     $zero, $zero, lbl_80A1F1EC 
    lw      $ra, 0x0014($sp)           
lbl_80A1F1E0:
    jal     func_80A1CDF8              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A1F1EC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1F1F8:
    lbu     t6, 0x03D4(a0)             # 000003D4
    lw      t8, 0x03E0(a0)             # 000003E0
    addiu   v1, $zero, 0x00C0          # v1 = 000000C0
    ori     t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x03D4(a0)             # 000003D4
    sb      a1, 0x0005(t8)             # 00000005
    lw      t9, 0x03E0(a0)             # 000003E0
    addiu   v0, $zero, 0x02C0          # v0 = 000002C0
    sb      a1, 0x0045(t9)             # 00000045
    lw      t0, 0x03E0(a0)             # 000003E0
    sb      a1, 0x0085(t0)             # 00000085
lbl_80A1F224:
    lw      t1, 0x03E0(a0)             # 000003E0
    addu    t2, t1, v1                 
    sb      a1, 0x0005(t2)             # 00000005
    lw      t3, 0x03E0(a0)             # 000003E0
    addu    t4, t3, v1                 
    sb      a1, 0x0045(t4)             # 00000045
    lw      t5, 0x03E0(a0)             # 000003E0
    addu    t6, t5, v1                 
    sb      a1, 0x0085(t6)             # 00000085
    lw      t7, 0x03E0(a0)             # 000003E0
    addu    t8, t7, v1                 
    addiu   v1, v1, 0x0100             # v1 = 000001C0
    bne     v1, v0, lbl_80A1F224       
    sb      a1, 0x00C5(t8)             # 000000C5
    jr      $ra                        
    nop


func_80A1F264:
    lbu     t6, 0x03D5(a0)             # 000003D5
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    and     t7, t6, $at                
    beq     a1, $zero, lbl_80A1F28C    
    sb      t7, 0x03D5(a0)             # 000003D5
    ori     t0, t7, 0x0004             # t0 = 00000004
    sb      t8, 0x03D8(a0)             # 000003D8
    jr      $ra                        
    sb      t0, 0x03D5(a0)             # 000003D5
lbl_80A1F28C:
    lbu     t1, 0x03D5(a0)             # 000003D5
    sb      $zero, 0x03D8(a0)          # 000003D8
    andi    t2, t1, 0xFFFB             # t2 = 00000000
    sb      t2, 0x03D5(a0)             # 000003D5
    jr      $ra                        
    nop


func_80A1F2A4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_80064780              
    addiu   a0, a2, 0x03B8             # a0 = 000003B8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1F2D0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lbu     v0, 0x03D5(s0)             # 000003D5
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80A1F44C    
    lw      $ra, 0x001C($sp)           
    lbu     t7, 0x03D8(s0)             # 000003D8
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beql    t7, $at, lbl_80A1F44C      
    lw      $ra, 0x001C($sp)           
    sw      t8, 0x0024($sp)            
    lbu     t0, 0x00B1(s0)             # 000000B1
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    sb      t9, 0x03D5(s0)             # 000003D5
    bne     t0, $zero, lbl_80A1F32C    
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t1, 0x00B0(s0)             # 000000B0
    beql    t1, $zero, lbl_80A1F44C    
    lw      $ra, 0x001C($sp)           
lbl_80A1F32C:
    lbu     t2, 0x03D4(s0)             # 000003D4
    lbu     t4, 0x03D5(s0)             # 000003D5
    lbu     t6, 0x03D6(s0)             # 000003D6
    andi    t3, t2, 0xFFFC             # t3 = 00000000
    andi    t5, t4, 0xFFFE             # t5 = 00000000
    andi    t7, t6, 0xFFFB             # t7 = 00000000
    sb      t3, 0x03D4(s0)             # 000003D4
    sb      t5, 0x03D5(s0)             # 000003D5
    sb      t7, 0x03D6(s0)             # 000003D6
    lw      a1, 0x002C($sp)            
    jal     func_80A1EEEC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x011C(s0)             # 0000011C
    lui     t0, %hi(var_80A228FC)      # t0 = 80A20000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lh      t8, 0x001C(a0)             # 0000001C
    lw      a1, 0x002C($sp)            
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, %lo(var_80A228FC)(t0)  
    bnel    t0, $at, lbl_80A1F398      
    lw      t1, 0x0004(s0)             # 00000004
    jal     func_80A1EEEC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80A1B9D0              
    lw      a0, 0x011C(s0)             # 0000011C
    lw      t1, 0x0004(s0)             # 00000004
lbl_80A1F398:
    lbu     t3, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t2, t1, $at                
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t3, $at, lbl_80A1F3C0      
    sw      t2, 0x0004(s0)             # 00000004
    jal     func_80A1E894              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A1F3F0 
    nop
lbl_80A1F3C0:
    jal     func_80A1D814              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t4, 0x011C(s0)             # 0000011C
    lui     t7, %hi(var_80A228FC)      # t7 = 80A20000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lh      t5, 0x001C(t4)             # 0000001C
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, %lo(var_80A228FC)(t7)  
    beq     t7, $at, lbl_80A1F3F0      
    nop
    sw      $zero, 0x0024($sp)         
lbl_80A1F3F0:
    lui     a0, %hi(var_80A24010)      # a0 = 80A20000
    lw      a0, %lo(var_80A24010)(a0)  
    jal     func_80A19228              
    lw      a1, 0x0024($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lw      a0, 0x002C($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    c.lt.s  $f0, $f4                   
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
    bc1f    lbl_80A1F430               
    nop
    beq     $zero, $zero, lbl_80A1F430 
    addiu   v0, $zero, 0x0008          # v0 = 00000008
lbl_80A1F430:
    sll     a2, v0, 16                 
    jal     func_80013678              
    sra     a2, a2, 16                 
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x396A          # a1 = 0000396A
    lw      $ra, 0x001C($sp)           
lbl_80A1F44C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1F45C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lbu     v0, 0x06B5(a2)             # 000006B5
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80A1F59C    
    lw      $ra, 0x0014($sp)           
    lbu     t8, 0x00B1(a2)             # 000000B1
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x06B5(a2)             # 000006B5
    bnel    t8, $zero, lbl_80A1F4A0    
    lw      t1, 0x0180(a2)             # 00000180
    lbu     t9, 0x00B0(a2)             # 000000B0
    beql    t9, $zero, lbl_80A1F59C    
    lw      $ra, 0x0014($sp)           
    lw      t1, 0x0180(a2)             # 00000180
lbl_80A1F4A0:
    lui     t0, %hi(func_80A19D7C)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A19D7C) # t0 = 80A19D7C
    bne     t0, t1, lbl_80A1F50C       
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80028390              
    sw      a2, 0x0018($sp)            
    bne     v0, $zero, lbl_80A1F4E4    
    lw      a2, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80025B4C              
    sw      a2, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80A1A474              
    lw      a1, 0x001C($sp)            
    beq     $zero, $zero, lbl_80A1F4EC 
    nop
lbl_80A1F4E4:
    jal     func_80A19E7C              
    or      a0, a2, $zero              # a0 = 00000000
lbl_80A1F4EC:
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    jal     func_80A1E140              
    lw      a0, %lo(var_80A24018)(a0)  
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    jal     func_80A1E140              
    lw      a0, %lo(var_80A2401C)(a0)  
    beq     $zero, $zero, lbl_80A1F59C 
    lw      $ra, 0x0014($sp)           
lbl_80A1F50C:
    jal     func_80A199B8              
    or      a0, a2, $zero              # a0 = 00000000
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    lw      a0, %lo(var_80A2401C)(a0)  
    lui     v1, %hi(var_80A228FC)      # v1 = 80A20000
    addiu   v1, v1, %lo(var_80A228FC)  # v1 = 80A228FC
    lh      t2, 0x001C(a0)             # 80A2001C
    addiu   v0, $zero, 0x0009          # v0 = 00000009
    lui     a1, %hi(var_80A24018)      # a1 = 80A20000
    sll     t3, t2,  2                 
    addu    t4, v1, t3                 
    lw      t5, 0x0000(t4)             # 00000000
    bne     v0, t5, lbl_80A1F558       
    nop
    jal     func_80A21424              
    nop
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    beq     $zero, $zero, lbl_80A1F584 
    lw      a0, %lo(var_80A2401C)(a0)  
lbl_80A1F558:
    lw      a1, %lo(var_80A24018)(a1)  
    lh      t6, 0x001C(a1)             # 0000001C
    sll     t7, t6,  2                 
    addu    t8, v1, t7                 
    lw      t9, 0x0000(t8)             # 00000000
    bne     v0, t9, lbl_80A1F584       
    nop
    jal     func_80A21424              
    or      a0, a1, $zero              # a0 = 00000000
    lui     a0, %hi(var_80A2401C)      # a0 = 80A20000
    lw      a0, %lo(var_80A2401C)(a0)  
lbl_80A1F584:
    jal     func_80A1DF38              
    nop
    lui     a0, %hi(var_80A24018)      # a0 = 80A20000
    jal     func_80A1DF38              
    lw      a0, %lo(var_80A24018)(a0)  
    lw      $ra, 0x0014($sp)           
lbl_80A1F59C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1F5A8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lbu     v0, 0x06B4(s0)             # 000006B4
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, v0, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80A1F68C    
    nop
    lh      t7, 0x0710(s0)             # 00000710
    lui     t8, %hi(var_80A22CA8)      # t8 = 80A20000
    andi    t1, v0, 0xFFFC             # t1 = 00000000
    slti    $at, t7, 0x0005            
    bne     $at, $zero, lbl_80A1F648   
    nop
    lh      t8, %lo(var_80A22CA8)(t8)  
    lhu     t9, 0x075E(s0)             # 0000075E
    lui     $at, %hi(var_80A22E04)     # $at = 80A20000
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    t9, $f8                    # $f8 = 0.00
    lwc1    $f2, %lo(var_80A22E04)($at) 
    lwc1    $f6, 0x0090(s0)            # 00000090
    cvt.s.w $f0, $f4                   
    bgez    t9, lbl_80A1F624           
    cvt.s.w $f10, $f8                  
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16           
lbl_80A1F624:
    mul.s   $f18, $f10, $f2            
    andi    t0, v0, 0x0002             # t0 = 00000000
    mul.s   $f4, $f18, $f0             
    c.lt.s  $f6, $f4                   
    nop
    bc1t    lbl_80A1F648               
    nop
    beql    t0, $zero, lbl_80A1F654    
    lhu     t2, 0x070E(s0)             # 0000070E
lbl_80A1F648:
    beq     $zero, $zero, lbl_80A1F68C 
    sb      t1, 0x06B4(s0)             # 000006B4
    lhu     t2, 0x070E(s0)             # 0000070E
lbl_80A1F654:
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t2, $f8                    # $f8 = 0.00
    bgez    t2, lbl_80A1F670           
    cvt.s.w $f16, $f8                  
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f16, $f16, $f10           
lbl_80A1F670:
    mul.s   $f18, $f16, $f2            
    nop
    mul.s   $f6, $f18, $f0             
    trunc.w.s $f4, $f6                   
    mfc1    t4, $f4                    
    nop
    sh      t4, 0x06E4(s0)             # 000006E4
lbl_80A1F68C:
    jal     func_80A1F2D0              
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    sw      t5, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4248                 # a2 = 42480000
    lui     a3, 0x4302                 # a3 = 43020000
    jal     func_80021E6C              
    swc1    $f8, 0x0010($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lbu     t6, 0x03D4(s0)             # 000003D4
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80A1F6FC    
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x03C4             # a2 = 000003C4
lbl_80A1F6FC:
    lbu     t8, 0x03D5(s0)             # 000003D5
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t0, t8, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_80A1F720    
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x03C4             # a2 = 000003C4
lbl_80A1F720:
    lbu     t1, 0x03D6(s0)             # 000003D6
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80A1F744    
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x03C4             # a2 = 000003C4
lbl_80A1F744:
    lbu     t3, 0x06B4(s0)             # 000006B4
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t4, t3, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_80A1F768    
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x06A4             # a2 = 000006A4
lbl_80A1F768:
    lh      t9, 0x001C(s0)             # 0000001C
    lui     v0, %hi(var_80A228FC)      # v0 = 80A20000
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    sll     t5, t9,  2                 
    addu    v0, v0, t5                 
    lw      v0, %lo(var_80A228FC)(v0)  
    beql    v0, $at, lbl_80A1F7D4      
    lh      t0, 0x09C2(s0)             # 000009C2
    beq     v0, $zero, lbl_80A1F7D0    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80A1F7D0      
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beql    v0, $at, lbl_80A1F7D4      
    lh      t0, 0x09C2(s0)             # 000009C2
    lh      t6, 0x09C2(s0)             # 000009C2
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x09C2(s0)             # 000009C2
    lh      v0, 0x09C2(s0)             # 000009C2
    slti    $at, v0, 0x0008            
    bne     $at, $zero, lbl_80A1F7C8   
    nop
    beq     $zero, $zero, lbl_80A1F7F4 
    sh      t8, 0x09C2(s0)             # 000009C2
lbl_80A1F7C8:
    beq     $zero, $zero, lbl_80A1F7F4 
    sh      v0, 0x09C2(s0)             # 000009C2
lbl_80A1F7D0:
    lh      t0, 0x09C2(s0)             # 000009C2
lbl_80A1F7D4:
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x09C2(s0)             # 000009C2
    lh      v0, 0x09C2(s0)             # 000009C2
    bgezl   v0, lbl_80A1F7F4           
    sh      v0, 0x09C2(s0)             # 000009C2
    beq     $zero, $zero, lbl_80A1F7F4 
    sh      $zero, 0x09C2(s0)          # 000009C2
    sh      v0, 0x09C2(s0)             # 000009C2
lbl_80A1F7F4:
    lh      t2, 0x09C0(s0)             # 000009C0
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sll     t3, t2,  3                 
    subu    t3, t3, t2                 
    sll     t3, t3,  2                 
    addu    a2, s0, t3                 
    addiu   a0, a2, 0x09C4             # a0 = 000009C4
    jal     func_80063CAC              # Vec3f_Copy
    sw      a0, 0x002C($sp)            
    lwl     t9, 0x00B4(s0)             # 000000B4
    lw      a2, 0x002C($sp)            
    lwr     t9, 0x00B7(s0)             # 000000B7
    addiu   $at, $zero, 0x0007         # $at = 00000007
    or      a0, s0, $zero              # a0 = 00000000
    swl     t9, 0x000C(a2)             # 0000000C
    swr     t9, 0x000F(a2)             # 0000000F
    lhu     t9, 0x00B8(s0)             # 000000B8
    or      a1, s1, $zero              # a1 = 00000000
    sh      t9, 0x0010(a2)             # 00000010
    lh      t5, 0x018E(s0)             # 0000018E
    mtc1    t5, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    swc1    $f16, 0x0014(a2)           # 00000014
    lh      t6, 0x0190(s0)             # 00000190
    sh      t6, 0x0018(a2)             # 00000018
    lh      t7, 0x09C0(s0)             # 000009C0
    addiu   t8, t7, 0x0001             # t8 = 00000001
    div     $zero, t8, $at             
    mfhi    t0                         
    sh      t0, 0x09C0(s0)             # 000009C0
    jal     func_80A215F0              
    nop
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80A1F88C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     a2, %hi(var_80A2401C)      # a2 = 80A20000
    lw      a2, %lo(var_80A2401C)(a2)  
    lui     a1, %hi(var_80A24034)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A24034)  # a1 = 80A24034
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002154C              
    addiu   a2, a2, 0x0024             # a2 = 80A20024
    lui     a2, %hi(var_80A24018)      # a2 = 80A20000
    lw      a2, %lo(var_80A24018)(a2)  
    lui     a1, %hi(var_80A24028)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A24028)  # a1 = 80A24028
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002154C              
    addiu   a2, a2, 0x0024             # a2 = 80A20024
    lui     v1, %hi(var_80A24018)      # v1 = 80A20000
    addiu   v1, v1, %lo(var_80A24018)  # v1 = 80A24018
    lw      t6, 0x0000(v1)             # 80A24018
    lh      t8, 0x00B6(s0)             # 000000B6
    lui     v0, %hi(var_80A24040)      # v0 = 80A20000
    lh      t7, 0x00B6(t6)             # 000000B6
    lw      t0, 0x0004(v1)             # 80A2401C
    addiu   v0, v0, %lo(var_80A24040)  # v0 = 80A24040
    subu    t9, t7, t8                 
    sh      t9, 0x0000(v0)             # 80A24040
    lh      t2, 0x00B6(s0)             # 000000B6
    lh      t1, 0x00B6(t0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    subu    t3, t1, t2                 
    jal     func_80A1F45C              
    sh      t3, 0x0002(v0)             # 80A24042
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lb      t4, 0x0184(s0)             # 00000184
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, s0, 0x03C4             # a2 = 000003C4
    beql    t4, $zero, lbl_80A1F984    
    lbu     t2, 0x03D4(s0)             # 000003D4
    lbu     t5, 0x1C27(s1)             # 00001C27
    beql    t5, $zero, lbl_80A1F964    
    lw      t7, 0x0004(s0)             # 00000004
    lbu     t6, 0x0114(s0)             # 00000114
    beql    t6, $zero, lbl_80A1F978    
    lw      t0, 0x0004(s0)             # 00000004
    lw      t7, 0x0004(s0)             # 00000004
lbl_80A1F964:
    addiu   $at, $zero, 0xFF7F         # $at = FFFFFF7F
    and     t8, t7, $at                
    beq     $zero, $zero, lbl_80A1F980 
    sw      t8, 0x0004(s0)             # 00000004
    lw      t0, 0x0004(s0)             # 00000004
lbl_80A1F978:
    ori     t1, t0, 0x0080             # t1 = 00000080
    sw      t1, 0x0004(s0)             # 00000004
lbl_80A1F980:
    lbu     t2, 0x03D4(s0)             # 000003D4
lbl_80A1F984:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t3, t2, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_80A1F9A4    
    lui     $at, 0x0001                # $at = 00010000
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, s1, $at                
    lui     $at, 0x0001                # $at = 00010000
lbl_80A1F9A4:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    t9, s1, $at                
    addiu   t4, s0, 0x03C4             # t4 = 000003C4
    sw      t4, 0x0020($sp)            
    sw      t9, 0x0024($sp)            
    lbu     t5, 0x06B5(s0)             # 000006B5
    or      a1, t9, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    andi    t6, t5, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_80A1F9DC    
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x06A4             # a2 = 000006A4
    or      a0, s1, $zero              # a0 = 00000000
lbl_80A1F9DC:
    lw      a1, 0x0024($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0020($sp)            
    lbu     t7, 0x03D6(s0)             # 000003D6
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80A1FA08    
    nop
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0020($sp)            
lbl_80A1FA08:
    jal     func_80A1EF70              
    or      a0, s0, $zero              # a0 = 00000000
    lb      t0, 0x0184(s0)             # 00000184
    or      a0, s0, $zero              # a0 = 00000000
    beql    t0, $zero, lbl_80A1FA38    
    lw      v0, 0x0180(s0)             # 00000180
    lw      v1, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0x0080         # $at = 00000080
    andi    t1, v1, 0x0080             # t1 = 00000000
    bnel    t1, $at, lbl_80A1FA9C      
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      v0, 0x0180(s0)             # 00000180
lbl_80A1FA38:
    lui     t2, %hi(func_80A193E0)     # t2 = 80A20000
    addiu   t2, t2, %lo(func_80A193E0) # t2 = 80A193E0
    beq     t2, v0, lbl_80A1FA84       
    lw      v1, 0x0004(s0)             # 00000004
    lui     t3, %hi(func_80A19540)     # t3 = 80A20000
    addiu   t3, t3, %lo(func_80A19540) # t3 = 80A19540
    beq     t3, v0, lbl_80A1FA84       
    lui     t9, %hi(func_80A198E8)     # t9 = 80A20000
    addiu   t9, t9, %lo(func_80A198E8) # t9 = 80A198E8
    beq     t9, v0, lbl_80A1FA84       
    lui     t4, %hi(func_80A19A58)     # t4 = 80A20000
    addiu   t4, t4, %lo(func_80A19A58) # t4 = 80A19A58
    beq     t4, v0, lbl_80A1FA84       
    lui     t5, %hi(func_80A19D7C)     # t5 = 80A20000
    addiu   t5, t5, %lo(func_80A19D7C) # t5 = 80A19D7C
    beq     t5, v0, lbl_80A1FA84       
    lui     t6, %hi(func_80A19F4C)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A19F4C) # t6 = 80A19F4C
    bne     t6, v0, lbl_80A1FA98       
lbl_80A1FA84:
    ori     t7, v1, 0x0001             # t7 = 00000001
    lui     v0, %hi(func_80A19540)     # v0 = 80A20000
    addiu   v0, v0, %lo(func_80A19540) # v0 = 80A19540
    beq     $zero, $zero, lbl_80A1FAAC 
    sw      t7, 0x0004(s0)             # 00000004
lbl_80A1FA98:
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
lbl_80A1FA9C:
    and     t8, v1, $at                
    lui     v0, %hi(func_80A19540)     # v0 = 80A20000
    addiu   v0, v0, %lo(func_80A19540) # v0 = 80A19540
    sw      t8, 0x0004(s0)             # 00000004
lbl_80A1FAAC:
    lw      t0, 0x0180(s0)             # 00000180
    bnel    v0, t0, lbl_80A1FAC4       
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A1F2A4              
    addiu   a1, $zero, 0x318D          # a1 = 0000318D
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A1FAC4:
    jal     func_80A215F0              
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A1FAE0:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_80A1FB24      
    lw      v0, 0x0014($sp)            
    lh      t6, 0x018E(v0)             # 0000018E
    lwc1    $f4, 0x0008(a3)            # 00000008
    lw      v1, 0x0010($sp)            
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    add.s   $f10, $f4, $f8             
    swc1    $f10, 0x0008(a3)           # 00000008
    lh      t8, 0x0190(v0)             # 00000190
    lh      t7, 0x0002(v1)             # 00000002
    addu    t9, t7, t8                 
    sh      t9, 0x0002(v1)             # 00000002
lbl_80A1FB24:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80A1FB30:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a2, 0x0020($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    sw      a3, 0x0024($sp)            
    lw      a1, 0x0028($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80050CE4              
    addiu   a1, a1, 0x03C4             # a1 = 000003C4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A1FB6C:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_80A1FBA4      
    lw      v0, 0x0014($sp)            
    lwc1    $f4, 0x0008(a3)            # 00000008
    lwc1    $f6, 0x0014(v0)            # 00000014
    lw      v1, 0x0010($sp)            
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0008(a3)            # 00000008
    lh      t7, 0x0018(v0)             # 00000018
    lh      t6, 0x0002(v1)             # 00000002
    addu    t8, t6, t7                 
    sh      t8, 0x0002(v1)             # 00000002
lbl_80A1FBA4:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80A1FBB0:
    addiu   $sp, $sp, 0xFF48           # $sp = FFFFFF48
    sw      s3, 0x0044($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s8, 0x0058($sp)            
    sw      s7, 0x0054($sp)            
    sw      s6, 0x0050($sp)            
    sw      s5, 0x004C($sp)            
    sw      s4, 0x0048($sp)            
    sw      s2, 0x0040($sp)            
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a1, 0x00BC($sp)            
    lw      t6, 0x00BC($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    or      s1, a0, $zero              # s1 = 00000000
    lui     a0, %hi(var_80A228F4)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A228F4)  # a0 = 80A228F4
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xFA00                 # t8 = FA000000
    ori     t8, t8, 0x0080             # t8 = FA000080
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lbu     t4, 0x0001(a0)             # 80A228F5
    lbu     t1, 0x0000(a0)             # 80A228F4
    lbu     t8, 0x0002(a0)             # 80A228F6
    sll     t5, t4, 16                 
    sll     t2, t1, 24                 
    or      t6, t2, t5                 # t6 = 00000000
    sll     t9, t8,  8                 
    or      t1, t6, t9                 # t1 = 00000000
    ori     t3, t1, 0x00FF             # t3 = 000000FF
    sw      t3, 0x0004(v0)             # 00000004
    lui     t4, %hi(var_80A228D8)      # t4 = 80A20000
    lw      t4, %lo(var_80A228D8)(t4)  
    lui     a1, %hi(var_80A228F8)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A228F8)  # a1 = 80A228F8
    bne     t4, $zero, lbl_80A1FC84    
    lui     t5, 0xDB06                 # t5 = DB060000
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x8520             # t7 = 800E8520
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s1)             # 000002C0
    ori     t5, t5, 0x0020             # t5 = DB060020
    sw      t5, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_80A1FCE4 
    lw      a1, 0x0140(s3)             # 00000140
lbl_80A1FC84:
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lbu     t2, 0x0001(a1)             # 80A228F9
    lbu     t1, 0x0000(a1)             # 80A228F8
    lbu     t6, 0x0002(a1)             # 80A228FA
    sll     t5, t2, 16                 
    sll     t3, t1, 24                 
    or      t7, t3, t5                 # t7 = DB0600FF
    sll     t9, t6,  8                 
    or      t1, t7, t9                 # t1 = DB0600FF
    sw      t1, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t2, 0xDB06                 # t2 = DB060000
    lui     t3, %hi(var_80A21E20)      # t3 = 80A20000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    addiu   t3, t3, %lo(var_80A21E20)  # t3 = 80A21E20
    ori     t2, t2, 0x0020             # t2 = DB060020
    sw      t2, 0x0000(v0)             # 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s3)             # 00000140
lbl_80A1FCE4:
    lw      a2, 0x015C(s3)             # 0000015C
    lbu     a3, 0x013E(s3)             # 0000013E
    lui     t5, %hi(func_80A1FAE0)     # t5 = 80A20000
    lui     t8, %hi(func_80A1FB30)     # t8 = 80A20000
    addiu   t8, t8, %lo(func_80A1FB30) # t8 = 80A1FB30
    addiu   t5, t5, %lo(func_80A1FAE0) # t5 = 80A1FAE0
    sw      t5, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    sw      s3, 0x0018($sp)            
    jal     func_80089D8C              
    lw      a0, 0x00BC($sp)            
    lh      t6, 0x09C2(s3)             # 000009C2
    lw      t7, 0x00BC($sp)            
    slti    $at, t6, 0x0002            
    bnel    $at, $zero, lbl_80A1FF1C   
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007E2C0              
    lw      a0, 0x0000(t7)             # 00000000
    lh      t9, 0x09C0(s3)             # 000009C0
    addiu   v1, $zero, 0x0007          # v1 = 00000007
    addiu   a2, $zero, 0x001C          # a2 = 0000001C
    addiu   t1, t9, 0x0004             # t1 = 00000004
    div     $zero, t1, v1              
    mfhi    s4                         
    addiu   t2, s4, 0x0002             # t2 = 00000002
    lh      v0, 0x09C2(s3)             # 000009C2
    multu   s4, a2                     
    or      s2, $zero, $zero           # s2 = 00000000
    sra     v0, v0,  1                 
    bne     v1, $zero, lbl_80A1FD64    
    nop
    break   # 0x01C00
lbl_80A1FD64:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80A1FD7C      
    lui     $at, 0x8000                # $at = 80000000
    bne     t1, $at, lbl_80A1FD7C      
    nop
    break   # 0x01800
lbl_80A1FD7C:
    mflo    t4                         
    addu    s0, s3, t4                 
    addiu   s0, s0, 0x09C4             # s0 = 000009C4
    div     $zero, t2, v1              
    mfhi    t3                         
    sw      s0, 0x0098($sp)            
    bne     v1, $zero, lbl_80A1FDA0    
    nop
    break   # 0x01C00
lbl_80A1FDA0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80A1FDB8      
    lui     $at, 0x8000                # $at = 80000000
    bne     t2, $at, lbl_80A1FDB8      
    nop
    break   # 0x01800
lbl_80A1FDB8:
    multu   t3, a2                     
    lui     $at, 0x4461                # $at = 44610000
    mflo    t5                         
    addu    a0, s3, t5                 
    blez    v0, lbl_80A1FF18           
    addiu   a0, a0, 0x09C4             # a0 = 000009C4
    mtc1    $at, $f22                  # $f22 = 900.00
    lui     $at, %hi(var_80A22E08)     # $at = 80A20000
    lwc1    $f20, %lo(var_80A22E08)($at) 
    sw      v0, 0x0088($sp)            
lbl_80A1FDE0:
    jal     func_800A5538              
    or      a1, s0, $zero              # a1 = 000009C4
    c.lt.s  $f22, $f0                  
    lui     s5, %hi(var_80A21E38)      # s5 = 80A20000
    addiu   s5, s5, %lo(var_80A21E38)  # s5 = 80A21E38
    addiu   a3, s0, 0x000C             # a3 = 000009D0
    bc1f    lbl_80A1FEE0               
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    subu    v0, t8, s2                 
    sll     s6, v0,  2                 
    sll     s7, v0,  2                 
    sll     s8, v0,  4                 
    subu    s8, s8, v0                 
    addu    s7, s7, v0                 
    addu    s6, s6, v0                 
    lui     t6, %hi(func_80A1FB6C)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A1FB6C) # t6 = 80A1FB6C
    sll     s6, s6,  1                 
    sll     s7, s7,  2                 
    sll     s8, s8,  1                 
    lwc1    $f12, 0x0000(s0)           # 000009C4
    lwc1    $f14, 0x0004(s0)           # 000009C8
    lw      a2, 0x0008(s0)             # 000009CC
    sw      t6, 0x0064($sp)            
    addiu   s8, s8, 0x0046             # s8 = 00000046
    addiu   s7, s7, 0x0032             # s7 = 00000032
    jal     func_800AB510              
    addiu   s6, s6, 0x0014             # s6 = 00000014
    mfc1    a2, $f20                   
    mov.s   $f12, $f20                 
    mov.s   $f14, $f20                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      s5, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s1)             # 000002D0
    andi    t5, s7, 0x00FF             # t5 = 00000032
    sll     t8, t5,  8                 
    sll     t3, s6, 24                 
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    or      t6, t3, t8                 # t6 = 00000000
    andi    t7, s8, 0x00FF             # t7 = 00000046
    or      t9, t6, t7                 # t9 = 00000046
    lui     t4, 0xFA00                 # t4 = FA000000
    sw      t4, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      t1, 0x0064($sp)            
    lw      a1, 0x0140(s3)             # 00000140
    lw      a2, 0x015C(s3)             # 0000015C
    lbu     a3, 0x013E(s3)             # 0000013E
    sw      s0, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    sw      t1, 0x0010($sp)            
    lw      t4, 0x02D0(s1)             # 000002D0
    lw      a0, 0x00BC($sp)            
    jal     func_8008A88C              
    sw      t4, 0x001C($sp)            
    sw      v0, 0x02D0(s1)             # 000002D0
lbl_80A1FEE0:
    addiu   s4, s4, 0x0005             # s4 = 00000005
    addiu   $at, $zero, 0x0007         # $at = 00000007
    div     $zero, s4, $at             
    mfhi    s4                         
    sll     t2, s4,  3                 
    subu    t2, t2, s4                 
    lw      t5, 0x0088($sp)            
    sll     t2, t2,  2                 
    addu    s0, s3, t2                 
    addiu   s2, s2, 0x0001             # s2 = 00000001
    lw      a0, 0x0098($sp)            
    addiu   s0, s0, 0x09C4             # s0 = 00001388
    bne     s2, t5, lbl_80A1FDE0       
    sw      s0, 0x0098($sp)            
lbl_80A1FF18:
    or      a0, s3, $zero              # a0 = 00000000
lbl_80A1FF1C:
    jal     func_80A21894              
    lw      a1, 0x00BC($sp)            
    lw      $ra, 0x005C($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    lw      s3, 0x0044($sp)            
    lw      s4, 0x0048($sp)            
    lw      s5, 0x004C($sp)            
    lw      s6, 0x0050($sp)            
    lw      s7, 0x0054($sp)            
    lw      s8, 0x0058($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00B8           # $sp = 00000000


func_80A1FF5C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a0, 0x0038($sp)            
    lw      a0, 0x004C($sp)            
    sw      $ra, 0x0014($sp)           
    sw      a3, 0x0044($sp)            
    lw      t6, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0x0080         # $at = 00000080
    andi    t7, t6, 0x0080             # t7 = 00000000
    beql    t7, $at, lbl_80A1FF9C      
    lw      v0, 0x0180(a0)             # 00000180
    lb      t8, 0x0184(a0)             # 00000184
    beql    t8, $zero, lbl_80A1FF9C    
    lw      v0, 0x0180(a0)             # 00000180
    beq     $zero, $zero, lbl_80A2074C 
    sw      $zero, 0x0000(a2)          # 00000000
    lw      v0, 0x0180(a0)             # 00000180
lbl_80A1FF9C:
    lui     t9, %hi(func_80A1A8C0)     # t9 = 80A20000
    addiu   t9, t9, %lo(func_80A1A8C0) # t9 = 80A1A8C0
    bne     t9, v0, lbl_80A20548       
    lui     t1, %hi(func_80A1A608)     # t1 = 80A20000
    lh      v0, 0x0188(a0)             # 00000188
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    div     $zero, v0, $at             
    mflo    t0                         
    addiu   t1, t0, 0x0001             # t1 = 00000001
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a1, $at, lbl_80A1FFE0      
    sw      t1, 0x0030($sp)            
    addiu   $at, $zero, 0x0027         # $at = 00000027
    beq     a1, $at, lbl_80A1FFE0      
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    bne     a1, $at, lbl_80A2019C      
    addiu   v1, $zero, 0x0005          # v1 = 00000005
lbl_80A1FFE0:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A22E0C)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A22E0C)($at) 
    cvt.s.w $f6, $f4                   
    sw      a1, 0x003C($sp)            
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0024($sp)           
    lui     $at, 0x44A0                # $at = 44A00000
    mtc1    $at, $f16                  # $f16 = 1280.00
    lui     $at, 0x4520                # $at = 45200000
    mtc1    $at, $f4                   # $f4 = 2560.00
    mul.s   $f18, $f16, $f0            
    lw      t2, 0x0030($sp)            
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f8                   # $f8 = 16.00
    mtc1    t2, $f10                   # $f10 = 0.00
    lw      v0, 0x0048($sp)            
    lw      a0, 0x004C($sp)            
    add.s   $f6, $f18, $f4             
    lh      t3, 0x0000(v0)             # 00000000
    lwc1    $f18, 0x0024($sp)          
    cvt.s.w $f2, $f10                  
    addiu   $at, $zero, 0x0005         # $at = 00000005
    div.s   $f10, $f6, $f8             
    mtc1    t3, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f16, $f10, $f2            
    nop
    mul.s   $f4, $f16, $f18            
    add.s   $f10, $f8, $f4             
    trunc.w.s $f16, $f10                 
    mfc1    t5, $f16                   
    nop
    sh      t5, 0x0000(v0)             # 00000000
    lh      t6, 0x0188(a0)             # 00000188
    swc1    $f2, 0x001C($sp)           
    div     $zero, t6, $at             
    mfhi    t7                         
    mtc1    t7, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80A22E10)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A22E10)($at) 
    cvt.s.w $f6, $f18                  
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0024($sp)           
    lui     $at, 0x4580                # $at = 45800000
    mtc1    $at, $f2                   # $f2 = 4096.00
    lui     $at, 0x4500                # $at = 45000000
    mtc1    $at, $f4                   # $f4 = 2048.00
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f18                  # $f18 = 16.00
    mul.s   $f10, $f4, $f0             
    lwc1    $f8, 0x001C($sp)           
    lw      v0, 0x0048($sp)            
    lw      a1, 0x003C($sp)            
    lw      a0, 0x004C($sp)            
    lh      t8, 0x0004(v0)             # 00000004
    addiu   $at, $zero, 0x0003         # $at = 00000003
    add.s   $f16, $f10, $f2            
    lwc1    $f10, 0x0024($sp)          
    div.s   $f6, $f16, $f18            
    mul.s   $f4, $f6, $f8              
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f16, $f4, $f10            
    add.s   $f18, $f16, $f2            
    sub.s   $f4, $f8, $f18             
    trunc.w.s $f10, $f4                  
    mfc1    t0, $f10                   
    bne     a1, $at, lbl_80A2074C      
    sh      t0, 0x0004(v0)             # 00000004
    lh      t1, 0x0188(a0)             # 00000188
    lui     $at, %hi(var_80A22E14)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A22E14)($at) 
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f6, $f16                  
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0024($sp)           
    lui     $at, 0x44A0                # $at = 44A00000
    mtc1    $at, $f18                  # $f18 = 1280.00
    lui     $at, 0x4520                # $at = 45200000
    mtc1    $at, $f10                  # $f10 = 2560.00
    mul.s   $f4, $f18, $f0             
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f6                   # $f6 = 16.00
    lwc1    $f18, 0x001C($sp)          
    lw      v0, 0x0048($sp)            
    add.s   $f16, $f4, $f10            
    lh      t2, 0x0002(v0)             # 00000002
    lwc1    $f10, 0x0024($sp)          
    div.s   $f8, $f16, $f6             
    mtc1    t2, $f6                    # $f6 = 0.00
    mul.s   $f4, $f8, $f18             
    cvt.s.w $f8, $f6                   
    mul.s   $f16, $f4, $f10            
    add.s   $f18, $f8, $f16            
    trunc.w.s $f4, $f18                  
    mfc1    t4, $f4                    
    beq     $zero, $zero, lbl_80A2074C 
    sh      t4, 0x0002(v0)             # 00000002
lbl_80A2019C:
    beq     a1, v1, lbl_80A201B0       
    nop
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    a1, $at, lbl_80A20384      
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A201B0:
    div     $zero, v0, v1              
    mfhi    t5                         
    mtc1    t5, $f10                   # $f10 = 0.00
    bne     v1, $zero, lbl_80A201C8    
    nop
    break   # 0x01C00
lbl_80A201C8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_80A201E0      
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_80A201E0      
    nop
    break   # 0x01800
lbl_80A201E0:
    cvt.s.w $f6, $f10                  
    lui     $at, %hi(var_80A22E18)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A22E18)($at) 
    sw      a1, 0x003C($sp)            
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0024($sp)           
    lui     $at, 0x44A0                # $at = 44A00000
    mtc1    $at, $f14                  # $f14 = 1280.00
    lui     $at, 0x4420                # $at = 44200000
    mtc1    $at, $f18                  # $f18 = 640.00
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f6                   # $f6 = 16.00
    mul.s   $f4, $f18, $f0             
    lw      t6, 0x0030($sp)            
    lw      v0, 0x0048($sp)            
    lwc1    $f18, 0x0024($sp)          
    mtc1    t6, $f16                   # $f16 = 0.00
    lh      t7, 0x0004(v0)             # 00000004
    lw      a1, 0x003C($sp)            
    add.s   $f10, $f4, $f14            
    lw      a0, 0x004C($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    cvt.s.w $f2, $f16                  
    div.s   $f8, $f10, $f6             
    mtc1    t7, $f6                    # $f6 = 0.00
    mul.s   $f16, $f8, $f2             
    cvt.s.w $f8, $f6                   
    mul.s   $f4, $f16, $f18            
    add.s   $f10, $f4, $f14            
    sub.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    bne     a1, $at, lbl_80A2074C      
    sh      t9, 0x0004(v0)             # 00000004
    lh      t0, 0x0188(a0)             # 00000188
    lui     $at, %hi(var_80A22E1C)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A22E1C)($at) 
    mtc1    t0, $f4                    # $f4 = 0.00
    swc1    $f2, 0x001C($sp)           
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0024($sp)           
    lui     $at, 0x44A0                # $at = 44A00000
    mtc1    $at, $f10                  # $f10 = 1280.00
    lui     $at, 0x4520                # $at = 45200000
    mtc1    $at, $f18                  # $f18 = 2560.00
    mul.s   $f16, $f10, $f0            
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f6                   # $f6 = 16.00
    lwc1    $f10, 0x001C($sp)          
    lw      v0, 0x0048($sp)            
    lw      a0, 0x004C($sp)            
    lui     $at, %hi(var_80A22E20)     # $at = 80A20000
    add.s   $f4, $f16, $f18            
    lh      t1, 0x0000(v0)             # 00000000
    lwc1    $f18, 0x0024($sp)          
    div.s   $f8, $f4, $f6              
    mtc1    t1, $f6                    # $f6 = 0.00
    mul.s   $f16, $f8, $f10            
    cvt.s.w $f8, $f6                   
    mul.s   $f4, $f16, $f18            
    add.s   $f10, $f8, $f4             
    trunc.w.s $f16, $f10                 
    mfc1    t3, $f16                   
    nop
    sh      t3, 0x0000(v0)             # 00000000
    lh      t4, 0x0188(a0)             # 00000188
    lwc1    $f8, %lo(var_80A22E20)($at) 
    mtc1    t4, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f6, $f18                  
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0024($sp)           
    lui     $at, 0x44A0                # $at = 44A00000
    mtc1    $at, $f4                   # $f4 = 1280.00
    lui     $at, 0x4520                # $at = 45200000
    mtc1    $at, $f16                  # $f16 = 2560.00
    mul.s   $f10, $f4, $f0             
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f6                   # $f6 = 16.00
    lwc1    $f4, 0x001C($sp)           
    lw      v0, 0x0048($sp)            
    add.s   $f18, $f10, $f16           
    lh      t5, 0x0002(v0)             # 00000002
    lwc1    $f16, 0x0024($sp)          
    div.s   $f8, $f18, $f6             
    mtc1    t5, $f6                    # $f6 = 0.00
    mul.s   $f10, $f8, $f4             
    cvt.s.w $f8, $f6                   
    mul.s   $f18, $f10, $f16           
    add.s   $f4, $f8, $f18             
    trunc.w.s $f10, $f4                  
    mfc1    t7, $f10                   
    beq     $zero, $zero, lbl_80A2074C 
    sh      t7, 0x0002(v0)             # 00000002
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A20384:
    bnel    a1, $at, lbl_80A20750      
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_80A22E24)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A22E24)($at) 
    cvt.s.w $f6, $f16                  
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0024($sp)           
    lui     $at, 0x4400                # $at = 44000000
    mtc1    $at, $f4                   # $f4 = 512.00
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f16                  # $f16 = 1024.00
    mul.s   $f10, $f4, $f0             
    lw      t8, 0x0030($sp)            
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f8                   # $f8 = 16.00
    mtc1    t8, $f18                   # $f18 = 0.00
    lw      v0, 0x0048($sp)            
    lw      a0, 0x004C($sp)            
    add.s   $f6, $f10, $f16            
    lh      t9, 0x0000(v0)             # 00000000
    lwc1    $f10, 0x0024($sp)          
    cvt.s.w $f2, $f18                  
    lui     $at, %hi(var_80A22E28)     # $at = 80A20000
    div.s   $f18, $f6, $f8             
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f4, $f18, $f2             
    nop
    mul.s   $f16, $f4, $f10            
    add.s   $f18, $f8, $f16            
    trunc.w.s $f4, $f18                  
    mfc1    t1, $f4                    
    nop
    sh      t1, 0x0000(v0)             # 00000000
    lh      t2, 0x0188(a0)             # 00000188
    lwc1    $f8, %lo(var_80A22E28)($at) 
    swc1    $f2, 0x001C($sp)           
    mtc1    t2, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10                  
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0024($sp)           
    lui     $at, 0x4400                # $at = 44000000
    mtc1    $at, $f16                  # $f16 = 512.00
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f4                   # $f4 = 1024.00
    mul.s   $f18, $f16, $f0            
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f6                   # $f6 = 16.00
    lwc1    $f16, 0x001C($sp)          
    lw      v0, 0x0048($sp)            
    lw      a0, 0x004C($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    add.s   $f10, $f18, $f4            
    lh      t3, 0x0002(v0)             # 00000002
    lwc1    $f4, 0x0024($sp)           
    div.s   $f8, $f10, $f6             
    mtc1    t3, $f6                    # $f6 = 0.00
    mul.s   $f18, $f8, $f16            
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f18, $f4            
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t5, $f18                   
    nop
    sh      t5, 0x0002(v0)             # 00000002
    lh      t6, 0x0188(a0)             # 00000188
    div     $zero, t6, $at             
    mfhi    t7                         
    mtc1    t7, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80A22E2C)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A22E2C)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800CF470              
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0024($sp)           
    lui     $at, 0x4380                # $at = 43800000
    mtc1    $at, $f10                  # $f10 = 256.00
    lui     $at, 0x4400                # $at = 44000000
    mtc1    $at, $f18                  # $f18 = 512.00
    mul.s   $f16, $f10, $f0            
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f6                   # $f6 = 16.00
    lwc1    $f10, 0x001C($sp)          
    lw      v0, 0x0048($sp)            
    lui     $at, 0x4400                # $at = 44000000
    add.s   $f4, $f16, $f18            
    lwc1    $f18, 0x0024($sp)          
    lh      t8, 0x0004(v0)             # 00000004
    div.s   $f8, $f4, $f6              
    mtc1    $at, $f6                   # $f6 = 512.00
    mul.s   $f16, $f8, $f10            
    mtc1    t8, $f10                   # $f10 = 0.00
    mul.s   $f4, $f16, $f18            
    cvt.s.w $f16, $f10                 
    add.s   $f8, $f4, $f6              
    sub.s   $f18, $f16, $f8            
    trunc.w.s $f4, $f18                  
    mfc1    t0, $f4                    
    nop
    sh      t0, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_80A20750 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A20548:
    addiu   t1, t1, %lo(func_80A1A608) # t1 = FFFFA608
    bne     t1, v0, lbl_80A206B8       
    nop
    lh      v0, 0x0188(a0)             # 00000188
    slti    $at, v0, 0x0031            
    bnel    $at, $zero, lbl_80A20570   
    slti    $at, v0, 0x0007            
    beq     $zero, $zero, lbl_80A20584 
    addiu   a2, v0, 0xFFDC             # a2 = FFFFFFDC
    slti    $at, v0, 0x0007            
lbl_80A20570:
    bne     $at, $zero, lbl_80A20580   
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_80A20580 
    addiu   v1, $zero, 0x0006          # v1 = 00000006
lbl_80A20580:
    sll     a2, v1,  1                 
lbl_80A20584:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a1, $at, lbl_80A205A0      
    addiu   $at, $zero, 0x0027         # $at = 00000027
    beq     a1, $at, lbl_80A205A0      
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    bnel    a1, $at, lbl_80A205F4      
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_80A205A0:
    mtc1    a2, $f6                    # $f6 = NaN
    lui     $at, %hi(var_80A22E30)     # $at = 80A20000
    lwc1    $f16, %lo(var_80A22E30)($at) 
    cvt.s.w $f10, $f6                  
    mul.s   $f12, $f10, $f16           
    jal     func_800CF470              
    nop
    lw      v0, 0x0048($sp)            
    lui     $at, 0x4600                # $at = 46000000
    mtc1    $at, $f4                   # $f4 = 8192.00
    lh      t2, 0x0004(v0)             # 00000004
    mul.s   $f6, $f4, $f0              
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f18, $f8                  
    sub.s   $f10, $f18, $f6            
    trunc.w.s $f16, $f10                 
    mfc1    t4, $f16                   
    beq     $zero, $zero, lbl_80A2074C 
    sh      t4, 0x0004(v0)             # 00000004
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_80A205F4:
    beq     a1, $at, lbl_80A20604      
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    a1, $at, lbl_80A20658      
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A20604:
    mtc1    a2, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_80A22E34)     # $at = 80A20000
    lwc1    $f18, %lo(var_80A22E34)($at) 
    cvt.s.w $f4, $f8                   
    mul.s   $f12, $f4, $f18            
    jal     func_800CF470              
    nop
    lw      v0, 0x0048($sp)            
    lui     $at, 0x4520                # $at = 45200000
    mtc1    $at, $f16                  # $f16 = 2560.00
    lh      t5, 0x0004(v0)             # 00000004
    mul.s   $f8, $f16, $f0             
    mtc1    t5, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6                  
    sub.s   $f4, $f10, $f8             
    trunc.w.s $f18, $f4                  
    mfc1    t7, $f18                   
    beq     $zero, $zero, lbl_80A2074C 
    sh      t7, 0x0004(v0)             # 00000004
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A20658:
    bnel    a1, $at, lbl_80A20750      
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    a2, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80A22E38)     # $at = 80A20000
    lwc1    $f10, %lo(var_80A22E38)($at) 
    cvt.s.w $f16, $f6                  
    mul.s   $f12, $f16, $f10           
    jal     func_800CF470              
    nop
    lw      v0, 0x0048($sp)            
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f18                  # $f18 = 1024.00
    lh      t8, 0x0004(v0)             # 00000004
    mul.s   $f6, $f18, $f0             
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8                   
    sub.s   $f16, $f4, $f6             
    trunc.w.s $f10, $f16                 
    mfc1    t0, $f10                   
    nop
    sh      t0, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_80A20750 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A206B8:
    lui     t1, %hi(func_80A1A984)     # t1 = 80A20000
    addiu   t1, t1, %lo(func_80A1A984) # t1 = 80A1A984
    beq     t1, v0, lbl_80A206DC       
    lui     t2, %hi(func_80A1AC44)     # t2 = 80A20000
    addiu   t2, t2, %lo(func_80A1AC44) # t2 = 80A1AC44
    beq     t2, v0, lbl_80A206DC       
    lui     t3, %hi(func_80A1AD30)     # t3 = 80A20000
    addiu   t3, t3, %lo(func_80A1AD30) # t3 = 80A1AD30
    bne     t3, v0, lbl_80A2074C       
lbl_80A206DC:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a1, $at, lbl_80A206FC      
    lw      v0, 0x0048($sp)            
    addiu   $at, $zero, 0x0027         # $at = 00000027
    beq     a1, $at, lbl_80A206FC      
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    bnel    a1, $at, lbl_80A20710      
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_80A206FC:
    lh      t4, 0x0004(v0)             # 00000004
    addiu   t5, t4, 0xF000             # t5 = FFFFF000
    beq     $zero, $zero, lbl_80A2074C 
    sh      t5, 0x0004(v0)             # 00000004
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_80A20710:
    beq     a1, $at, lbl_80A20724      
    lw      v0, 0x0048($sp)            
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    a1, $at, lbl_80A20738      
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A20724:
    lh      t6, 0x0004(v0)             # 00000004
    addiu   t7, t6, 0xFB00             # t7 = FFFFFB00
    beq     $zero, $zero, lbl_80A2074C 
    sh      t7, 0x0004(v0)             # 00000004
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A20738:
    bne     a1, $at, lbl_80A2074C      
    lw      v0, 0x0048($sp)            
    lh      t8, 0x0004(v0)             # 00000004
    addiu   t9, t8, 0xFE00             # t9 = FFFFFE00
    sh      t9, 0x0004(v0)             # 00000004
lbl_80A2074C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A20750:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A20760:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    lw      t6, 0x002C($sp)            
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lui     a0, %hi(var_80A22D3C)      # a0 = 80A20000
    bne     t6, $at, lbl_80A207E8      
    lw      a1, 0x0038($sp)            
    addiu   a0, a0, %lo(var_80A22D3C)  # a0 = 80A22D3C
    jal     func_800AB958              
    addiu   a1, a1, 0x0038             # a1 = 00000038
    lui     a0, %hi(var_80A22D48)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A22D48)  # a0 = 80A22D48
    jal     func_800AB958              
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF0
    lwc1    $f4, 0x0018($sp)           
    lw      v0, 0x0038($sp)            
    trunc.w.s $f6, $f4                   
    mfc1    t8, $f6                    
    nop
    sh      t8, 0x06EA(v0)             # 000006EA
    lwc1    $f8, 0x001C($sp)           
    trunc.w.s $f10, $f8                  
    mfc1    t0, $f10                   
    nop
    sh      t0, 0x06EC(v0)             # 000006EC
    lwc1    $f16, 0x0020($sp)          
    trunc.w.s $f18, $f16                 
    mfc1    t2, $f18                   
    nop
    sh      t2, 0x06EE(v0)             # 000006EE
lbl_80A207E8:
    lw      v0, 0x0038($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_80050CE4              
    addiu   a1, v0, 0x03C4             # a1 = 000003C4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A20808:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s1, 0x0028($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s0, 0x0024($sp)            
    sw      a1, 0x0094($sp)            
    lw      t6, 0x0094($sp)            
    lw      t7, 0x0004(s1)             # 00000004
    addiu   $at, $zero, 0x0080         # $at = 00000080
    lw      a2, 0x0000(t6)             # 00000000
    andi    t8, t7, 0x0080             # t8 = 00000000
    beq     t8, $at, lbl_80A20930      
    or      s0, a2, $zero              # s0 = 00000000
    jal     func_8007E298              
    or      a0, a2, $zero              # a0 = 00000000
    lui     a0, %hi(var_80A228F4)      # a0 = 80A20000
    addiu   a0, a0, %lo(var_80A228F4)  # a0 = 80A228F4
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t0, 0xFA00                 # t0 = FA000000
    ori     t0, t0, 0x0080             # t0 = FA000080
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v0)             # 00000000
    lbu     t5, 0x0001(a0)             # 80A228F5
    lbu     t2, 0x0000(a0)             # 80A228F4
    lbu     t9, 0x0002(a0)             # 80A228F6
    sll     t6, t5, 16                 
    sll     t3, t2, 24                 
    or      t7, t3, t6                 # t7 = 00000000
    sll     t0, t9,  8                 
    or      t1, t7, t0                 # t1 = FA000080
    ori     t2, t1, 0x00FF             # t2 = FA0000FF
    sw      t2, 0x0004(v0)             # 00000004
    lui     t4, %hi(var_80A228D8)      # t4 = 80A20000
    lw      t4, %lo(var_80A228D8)(t4)  
    lui     a1, %hi(var_80A228F8)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A228F8)  # a1 = 80A228F8
    bne     t4, $zero, lbl_80A208D0    
    lui     t2, 0xDB06                 # t2 = DB060000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    addiu   t6, t6, 0x8520             # t6 = 800E8520
    ori     t3, t3, 0x0020             # t3 = DB060020
    sw      t3, 0x0000(v0)             # 00000000
    sw      t6, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_80A20980 
    lw      t0, 0x0180(s1)             # 00000180
lbl_80A208D0:
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0xFB00                 # t9 = FB000000
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lbu     t4, 0x0001(a1)             # 80A228F9
    lbu     t0, 0x0000(a1)             # 80A228F8
    lbu     t8, 0x0002(a1)             # 80A228FA
    sll     t5, t4, 16                 
    sll     t1, t0, 24                 
    or      t3, t1, t5                 # t3 = FA000088
    sll     t9, t8,  8                 
    or      t7, t3, t9                 # t7 = FB000088
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t4, %hi(var_80A21E20)      # t4 = 80A20000
    addiu   t4, t4, %lo(var_80A21E20)  # t4 = 80A21E20
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80A20980 
    lw      t0, 0x0180(s1)             # 00000180
lbl_80A20930:
    jal     func_8007E2C0              
    or      a0, a2, $zero              # a0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    ori     t5, t5, 0x0080             # t5 = FA000080
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    addiu   t9, t9, 0x8520             # t9 = 800E8520
    ori     t3, t3, 0x0020             # t3 = DB060020
    sw      t3, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      t0, 0x0180(s1)             # 00000180
lbl_80A20980:
    lui     t7, %hi(func_80A1A8C0)     # t7 = 80A20000
    addiu   t7, t7, %lo(func_80A1A8C0) # t7 = 80A1A8C0
    bnel    t7, t0, lbl_80A20A34       
    lw      t4, 0x0004(s1)             # 00000004
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A22E3C)     # $at = 80A20000
    lwc1    $f4, %lo(var_80A22E3C)($at) 
    mul.s   $f6, $f0, $f4              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0064($sp)           
    lui     $at, %hi(var_80A22E40)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A22E40)($at) 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f0, $f8             
    jal     func_800AAB94              
    swc1    $f12, 0x0060($sp)          
    lwc1    $f12, 0x0064($sp)          
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t2, 0x0188(s1)             # 00000188
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    t2, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80A22E44)     # $at = 80A20000
    lwc1    $f16, %lo(var_80A22E44)($at) 
    cvt.s.w $f0, $f10                  
    lui     $at, %hi(var_80A22E48)     # $at = 80A20000
    lwc1    $f4, %lo(var_80A22E48)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f18, $f0, $f16            
    add.s   $f12, $f18, $f2            
    mul.s   $f6, $f0, $f4              
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    sub.s   $f14, $f2, $f6             
    lwc1    $f12, 0x0064($sp)          
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0              
    neg.s   $f12, $f12                 
    lwc1    $f12, 0x0060($sp)          
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAB94              
    neg.s   $f12, $f12                 
    lw      t4, 0x0004(s1)             # 00000004
lbl_80A20A34:
    addiu   $at, $zero, 0x0080         # $at = 00000080
    lui     t3, %hi(func_80A1FF5C)     # t3 = 80A20000
    andi    t1, t4, 0x0080             # t1 = 00000000
    beq     t1, $at, lbl_80A20A88      
    addiu   t3, t3, %lo(func_80A1FF5C) # t3 = 80A1FF5C
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    lbu     a3, 0x013E(s1)             # 0000013E
    lui     t5, %hi(func_80A1FF5C)     # t5 = 80A20000
    lui     t6, %hi(func_80A20760)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A20760) # t6 = 80A20760
    addiu   t5, t5, %lo(func_80A1FF5C) # t5 = 80A1FF5C
    sw      t5, 0x0010($sp)            
    sw      t6, 0x0014($sp)            
    sw      s1, 0x0018($sp)            
    lw      t8, 0x02C0(s0)             # 000002C0
    lw      a0, 0x0094($sp)            
    jal     func_8008A88C              
    sw      t8, 0x001C($sp)            
    beq     $zero, $zero, lbl_80A20ABC 
    sw      v0, 0x02C0(s0)             # 000002C0
lbl_80A20A88:
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    lbu     a3, 0x013E(s1)             # 0000013E
    lui     t9, %hi(func_80A20760)     # t9 = 80A20000
    addiu   t9, t9, %lo(func_80A20760) # t9 = 80A20760
    sw      t9, 0x0014($sp)            
    sw      s1, 0x0018($sp)            
    sw      t3, 0x0010($sp)            
    lw      t7, 0x02D0(s0)             # 000002D0
    lw      a0, 0x0094($sp)            
    jal     func_8008A88C              
    sw      t7, 0x001C($sp)            
    sw      v0, 0x02D0(s0)             # 000002D0
lbl_80A20ABC:
    lw      t2, 0x0180(s1)             # 00000180
    lui     t0, %hi(func_80A18180)     # t0 = 80A20000
    addiu   t0, t0, %lo(func_80A18180) # t0 = 80A18180
    bnel    t0, t2, lbl_80A20C20       
    lw      a0, 0x0094($sp)            
    lh      v0, 0x0188(s1)             # 00000188
    slti    $at, v0, 0x0072            
    beq     $at, $zero, lbl_80A20C1C   
    slti    $at, v0, 0x0015            
    bne     $at, $zero, lbl_80A20C1C   
    lw      t4, 0x0094($sp)            
    jal     func_8007E2C0              
    lw      a0, 0x0000(t4)             # 00000000
    lui     $at, 0x43E1                # $at = 43E10000
    mtc1    $at, $f0                   # $f0 = 450.00
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFB4
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   t6, $zero, 0x12FF          # t6 = 000012FF
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lh      t8, 0x0188(s1)             # 00000188
    addiu   t9, $zero, 0x0388          # t9 = 00000388
    lui     $at, 0x420C                # $at = 420C0000
    sll     t3, t8,  3                 
    subu    a0, t9, t3                 
    mtc1    a0, $f10                   # $f10 = 0.00
    mtc1    $at, $f8                   # $f8 = 35.00
    lui     $at, 0xC37A                # $at = C37A0000
    cvt.s.w $f16, $f10                 
    mtc1    $at, $f18                  # $f18 = -250.00
    lui     $at, 0x433E                # $at = 433E0000
    mtc1    $at, $f6                   # $f6 = 190.00
    lui     $at, 0x0001                # $at = 00010000
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFC0
    add.s   $f4, $f16, $f18            
    swc1    $f8, 0x0050($sp)           
    swc1    $f6, 0x0058($sp)           
    c.lt.s  $f0, $f4                   
    swc1    $f4, 0x0054($sp)           
    bc1fl   lbl_80A20B74               
    lw      a2, 0x0094($sp)            
    swc1    $f0, 0x0054($sp)           
    lw      a2, 0x0094($sp)            
lbl_80A20B74:
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABD6C              
    addu    a2, a2, $at                
    lwc1    $f8, 0x0024(s1)            # 00000024
    lwc1    $f10, 0x0044($sp)          
    lwc1    $f6, 0x002C(s1)            # 0000002C
    lwc1    $f4, 0x004C($sp)           
    add.s   $f12, $f8, $f10            
    lwc1    $f16, 0x0028(s1)           # 00000028
    lwc1    $f18, 0x0048($sp)          
    add.s   $f8, $f6, $f4              
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f14, $f16, $f18           
    mfc1    a2, $f8                    
    jal     func_800AA7F4              
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t2, 0x0094($sp)            
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x003C($sp)            
    lw      a1, 0x003C($sp)            
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, %hi(var_80A22298)      # t5 = 80A20000
    addiu   t5, t5, %lo(var_80A22298)  # t5 = 80A22298
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
lbl_80A20C1C:
    lw      a0, 0x0094($sp)            
lbl_80A20C20:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addiu   a1, s1, 0x0038             # a1 = 00000038
    addiu   a2, s1, 0x03B8             # a2 = 000003B8
    jal     func_8008ED08              
    addu    a0, a0, $at                
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80A21894              
    lw      a1, 0x0094($sp)            
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_80A20C58:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x0186(s0)             # 00000186
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lh      a0, 0x00B6(s0)             # 000000B6
    jal     func_80063684              # coss?
    swc1    $f0, 0x0024($sp)           
    lui     v1, %hi(var_80A22D54)      # v1 = 80A20000
    lui     a3, %hi(var_80A22D78)      # a3 = 80A20000
    mtc1    $zero, $f12                # $f12 = 0.00
    lwc1    $f2, 0x0024($sp)           
    addiu   a3, a3, %lo(var_80A22D78)  # a3 = 80A22D78
    addiu   v1, v1, %lo(var_80A22D54)  # v1 = 80A22D54
    or      v0, s0, $zero              # v0 = 00000000
    addiu   a2, $zero, 0x0041          # a2 = 00000041
    addiu   a1, $zero, 0x00FE          # a1 = 000000FE
    addiu   a0, $zero, 0x05AA          # a0 = 000005AA
    lwc1    $f8, 0x0008(v1)            # 80A22D5C
    addiu   v1, v1, 0x000C             # v1 = 80A22D60
    lwc1    $f18, 0x0024(s0)           # 00000024
    mul.s   $f16, $f2, $f8             
    beq     v1, a3, lbl_80A20D24       
    lwc1    $f14, -0x000C(v1)          # 80A22D54
lbl_80A20CC4:
    mul.s   $f10, $f0, $f14            
    add.s   $f8, $f18, $f16            
    swc1    $f12, 0x06F4(v0)           # 000006F4
    addiu   v1, v1, 0x000C             # v1 = 80A22D6C
    addiu   v0, v0, 0x0028             # v0 = 00000028
    add.s   $f10, $f8, $f10            
    swc1    $f10, 0x06C8(v0)           # 000006F0
    lwc1    $f10, -0x0010(v1)          # 80A22D5C
    lwc1    $f8, -0x0018(v1)           # 80A22D54
    lwc1    $f6, 0x002C(s0)            # 0000002C
    mul.s   $f10, $f0, $f10            
    sh      a0, 0x06E6(v0)             # 0000070E
    sb      a1, 0x06EC(v0)             # 00000714
    mul.s   $f8, $f2, $f8              
    sh      a2, 0x06EA(v0)             # 00000712
    add.s   $f10, $f6, $f10            
    sub.s   $f8, $f10, $f8             
    swc1    $f8, 0x06D0(v0)            # 000006F8
    lwc1    $f8, -0x0004(v1)           # 80A22D68
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f14, -0x000C(v1)          # 80A22D60
    mul.s   $f16, $f2, $f8             
    bne     v1, a3, lbl_80A20CC4       
    nop
lbl_80A20D24:
    mul.s   $f10, $f0, $f14            
    add.s   $f8, $f18, $f16            
    swc1    $f12, 0x06F4(v0)           # 0000071C
    addiu   v0, v0, 0x0028             # v0 = 00000050
    add.s   $f10, $f8, $f10            
    swc1    $f10, 0x06C8(v0)           # 00000718
    lwc1    $f10, -0x0004(v1)          # 80A22D68
    lwc1    $f8, -0x000C(v1)           # 80A22D60
    lwc1    $f6, 0x002C(s0)            # 0000002C
    mul.s   $f10, $f0, $f10            
    sh      a0, 0x06E6(v0)             # 00000736
    sb      a1, 0x06EC(v0)             # 0000073C
    mul.s   $f8, $f2, $f8              
    sh      a2, 0x06EA(v0)             # 0000073A
    add.s   $f10, $f6, $f10            
    sub.s   $f8, $f10, $f8             
    swc1    $f8, 0x06D0(v0)            # 00000720
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sh      t7, 0x078A(s0)             # 0000078A
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A20D84:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x0186(a1)             # 00000186
    lh      a0, 0x00B6(a1)             # 000000B6
    jal     func_80063684              # coss?
    sw      a1, 0x0018($sp)            
    lw      a1, 0x0018($sp)            
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lb      t7, 0x0184(a1)             # 00000184
    lwc1    $f18, 0x0024(a1)           # 00000024
    mul.s   $f6, $f0, $f4              
    mtc1    t7, $f8                    # $f8 = 0.00
    lh      a0, 0x00B6(a1)             # 000000B6
    cvt.s.w $f10, $f8                  
    mul.s   $f16, $f6, $f10            
    add.s   $f4, $f16, $f18            
    jal     func_800636C4              # sins?
    swc1    $f4, 0x06F0(a1)            # 000006F0
    lw      a1, 0x0018($sp)            
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lb      t8, 0x0184(a1)             # 00000184
    lwc1    $f4, 0x002C(a1)            # 0000002C
    mul.s   $f6, $f0, $f8              
    mtc1    t8, $f10                   # $f10 = 0.00
    addiu   t9, $zero, 0x08FC          # t9 = 000008FC
    addiu   t0, $zero, 0x00FE          # t0 = 000000FE
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    cvt.s.w $f16, $f10                 
    lwc1    $f10, 0x0028(a1)           # 00000028
    sh      t9, 0x070E(a1)             # 0000070E
    sb      t0, 0x0714(a1)             # 00000714
    sh      t1, 0x0712(a1)             # 00000712
    sh      t2, 0x073A(a1)             # 0000073A
    mul.s   $f18, $f6, $f16            
    swc1    $f10, 0x06F4(a1)           # 000006F4
    sub.s   $f8, $f4, $f18             
    swc1    $f8, 0x06F8(a1)            # 000006F8
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A20E38:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s6, 0x0030($sp)            
    sw      s5, 0x002C($sp)            
    sw      s4, 0x0028($sp)            
    sw      s3, 0x0024($sp)            
    sw      s2, 0x0020($sp)            
    sw      s1, 0x001C($sp)            
    addiu   s3, $zero, 0x0078          # s3 = 00000078
    addiu   s4, $zero, 0x00FA          # s4 = 000000FA
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3964          # a1 = 00003964
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sb      t6, 0x0186(s0)             # 00000186
    addiu   s1, s0, 0x06F0             # s1 = 000006F0
    addiu   s5, s0, 0x0024             # s5 = 00000024
    addiu   s2, $zero, 0x0012          # s2 = 00000012
    addiu   s6, $zero, 0x0018          # s6 = 00000018
lbl_80A20E8C:
    or      s0, s1, $zero              # s0 = 000006F0
    or      a0, s1, $zero              # a0 = 000006F0
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, s5, $zero              # a1 = 00000024
    sh      s2, 0x0020(s0)             # 00000710
    lh      t7, 0x0020(s0)             # 00000710
    addiu   s2, s2, 0x0002             # s2 = 00000014
    sh      s3, 0x001E(s0)             # 0000070E
    div     $zero, s4, t7              
    mflo    t8                         
    addiu   s1, s1, 0x0028             # s1 = 00000718
    bne     t7, $zero, lbl_80A20EC4    
    nop
    break   # 0x01C00
lbl_80A20EC4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t7, $at, lbl_80A20EDC      
    lui     $at, 0x8000                # $at = 80000000
    bne     s4, $at, lbl_80A20EDC      
    nop
    break   # 0x01800
lbl_80A20EDC:
    sb      t8, 0x0024(s0)             # 00000714
    addiu   s3, s3, 0xFFCE             # s3 = 00000046
    bne     s2, s6, lbl_80A20E8C       
    addiu   s4, s4, 0xFFE7             # s4 = 000000E1
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    lw      s3, 0x0024($sp)            
    lw      s4, 0x0028($sp)            
    lw      s5, 0x002C($sp)            
    lw      s6, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80A20F14:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    slti    $at, a1, 0x000B            
    beq     $at, $zero, lbl_80A20FC4   
    addiu   a0, a1, 0xFFF5             # a0 = FFFFFFF5
    lw      t6, 0x03E0(s1)             # 000003E0
    sll     t7, a1,  6                 
    sll     t8, a1,  2                 
    addu    v1, t6, t7                 
    lh      t9, 0x0030(v1)             # 00000030
    addu    t8, t8, a1                 
    sll     t8, t8,  3                 
    mtc1    t9, $f4                    # $f4 = 0.00
    addu    s0, s1, t8                 
    addiu   v1, v1, 0x0030             # v1 = 00000030
    cvt.s.w $f6, $f4                   
    addiu   s0, s0, 0x06F0             # s0 = 000006F0
    lui     $at, 0x41C8                # $at = 41C80000
    swc1    $f6, 0x0000(s0)            # 000006F0
    lh      t0, 0x0002(v1)             # 00000032
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0004(s0)           # 000006F4
    lh      t1, 0x0004(v1)             # 00000034
    mtc1    t1, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    bne     a1, $zero, lbl_80A21088    
    swc1    $f18, 0x0008(s0)           # 000006F8
    mtc1    $at, $f0                   # $f0 = 25.00
    lwc1    $f4, 0x0000(s0)            # 000006F0
    lwc1    $f8, 0x0004(s0)            # 000006F4
    lwc1    $f16, 0x0008(s0)           # 000006F8
    sub.s   $f6, $f4, $f0              
    sub.s   $f10, $f8, $f0             
    swc1    $f6, 0x0000(s0)            # 000006F0
    sub.s   $f18, $f16, $f0            
    swc1    $f10, 0x0004(s0)           # 000006F4
    beq     $zero, $zero, lbl_80A21088 
    swc1    $f18, 0x0008(s0)           # 000006F8
lbl_80A20FC4:
    lw      v1, 0x03E0(s1)             # 000003E0
    andi    t2, a0, 0x0001             # t2 = 00000001
    beq     t2, $zero, lbl_80A20FDC    
    addiu   v1, v1, 0x0030             # v1 = 00000060
    beq     $zero, $zero, lbl_80A20FE0 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A20FDC:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80A20FE0:
    mtc1    v0, $f4                    # $f4 = NaN
    lh      t4, 0x0000(v1)             # 00000060
    lui     $at, 0x41C8                # $at = 41C80000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f0                   # $f0 = 25.00
    mtc1    t4, $f10                   # $f10 = 0.00
    sll     t3, a1,  2                 
    addu    t3, t3, a1                 
    cvt.s.w $f16, $f10                 
    mul.s   $f8, $f6, $f0              
    sll     t3, t3,  3                 
    addu    s0, s1, t3                 
    andi    t5, a0, 0x0002             # t5 = 00000000
    addiu   s0, s0, 0x06F0             # s0 = 00000DE0
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    add.s   $f18, $f8, $f16            
    beq     t5, $zero, lbl_80A21030    
    swc1    $f18, 0x0000(s0)           # 00000DE0
    beq     $zero, $zero, lbl_80A21030 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A21030:
    mtc1    v0, $f4                    # $f4 = 0.00
    lh      t6, 0x0002(v1)             # 00000062
    andi    t7, a0, 0x0004             # t7 = 00000004
    cvt.s.w $f6, $f4                   
    mtc1    t6, $f8                    # $f8 = 0.00
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    cvt.s.w $f16, $f8                  
    mul.s   $f10, $f6, $f0             
    add.s   $f18, $f10, $f16           
    beq     t7, $zero, lbl_80A21064    
    swc1    $f18, 0x0004(s0)           # 00000DE4
    beq     $zero, $zero, lbl_80A21064 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A21064:
    mtc1    v0, $f4                    # $f4 = 0.00
    lh      t8, 0x0004(v1)             # 00000064
    cvt.s.w $f6, $f4                   
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f8, $f6, $f0              
    add.s   $f18, $f8, $f16            
    swc1    $f18, 0x0008(s0)           # 00000DE8
lbl_80A21088:
    lwc1    $f4, 0x0000(s0)            # 00000DE0
    lwc1    $f6, 0x0024(s1)            # 00000024
    lwc1    $f8, 0x0004(s0)            # 00000DE4
    sub.s   $f10, $f4, $f6             
    lwc1    $f4, 0x0008(s0)            # 00000DE8
    swc1    $f10, 0x0000(s0)           # 00000DE0
    lwc1    $f16, 0x0028(s1)           # 00000028
    sub.s   $f18, $f8, $f16            
    swc1    $f18, 0x0004(s0)           # 00000DE4
    lwc1    $f6, 0x002C(s1)            # 0000002C
    sh      $zero, 0x0022(s0)          # 00000E02
    sub.s   $f10, $f4, $f6             
    swc1    $f10, 0x0008(s0)           # 00000DE8
    jal     func_800CDCCC              # Rand.Next() float
    sw      a1, 0x0024($sp)            
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f8                   # $f8 = 65536.00
    nop
    mul.s   $f16, $f0, $f8             
    trunc.w.s $f18, $f16                 
    mfc1    t0, $f18                   
    jal     func_800CDCCC              # Rand.Next() float
    sh      t0, 0x0018(s0)             # 00000DF8
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f4                   # $f4 = 65536.00
    nop
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f10, $f6                  
    mfc1    t2, $f10                   
    jal     func_800CDCCC              # Rand.Next() float
    sh      t2, 0x001A(s0)             # 00000DFA
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f8                   # $f8 = 65536.00
    addiu   t5, $zero, 0x0078          # t5 = 00000078
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    mul.s   $f16, $f0, $f8             
    sb      t5, 0x0024(s0)             # 00000E04
    sh      t6, 0x0020(s0)             # 00000E00
    trunc.w.s $f18, $f16                 
    mfc1    t4, $f18                   
    jal     func_800CDCCC              # Rand.Next() float
    sh      t4, 0x001C(s0)             # 00000DFC
    lui     $at, %hi(var_80A22E4C)     # $at = 80A20000
    lwc1    $f4, %lo(var_80A22E4C)($at) 
    lui     $at, %hi(var_80A22E50)     # $at = 80A20000
    lwc1    $f10, %lo(var_80A22E50)($at) 
    mul.s   $f6, $f0, $f4              
    lwc1    $f16, 0x0000(s0)           # 00000DE0
    add.s   $f8, $f6, $f10             
    mul.s   $f18, $f8, $f16            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x000C(s0)           # 00000DEC
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    mul.s   $f6, $f0, $f4              
    add.s   $f8, $f6, $f10             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0010(s0)            # 00000DF0
    lui     $at, %hi(var_80A22E54)     # $at = 80A20000
    lwc1    $f16, %lo(var_80A22E54)($at) 
    lui     $at, %hi(var_80A22E58)     # $at = 80A20000
    lwc1    $f4, %lo(var_80A22E58)($at) 
    mul.s   $f18, $f0, $f16            
    lwc1    $f10, 0x0008(s0)           # 00000DE8
    lw      a1, 0x0024($sp)            
    addiu   t7, $zero, 0x0FA0          # t7 = 00000FA0
    sh      t7, 0x001E(s0)             # 00000DFE
    andi    t8, a1, 0x0001             # t8 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f6, $f18, $f4             
    mul.s   $f8, $f6, $f10             
    bne     t8, $zero, lbl_80A211BC    
    swc1    $f8, 0x0014(s0)            # 00000DF4
    jal     func_80022FD0              
    addiu   a1, $zero, 0x0874          # a1 = 00000874
lbl_80A211BC:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A211D0:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s2, 0x0050($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0064($sp)           
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s3, 0x0054($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0186(s2)             # 00000186
    jal     func_80063684              # coss?
    lh      a0, 0x00B4(s2)             # 000000B4
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f22                  # $f22 = 50.00
    lh      a0, 0x00B6(s2)             # 000000B6
    mul.s   $f20, $f0, $f22            
    jal     func_80063684              # coss?
    nop
    mul.s   $f4, $f0, $f20             
    lwc1    $f6, 0x0024(s2)            # 00000024
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0078($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B4(s2)             # 000000B4
    mul.s   $f10, $f0, $f22            
    lwc1    $f16, 0x0028(s2)           # 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f30                  # $f30 = 10.00
    add.s   $f18, $f10, $f16           
    sub.s   $f4, $f18, $f30            
    swc1    $f4, 0x007C($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    mul.s   $f6, $f0, $f20             
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f28                  # $f28 = 400.00
    lui     $at, 0x4348                # $at = 43480000
    lwc1    $f8, 0x002C(s2)            # 0000002C
    mtc1    $at, $f26                  # $f26 = 200.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f24                  # $f24 = 3.00
    add.s   $f10, $f6, $f8             
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f22                  # $f22 = 20.00
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f20                  # $f20 = 65536.00
    swc1    $f10, 0x0080($sp)          
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s0, s2, 0x06F0             # s0 = 000006F0
    addiu   s6, $zero, 0x02D0          # s6 = 000002D0
    addiu   s5, $zero, 0x0078          # s5 = 00000078
    addiu   s4, $sp, 0x0078            # s4 = FFFFFFF0
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_80A212C4:
    or      s2, s0, $zero              # s2 = 000006F0
    or      a0, s0, $zero              # a0 = 000006F0
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, s4, $zero              # a1 = FFFFFFF0
    jal     func_800CDCCC              # Rand.Next() float
    sh      s3, 0x0022(s0)             # 00000712
    mul.s   $f16, $f0, $f20            
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    jal     func_800CDCCC              # Rand.Next() float
    sh      t8, 0x0018(s0)             # 00000708
    mul.s   $f4, $f0, $f20             
    trunc.w.s $f6, $f4                   
    mfc1    t0, $f6                    
    jal     func_800CDCCC              # Rand.Next() float
    sh      t0, 0x001A(s0)             # 0000070A
    mul.s   $f8, $f0, $f20             
    sb      s5, 0x0024(s0)             # 00000714
    sh      s3, 0x0020(s0)             # 00000710
    mov.s   $f12, $f22                 
    trunc.w.s $f10, $f8                  
    mfc1    t2, $f10                   
    jal     func_80026D90              
    sh      t2, 0x001C(s0)             # 0000070C
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x000C(s0)            # 000006FC
    mul.s   $f16, $f0, $f30            
    mov.s   $f12, $f22                 
    add.s   $f18, $f16, $f24           
    jal     func_80026D90              
    swc1    $f18, 0x0010(s0)           # 00000700
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0014(s0)            # 00000704
    mul.s   $f4, $f0, $f26             
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   s1, s1, 0x0028             # s1 = 00000028
    addiu   s0, s0, 0x0028             # s0 = 00000718
    lui     $at, 0x4F00                # $at = 4F000000
    add.s   $f6, $f4, $f28             
    cfc1    t3, $f31                   
    ctc1    t4, $f31                   
    nop
    cvt.w.s $f8, $f6                   
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_80A213CC    
    mfc1    t4, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t4, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t4, $f31                   
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_80A213C0    
    nop
    mfc1    t4, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A213D8 
    or      t4, t4, $at                # t4 = 80000000
lbl_80A213C0:
    beq     $zero, $zero, lbl_80A213D8 
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f8                    
lbl_80A213CC:
    nop
    bltz    t4, lbl_80A213C0           
    nop
lbl_80A213D8:
    ctc1    t3, $f31                   
    bne     s1, s6, lbl_80A212C4       
    sh      t4, 0x001E(s2)             # 0000070E
    lw      $ra, 0x0064($sp)           
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
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_80A21424:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x0712(a0)             # 00000712
    sw      a0, 0x0018($sp)            
    jal     func_80022FD0              
    addiu   a1, $zero, 0x0875          # a1 = 00000875
    lw      a0, 0x0018($sp)            
    addiu   a1, $zero, 0x0050          # a1 = 00000050
    addiu   a2, $zero, 0x02D0          # a2 = 000002D0
    lh      t7, 0x0710(a0)             # 00000710
    or      v1, a0, $zero              # v1 = 00000000
    addiu   v0, v1, 0x06F0             # v0 = 000006F0
    beql    t7, $zero, lbl_80A21494    
    lh      t8, 0x0738(v1)             # 00000738
    lwc1    $f4, 0x0000(v0)            # 000006F0
    lwc1    $f6, 0x0024(a0)            # 00000024
    lwc1    $f10, 0x0004(v0)           # 000006F4
    add.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0008(v0)            # 000006F8
    swc1    $f8, 0x0000(v0)            # 000006F0
    lwc1    $f16, 0x0028(a0)           # 00000028
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0004(v0)           # 000006F4
    lwc1    $f6, 0x002C(a0)            # 0000002C
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0008(v0)            # 000006F8
    lh      t8, 0x0738(v1)             # 00000738
lbl_80A21494:
    addiu   v0, v1, 0x0718             # v0 = 00000718
    beql    t8, $zero, lbl_80A214D4    
    addiu   v1, a0, 0x0050             # v1 = 00000050
    lwc1    $f10, 0x0000(v0)           # 00000718
    lwc1    $f16, 0x0024(a0)           # 00000024
    lwc1    $f4, 0x0004(v0)            # 0000071C
    add.s   $f18, $f10, $f16           
    lwc1    $f10, 0x0008(v0)           # 00000720
    swc1    $f18, 0x0000(v0)           # 00000718
    lwc1    $f6, 0x0028(a0)            # 00000028
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0004(v0)            # 0000071C
    lwc1    $f16, 0x002C(a0)           # 0000002C
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0008(v0)           # 00000720
    addiu   v1, a0, 0x0050             # v1 = 00000050
lbl_80A214D4:
    lh      t9, 0x0710(v1)             # 00000760
    addiu   a1, a1, 0x00A0             # a1 = 000000F0
    addiu   v0, v1, 0x06F0             # v0 = 00000740
    beql    t9, $zero, lbl_80A2151C    
    lh      t0, 0x0738(v1)             # 00000788
    lwc1    $f4, 0x0000(v0)            # 00000740
    lwc1    $f6, 0x0024(a0)            # 00000024
    lwc1    $f10, 0x0004(v0)           # 00000744
    add.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0008(v0)            # 00000748
    swc1    $f8, 0x0000(v0)            # 00000740
    lwc1    $f16, 0x0028(a0)           # 00000028
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0004(v0)           # 00000744
    lwc1    $f6, 0x002C(a0)            # 0000002C
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0008(v0)            # 00000748
    lh      t0, 0x0738(v1)             # 00000788
lbl_80A2151C:
    addiu   v0, v1, 0x0718             # v0 = 00000768
    beql    t0, $zero, lbl_80A2155C    
    lh      t1, 0x0760(v1)             # 000007B0
    lwc1    $f10, 0x0000(v0)           # 00000768
    lwc1    $f16, 0x0024(a0)           # 00000024
    lwc1    $f4, 0x0004(v0)            # 0000076C
    add.s   $f18, $f10, $f16           
    lwc1    $f10, 0x0008(v0)           # 00000770
    swc1    $f18, 0x0000(v0)           # 00000768
    lwc1    $f6, 0x0028(a0)            # 00000028
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0004(v0)            # 0000076C
    lwc1    $f16, 0x002C(a0)           # 0000002C
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0008(v0)           # 00000770
    lh      t1, 0x0760(v1)             # 000007B0
lbl_80A2155C:
    addiu   v0, v1, 0x0740             # v0 = 00000790
    beql    t1, $zero, lbl_80A2159C    
    lh      t2, 0x0788(v1)             # 000007D8
    lwc1    $f4, 0x0000(v0)            # 00000790
    lwc1    $f6, 0x0024(a0)            # 00000024
    lwc1    $f10, 0x0004(v0)           # 00000794
    add.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0008(v0)            # 00000798
    swc1    $f8, 0x0000(v0)            # 00000790
    lwc1    $f16, 0x0028(a0)           # 00000028
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0004(v0)           # 00000794
    lwc1    $f6, 0x002C(a0)            # 0000002C
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0008(v0)            # 00000798
    lh      t2, 0x0788(v1)             # 000007D8
lbl_80A2159C:
    addiu   v0, v1, 0x0768             # v0 = 000007B8
    beq     t2, $zero, lbl_80A215D8    
    nop
    lwc1    $f10, 0x0000(v0)           # 000007B8
    lwc1    $f16, 0x0024(a0)           # 00000024
    lwc1    $f4, 0x0004(v0)            # 000007BC
    add.s   $f18, $f10, $f16           
    lwc1    $f10, 0x0008(v0)           # 000007C0
    swc1    $f18, 0x0000(v0)           # 000007B8
    lwc1    $f6, 0x0028(a0)            # 00000028
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0004(v0)            # 000007BC
    lwc1    $f16, 0x002C(a0)           # 0000002C
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0008(v0)           # 000007C0
lbl_80A215D8:
    bne     a1, a2, lbl_80A214D4       
    addiu   v1, v1, 0x00A0             # v1 = 000000F0
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A215F0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x003C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lbu     v0, 0x0186(a3)             # 00000186
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $zero, lbl_80A21888    
    lw      $ra, 0x0014($sp)           
    bnel    v0, $at, lbl_80A21748      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      t6, 0x0712(a3)             # 00000712
    or      a0, $zero, $zero           # a0 = 00000000
    or      v1, a3, $zero              # v1 = 00000000
    beq     t6, $zero, lbl_80A21730    
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    addiu   a1, $zero, 0x02D0          # a1 = 000002D0
lbl_80A21634:
    lh      t7, 0x0710(v1)             # 00000710
    addiu   a0, a0, 0x0050             # a0 = 00000050
    addiu   v0, v1, 0x06F0             # v0 = 000006F0
    beql    t7, $zero, lbl_80A216B4    
    lh      t7, 0x0738(v1)             # 00000738
    lwc1    $f4, 0x0000(v0)            # 000006F0
    lwc1    $f6, 0x000C(v0)            # 000006FC
    lwc1    $f0, 0x0010(v0)            # 00000700
    lwc1    $f10, 0x0004(v0)           # 000006F4
    add.s   $f8, $f4, $f6              
    lwc1    $f4, 0x0014(v0)            # 00000704
    lwc1    $f18, 0x0008(v0)           # 000006F8
    add.s   $f16, $f10, $f0            
    swc1    $f8, 0x0000(v0)            # 000006F0
    lbu     t8, 0x0024(v0)             # 00000714
    sub.s   $f8, $f0, $f2              
    lh      t1, 0x0018(v0)             # 00000708
    lh      t3, 0x001A(v0)             # 0000070A
    add.s   $f6, $f18, $f4             
    lh      t5, 0x001C(v0)             # 0000070C
    addiu   t9, t8, 0xFFFD             # t9 = FFFFFFFD
    addiu   t2, t1, 0x0D00             # t2 = 00000D00
    addiu   t4, t3, 0x1100             # t4 = 00001100
    addiu   t6, t5, 0x1500             # t6 = 00001500
    swc1    $f16, 0x0004(v0)           # 000006F4
    swc1    $f6, 0x0008(v0)            # 000006F8
    sb      t9, 0x0024(v0)             # 00000714
    swc1    $f8, 0x0010(v0)            # 00000700
    sh      t2, 0x0018(v0)             # 00000708
    sh      t4, 0x001A(v0)             # 0000070A
    sh      t6, 0x001C(v0)             # 0000070C
    lh      t7, 0x0738(v1)             # 00000738
lbl_80A216B4:
    addiu   v0, v1, 0x0718             # v0 = 00000718
    beq     t7, $zero, lbl_80A21728    
    nop
    lwc1    $f10, 0x0000(v0)           # 00000718
    lwc1    $f16, 0x000C(v0)           # 00000724
    lwc1    $f0, 0x0010(v0)            # 00000728
    lwc1    $f4, 0x0004(v0)            # 0000071C
    add.s   $f18, $f10, $f16           
    lwc1    $f10, 0x0014(v0)           # 0000072C
    lwc1    $f8, 0x0008(v0)            # 00000720
    add.s   $f6, $f4, $f0              
    swc1    $f18, 0x0000(v0)           # 00000718
    lbu     t8, 0x0024(v0)             # 0000073C
    sub.s   $f18, $f0, $f2             
    lh      t1, 0x0018(v0)             # 00000730
    lh      t3, 0x001A(v0)             # 00000732
    add.s   $f16, $f8, $f10            
    lh      t5, 0x001C(v0)             # 00000734
    addiu   t9, t8, 0xFFFD             # t9 = FFFFFFFD
    addiu   t2, t1, 0x0D00             # t2 = 00000D00
    addiu   t4, t3, 0x1100             # t4 = 00001100
    addiu   t6, t5, 0x1500             # t6 = 00001500
    sh      t6, 0x001C(v0)             # 00000734
    sh      t4, 0x001A(v0)             # 00000732
    sh      t2, 0x0018(v0)             # 00000730
    sb      t9, 0x0024(v0)             # 0000073C
    swc1    $f16, 0x0008(v0)           # 00000720
    swc1    $f18, 0x0010(v0)           # 00000728
    swc1    $f6, 0x0004(v0)            # 0000071C
lbl_80A21728:
    bne     a0, a1, lbl_80A21634       
    addiu   v1, v1, 0x0050             # v1 = 00000050
lbl_80A21730:
    lbu     t7, 0x0714(a3)             # 00000714
    bnel    t7, $zero, lbl_80A21888    
    lw      $ra, 0x0014($sp)           
    beq     $zero, $zero, lbl_80A21884 
    sb      $zero, 0x0186(a3)          # 00000186
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A21748:
    bne     v0, $at, lbl_80A217C4      
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    or      a2, $zero, $zero           # a2 = 00000000
    or      v1, a3, $zero              # v1 = 00000000
    addiu   v0, a3, 0x06F0             # v0 = 000006F0
    addiu   t0, $zero, 0x0003          # t0 = 00000003
lbl_80A21760:
    lh      a0, 0x0710(v1)             # 00000710
    addiu   v1, v1, 0x0028             # v1 = 00000028
    sll     a0, a0,  1                 
    slti    $at, a0, 0x0015            
    bne     $at, $zero, lbl_80A21780   
    or      a1, a0, $zero              # a1 = 00000050
    beq     $zero, $zero, lbl_80A21780 
    addiu   a1, $zero, 0x0014          # a1 = 00000014
lbl_80A21780:
    lhu     t8, 0x001E(v0)             # 0000070E
    lh      a0, 0x0020(v0)             # 00000710
    addu    t9, t8, a1                 
    addu    t1, t9, a2                 
    beq     a0, $zero, lbl_80A217A0    
    sh      t1, 0x001E(v0)             # 0000070E
    addiu   t2, a0, 0xFFFF             # t2 = 0000004F
    sh      t2, 0x0020(v0)             # 00000710
lbl_80A217A0:
    addiu   a2, a2, 0x0001             # a2 = 00000001
    bne     a2, t0, lbl_80A21760       
    addiu   v0, v0, 0x0028             # v0 = 00000718
    lh      t3, 0x0710(a3)             # 00000710
    bnel    t3, $zero, lbl_80A21888    
    lw      $ra, 0x0014($sp)           
    sb      $zero, 0x0186(a3)          # 00000186
    beq     $zero, $zero, lbl_80A21888 
    lw      $ra, 0x0014($sp)           
lbl_80A217C4:
    bnel    t0, v0, lbl_80A21888       
    lw      $ra, 0x0014($sp)           
    lh      t4, 0x001C(a3)             # 0000001C
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    addiu   v1, a3, 0x06F0             # v1 = 000006F0
    bne     t0, t4, lbl_80A21820       
    or      v0, v1, $zero              # v0 = 000006F0
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addiu   a1, a3, 0x0038             # a1 = 00000038
    addiu   a2, a3, 0x03B8             # a2 = 000003B8
    sw      v0, 0x0030($sp)            
    sw      v1, 0x001C($sp)            
    sw      a3, 0x0038($sp)            
    jal     func_8008ED08              
    addu    a0, a0, $at                
    lw      a0, 0x0038($sp)            
    jal     func_80A1F2A4              
    addiu   a1, $zero, 0x318C          # a1 = 0000318C
    lw      v0, 0x0030($sp)            
    lw      v1, 0x001C($sp)            
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
lbl_80A21820:
    lh      t5, 0x0022(v1)             # 00000022
    addiu   a0, $zero, 0x2710          # a0 = 00002710
    beql    t0, t5, lbl_80A21888       
    lw      $ra, 0x0014($sp)           
    lh      v1, 0x0022(v0)             # 00000022
lbl_80A21834:
    bnel    v1, $zero, lbl_80A21850    
    lhu     t8, 0x001E(v0)             # 0000001E
    lbu     t6, 0x0024(v0)             # 00000024
    addiu   t7, t6, 0xFFFE             # t7 = FFFFFFFE
    beq     $zero, $zero, lbl_80A21858 
    sb      t7, 0x0024(v0)             # 00000024
    lhu     t8, 0x001E(v0)             # 0000001E
lbl_80A21850:
    addu    t9, t8, v1                 
    sh      t9, 0x001E(v0)             # 0000001E
lbl_80A21858:
    lhu     v1, 0x001E(v0)             # 0000001E
    slti    $at, v1, 0x2711            
    bnel    $at, $zero, lbl_80A21874   
    sh      v1, 0x001E(v0)             # 0000001E
    beq     $zero, $zero, lbl_80A21874 
    sh      a0, 0x001E(v0)             # 0000001E
    sh      v1, 0x001E(v0)             # 0000001E
lbl_80A21874:
    lh      v1, 0x004A(v0)             # 0000004A
    addiu   v0, v0, 0x0028             # v0 = 00000028
    bne     t0, v1, lbl_80A21834       
    nop
lbl_80A21884:
    lw      $ra, 0x0014($sp)           
lbl_80A21888:
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A21894:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s3, 0x0054($sp)            
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x006C($sp)           
    sw      s8, 0x0068($sp)            
    sw      s7, 0x0064($sp)            
    sw      s6, 0x0060($sp)            
    sw      s5, 0x005C($sp)            
    sw      s4, 0x0058($sp)            
    sw      s2, 0x0050($sp)            
    sw      s1, 0x004C($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f22, 0x0040($sp)          
    sdc1    $f20, 0x0038($sp)          
    sw      a1, 0x0074($sp)            
    lbu     t6, 0x0186(s3)             # 00000186
    lw      t7, 0x0074($sp)            
    beql    t6, $zero, lbl_80A21DE4    
    lw      $ra, 0x006C($sp)           
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_8007E2C0              
    or      s2, a0, $zero              # s2 = 00000000
    lbu     v0, 0x0186(s3)             # 00000186
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t9, 0xDB06                 # t9 = DB060000
    bne     v0, $at, lbl_80A21AE4      
    ori     t9, t9, 0x0020             # t9 = DB060020
    lw      v0, 0x0074($sp)            
    lw      s1, 0x02D0(s2)             # 000002D0
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, v0                 
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0000(s1)             # 00000000
    lw      v1, 0x1DE4(v1)             # 00011DE4
    lw      a0, 0x0000(v0)             # 00000000
    addiu   t0, $zero, 0x0020          # t0 = 00000020
    sll     t3, v1,  1                 
    andi    t4, t3, 0x00FF             # t4 = 00000000
    addiu   t1, $zero, 0x0010          # t1 = 00000010
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0028($sp)            
    sw      t5, 0x0024($sp)            
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t4, 0x0020($sp)            
    sw      t0, 0x0010($sp)            
    sw      $zero, 0x001C($sp)         
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84              
    andi    a3, v1, 0x00FF             # a3 = 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    lui     $at, 0x0032                # $at = 00320000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lbu     t0, 0x0714(s3)             # 00000714
    ori     $at, $at, 0x6400           # $at = 00326400
    lui     t3, 0xDE00                 # t3 = DE000000
    or      t1, t0, $at                # t1 = 00326400
    sw      t1, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t4, 0x0601                 # t4 = 06010000
    addiu   t4, t4, 0x6AE0             # t4 = 06016AE0
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      t4, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lui     $at, %hi(var_80A22E5C)     # $at = 80A20000
    lwc1    $f22, %lo(var_80A22E5C)($at) 
    or      s6, $zero, $zero           # s6 = 00000000
    or      s5, s3, $zero              # s5 = 00000000
    addiu   s7, $zero, 0x02D0          # s7 = 000002D0
lbl_80A219CC:
    lh      t5, 0x0710(s5)             # 00000710
    addiu   s1, s5, 0x06F0             # s1 = 000006F0
    or      a0, s1, $zero              # a0 = 000006F0
    beq     t5, $zero, lbl_80A21AD0    
    lw      a1, 0x0074($sp)            
    lui     s4, 0x0601                 # s4 = 06010000
    jal     func_80027188              
    addiu   s4, s4, 0x6B80             # s4 = 06016B80
    lh      t6, 0x0712(s3)             # 00000712
    or      a3, $zero, $zero           # a3 = 00000000
    beql    t6, $zero, lbl_80A21A18    
    lwc1    $f4, 0x0000(s1)            # 000006F0
    lwc1    $f12, 0x0000(s1)           # 000006F0
    lwc1    $f14, 0x0004(s1)           # 000006F4
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 000006F8
    beq     $zero, $zero, lbl_80A21A4C 
    lh      a0, 0x0018(s1)             # 00000708
    lwc1    $f4, 0x0000(s1)            # 000006F0
lbl_80A21A18:
    lwc1    $f6, 0x0024(s3)            # 00000024
    lwc1    $f16, 0x0008(s1)           # 000006F8
    lwc1    $f18, 0x002C(s3)           # 0000002C
    add.s   $f12, $f4, $f6             
    lwc1    $f8, 0x0004(s1)            # 000006F4
    lwc1    $f10, 0x0028(s3)           # 00000028
    add.s   $f4, $f16, $f18            
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f14, $f8, $f10            
    mfc1    a2, $f4                    
    jal     func_800AA7F4              
    nop
    lh      a0, 0x0018(s1)             # 00000708
lbl_80A21A4C:
    lh      a1, 0x001A(s1)             # 0000070A
    lh      a2, 0x001C(s1)             # 0000070C
    jal     func_800AAF00              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lhu     t7, 0x001E(s1)             # 0000070E
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f6                    # $f6 = 0.00
    bgez    t7, lbl_80A21A7C           
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10             
lbl_80A21A7C:
    mul.s   $f12, $f8, $f22            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s1, 0x02D0(s2)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s1, 0x0008             # t8 = 000006F8
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0000(s1)             # 000006F0
    lw      t0, 0x0074($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t0)             # 00000000
    sw      v0, 0x0004(s1)             # 000006F4
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
lbl_80A21AD0:
    addiu   s6, s6, 0x0028             # s6 = 00000028
    bne     s6, s7, lbl_80A219CC       
    addiu   s5, s5, 0x0028             # s5 = 00000028
    beq     $zero, $zero, lbl_80A21DE4 
    lw      $ra, 0x006C($sp)           
lbl_80A21AE4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80A21CC4      
    lui     t6, 0xDB06                 # t6 = DB060000
    lui     $at, %hi(var_80A22E60)     # $at = 80A20000
    lwc1    $f20, %lo(var_80A22E60)($at) 
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t4, 0xE700                 # t4 = E7000000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s1, 0x02D0(s2)             # 000002D0
    lui     v1, 0x0001                 # v1 = 00010000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t5, s1, 0x0008             # t5 = 000006F8
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0000(s1)             # 000006F0
    lw      t7, 0x0074($sp)            
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addu    v1, v1, t7                 
    lw      v1, 0x1DE4(v1)             # 00011DE4
    lw      a0, 0x0000(t7)             # 00000000
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    subu    $at, $zero, v1             
    sll     t1, $at,  4                
    subu    t1, t1, $at                
    andi    t2, t1, 0x00FF             # t2 = 00000008
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    sw      t4, 0x0028($sp)            
    sw      t2, 0x0020($sp)            
    sw      t3, 0x0024($sp)            
    sw      $zero, 0x001C($sp)         
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84              
    andi    a2, v1, 0x007F             # a2 = 00000000
    sw      v0, 0x0004(s1)             # 000006F4
    lui     $at, %hi(var_80A22E64)     # $at = 80A20000
    lui     s8, 0x1E00                 # s8 = 1E000000
    ori     s8, s8, 0x1E00             # s8 = 1E001E00
    lwc1    $f22, %lo(var_80A22E64)($at) 
    or      s6, $zero, $zero           # s6 = 00000000
    or      s5, s3, $zero              # s5 = 00000000
lbl_80A21BA4:
    lh      t5, 0x0710(s5)             # 00000710
    addiu   s1, s5, 0x06F0             # s1 = 000006F0
    or      a3, $zero, $zero           # a3 = 00000000
    beq     t5, $zero, lbl_80A21CA8    
    lui     s7, 0x0402                 # s7 = 04020000
    lwc1    $f12, 0x0000(s1)           # 000006F0
    lwc1    $f14, 0x0004(s1)           # 000006F4
    lw      a2, 0x0008(s1)             # 000006F8
    jal     func_800AA7F4              
    addiu   s7, s7, 0x8950             # s7 = 04018950
    lhu     t6, 0x001E(s1)             # 0000070E
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f16                   # $f16 = 0.00
    bgez    t6, lbl_80A21BEC           
    cvt.s.w $f18, $f16                 
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4            
lbl_80A21BEC:
    mul.s   $f12, $f18, $f22           
    mov.s   $f14, $f20                 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    nop
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t0, 0xFA00                 # t0 = FA000000
    ori     t0, t0, 0x8080             # t0 = FA008080
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      t0, 0x0000(s0)             # 00000000
    lh      t2, 0x0020(s1)             # 00000710
    lbu     t1, 0x0024(s1)             # 00000714
    multu   t1, t2                     
    mflo    t3                         
    andi    t4, t3, 0x00FF             # t4 = 00000000
    or      t5, t4, s8                 # t5 = 1E001E00
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      s8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s4, 0x02D0(s2)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s4, 0x0008             # t8 = 06016B88
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0000(s4)             # 06016B80
    lw      t0, 0x0074($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t0)             # FA008080
    sw      v0, 0x0004(s4)             # 06016B84
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      s7, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
lbl_80A21CA8:
    addiu   s6, s6, 0x0028             # s6 = 00000028
    addiu   $at, $zero, 0x0078         # $at = 00000078
    addiu   s5, s5, 0x0028             # s5 = 00000028
    bne     s6, $at, lbl_80A21BA4      
    sub.s   $f20, $f20, $f22           
    beq     $zero, $zero, lbl_80A21DE4 
    lw      $ra, 0x006C($sp)           
lbl_80A21CC4:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_80A21DE0      
    addiu   s5, $zero, 0xFFFF          # s5 = FFFFFFFF
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    lui     t5, 0x0A0A                 # t5 = 0A0A0000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    ori     t5, t5, 0x5000             # t5 = 0A0A5000
    ori     t4, t4, 0x0080             # t4 = FA000080
    sw      t4, 0x0000(s0)             # 00000000
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    lui     $at, 0x0A0A                # $at = 0A0A0000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lbu     t9, 0x0714(s3)             # 00000714
    ori     $at, $at, 0x0A00           # $at = 0A0A0A00
    lui     s4, %hi(var_80A22750)      # s4 = 80A20000
    or      t0, t9, $at                # t0 = 0A0A0A00
    sw      t0, 0x0004(s0)             # 00000004
    lh      t1, 0x0712(s3)             # 00000712
    addiu   s1, s3, 0x06F0             # s1 = 000006F0
    lui     $at, %hi(var_80A22E68)     # $at = 80A20000
    beql    s5, t1, lbl_80A21DE4       
    lw      $ra, 0x006C($sp)           
    lwc1    $f22, %lo(var_80A22E68)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    addiu   s4, s4, %lo(var_80A22750)  # s4 = 80A22750
    lwc1    $f12, 0x0000(s1)           # 000006F0
lbl_80A21D48:
    lwc1    $f14, 0x0004(s1)           # 000006F4
    lw      a2, 0x0008(s1)             # 000006F8
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lhu     t2, 0x001E(s1)             # 0000070E
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t2, $f6                    # $f6 = 0.00
    bgez    t2, lbl_80A21D78           
    cvt.s.w $f10, $f6                  
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f10, $f10, $f8            
lbl_80A21D78:
    mul.s   $f12, $f10, $f22           
    mov.s   $f14, $f20                 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    nop
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s3, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      t4, 0x0000(s3)             # 00000000
    lw      t5, 0x0074($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t5)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lh      t8, 0x004A(s1)             # 0000073A
    addiu   s1, s1, 0x0028             # s1 = 00000718
    bnel    s5, t8, lbl_80A21D48       
    lwc1    $f12, 0x0000(s1)           # 00000718
lbl_80A21DE0:
    lw      $ra, 0x006C($sp)           
lbl_80A21DE4:
    ldc1    $f20, 0x0038($sp)          
    ldc1    $f22, 0x0040($sp)          
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
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    nop
    nop

.section .data

var_80A21E20: .word \
0xE7000000, 0x00000000, 0xFC71FE04, 0x5FFEFDF8, \
0xDF000000, 0x00000000
var_80A21E38: .word \
0xE7000000, 0x00000000, 0xFCFFFE04, 0xFFFDF7F8, \
0xE200001C, 0x0C1849F8, 0xDF000000, 0x00000000
var_80A21E58: .word \
0x01900190, 0x00000000, 0x08000000, 0xFFFFFFFF, \
0xFE700190, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFE70FE70, 0x00000000, 0x00001800, 0xFFFFFFFF, \
0x0190FE70, 0x00000000, 0x08001800, 0xFFFFFFFF
var_80A21E98: .word \
0x04040404, 0x04040404, 0x04040404, 0x04040404, \
0x08080808, 0x08080808, 0x08080808, 0x08080808, \
0x0C0C0C0C, 0x0C0C0C0C, 0x0C0C0C0C, 0x0C0C0C0C, \
0x10101010, 0x10101010, 0x10101010, 0x10101010, \
0x14141414, 0x14141414, 0x14141414, 0x14141414, \
0x18181818, 0x18181818, 0x18181818, 0x18181818, \
0x1C1C1C1C, 0x1C1C1C1C, 0x1C1C1C1C, 0x1C1C1C1C, \
0x20202020, 0x20202020, 0x20202020, 0x20202020, \
0x24242424, 0x24242424, 0x24242424, 0x24242424, \
0x28282828, 0x28282828, 0x28282828, 0x28282828, \
0x2C2C2C2C, 0x2C2C2C2C, 0x2C2C2C2C, 0x2C2C2C2C, \
0x30303030, 0x30303030, 0x30303030, 0x30303030, \
0x34343434, 0x34343434, 0x34343434, 0x34343434, \
0x38383838, 0x38383838, 0x38383838, 0x38383838, \
0x3C3C3C3C, 0x3C3C3C3C, 0x3C3C3C3C, 0x3C3C3C3C, \
0x40404040, 0x40404040, 0x40404040, 0x40404040, \
0x44444444, 0x44444444, 0x44444444, 0x44444444, \
0x48484848, 0x48484848, 0x48484848, 0x48484848, \
0x4C4C4C4C, 0x4C4C4C4C, 0x4C4C4C4C, 0x4C4C4C4C, \
0x50505050, 0x50505050, 0x50505050, 0x50505050, \
0x54545454, 0x54545454, 0x54545454, 0x54545454, \
0x58585858, 0x58585858, 0x58585858, 0x58585858, \
0x5C5C5C5C, 0x5C5C5C5C, 0x5C5C5C5C, 0x5C5C5C5C, \
0x60606060, 0x60606060, 0x60606060, 0x60606060, \
0x64646464, 0x64646464, 0x64646464, 0x64646464, \
0x68686868, 0x68686868, 0x68686868, 0x68686868, \
0x6C6C6C6C, 0x6C6C6C6C, 0x6C6C6C6C, 0x6C6C6C6C, \
0x70707070, 0x70707070, 0x70707070, 0x70707070, \
0x74747474, 0x74747474, 0x74747474, 0x74747474, \
0x78787878, 0x78787878, 0x78787878, 0x78787878, \
0x7C7C7C7C, 0x7C7C7C7C, 0x7C7C7C7C, 0x7C7C7C7C, \
0x80808080, 0x80808080, 0x80808080, 0x80808080, \
0x84848484, 0x84848484, 0x84848484, 0x84848484, \
0x88888888, 0x88888888, 0x88888888, 0x88888888, \
0x8C8C8C8C, 0x8C8C8C8C, 0x8C8C8C8C, 0x8C8C8C8C, \
0x90909090, 0x90909090, 0x90909090, 0x90909090, \
0x94949494, 0x94949494, 0x94949494, 0x94949494, \
0x98989898, 0x98989898, 0x98989898, 0x98989898, \
0x9C9C9C9C, 0x9C9C9C9C, 0x9C9C9C9C, 0x9C9C9C9C, \
0xA0A0A0A0, 0xA0A0A0A0, 0xA0A0A0A0, 0xA0A0A0A0, \
0xA4A4A4A4, 0xA4A4A4A4, 0xA4A4A4A4, 0xA4A4A4A4, \
0xA8A8A8A8, 0xA8A8A8A8, 0xA8A8A8A8, 0xA8A8A8A8, \
0xACACACAC, 0xACACACAC, 0xACACACAC, 0xACACACAC, \
0xB0B0B0B0, 0xB0B0B0B0, 0xB0B0B0B0, 0xB0B0B0B0, \
0xB4B4B4B4, 0xB4B4B4B4, 0xB4B4B4B4, 0xB4B4B4B4, \
0xB8B8B8B8, 0xB8B8B8B8, 0xB8B8B8B8, 0xB8B8B8B8, \
0xBCBCBCBC, 0xBCBCBCBC, 0xBCBCBCBC, 0xBCBCBCBC, \
0xC0C0C0C0, 0xC0C0C0C0, 0xC0C0C0C0, 0xC0C0C0C0, \
0xC4C4C4C4, 0xC4C4C4C4, 0xC4C4C4C4, 0xC4C4C4C4, \
0xC8C8C8C8, 0xC8C8C8C8, 0xC8C8C8C8, 0xC8C8C8C8, \
0xCCCCCCCC, 0xCCCCCCCC, 0xCCCCCCCC, 0xCCCCCCCC, \
0xD0D0D0D0, 0xD0D0D0D0, 0xD0D0D0D0, 0xD0D0D0D0, \
0xD4D4D4D4, 0xD4D4D4D4, 0xD4D4D4D4, 0xD4D4D4D4, \
0xD8D8D8D8, 0xD8D8D8D8, 0xD8D8D8D8, 0xD8D8D8D8, \
0xDCDCDCDC, 0xDCDCDCDC, 0xDCDCDCDC, 0xDCDCDCDC, \
0xE0E0E0E0, 0xE0E0E0E0, 0xE0E0E0E0, 0xE0E0E0E0, \
0xE4E4E4E4, 0xE4E4E4E4, 0xE4E4E4E4, 0xE4E4E4E4, \
0xE8E8E8E8, 0xE8E8E8E8, 0xE8E8E8E8, 0xE8E8E8E8, \
0xECECECEC, 0xECECECEC, 0xECECECEC, 0xECECECEC, \
0xF0F0F0F0, 0xF0F0F0F0, 0xF0F0F0F0, 0xF0F0F0F0, \
0xF4F4F4F4, 0xF4F4F4F4, 0xF4F4F4F4, 0xF4F4F4F4, \
0xF8F8F8F8, 0xF8F8F8F8, 0xF8F8F8F8, 0xF8F8F8F8, \
0xFCFCFCFC, 0xFCFCFCFC, 0xFCFCFCFC, 0xFCFCFCFC, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
var_80A22298: .word \
0xE7000000, 0x00000000, 0xDA380001, 0x01000000, \
0xD7000002, 0xFFFFFFFF, 0xFCFFB3FF, 0xFFFFFEF8, \
0xE200001C, 0x0C184A70, 0xD9FCFBFF, 0x00000000, \
0xFB000000, 0x00000000, 0xFD900000
.word var_80A21E98
.word \
0xF5900000, 0x07098040, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF400, 0xE7000000, 0x00000000, \
0xF5880400, 0x00098040, 0xF2000000, 0x0003C0FC, \
0x01004008
.word var_80A21E58
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A22320: .word \
0xFF800000, 0x004B0000, 0xFD81FF81, 0xA097CDFF, \
0x00810000, 0x004A0000, 0x066AFF5B, 0xA097CDFF, \
0x00000000, 0xFF6C0000, 0x02160726, 0xA097CDFF
var_80A22350: .word \
0x00000000, 0x00000000, 0x01060907, 0x1215222F, \
0x3129200D, 0x06030100, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x07203A46, 0x526B8591, \
0x968E744C, 0x2C1B0F09, 0x00000000, 0x00000000, \
0x00000000, 0x0003040F, 0x235793B3, 0xC9D8E4E9, \
0xE9E7D2B3, 0x8B704B29, 0x0F040000, 0x00000000, \
0x00000000, 0x01061538, 0x6EA4DDF2, 0xFAFDFFFD, \
0xFDFAFAEF, 0xDECAAC7C, 0x43170301, 0x00000000, \
0x00000000, 0x04184382, 0xC6E3F7FD, 0xFFFFFFFF, \
0xFFFFFBFB, 0xF8F2EECC, 0x8E4F1A04, 0x03000000, \
0x00000001, 0x175190C4, 0xF1FBFDFF, 0xFFFFFFFF, \
0xFFFDFFFD, 0xFDFDF8EC, 0xCC8E4612, 0x03000000, \
0x01010307, 0x4EA7CFE9, 0xF7FDFFFF, 0xFFFFFFFF, \
0xFFFFFDFF, 0xFFFDFFF8, 0xEEC98134, 0x07000000, \
0x00010721, 0x9EE1E7F4, 0xFAFDFFFF, 0xFFFFFFFD, \
0xFFFDFFFF, 0xFFFFFFFB, 0xF7E4AF5C, 0x18010000, \
0x0003134C, 0xD3ECEEF5, 0xFDFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFAF2CD85, 0x29060000, \
0x00093485, 0xE0EBF1FA, 0xFFFFFFFF, 0xFFFFFFFD, \
0xFDFFFFFF, 0xFFFFFDFA, 0xFAFAE4AA, 0x490C0000, \
0x031051AC, 0xE7F4F8FA, 0xFFFFFFFF, 0xFFFFFFFD, \
0xFDFFFFFF, 0xFFFFFBFA, 0xFAF7F1CD, 0x6D1A0300, \
0x03156BC7, 0xEFF7FBFD, 0xFDFFFFFF, 0xFFFFFFFD, \
0xFFFFFFFF, 0xFFFDFBFB, 0xFAF7F2DE, 0x90290400, \
0x032088E0, 0xFAFBFAFD, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFDFA, 0xF7F1ECE3, 0xA8430C01, \
0x06269EEE, 0xFBFBFFFF, 0xFDFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFDFA, 0xEEE6E9E3, 0xB3511001, \
0x041DA7F4, 0xFFFDFFFF, 0xFFFFFFFF, 0xFFFDFFFF, \
0xFFFFFFFF, 0xFFFDFFFB, 0xF5F1EBE3, 0xB85F1501, \
0x0315A7F8, 0xFFFDFDFF, 0xFFFFFFFF, 0xFFFDFFFF, \
0xFFFFFFFF, 0xFFFFFFFD, 0xFAF4EFE7, 0xC06B1A09, \
0x0315B8FD, 0xFFFDFDFF, 0xFDFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFAF4EEE9, 0xCC7A1809, \
0x0C18CDFF, 0xFAFBFDFD, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFDFFFF, 0xFBF4EEEB, 0xD27D1509, \
0x090FC9F5, 0xE9F7FBFD, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFDFFFF, 0xFFFFFFFB, 0xF7EFE9E7, 0xC6731707, \
0x0406B9EC, 0xD7F1FBFD, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFDFFFF, 0xFFFFFFFA, 0xF7F1E9E1, 0xB55D0F09, \
0x00039EF1, 0xDAEEFAFD, 0xFDFFFFFF, 0xFFFFFFFF, \
0xFFFDFFFD, 0xFDFDFBFD, 0xF8F1ECD8, 0x9845090C, \
0x00035DF2, 0xEEF5F7F7, 0xFAFDFFFF, 0xFFFFFFFF, \
0xFFFBFBFD, 0xFBFBFBFA, 0xF5F1EFD2, 0x872F040A, \
0x000120C7, 0xEBF5F2EC, 0xF4FDFFFF, 0xFFFFFDFD, \
0xFFFFFDFB, 0xFAFAFAF4, 0xF2EFEEC7, 0x6D230407, \
0x0000037D, 0xCDF2ECE6, 0xF1F8FBFF, 0xFFFFFFFF, \
0xFDFDFBFB, 0xF8F7F8F4, 0xECF2E6A8, 0x4B130A07, \
0x0000013A, 0x9BEBEBDD, 0xE3F5FDFF, 0xFFFFFFFF, \
0xFFFDFDFB, 0xF8F8F4EF, 0xEBEBCD76, 0x2609090D, \
0x00000017, 0x62D7E9DD, 0xDEF2FBFF, 0xFFFFFDFF, \
0xFFFFFDFB, 0xF8F8F4F2, 0xEFE3A140, 0x0D030309, \
0x00000003, 0x2082E0E1, 0xE7F5FFFF, 0xFFFFFFFD, \
0xFFFBFDFB, 0xFAF8F7F1, 0xE4BE661D, 0x03000101, \
0x00000000, 0x042B96CC, 0xD8EEFBFF, 0xFFFFFFFF, \
0xFFFDFBFB, 0xFAFAF7E6, 0xC3772906, 0x00000000, \
0x00000000, 0x00032154, 0x79B0D8F1, 0xF8FFFFFF, \
0xFDFAF7EF, 0xE6D3B685, 0x4B1A0400, 0x00000000, \
0x00000000, 0x0000030A, 0x183D73AA, 0xD5ECF4F7, \
0xF2E1CAB3, 0x9E7D5129, 0x0C010000, 0x00000000, \
0x00000000, 0x00000000, 0x0003040C, 0x274E6B73, \
0x62544C43, 0x3A271706, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000100, 0x060F1B15, \
0x100C120F, 0x0C090401, 0x00000000, 0x00000000
var_80A22750: .word \
0xE7000000, 0x00000000, 0xD7000002, 0xFFFFFFFF, \
0xFD900000
.word var_80A22350
.word \
0xF5900000, 0x07094250, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00094250, 0xF2000000, 0x0007C07C, \
0xFC719BFF, 0x5FFEFE38, 0xE200001C, 0x0C184DD8, \
0xD9F2FFFF, 0x00000000, 0xD9FFFFFF, 0x00020400, \
0x01003006
.word var_80A22320
.word 0x05000204, 0x00000000, 0xDF000000, 0x00000000
var_80A227D0: .word 0xC2480000, 0x00000000
var_80A227D8: .word 0x00000000
var_80A227DC: .word 0x00000000
var_80A227E0: .word 0x00000000, 0x00000000
var_80A227E8: .word 0x42C80000, 0x42C80000
var_80A227F0: .word 0x00000000
var_80A227F4: .word 0x00000000
var_80A227F8: .word 0x00000000
var_80A227FC: .word 0x00000000
var_80A22800: .word 0x00000000
var_80A22804: .word 0x00000000
var_80A22808: .word 0x00000000
var_80A2280C: .word \
0xC2C80000, 0x43960000, 0x00000000, 0x42C80000, \
0x43960000, 0x42C80000, 0xC2480000, 0x44160000, \
0x42C80000
var_80A22830: .word \
0x00000000, 0x43C80000, 0x43480000, 0x00000000, \
0x43480000, 0x43480000, 0xC2C80000, 0x00000000, \
0x43480000, 0xC3480000, 0x00000000, 0x42C80000, \
0xC2DC0000, 0x43340000, 0x44368000
var_80A2286C: .word \
0x43480000, 0x44480000, 0x44480000, 0xC3480000, \
0x442F0000, 0x44AF0000, 0x43480000, 0x42C80000, \
0x443B8000
var_80A22890: .word \
0x00000000, 0x43480000, 0x44610000, 0x00000000, \
0x43480000, 0x44610000, 0x43960000, 0x43C80000, \
0x44960000, 0xC2C80000, 0x43480000, 0x44480000, \
0xC2C80000, 0x43480000, 0x44480000
var_80A228CC: .word 0x00000000, 0x00000000, 0x00000000
var_80A228D8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000
var_80A228F4: .word 0xFFFFFFFF
var_80A228F8: .word 0x000000FF
var_80A228FC: .word 0x00000000, 0x00000000
var_80A22904: .word 0x00E90900, 0x00000435, 0x00E20000, 0x00000A88
.word func_80A17AF0
.word func_80A17F78
.word func_80A1F5A8
.word func_80A1FBB0
var_80A22924: .word \
0x01000000, 0x20000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x020007D0, 0xFA2400FA, \
0x00410064, 0x01000000, 0x20000000, 0x00000000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x0A000000, \
0x00000000, 0x00160064, 0x01000000, 0x20000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x0B0001F4, 0x00000000, 0x00160064, 0x01000000, \
0x20000000, 0x00000000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x0F00FF06, 0xFF060000, 0x00190064, \
0x01000000, 0x20000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x100001F4, 0xFF060000, \
0x00190064, 0x01000000, 0x20000000, 0x00000000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x140000FA, \
0xFF060000, 0x00190064, 0x01000000, 0x20000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x150001F4, 0xFF060000, 0x00190064, 0x01000000, \
0x20000000, 0x00000000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x19000000, 0x00000000, 0x001B0064, \
0x01000000, 0x20000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x1A0002EE, 0x00000000, \
0x001A0064, 0x01000000, 0x20000000, 0x00000000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x050002EE, \
0xFF6A0000, 0x00150064, 0x01000000, 0x20000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x060002EE, 0x00000000, 0x00140064
var_80A22AB0: .word 0x00100938, 0x10000000, 0x0000000B
.word var_80A22924
var_80A22AC0: .word \
0x01000000, 0x20000000, 0x00300000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x070005DC, 0x00000000, \
0x00460064, 0x01000000, 0x20000000, 0x00300000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x06000000, \
0x00000000, 0x004B0064, 0x01000000, 0x20000000, \
0x00300000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x04001388, 0x00000000, 0x00780064, 0x01000000, \
0x20000000, 0x00300000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x0300F63C, 0x00000000, 0x00960064, \
0x01000000, 0x20000000, 0x00300000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x2B0005DC, 0x00000000, \
0x00500064, 0x01000000, 0x20000000, 0x00300000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x2B001D4C, \
0x00000000, 0x00460064, 0x01000000, 0x20000000, \
0x00300000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x2C000BB8, 0x00000000, 0x003C0064, 0x01000000, \
0x20000000, 0x00300000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x280005DC, 0x00000000, 0x00500064, \
0x01000000, 0x20000000, 0x00300000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x28001D4C, 0x00000000, \
0x00460064, 0x01000000, 0x20000000, 0x00300000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x29000BB8, \
0x00000000, 0x003C0064, 0x01000000, 0x20000000, \
0x00300000, 0x00000080, 0x00000000, 0x01000100, \
0x080005DC, 0x00000000, 0x00460064
var_80A22C4C: .word 0x0C100D38, 0x10000000, 0x0000000B
.word var_80A22AC0
var_80A22C5C: .word \
0x00000800, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, \
0x00550064, 0xFFCE0000, 0x00000000
var_80A22C88: .word \
0x0A100000, 0x10010000, 0x00000000, 0x20000000, \
0x04100000, 0x00000000, 0x00000000, 0x19000000
var_80A22CA8: .word 0x00550001, 0x00000000, 0x00000000
var_80A22CB4: .word 0x24000064, 0x0064C800
var_80A22CBC: .word \
0x00020102, 0x00020202, 0x01020402, 0x34020402, \
0x02003444, 0x00000104, 0x02020804, 0x00000400
var_80A22CDC: .word 0x060002E8, 0x06005860
var_80A22CE4: .word 0x06004EC4, 0x0600A434
var_80A22CEC: .word 0x06004FB4, 0x0600A524
var_80A22CF4: .word 0x060050A8, 0x0600A618
var_80A22CFC: .word 0x0600529C, 0x0600A848
var_80A22D04: .word 0x0600539C, 0x0600A948
var_80A22D0C: .word 0x0600549C, 0x0600AA4C
var_80A22D14: .word 0x06005588, 0x0600AB38
var_80A22D1C: .word 0x89170029, 0x801F0005, 0x48500014
var_80A22D28: .byte 0x50, 0x50, 0x96
var_80A22D2B: .byte 0xFF
var_80A22D2C: .byte 0x28, 0x28, 0x50
var_80A22D2F: .byte 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x64, 0x64, 0x64, 0x00
var_80A22D38: .word 0x00000000
var_80A22D3C: .word 0x00000000, 0x00000000, 0x00000000
var_80A22D48: .word 0x447A0000, 0x00000000, 0x00000000
var_80A22D54: .word \
0x00000000, 0x00000000, 0x43AA0000, 0xC3200000, \
0x00000000, 0x437A0000, 0x43200000, 0x00000000, \
0x437A0000
var_80A22D78: .word 0x00000000, 0x00000000

.section .rodata

var_80A22D80: .word 0xC4228000
var_80A22D84: .word 0xC4228000
var_80A22D88: .word 0x459C4000
var_80A22D8C: .word 0x409D70A4
var_80A22D90: .word 0x3F4CCCCC
var_80A22D94: .word 0x40666666
var_80A22D98: .word 0xC4228000
var_80A22D9C: .word 0x3E4CCCCD
var_80A22DA0: .word 0x44228000
var_80A22DA4: .word 0x3E923A14
var_80A22DA8: .word 0x3E923A14
var_80A22DAC: .word 0x3F20D97C
var_80A22DB0: .word 0xC4228000
var_80A22DB4: .word 0x3CAAAAAB
var_80A22DB8: .word 0x3C4CCCCD
var_80A22DBC: .word 0x3C4CCCCD
var_80A22DC0: .word 0x3C4CCCCD
var_80A22DC4: .word 0x3C888889
var_80A22DC8: .word 0x389D4952
var_80A22DCC: .word 0x3983126F
var_80A22DD0: .word 0x4633B000
var_80A22DD4: .word 0x3CCCCCCD
var_80A22DD8: .word 0x3F99999A
var_80A22DDC: .word 0x40490FDB
var_80A22DE0: .word 0x3D567750
var_80A22DE4: .word 0x3FA147AE
var_80A22DE8: .word 0x3F20D97C
var_80A22DEC: .word 0x3F490FDB
var_80A22DF0: .word 0x37D1B717
var_80A22DF4: .word 0x3983126F
var_80A22DF8: .word 0x3F4CCCCD
var_80A22DFC: .word 0x3ECCCCCD
var_80A22E00: .word 0x3F555555
var_80A22E04: .word 0x3C23D70A
var_80A22E08: .word 0x3CA3D70A
var_80A22E0C: .word 0x3F20D97C
var_80A22E10: .word 0x3F20D97C
var_80A22E14: .word 0x3F20D97C
var_80A22E18: .word 0x3F20D97C
var_80A22E1C: .word 0x3F20D97C
var_80A22E20: .word 0x3F20D97C
var_80A22E24: .word 0x3F20D97C
var_80A22E28: .word 0x3F20D97C
var_80A22E2C: .word 0x3F20D97C
var_80A22E30: .word 0x3E060A92
var_80A22E34: .word 0x3E060A92
var_80A22E38: .word 0x3E060A92
var_80A22E3C: .word 0x40C90FDB
var_80A22E40: .word 0x40C90FDB
var_80A22E44: .word 0x39C49BA6
var_80A22E48: .word 0x3A449BA6
var_80A22E4C: .word 0x3D75C28F
var_80A22E50: .word 0x3DF5C28F
var_80A22E54: .word 0x3D75C28F
var_80A22E58: .word 0x3DF5C28F
var_80A22E5C: .word 0x3A83126F
var_80A22E60: .word 0x3BA3D70A
var_80A22E64: .word 0x3A83126F
var_80A22E68: .word 0x3A83126F, 0x00000000

.bss

var_80A24010: .space 0x08
var_80A24018: .space 0x04
var_80A2401C: .space 0x04
var_80A24020: .space 0x08
var_80A24028: .space 0x08
var_80A24030: .space 0x04
var_80A24034: .space 0x08
var_80A2403C: .space 0x04
var_80A24040: .space 0x04
var_80A24044: .space 0x0C
