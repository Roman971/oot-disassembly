.section .text
func_80AAB4C0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_80AAB940)      # a1 = 80AB0000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_80AAB940)  # a1 = 80AAB940
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0DB8             # a0 = 06000DB8
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)            
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_800313A4              # DynaPolyInfo_setActor
    sw      a1, 0x0020($sp)            
    lw      a1, 0x0020($sp)            
    sw      v0, 0x013C(s0)             # 0000013C
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B54(t6)            # 8011B4AC
    lui     t8, %hi(func_80AAB5AC)     # t8 = 80AB0000
    addiu   t8, t8, %lo(func_80AAB5AC) # t8 = 80AAB5AC
    andi    t7, t6, 0x2000             # t7 = 00000000
    beql    t7, $zero, lbl_80AAB54C    
    sw      $zero, 0x0134(s0)          # 00000134
    beq     $zero, $zero, lbl_80AAB564 
    sw      t8, 0x0154(s0)             # 00000154
    sw      $zero, 0x0134(s0)          # 00000134
lbl_80AAB54C:
    lw      a0, 0x0034($sp)            
    jal     func_800314D8              
    lw      a2, 0x013C(s0)             # 0000013C
    lui     t9, %hi(func_80AAB5BC)     # t9 = 80AB0000
    addiu   t9, t9, %lo(func_80AAB5BC) # t9 = 80AAB5BC
    sw      t9, 0x0154(s0)             # 00000154
lbl_80AAB564:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80AAB578:
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


func_80AAB5AC:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80AAB5BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     a2, 0x8010                 # a2 = 80100000
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    addiu   a2, a2, 0x8BF0             # a2 = 800F8BF0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      v0, 0x00A4(a3)             # 8011A674
    lw      t6, 0x000C(a2)             # 800F8BFC
    lw      v1, 0x1C44(a1)             # 00001C44
    and     t7, t6, v0                 
    beql    t7, $zero, lbl_80AAB708    
    lw      $ra, 0x0014($sp)           
    lw      t8, 0x0010(a2)             # 800F8C00
    lui     t0, 0x8010                 # t0 = 80100000
    and     t9, t8, v0                 
    beql    t9, $zero, lbl_80AAB708    
    lw      $ra, 0x0014($sp)           
    lbu     t0, -0x70BA(t0)            # 800F8F46
    addiu   $at, $zero, 0x0012         # $at = 00000012
    addu    t1, a3, t0                 
    lbu     t2, 0x0074(t1)             # 00000074
    bne     t2, $at, lbl_80AAB704      
    lui     $at, 0xC28C                # $at = C28C0000
    mtc1    $at, $f4                   # $f4 = -70.00
    lwc1    $f0, 0x0024(v1)            # 00000024
    lui     $at, 0x4396                # $at = 43960000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80AAB708               
    lw      $ra, 0x0014($sp)           
    mtc1    $at, $f6                   # $f6 = 300.00
    lui     $at, %hi(var_80AAB950)     # $at = 80AB0000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_80AAB708               
    lw      $ra, 0x0014($sp)           
    lwc1    $f2, %lo(var_80AAB950)($at) 
    lwc1    $f8, 0x0028(v1)            # 00000028
    c.lt.s  $f2, $f8                   
    nop
    bc1fl   lbl_80AAB708               
    lw      $ra, 0x0014($sp)           
    lwc1    $f0, 0x002C(v1)            # 0000002C
    lui     $at, %hi(var_80AAB954)     # $at = 80AB0000
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80AAB708               
    lw      $ra, 0x0014($sp)           
    lwc1    $f10, %lo(var_80AAB954)($at) 
    or      a0, a1, $zero              # a0 = 00000000
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80AAB708               
    lw      $ra, 0x0014($sp)           
    jal     func_8009CB08              
    sw      a1, 0x001C($sp)            
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    bne     v0, $zero, lbl_80AAB704    
    lw      a1, 0x001C($sp)            
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x2640             # v0 = 02002640
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
    addu    t8, t6, t7                 
    addu    t9, t8, $at                
    sw      t9, 0x1D68(a1)             # 00001D68
    lw      t2, 0x0018($sp)            
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     t1, %hi(func_80AAB714)     # t1 = 80AB0000
    sb      t0, 0x1414(a3)             # 8011B9E4
    addiu   t1, t1, %lo(func_80AAB714) # t1 = 80AAB714
    sw      t1, 0x0154(t2)             # 00000154
lbl_80AAB704:
    lw      $ra, 0x0014($sp)           
lbl_80AAB708:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AAB714:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lbu     t6, 0x1D6C(a3)             # 00001D6C
    beql    t6, $zero, lbl_80AAB784    
    lw      $ra, 0x0014($sp)           
    lw      v0, 0x1D94(a3)             # 00001D94
    beql    v0, $zero, lbl_80AAB784    
    lw      $ra, 0x0014($sp)           
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t8, %hi(func_80AAB7B4)     # t8 = 80AB0000
    bne     t7, $at, lbl_80AAB780      
    lw      t9, 0x0018($sp)            
    addiu   t8, t8, %lo(func_80AAB7B4) # t8 = 80AAB7B4
    sw      t8, 0x0134(t9)             # 00000134
    lw      t0, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031530              
    lw      a2, 0x013C(t0)             # 0000013C
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t1, 0x0EDC(v0)             # 8011B4AC
    ori     t2, t1, 0x2000             # t2 = 00002000
    sh      t2, 0x0EDC(v0)             # 8011B4AC
lbl_80AAB780:
    lw      $ra, 0x0014($sp)           
lbl_80AAB784:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AAB790:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AAB7B4:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s2, 0x0040($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s1, 0x003C($sp)            
    sw      s0, 0x0038($sp)            
    sw      a0, 0x0068($sp)            
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E2C0              
    or      s1, a0, $zero              # s1 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    lui     $at, 0x0001                # $at = 00010000
    addu    t2, s2, $at                
    sw      t7, 0x0000(s0)             # 00000000
    lw      v1, 0x1DE4(t2)             # 00001DE4
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    subu    $at, $zero, v1             
    sll     a2, $at,  2                
    subu    a2, a2, $at                
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      t8, 0x0010($sp)            
    sw      t2, 0x0048($sp)            
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    sw      s0, 0x0058($sp)            
    jal     func_8007EB00              
    andi    a1, v1, 0x007F             # a1 = 00000000
    lw      t0, 0x0058($sp)            
    lw      t2, 0x0048($sp)            
    lui     t3, 0xDB06                 # t3 = DB060000
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    ori     t3, t3, 0x0024             # t3 = DB060024
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lw      v1, 0x1DE4(t2)             # 00001DE4
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    subu    a3, $zero, v1              
    andi    t7, v1, 0x007F             # t7 = 00000000
    sw      t7, 0x0020($sp)            
    andi    a3, a3, 0x007F             # a3 = 00000000
    sw      t8, 0x0024($sp)            
    sw      t6, 0x0018($sp)            
    sw      t5, 0x0014($sp)            
    sw      t9, 0x0028($sp)            
    sw      $zero, 0x001C($sp)         
    sw      t4, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84              
    sw      s0, 0x0054($sp)            
    lw      t1, 0x0054($sp)            
    sw      v0, 0x0004(t1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0050($sp)            
    lw      a1, 0x0050($sp)            
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x0600             # t7 = 06000600
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0038($sp)            
    lw      s1, 0x003C($sp)            
    lw      s2, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80AAB920: .word 0x01480600, 0x00000000, 0x01300000, 0x00000158
.word func_80AAB4C0
.word func_80AAB578
.word func_80AAB790
.word func_80AAB7B4
var_80AAB940: .word 0xB0F80320, 0x48500064, 0x00000000, 0x00000000

.section .rodata

var_80AAB950: .word 0x44A78000
var_80AAB954: .word 0x44CFC000, 0x00000000, 0x00000000

