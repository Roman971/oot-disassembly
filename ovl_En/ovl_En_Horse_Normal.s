#include <mips.h>
.set noreorder
.set noat

.section .text
func_808CC760:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    lui     v1, %hi(var_808CE9D0)      # v1 = 808D0000
    addiu   v1, v1, %lo(var_808CE9D0)  # v1 = 808CE9D0
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      v0, 0x01F0(s0)             # 000001F0
    lwc1    $f0, 0x01A8(s0)            # 000001A8
    sll     t6, v0,  2                 
    addu    t7, v1, t6                 
    lw      t8, 0x0000(t7)             # 00000000
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_808CC80C               
    lw      $ra, 0x0024($sp)           
    bne     v0, $zero, lbl_808CC7CC    
    lui     a3, 0x8010                 # a3 = 80100000
    lw      t9, 0x0004(v1)             # 808CE9D4
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    c.lt.s  $f10, $f0                  
    nop
    bc1t    lbl_808CC808               
lbl_808CC7CC:
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    sw      t0, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2803          # a0 = 00002803
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      t1, 0x01F0(s0)             # 000001F0
    addiu   t2, t1, 0x0001             # t2 = 00000001
    slti    $at, t2, 0x0002            
    bne     $at, $zero, lbl_808CC808   
    sw      t2, 0x01F0(s0)             # 000001F0
    sw      $zero, 0x01F0(s0)          # 000001F0
lbl_808CC808:
    lw      $ra, 0x0024($sp)           
lbl_808CC80C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808CC81C:
    lw      v0, 0x0140(a0)             # 00000140
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808CC858      
    sll     t6, v0,  2                 
    lui     $at, %hi(var_808CE9D8)     # $at = 808D0000
    addu    $at, $at, t6               
    lwc1    $f4, %lo(var_808CE9D8)($at) 
    lwc1    $f6, 0x0068(a0)            # 00000068
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    mul.s   $f8, $f4, $f6              
    nop
    mul.s   $f2, $f8, $f10             
    beq     $zero, $zero, lbl_808CC8D8 
    nop
lbl_808CC858:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_808CC890      
    sll     t7, v0,  2                 
    lui     $at, %hi(var_808CE9D8)     # $at = 808D0000
    addu    $at, $at, t7               
    lwc1    $f16, %lo(var_808CE9D8)($at) 
    lwc1    $f18, 0x0068(a0)           # 00000068
    lui     $at, %hi(var_808CEA70)     # $at = 808D0000
    lwc1    $f6, %lo(var_808CEA70)($at) 
    mul.s   $f4, $f16, $f18            
    nop
    mul.s   $f2, $f4, $f6              
    beq     $zero, $zero, lbl_808CC8D8 
    nop
lbl_808CC890:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_808CC8CC      
    sll     t9, v0,  2                 
    sll     t8, v0,  2                 
    lui     $at, %hi(var_808CE9D8)     # $at = 808D0000
    addu    $at, $at, t8               
    lwc1    $f8, %lo(var_808CE9D8)($at) 
    lwc1    $f10, 0x0068(a0)           # 00000068
    lui     $at, %hi(var_808CEA74)     # $at = 808D0000
    lwc1    $f18, %lo(var_808CEA74)($at) 
    mul.s   $f16, $f8, $f10            
    nop
    mul.s   $f2, $f16, $f18            
    beq     $zero, $zero, lbl_808CC8D8 
    nop
lbl_808CC8CC:
    lui     $at, %hi(var_808CE9D8)     # $at = 808D0000
    addu    $at, $at, t9               
    lwc1    $f2, %lo(var_808CE9D8)($at) 
lbl_808CC8D8:
    mov.s   $f0, $f2                   
    jr      $ra                        
    nop


func_808CC8E4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lui     a1, %hi(var_808CE9FC)      # a1 = 808D0000
    addiu   a1, a1, %lo(var_808CE9FC)  # a1 = 808CE9FC
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f4                   # $f4 = -3.50
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xF04C             # a2 = 8001F04C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_8001EC20              
    swc1    $f4, 0x006C(s0)            # 0000006C
    lw      t6, 0x0028(s0)             # 00000028
    lui     $at, 0x428C                # $at = 428C0000
    lw      t7, 0x0024(s0)             # 00000024
    sw      t6, 0x003C(s0)             # 0000003C
    lwc1    $f8, 0x003C(s0)            # 0000003C
    mtc1    $at, $f10                  # $f10 = 70.00
    sw      t7, 0x0038(s0)             # 00000038
    mtc1    $zero, $f6                 # $f6 = 0.00
    add.s   $f16, $f8, $f10            
    lw      t7, 0x002C(s0)             # 0000002C
    sw      $zero, 0x013C(s0)          # 0000013C
    sw      $zero, 0x0140(s0)          # 00000140
    swc1    $f16, 0x003C(s0)           # 0000003C
    addiu   a1, s0, 0x0218             # a1 = 00000218
    swc1    $f6, 0x0068(s0)            # 00000068
    sw      t7, 0x0040(s0)             # 00000040
    sw      a1, 0x0028($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_808CE8A4)      # a3 = 808D0000
    lw      a1, 0x0028($sp)            
    addiu   a3, a3, %lo(var_808CE8A4)  # a3 = 808CE8A4
    lw      a0, 0x003C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0264             # a1 = 00000264
    sw      a1, 0x0028($sp)            
    jal     func_8004A484              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_808CE920)      # a3 = 808D0000
    addiu   t8, s0, 0x0284             # t8 = 00000284
    lw      a1, 0x0028($sp)            
    sw      t8, 0x0010($sp)            
    addiu   a3, a3, %lo(var_808CE920)  # a3 = 808CE920
    lw      a0, 0x003C($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x02C4             # a1 = 000002C4
    sw      a1, 0x0028($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_808CE8D0)      # a3 = 808D0000
    lw      a1, 0x0028($sp)            
    addiu   a3, a3, %lo(var_808CE8D0)  # a3 = 808CE8D0
    lw      a0, 0x003C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_808CE930)      # a2 = 808D0000
    addiu   a2, a2, %lo(var_808CE930)  # a2 = 808CE930
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t9, 0x003C($sp)            
    addiu   $at, $zero, 0x0063         # $at = 00000063
    lh      v0, 0x00A4(t9)             # 000000A4
    bnel    v0, $at, lbl_808CCC04      
    addiu   $at, $zero, 0x0036         # $at = 00000036
    lh      t0, 0x0034(s0)             # 00000034
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    beq     t0, $zero, lbl_808CCA40    
    nop
    lw      t1, 0x0010(v0)             # 8011A5E0
    beql    t1, $zero, lbl_808CCA54    
    lw      t2, 0x0004(v0)             # 8011A5D4
lbl_808CCA40:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808CCDC4 
    lw      $ra, 0x0024($sp)           
    lw      t2, 0x0004(v0)             # 00000004
lbl_808CCA54:
    beq     t2, $zero, lbl_808CCAAC    
    nop
    jal     func_800288B4              
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    beql    v0, $zero, lbl_808CCA90    
    lh      t4, 0x0034(s0)             # 00000034
    lh      t3, 0x0034(s0)             # 00000034
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    t3, $at, lbl_808CCB10      
    sh      $zero, 0x00B8(s0)          # 000000B8
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808CCDC4 
    lw      $ra, 0x0024($sp)           
    lh      t4, 0x0034(s0)             # 00000034
lbl_808CCA90:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t4, $at, lbl_808CCB10      
    sh      $zero, 0x00B8(s0)          # 000000B8
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808CCDC4 
    lw      $ra, 0x0024($sp)           
lbl_808CCAAC:
    jal     func_800288B4              
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bne     v0, $zero, lbl_808CCACC    
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x4600(t5)            # 8011BA00
    lh      t6, 0x0556(t5)             # 80120556
    beql    t6, $zero, lbl_808CCAF0    
    lh      t8, 0x0034(s0)             # 00000034
lbl_808CCACC:
    lh      t7, 0x0034(s0)             # 00000034
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beql    t7, $at, lbl_808CCB10      
    sh      $zero, 0x00B8(s0)          # 000000B8
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808CCDC4 
    lw      $ra, 0x0024($sp)           
    lh      t8, 0x0034(s0)             # 00000034
lbl_808CCAF0:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    t8, $at, lbl_808CCB10      
    sh      $zero, 0x00B8(s0)          # 000000B8
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808CCDC4 
    lw      $ra, 0x0024($sp)           
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_808CCB10:
    lh      v0, 0x00B8(s0)             # 000000B8
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    sh      v0, 0x0034(s0)             # 00000034
    sh      v0, 0x0018(s0)             # 00000018
    lw      a0, 0x003C($sp)            
    addiu   a3, a3, 0x4580             # a3 = 06004580
    addiu   a2, a2, 0x9FAC             # a2 = 06009FAC
    jal     func_8008E4EC              
    addiu   a1, s0, 0x0144             # a1 = 00000144
    lw      t9, 0x0140(s0)             # 00000140
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    addiu   a0, s0, 0x0190             # a0 = 00000190
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    jal     func_8008D1C4              
    lw      a1, %lo(var_808CE880)(a1)  
    lui     $at, %hi(var_808CEA78)     # $at = 808D0000
    lwc1    $f18, %lo(var_808CEA78)($at) 
    lwc1    $f0, 0x0024(s0)            # 00000024
    c.eq.s  $f18, $f0                  
    nop
    bc1fl   lbl_808CCBA4               
    lui     $at, 0x445C                # $at = 445C0000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_808CEA7C)     # $at = 808D0000
    c.eq.s  $f4, $f6                   
    nop
    bc1fl   lbl_808CCBA4               
    lui     $at, 0x445C                # $at = 445C0000
    lwc1    $f8, %lo(var_808CEA7C)($at) 
    lwc1    $f10, 0x002C(s0)           # 0000002C
    c.eq.s  $f8, $f10                  
    nop
    bc1t    lbl_808CCBF0               
    lui     $at, 0x445C                # $at = 445C0000
lbl_808CCBA4:
    mtc1    $at, $f16                  # $f16 = 880.00
    nop
    c.eq.s  $f16, $f0                  
    nop
    bc1fl   lbl_808CCD8C               
    lh      v0, 0x001C(s0)             # 0000001C
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_808CEA80)     # $at = 808D0000
    c.eq.s  $f18, $f4                  
    nop
    bc1fl   lbl_808CCD8C               
    lh      v0, 0x001C(s0)             # 0000001C
    lwc1    $f6, %lo(var_808CEA80)($at) 
    lwc1    $f8, 0x002C(s0)            # 0000002C
    c.eq.s  $f6, $f8                   
    nop
    bc1fl   lbl_808CCD8C               
    lh      v0, 0x001C(s0)             # 0000001C
lbl_808CCBF0:
    jal     func_808CDBDC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808CCDC4 
    lw      $ra, 0x0024($sp)           
    addiu   $at, $zero, 0x0036         # $at = 00000036
lbl_808CCC04:
    bnel    v0, $at, lbl_808CCC78      
    addiu   $at, $zero, 0x005D         # $at = 0000005D
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t1, 0x0010(v0)             # 8011A5E0
    lw      a0, 0x003C($sp)            
    addiu   a1, s0, 0x0144             # a1 = 00000144
    bne     t1, $zero, lbl_808CCC38    
    lui     a2, 0x0601                 # a2 = 06010000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808CCDC4 
    lw      $ra, 0x0024($sp)           
lbl_808CCC38:
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x4580             # a3 = 06004580
    jal     func_8008E4EC              
    addiu   a2, a2, 0x9FAC             # a2 = FFFF9FAC
    lw      t2, 0x0140(s0)             # 00000140
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    addiu   a0, s0, 0x0190             # a0 = 00000190
    sll     t3, t2,  2                 
    addu    a1, a1, t3                 
    jal     func_8008D1C4              
    lw      a1, %lo(var_808CE880)(a1)  
    jal     func_808CDBDC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808CCDC4 
    lw      $ra, 0x0024($sp)           
    addiu   $at, $zero, 0x005D         # $at = 0000005D
lbl_808CCC78:
    bne     v0, $at, lbl_808CCD54      
    lw      a0, 0x003C($sp)            
    lui     $at, %hi(var_808CEA84)     # $at = 808D0000
    lwc1    $f10, %lo(var_808CEA84)($at) 
    lwc1    $f16, 0x0024(s0)           # 00000024
    lui     a2, 0x0601                 # a2 = 06010000
    lui     $at, %hi(var_808CEA88)     # $at = 808D0000
    c.eq.s  $f10, $f16                 
    addiu   a2, a2, 0x9FAC             # a2 = 06009FAC
    lw      a0, 0x003C($sp)            
    addiu   a1, s0, 0x0144             # a1 = 00000144
    bc1f    lbl_808CCD28               
    lui     a3, 0x0600                 # a3 = 06000000
    lwc1    $f18, %lo(var_808CEA88)($at) 
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_808CEA8C)     # $at = 808D0000
    c.eq.s  $f18, $f4                  
    nop
    bc1f    lbl_808CCD28               
    nop
    lwc1    $f6, %lo(var_808CEA8C)($at) 
    lwc1    $f8, 0x002C(s0)            # 0000002C
    c.eq.s  $f6, $f8                   
    nop
    bc1f    lbl_808CCD28               
    nop
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x4580             # a3 = 06004580
    addiu   a2, a2, 0x9FAC             # a2 = 06009FAC
    lw      a0, 0x003C($sp)            
    jal     func_8008E4EC              
    addiu   a1, s0, 0x0144             # a1 = 00000144
    lw      t4, 0x0140(s0)             # 00000140
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    addiu   a0, s0, 0x0190             # a0 = 00000190
    sll     t5, t4,  2                 
    addu    a1, a1, t5                 
    jal     func_8008D1C4              
    lw      a1, %lo(var_808CE880)(a1)  
    jal     func_808CD9F4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808CCDC4 
    lw      $ra, 0x0024($sp)           
lbl_808CCD28:
    jal     func_8008E4EC              
    addiu   a3, a3, 0x4580             # a3 = 00004580
    lw      t6, 0x0140(s0)             # 00000140
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    addiu   a0, s0, 0x0190             # a0 = 00000190
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    jal     func_8008D1C4              
    lw      a1, %lo(var_808CE880)(a1)  
    beq     $zero, $zero, lbl_808CCD8C 
    lh      v0, 0x001C(s0)             # 0000001C
lbl_808CCD54:
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x4580             # a3 = 06004580
    addiu   a2, a2, 0x9FAC             # a2 = 06009FAC
    jal     func_8008E4EC              
    addiu   a1, s0, 0x0144             # a1 = 00000144
    lw      t8, 0x0140(s0)             # 00000140
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    addiu   a0, s0, 0x0190             # a0 = 00000190
    sll     t9, t8,  2                 
    addu    a1, a1, t9                 
    jal     func_8008D1C4              
    lw      a1, %lo(var_808CE880)(a1)  
    lh      v0, 0x001C(s0)             # 0000001C
lbl_808CCD8C:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    andi    t0, v0, 0x00F0             # t0 = 00000000
    bne     t0, $at, lbl_808CCDB8      
    andi    t1, v0, 0x000F             # t1 = 00000000
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     t1, $at, lbl_808CCDB8      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808CCE34              
    lw      a1, 0x003C($sp)            
    beq     $zero, $zero, lbl_808CCDC4 
    lw      $ra, 0x0024($sp)           
lbl_808CCDB8:
    jal     func_808CD164              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_808CCDC4:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808CCDD4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8008E6BC              
    addiu   a1, a1, 0x0144             # a1 = 00000144
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0218             # a1 = 00000218
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x02C4             # a1 = 000002C4
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a1, 0x0264             # a1 = 00000264
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808CCE34:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lw      t6, 0x0004(s0)             # 00000004
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f4                   # $f4 = 7.00
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    ori     t7, t6, 0x0010             # t7 = 00000010
    sw      t7, 0x0004(s0)             # 00000004
    sw      t8, 0x013C(s0)             # 0000013C
    sw      t9, 0x0140(s0)             # 00000140
    sw      $zero, 0x0314(s0)          # 00000314
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808CC81C              
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0030($sp)           
    lw      t0, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_808CE880)      # a0 = 808D0000
    sll     t1, t0,  2                 
    addu    a0, a0, t1                 
    jal     func_8008A194              
    lw      a0, %lo(var_808CE880)(a0)  
    mtc1    v0, $f6                    # $f6 = 0.00
    lw      t2, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f8, $f6                   
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    sll     t3, t2,  2                 
    addu    a1, a1, t3                 
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    mfc1    a3, $f0                    
    sw      t4, 0x0014($sp)            
    lw      a1, %lo(var_808CE880)(a1)  
    swc1    $f8, 0x0010($sp)           
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lw      a2, 0x0030($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808CCEEC:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lh      t7, 0x001C(s0)             # 0000001C
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1                 
    lw      t6, 0x1E08(t6)             # 00011E08
    andi    t8, t7, 0x000F             # t8 = 00000000
    sll     t9, t8,  3                 
    addu    a2, t6, t9                 
    lw      v1, 0x0004(a2)             # 00000004
    lui     t3, 0x8012                 # t3 = 80120000
    lw      t5, 0x0314(s0)             # 00000314
    sll     t0, v1,  4                 
    srl     t1, t0, 28                 
    sll     t2, t1,  2                 
    addu    t3, t3, t2                 
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, v1, $at                
    sll     t7, t5,  2                 
    lui     $at, 0x8000                # $at = 80000000
    subu    t7, t7, t5                 
    addu    v0, t3, t4                 
    addu    v0, v0, $at                
    sll     t7, t7,  1                 
    addu    v0, v0, t7                 
    lh      t8, 0x0000(v0)             # 00000000
    lh      t6, 0x0004(v0)             # 00000004
    lwc1    $f8, 0x0024(s0)            # 00000024
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    t6, $f10                   # $f10 = 0.00
    lwc1    $f18, 0x002C(s0)           # 0000002C
    cvt.s.w $f6, $f4                   
    sw      a2, 0x004C($sp)            
    cvt.s.w $f16, $f10                 
    sub.s   $f12, $f6, $f8             
    sub.s   $f14, $f16, $f18           
    swc1    $f12, 0x0044($sp)          
    jal     func_800CD76C              
    swc1    $f14, 0x0040($sp)          
    lui     $at, %hi(var_808CEA90)     # $at = 808D0000
    lwc1    $f4, %lo(var_808CEA90)($at) 
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0010($sp)            
    mul.s   $f6, $f0, $f4              
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    trunc.w.s $f8, $f6                   
    mfc1    a1, $f8                    
    nop
    sll     a1, a1, 16                 
    jal     func_80064508              
    sra     a1, a1, 16                 
    lwc1    $f12, 0x0044($sp)          
    lwc1    $f14, 0x0040($sp)          
    lui     $at, 0x4416                # $at = 44160000
    mul.s   $f10, $f12, $f12           
    mtc1    $at, $f4                   # $f4 = 600.00
    lh      t1, 0x0032(s0)             # 00000032
    mul.s   $f16, $f14, $f14           
    sh      t1, 0x00B6(s0)             # 000000B6
    add.s   $f18, $f10, $f16           
    c.lt.s  $f18, $f4                  
    nop
    bc1f    lbl_808CD028               
    nop
    lw      t2, 0x0314(s0)             # 00000314
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sw      t3, 0x0314(s0)             # 00000314
    lw      t5, 0x004C($sp)            
    lbu     t7, 0x0000(t5)             # 00000000
    slt     $at, t3, t7                
    bne     $at, $zero, lbl_808CD028   
    nop
    sw      $zero, 0x0314(s0)          # 00000314
lbl_808CD028:
    jal     func_808CC81C              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x01AC(s0)            # 000001AC
    addiu   a0, s0, 0x0190             # a0 = 00000190
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    beql    v0, $zero, lbl_808CD0B8    
    lw      $ra, 0x002C($sp)           
    jal     func_808CC81C              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0038($sp)           
    lw      t8, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_808CE880)      # a0 = 808D0000
    sll     t6, t8,  2                 
    addu    a0, a0, t6                 
    jal     func_8008A194              
    lw      a0, %lo(var_808CE880)(a0)  
    mtc1    v0, $f6                    # $f6 = 0.00
    lw      t9, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f8, $f6                   
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    mfc1    a3, $f0                    
    sw      t1, 0x0014($sp)            
    lw      a1, %lo(var_808CE880)(a1)  
    swc1    $f8, 0x0010($sp)           
    lw      a0, 0x0030($sp)            
    lw      a2, 0x0038($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    jal     func_808CD20C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_808CD0B8:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_808CD0C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0140(a2)             # 00000140
    sw      $zero, 0x013C(a2)          # 0000013C
    addiu   a0, a2, 0x0190             # a0 = 00000190
    addiu   v0, t6, 0x0001             # v0 = 00000001
    slti    $at, v0, 0x0009            
    bne     $at, $zero, lbl_808CD0F8   
    sw      v0, 0x0140(a2)             # 00000140
    sw      $zero, 0x0140(a2)          # 00000140
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808CD0F8:
    sll     t8, v0,  2                 
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    addu    a1, a1, t8                 
    jal     func_8008D1C4              
    lw      a1, %lo(var_808CE880)(a1)  
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808CD11C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, a1, 0x0190             # a0 = 00000190
    swc1    $f4, 0x0068(a1)            # 00000068
    jal     func_8008C9C0              
    sw      a1, 0x0018($sp)            
    beq     v0, $zero, lbl_808CD154    
    lw      a1, 0x0018($sp)            
    jal     func_808CD0C8              
    or      a0, a1, $zero              # a0 = 00000000
lbl_808CD154:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808CD164:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x013C(s0)             # 0000013C
    sw      $zero, 0x0140(s0)          # 00000140
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0208(s0)            # 00000208
    sh      $zero, 0x020C(s0)          # 0000020C
    sh      $zero, 0x020E(s0)          # 0000020E
    jal     func_808CC81C              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0030($sp)           
    lw      t7, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_808CE880)      # a0 = 808D0000
    sll     t8, t7,  2                 
    addu    a0, a0, t8                 
    jal     func_8008A194              
    lw      a0, %lo(var_808CE880)(a0)  
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      t9, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f6, $f4                   
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    mfc1    a3, $f0                    
    sw      t1, 0x0014($sp)            
    lw      a1, %lo(var_808CE880)(a1)  
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lw      a2, 0x0030($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808CD20C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      t6, 0x0020($sp)            
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     a3, 0x8010                 # a3 = 80100000
    lw      v0, 0x0140(t6)             # 00000140
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   a0, $zero, 0x2804          # a0 = 00002804
    bne     v0, $at, lbl_808CD258      
    addiu   a1, t6, 0x00E4             # a1 = 000000E4
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)            
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
    beq     $zero, $zero, lbl_808CD290 
    lw      $ra, 0x001C($sp)           
lbl_808CD258:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_808CD28C      
    lui     a3, 0x8010                 # a3 = 80100000
    lw      a1, 0x0020($sp)            
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2804          # a0 = 00002804
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
lbl_808CD28C:
    lw      $ra, 0x001C($sp)           
lbl_808CD290:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808CD29C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      v1, 0x0140(s0)             # 00000140
    lwc1    $f0, 0x01A8(s0)            # 000001A8
    lui     $at, 0x41E0                # $at = 41E00000
    bnel    v1, $zero, lbl_808CD320    
    addiu   $at, $zero, 0x0003         # $at = 00000003
    mtc1    $at, $f4                   # $f4 = 0.00
    nop
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_808CD320               
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lhu     v0, 0x01D4(s0)             # 000001D4
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t6, v0, 0x0001             # t6 = 00000000
    bne     t6, $zero, lbl_808CD31C    
    ori     t7, v0, 0x0001             # t7 = 00000001
    lui     t8, 0x8010                 # t8 = 80100000
    sh      t7, 0x01D4(s0)             # 000001D4
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x282C          # a0 = 0000282C
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_808CD380 
    lw      $ra, 0x0024($sp)           
lbl_808CD31C:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_808CD320:
    bne     v1, $at, lbl_808CD37C      
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    nop
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_808CD380               
    lw      $ra, 0x0024($sp)           
    lhu     v0, 0x01D4(s0)             # 000001D4
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t9, v0, 0x0002             # t9 = 00000000
    bne     t9, $zero, lbl_808CD37C    
    ori     t0, v0, 0x0002             # t0 = 00000002
    lui     t1, 0x8010                 # t1 = 80100000
    sh      t0, 0x01D4(s0)             # 000001D4
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    sw      t1, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x282B          # a0 = 0000282B
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_808CD37C:
    lw      $ra, 0x0024($sp)           
lbl_808CD380:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808CD390:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0054($sp)            
    lw      v1, 0x0140(s0)             # 00000140
    lui     v0, %hi(var_808CEA20)      # v0 = 808D0000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sll     t6, v1,  2                 
    addu    v0, v0, t6                 
    lw      v0, %lo(var_808CEA20)(v0)  
    or      a0, s0, $zero              # a0 = 00000000
    or      t0, v1, $zero              # t0 = 00000000
    beq     v0, $zero, lbl_808CD3EC    
    nop
    beq     v0, $at, lbl_808CD410      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808CD688      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_808CD688      
    nop
    beq     $zero, $zero, lbl_808CD688 
    nop
lbl_808CD3EC:
    jal     func_808CD29C              
    sw      t0, 0x004C($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lw      t0, 0x004C($sp)            
    lw      v1, 0x0140(s0)             # 00000140
    swc1    $f4, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_808CD688 
    swc1    $f6, 0x0208(s0)            # 00000208
lbl_808CD410:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808CEA94)     # $at = 808D0000
    lwc1    $f8, %lo(var_808CEA94)($at) 
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_808CD454               
    lwc1    $f4, 0x0068(s0)            # 00000068
    jal     func_800CDCCC              # Rand.Next() float
    nop
    add.s   $f10, $f0, $f0             
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    nop
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0208(s0)           # 00000208
    lwc1    $f4, 0x0068(s0)            # 00000068
lbl_808CD454:
    lwc1    $f6, 0x0208(s0)            # 00000208
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, 0x4040                # $at = 40400000
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.le.s  $f0, $f10                  
    nop
    bc1fl   lbl_808CD498               
    mtc1    $at, $f4                   # $f4 = 3.00
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $zero, $f18                # $f18 = 0.00
    or      t0, $zero, $zero           # t0 = 00000000
    swc1    $f16, 0x0068(s0)           # 00000068
    beq     $zero, $zero, lbl_808CD500 
    swc1    $f18, 0x0208(s0)           # 00000208
    mtc1    $at, $f4                   # $f4 = 3.00
lbl_808CD498:
    lui     $at, 0x40C0                # $at = 40C00000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_808CD4C0               
    mtc1    $at, $f6                   # $f6 = 6.00
    jal     func_808CC760              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808CD500 
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    mtc1    $at, $f6                   # $f6 = 0.00
lbl_808CD4C0:
    lui     $at, 0x4100                # $at = 41000000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_808CD4E0               
    mtc1    $at, $f2                   # $f2 = 8.00
    beq     $zero, $zero, lbl_808CD500 
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    mtc1    $at, $f2                   # $f2 = 8.00
lbl_808CD4E0:
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_808CD500               
    swc1    $f2, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_808CD500 
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_808CD500:
    jal     func_800CDCCC              # Rand.Next() float
    sw      t0, 0x004C($sp)            
    lui     $at, %hi(var_808CEA98)     # $at = 808D0000
    lwc1    $f8, %lo(var_808CEA98)($at) 
    lw      t0, 0x004C($sp)            
    c.lt.s  $f0, $f8                   
    nop
    bc1t    lbl_808CD560               
    nop
    lh      v0, 0x020E(s0)             # 0000020E
    bnel    v0, $zero, lbl_808CD5DC    
    lh      t9, 0x020C(s0)             # 0000020C
    lhu     t7, 0x0088(s0)             # 00000088
    andi    t8, t7, 0x0008             # t8 = 00000000
    bne     t8, $zero, lbl_808CD560    
    nop
    lbu     t9, 0x022A(s0)             # 0000022A
    andi    t1, t9, 0x0002             # t1 = 00000000
    bne     t1, $zero, lbl_808CD560    
    nop
    lbu     t2, 0x0276(s0)             # 00000276
    andi    t3, t2, 0x0002             # t3 = 00000000
    beql    t3, $zero, lbl_808CD5DC    
    lh      t9, 0x020C(s0)             # 0000020C
lbl_808CD560:
    jal     func_800CDCCC              # Rand.Next() float
    sw      t0, 0x004C($sp)            
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lh      t4, 0x020E(s0)             # 0000020E
    lui     $at, 0x4170                # $at = 41700000
    mul.s   $f16, $f0, $f10            
    mtc1    t4, $f6                    # $f6 = 0.00
    mtc1    $at, $f18                  # $f18 = 15.00
    lw      t0, 0x004C($sp)            
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    cvt.s.w $f8, $f6                   
    sub.s   $f4, $f16, $f18            
    add.s   $f10, $f8, $f4             
    trunc.w.s $f16, $f10                 
    mfc1    t6, $f16                   
    nop
    sh      t6, 0x020E(s0)             # 0000020E
    lh      v0, 0x020E(s0)             # 0000020E
    slti    $at, v0, 0x0033            
    bnel    $at, $zero, lbl_808CD5C8   
    slti    $at, v0, 0xFFCE            
    sh      t7, 0x020E(s0)             # 0000020E
    beq     $zero, $zero, lbl_808CD5D8 
    lh      v0, 0x020E(s0)             # 0000020E
    slti    $at, v0, 0xFFCE            
lbl_808CD5C8:
    beq     $at, $zero, lbl_808CD5D8   
    addiu   t8, $zero, 0xFFCE          # t8 = FFFFFFCE
    sh      t8, 0x020E(s0)             # 0000020E
    lh      v0, 0x020E(s0)             # 0000020E
lbl_808CD5D8:
    lh      t9, 0x020C(s0)             # 0000020C
lbl_808CD5DC:
    addiu   t2, $zero, 0xFED4          # t2 = FFFFFED4
    addu    t1, t9, v0                 
    sh      t1, 0x020C(s0)             # 0000020C
    lh      v1, 0x020C(s0)             # 0000020C
    slti    $at, v1, 0xFED4            
    beql    $at, $zero, lbl_808CD604   
    slti    $at, v1, 0x012D            
    beq     $zero, $zero, lbl_808CD66C 
    sh      t2, 0x020C(s0)             # 0000020C
    slti    $at, v1, 0x012D            
lbl_808CD604:
    bne     $at, $zero, lbl_808CD614   
    addiu   t3, $zero, 0x012C          # t3 = 0000012C
    beq     $zero, $zero, lbl_808CD66C 
    sh      t3, 0x020C(s0)             # 0000020C
lbl_808CD614:
    jal     func_800CDCCC              # Rand.Next() float
    sw      t0, 0x004C($sp)            
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f18                  # $f18 = 0.25
    lw      t0, 0x004C($sp)            
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_808CD670               
    lh      t5, 0x0032(s0)             # 00000032
    lh      t4, 0x020C(s0)             # 0000020C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f0, $f6                   
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_808CD670               
    lh      t5, 0x0032(s0)             # 00000032
    sh      $zero, 0x020C(s0)          # 0000020C
    sh      $zero, 0x020E(s0)          # 0000020E
lbl_808CD66C:
    lh      t5, 0x0032(s0)             # 00000032
lbl_808CD670:
    lh      t6, 0x020C(s0)             # 0000020C
    lw      v1, 0x0140(s0)             # 00000140
    addu    t7, t5, t6                 
    sh      t7, 0x0032(s0)             # 00000032
    lh      t8, 0x0032(s0)             # 00000032
    sh      t8, 0x00B6(s0)             # 000000B6
lbl_808CD688:
    bne     t0, v1, lbl_808CD6A4       
    addiu   a0, s0, 0x0190             # a0 = 00000190
    jal     func_8008C9C0              
    sw      t0, 0x004C($sp)            
    beq     v0, $zero, lbl_808CD9E0    
    lw      t0, 0x004C($sp)            
    lw      v1, 0x0140(s0)             # 00000140
lbl_808CD6A4:
    addiu   t9, s0, 0x0190             # t9 = 00000190
    beq     t0, v1, lbl_808CD7B0       
    sw      t9, 0x0034($sp)            
    lhu     t1, 0x01D4(s0)             # 000001D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sw      t0, 0x0140(s0)             # 00000140
    andi    t3, t1, 0xFFFE             # t3 = 00000000
    sh      t3, 0x01D4(s0)             # 000001D4
    andi    t4, t3, 0xFFFD             # t4 = 00000000
    bne     t0, $at, lbl_808CD700      
    sh      t4, 0x01D4(s0)             # 000001D4
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    sw      t5, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2816          # a0 = 00002816
    addiu   a1, s0, 0x01F4             # a1 = 000001F4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_808CD740 
    nop
lbl_808CD700:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t0, $at, lbl_808CD738      
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    addiu   a1, s0, 0x01F4             # a1 = 000001F4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_808CD740 
    nop
lbl_808CD738:
    jal     func_808CD20C              
    or      a0, s0, $zero              # a0 = 00000000
lbl_808CD740:
    jal     func_808CC81C              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0040($sp)           
    lw      t7, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_808CE880)      # a0 = 808D0000
    sll     t8, t7,  2                 
    addu    a0, a0, t8                 
    jal     func_8008A194              
    lw      a0, %lo(var_808CE880)(a0)  
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      t9, 0x0140(s0)             # 00000140
    lui     $at, 0xC040                # $at = C0400000
    cvt.s.w $f10, $f4                  
    mtc1    $at, $f16                  # $f16 = -3.00
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    sll     t1, t9,  2                 
    addu    a1, a1, t1                 
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0014($sp)            
    lw      a1, %lo(var_808CE880)(a1)  
    swc1    $f10, 0x0010($sp)          
    lw      a0, 0x0034($sp)            
    lw      a2, 0x0040($sp)            
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f16, 0x0018($sp)          
    beq     $zero, $zero, lbl_808CD9E4 
    lw      $ra, 0x002C($sp)           
lbl_808CD7B0:
    sll     t3, v1,  2                 
    lui     v0, %hi(var_808CEA20)      # v0 = 808D0000
    addu    v0, v0, t3                 
    lw      v0, %lo(var_808CEA20)(v0)  
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_808CD7EC    
    nop
    beq     v0, $at, lbl_808CD860      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808CD860      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_808CD864      
    lhu     t7, 0x01D4(s0)             # 000001D4
    beq     $zero, $zero, lbl_808CD864 
    lhu     t7, 0x01D4(s0)             # 000001D4
lbl_808CD7EC:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f18                  # $f18 = 0.25
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f18                  
    nop
    bc1f    lbl_808CD820               
    nop
    mtc1    $at, $f6                   # $f6 = 1.00
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    beq     $zero, $zero, lbl_808CD860 
    swc1    $f6, 0x0208(s0)            # 00000208
lbl_808CD820:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    lui     t0, %hi(var_808CEA04)      # t0 = 808D0000
    mtc1    $zero, $f16                # $f16 = 0.00
    mul.s   $f4, $f0, $f8              
    mtc1    $zero, $f18                # $f18 = 0.00
    trunc.w.s $f10, $f4                  
    mfc1    t5, $f10                   
    nop
    sll     t6, t5,  2                 
    addu    t0, t0, t6                 
    lw      t0, %lo(var_808CEA04)(t0)  
    swc1    $f16, 0x0068(s0)           # 00000068
    swc1    $f18, 0x0208(s0)           # 00000208
lbl_808CD860:
    lhu     t7, 0x01D4(s0)             # 000001D4
lbl_808CD864:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a3, 0x8010                 # a3 = 80100000
    andi    t9, t7, 0xFFFE             # t9 = 00000000
    sh      t9, 0x01D4(s0)             # 000001D4
    andi    t1, t9, 0xFFFD             # t1 = 00000000
    bne     t0, $at, lbl_808CD8B0      
    sh      t1, 0x01D4(s0)             # 000001D4
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    sw      t2, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2816          # a0 = 00002816
    addiu   a1, s0, 0x01F4             # a1 = 000001F4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    sw      t0, 0x004C($sp)            
    beq     $zero, $zero, lbl_808CD8FC 
    lw      t0, 0x004C($sp)            
lbl_808CD8B0:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t0, $at, lbl_808CD8F0      
    or      a0, s0, $zero              # a0 = 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sw      t3, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    addiu   a1, s0, 0x01F4             # a1 = 000001F4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C              
    sw      t0, 0x004C($sp)            
    beq     $zero, $zero, lbl_808CD8FC 
    lw      t0, 0x004C($sp)            
lbl_808CD8F0:
    jal     func_808CD20C              
    sw      t0, 0x004C($sp)            
    lw      t0, 0x004C($sp)            
lbl_808CD8FC:
    lw      t4, 0x0140(s0)             # 00000140
    or      a0, s0, $zero              # a0 = 00000000
    beq     t0, t4, lbl_808CD97C       
    nop
    jal     func_808CC81C              
    sw      t0, 0x0140(s0)             # 00000140
    swc1    $f0, 0x0040($sp)           
    lw      t5, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_808CE880)      # a0 = 808D0000
    sll     t6, t5,  2                 
    addu    a0, a0, t6                 
    jal     func_8008A194              
    lw      a0, %lo(var_808CE880)(a0)  
    mtc1    v0, $f6                    # $f6 = 0.00
    lw      t7, 0x0140(s0)             # 00000140
    lui     $at, 0xC040                # $at = C0400000
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f4                   # $f4 = -3.00
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    sll     t8, t7,  2                 
    addu    a1, a1, t8                 
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sw      t9, 0x0014($sp)            
    lw      a1, %lo(var_808CE880)(a1)  
    swc1    $f8, 0x0010($sp)           
    lw      a0, 0x0034($sp)            
    lw      a2, 0x0040($sp)            
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C              
    swc1    $f4, 0x0018($sp)           
    beq     $zero, $zero, lbl_808CD9E4 
    lw      $ra, 0x002C($sp)           
lbl_808CD97C:
    jal     func_808CC81C              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0040($sp)           
    lw      t1, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_808CE880)      # a0 = 808D0000
    sll     t2, t1,  2                 
    addu    a0, a0, t2                 
    jal     func_8008A194              
    lw      a0, %lo(var_808CE880)(a0)  
    mtc1    v0, $f10                   # $f10 = 0.00
    lw      t3, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f16, $f10                 
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    sll     t4, t3,  2                 
    addu    a1, a1, t4                 
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    mfc1    a3, $f0                    
    sw      t5, 0x0014($sp)            
    lw      a1, %lo(var_808CE880)(a1)  
    swc1    $f16, 0x0010($sp)          
    lw      a0, 0x0034($sp)            
    lw      a2, 0x0040($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
lbl_808CD9E0:
    lw      $ra, 0x002C($sp)           
lbl_808CD9E4:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop


func_808CD9F4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x013C(s0)             # 0000013C
    sw      $zero, 0x0140(s0)          # 00000140
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0208(s0)            # 00000208
    sh      $zero, 0x020C(s0)          # 0000020C
    sh      $zero, 0x020E(s0)          # 0000020E
    jal     func_808CC81C              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0030($sp)           
    lw      t7, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_808CE880)      # a0 = 808D0000
    sll     t8, t7,  2                 
    addu    a0, a0, t8                 
    jal     func_8008A194              
    lw      a0, %lo(var_808CE880)(a0)  
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      t9, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f6, $f4                   
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    sll     t0, t9,  2                 
    addu    a1, a1, t0                 
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    mfc1    a3, $f0                    
    sw      t1, 0x0014($sp)            
    lw      a1, %lo(var_808CE880)(a1)  
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lw      a2, 0x0030($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808CDA9C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    addiu   a0, s0, 0x0190             # a0 = 00000190
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    beql    v0, $zero, lbl_808CDBCC    
    lw      $ra, 0x002C($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808CEA9C)     # $at = 808D0000
    lwc1    $f4, %lo(var_808CEA9C)($at) 
    lui     $at, %hi(var_808CEAA0)     # $at = 808D0000
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_808CDAF0               
    nop
    beq     $zero, $zero, lbl_808CDB64 
    sw      $zero, 0x0140(s0)          # 00000140
lbl_808CDAF0:
    lwc1    $f6, %lo(var_808CEAA0)($at) 
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    c.lt.s  $f0, $f6                   
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    addiu   a1, s0, 0x01F4             # a1 = 000001F4
    bc1f    lbl_808CDB4C               
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t6, 0x0140(s0)             # 00000140
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2816          # a0 = 00002816
    addiu   a1, s0, 0x01F4             # a1 = 000001F4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_808CDB64 
    nop
lbl_808CDB4C:
    lui     t9, 0x8010                 # t9 = 80100000
    sw      t8, 0x0140(s0)             # 00000140
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    sw      t9, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
lbl_808CDB64:
    jal     func_808CC81C              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0034($sp)           
    lw      t0, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_808CE880)      # a0 = 808D0000
    sll     t1, t0,  2                 
    addu    a0, a0, t1                 
    jal     func_8008A194              
    lw      a0, %lo(var_808CE880)(a0)  
    mtc1    v0, $f8                    # $f8 = 0.00
    lw      t2, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f10, $f8                  
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    sll     t3, t2,  2                 
    addu    a1, a1, t3                 
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    mfc1    a3, $f0                    
    sw      t4, 0x0014($sp)            
    lw      a1, %lo(var_808CE880)(a1)  
    swc1    $f10, 0x0010($sp)          
    lw      a0, 0x0030($sp)            
    lw      a2, 0x0034($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
lbl_808CDBCC:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_808CDBDC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lw      t7, 0x0004(s0)             # 00000004
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t6, 0x013C(s0)             # 0000013C
    ori     t8, t7, 0x0030             # t8 = 00000030
    sw      $zero, 0x0140(s0)          # 00000140
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0208(s0)            # 00000208
    sh      $zero, 0x020C(s0)          # 0000020C
    sh      $zero, 0x020E(s0)          # 0000020E
    sw      t8, 0x0004(s0)             # 00000004
    jal     func_808CC81C              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0030($sp)           
    lw      t9, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_808CE880)      # a0 = 808D0000
    sll     t0, t9,  2                 
    addu    a0, a0, t0                 
    jal     func_8008A194              
    lw      a0, %lo(var_808CE880)(a0)  
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      t1, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f6, $f4                   
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    sll     t2, t1,  2                 
    addu    a1, a1, t2                 
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    mfc1    a3, $f0                    
    sw      t3, 0x0014($sp)            
    lw      a1, %lo(var_808CE880)(a1)  
    swc1    $f6, 0x0010($sp)           
    addiu   a0, s0, 0x0190             # a0 = 00000190
    lw      a2, 0x0030($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808CDC90:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0044($sp)            
    jal     func_808CD29C              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x0190             # a0 = 00000190
    jal     func_8008C9C0              
    sw      a0, 0x0030($sp)            
    beql    v0, $zero, lbl_808CDE04    
    lw      $ra, 0x002C($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_808CEAA4)     # $at = 808D0000
    lwc1    $f4, %lo(var_808CEAA4)($at) 
    lui     $at, %hi(var_808CEAA8)     # $at = 808D0000
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_808CDCEC               
    nop
    beq     $zero, $zero, lbl_808CDD78 
    sw      $zero, 0x0140(s0)          # 00000140
lbl_808CDCEC:
    lwc1    $f6, %lo(var_808CEAA8)($at) 
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    c.lt.s  $f0, $f6                   
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    addiu   a1, s0, 0x01F4             # a1 = 000001F4
    bc1f    lbl_808CDD54               
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lhu     t7, 0x01D4(s0)             # 000001D4
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     t9, 0x8010                 # t9 = 80100000
    ori     t8, t7, 0x0020             # t8 = 00000020
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      t6, 0x0140(s0)             # 00000140
    sh      t8, 0x01D4(s0)             # 000001D4
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    sw      t9, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2816          # a0 = 00002816
    addiu   a1, s0, 0x01F4             # a1 = 000001F4
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_808CDD78 
    nop
lbl_808CDD54:
    lhu     t1, 0x01D4(s0)             # 000001D4
    lui     t3, 0x8010                 # t3 = 80100000
    sw      t0, 0x0140(s0)             # 00000140
    ori     t2, t1, 0x0020             # t2 = 00000020
    sh      t2, 0x01D4(s0)             # 000001D4
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sw      t3, 0x0014($sp)            
    jal     func_800C806C              
    sw      a3, 0x0010($sp)            
lbl_808CDD78:
    jal     func_808CC81C              
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f0, 0x0034($sp)           
    lw      t4, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_808CE880)      # a0 = 808D0000
    sll     t5, t4,  2                 
    addu    a0, a0, t5                 
    jal     func_8008A194              
    lw      a0, %lo(var_808CE880)(a0)  
    mtc1    v0, $f8                    # $f8 = 0.00
    lw      t6, 0x0140(s0)             # 00000140
    mtc1    $zero, $f0                 # $f0 = 0.00
    cvt.s.w $f10, $f8                  
    lui     a1, %hi(var_808CE880)      # a1 = 808D0000
    sll     t7, t6,  2                 
    addu    a1, a1, t7                 
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    mfc1    a3, $f0                    
    sw      t8, 0x0014($sp)            
    lw      a1, %lo(var_808CE880)(a1)  
    swc1    $f10, 0x0010($sp)          
    lw      a0, 0x0030($sp)            
    lw      a2, 0x0034($sp)            
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lhu     t9, 0x01D4(s0)             # 000001D4
    andi    t1, t9, 0xFFFE             # t1 = 00000000
    andi    t3, t1, 0xFFFD             # t3 = 00000000
    sh      t1, 0x01D4(s0)             # 000001D4
    andi    t5, t3, 0xFFF7             # t5 = 00000000
    sh      t3, 0x01D4(s0)             # 000001D4
    sh      t5, 0x01D4(s0)             # 000001D4
    andi    t6, t5, 0xFFEF             # t6 = 00000000
    sh      t6, 0x01D4(s0)             # 000001D4
    lw      $ra, 0x002C($sp)           
lbl_808CDE04:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_808CDE14:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0044($sp)            
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mul.s   $f6, $f0, $f4              
    mtc1    $at, $f18                  # $f18 = 60.00
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0028($sp)          
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x002C($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lw      a0, 0x0044($sp)            
    mul.s   $f8, $f0, $f6              
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF8
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFE4
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFE8
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    add.s   $f16, $f8, $f10            
    jal     func_8002F454              
    swc1    $f16, 0x0030($sp)          
    lwc1    $f18, 0x0028(s0)           # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f14                  # $f14 = 30.00
    swc1    $f0, 0x0210(s0)            # 00000210
    jal     func_800CD76C              
    sub.s   $f12, $f18, $f0            
    lui     $at, %hi(var_808CEAAC)     # $at = 808D0000
    lwc1    $f4, %lo(var_808CEAAC)($at) 
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t7, $f8                    
    nop
    sh      t7, 0x00B4(s0)             # 000000B4
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_808CDED8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t6, 0x013C(s0)             # 0000013C
    lui     t9, %hi(var_808CEA44)      # t9 = 808D0000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t7, t6,  2                 
    addu    t9, t9, t7                 
    lw      t9, %lo(var_808CEA44)(t9)  
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    addiu   t8, $zero, 0x001D          # t8 = 0000001D
    sw      t8, 0x0014($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41A0                 # a2 = 41A00000
    lui     a3, 0x420C                 # a3 = 420C0000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    lh      t0, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x0063         # $at = 00000063
    or      a0, s0, $zero              # a0 = 00000000
    bne     t0, $at, lbl_808CDF78      
    addiu   a2, s0, 0x0218             # a2 = 00000218
    lui     $at, 0xC516                # $at = C5160000
    mtc1    $at, $f0                   # $f0 = -2400.00
    lwc1    $f6, 0x002C(s0)            # 0000002C
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_808CDF7C               
    lw      t1, 0x0028(s0)             # 00000028
    swc1    $f0, 0x002C(s0)            # 0000002C
lbl_808CDF78:
    lw      t1, 0x0028(s0)             # 00000028
lbl_808CDF7C:
    lw      t3, 0x00E8(s0)             # 000000E8
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f10                  # $f10 = 70.00
    lui     $at, 0x42F0                # $at = 42F00000
    sw      t1, 0x003C(s0)             # 0000003C
    sw      t3, 0x01F8(s0)             # 000001F8
    lw      t2, 0x0024(s0)             # 00000024
    lwc1    $f8, 0x003C(s0)            # 0000003C
    lw      t4, 0x00E4(s0)             # 000000E4
    lwc1    $f18, 0x01F8(s0)           # 000001F8
    mtc1    $at, $f4                   # $f4 = 120.00
    add.s   $f16, $f8, $f10            
    sw      t2, 0x0038(s0)             # 00000038
    sw      t4, 0x01F4(s0)             # 000001F4
    add.s   $f6, $f18, $f4             
    lw      t2, 0x002C(s0)             # 0000002C
    lw      t4, 0x00EC(s0)             # 000000EC
    swc1    $f16, 0x003C(s0)           # 0000003C
    swc1    $f6, 0x01F8(s0)            # 000001F8
    sw      t2, 0x0040(s0)             # 00000040
    sw      t4, 0x01FC(s0)             # 000001FC
    sw      a2, 0x002C($sp)            
    jal     func_80050B00              
    or      a1, a2, $zero              # a1 = 00000218
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00FE          # t6 = 000000FE
    c.eq.s  $f8, $f10                  
    nop
    bc1fl   lbl_808CE020               
    sb      t6, 0x00AE(s0)             # 000000AE
    beq     $zero, $zero, lbl_808CE020 
    sb      t5, 0x00AE(s0)             # 000000AE
    sb      t6, 0x00AE(s0)             # 000000AE
lbl_808CE020:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_808CE034:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s3, 0x0020($sp)            
    sw      s1, 0x0018($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a2, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s5, 0x0028($sp)            
    sw      s4, 0x0024($sp)            
    sw      s2, 0x001C($sp)            
    sw      s0, 0x0014($sp)            
    sw      a1, 0x005C($sp)            
    lw      t6, 0x027C(s1)             # 0000027C
    or      s2, $zero, $zero           # s2 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    blez    t6, lbl_808CE184           
    addiu   s5, $sp, 0x0040            # s5 = FFFFFFE8
    addiu   s4, $sp, 0x004C            # s4 = FFFFFFF4
    lw      t7, 0x0280(s1)             # 00000280
lbl_808CE07C:
    or      a0, s3, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = FFFFFFF4
    addu    t8, t7, s0                 
    lh      t9, 0x0028(t8)             # 00000028
    or      a3, s5, $zero              # a3 = FFFFFFE8
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x004C($sp)           
    lw      t0, 0x0280(s1)             # 00000280
    addu    t1, t0, s0                 
    lh      t2, 0x002A(t1)             # 0000002A
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0050($sp)          
    lw      t3, 0x0280(s1)             # 00000280
    addu    t4, t3, s0                 
    lh      t5, 0x002C(t4)             # 0000002C
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0054($sp)          
    lw      t6, 0x0280(s1)             # 00000280
    addu    t7, t6, s0                 
    jal     func_8008E2AC              
    lbu     a1, 0x003C(t7)             # 0000003C
    lwc1    $f4, 0x0040($sp)           
    lw      t0, 0x0280(s1)             # 00000280
    addiu   s2, s2, 0x0001             # s2 = 00000001
    trunc.w.s $f6, $f4                   
    addu    t1, t0, s0                 
    mfc1    t9, $f6                    
    nop
    sh      t9, 0x0030(t1)             # 00000030
    lwc1    $f8, 0x0044($sp)           
    lw      t4, 0x0280(s1)             # 00000280
    trunc.w.s $f10, $f8                  
    addu    t5, t4, s0                 
    mfc1    t3, $f10                   
    nop
    sh      t3, 0x0032(t5)             # 00000032
    lwc1    $f16, 0x0048($sp)          
    lw      t8, 0x0280(s1)             # 00000280
    trunc.w.s $f18, $f16                 
    addu    t0, t8, s0                 
    mfc1    t7, $f18                   
    nop
    sh      t7, 0x0034(t0)             # 00000034
    lw      t9, 0x0280(s1)             # 00000280
    addu    v0, t9, s0                 
    lh      t1, 0x002E(v0)             # 0000002E
    lwc1    $f4, 0x0038(v0)            # 00000038
    addiu   s0, s0, 0x0040             # s0 = 00000040
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f4, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t4, $f16                   
    nop
    sh      t4, 0x0036(v0)             # 00000036
    lw      t3, 0x027C(s1)             # 0000027C
    slt     $at, s2, t3                
    bnel    $at, $zero, lbl_808CE07C   
    lw      t7, 0x0280(s1)             # 00000280
lbl_808CE184:
    lw      a0, 0x005C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s1, 0x0264             # a2 = 00000264
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    lw      s2, 0x001C($sp)            
    lw      s3, 0x0020($sp)            
    lw      s4, 0x0024($sp)            
    lw      s5, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_808CE1C0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a2, 0x0048($sp)            
    lwc1    $f0, 0x01A8(s0)            # 000001A8
    lw      a0, 0x0040($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addiu   a2, s0, 0x01D8             # a2 = 000001D8
    sw      a2, 0x0034($sp)            
    lw      a1, 0x0048($sp)            
    addiu   a3, $sp, 0x0038            # a3 = FFFFFFF8
    swc1    $f0, 0x003C($sp)           
    jal     func_8008EC20              
    addu    a0, a0, $at                
    lw      t6, 0x0034($sp)            
    lwc1    $f0, 0x003C($sp)           
    addiu   a1, s0, 0x01E4             # a1 = 000001E4
    lw      t8, 0x0000(t6)             # 00000000
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    sw      t8, 0x0000(a1)             # 000001E4
    lw      t7, 0x0004(t6)             # 00000004
    lui     $at, 0x41E0                # $at = 41E00000
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    sw      t7, 0x0004(a1)             # 000001E8
    lw      t8, 0x0008(t6)             # 00000008
    sw      t8, 0x0008(a1)             # 000001EC
    lwc1    $f4, 0x01E8(s0)            # 000001E8
    lw      v1, 0x0140(s0)             # 00000140
    add.s   $f8, $f4, $f6              
    bne     v1, $zero, lbl_808CE2A8    
    swc1    $f8, 0x01E8(s0)            # 000001E8
    mtc1    $at, $f10                  # $f10 = 28.00
    nop
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_808CE2A8               
    nop
    lhu     v0, 0x01D4(s0)             # 000001D4
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t9, v0, 0x0008             # t9 = 00000000
    bne     t9, $zero, lbl_808CE2A8    
    ori     t0, v0, 0x0008             # t0 = 00000008
    sh      t0, 0x01D4(s0)             # 000001D4
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    sw      t1, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    lw      a1, 0x0034($sp)            
    addiu   a0, $zero, 0x282C          # a0 = 0000282C
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_808CE398 
    lw      $ra, 0x0024($sp)           
lbl_808CE2A8:
    bne     a0, v1, lbl_808CE30C       
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f16                  # $f16 = 25.00
    nop
    c.lt.s  $f16, $f0                  
    nop
    bc1f    lbl_808CE30C               
    nop
    lhu     v0, 0x01D4(s0)             # 000001D4
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t2, v0, 0x0010             # t2 = 00000000
    bne     t2, $zero, lbl_808CE30C    
    ori     t3, v0, 0x0010             # t3 = 00000010
    sh      t3, 0x01D4(s0)             # 000001D4
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    sw      t4, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    lw      a1, 0x0034($sp)            
    addiu   a0, $zero, 0x282B          # a0 = 0000282B
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_808CE398 
    lw      $ra, 0x0024($sp)           
lbl_808CE30C:
    bne     a0, v1, lbl_808CE354       
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lhu     v0, 0x01D4(s0)             # 000001D4
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t5, v0, 0x0020             # t5 = 00000000
    beq     t5, $zero, lbl_808CE354    
    andi    t6, v0, 0xFFDF             # t6 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    sh      t6, 0x01D4(s0)             # 000001D4
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2805          # a0 = 00002805
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_808CE398 
    lw      $ra, 0x0024($sp)           
lbl_808CE354:
    bnel    v1, $at, lbl_808CE398      
    lw      $ra, 0x0024($sp)           
    lhu     v0, 0x01D4(s0)             # 000001D4
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    andi    t8, v0, 0x0020             # t8 = 00000000
    beq     t8, $zero, lbl_808CE394    
    andi    t9, v0, 0xFFDF             # t9 = 00000000
    lui     t0, 0x8010                 # t0 = 80100000
    sh      t9, 0x01D4(s0)             # 000001D4
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    sw      t0, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x2816          # a0 = 00002816
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_808CE394:
    lw      $ra, 0x0024($sp)           
lbl_808CE398:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_808CE3A8:
    addiu   $sp, $sp, 0xFF38           # $sp = FFFFFF38
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)           
    lw      a2, 0x0000(s1)             # 00000000
    addiu   $at, $zero, 0x0063         # $at = 00000063
    or      a0, s0, $zero              # a0 = 00000000
    sw      a2, 0x00BC($sp)            
    lh      v0, 0x00A4(s1)             # 000000A4
    bne     v0, $at, lbl_808CE3E4      
    addiu   $at, $zero, 0x0036         # $at = 00000036
    beq     v0, $at, lbl_808CE3F0      
    nop
lbl_808CE3E4:
    jal     func_808CDE14              
    or      a1, s1, $zero              # a1 = 00000000
    lw      a2, 0x0000(s1)             # 00000000
lbl_808CE3F0:
    jal     func_8007E298              
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a2, s0, 0x0144             # a2 = 00000144
    lui     a3, %hi(func_808CE034)     # a3 = 808D0000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(func_808CE034) # a3 = 808CE034
    sw      a2, 0x003C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008E1D4              
    or      a1, s1, $zero              # a1 = 00000000
    lw      t7, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFA0
    bne     t7, $at, lbl_808CE84C      
    lui     t8, %hi(var_808CEA58)      # t8 = 808D0000
    addiu   t8, t8, %lo(var_808CEA58)  # t8 = 808CEA58
    lw      t4, 0x0000(t8)             # 808CEA58
    addiu   $at, $zero, 0x0036         # $at = 00000036
    or      a0, s1, $zero              # a0 = 00000000
    sw      t4, 0x0000(a2)             # FFFFFFA0
    lw      t9, 0x0004(t8)             # 808CEA5C
    sw      t9, 0x0004(a2)             # FFFFFFA4
    lw      t4, 0x0008(t8)             # 808CEA60
    sw      t4, 0x0008(a2)             # FFFFFFA8
    lwc1    $f4, 0x0080(s0)            # 00000080
    lwc1    $f2, 0x0028(s0)            # 00000028
    sub.s   $f6, $f2, $f4              
    swc1    $f6, 0x0060($sp)           
    lh      v0, 0x00A4(s1)             # 000000A4
    bne     v0, $at, lbl_808CE54C      
    lui     $at, %hi(var_808CEAB0)     # $at = 808D0000
    lwc1    $f8, %lo(var_808CEAB0)($at) 
    lwc1    $f0, 0x0024(s0)            # 00000024
    c.eq.s  $f8, $f0                   
    nop
    bc1fl   lbl_808CE4E4               
    lui     $at, 0x436E                # $at = 436E0000
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, 0xC375                # $at = C3750000
    c.eq.s  $f12, $f2                  
    nop
    bc1fl   lbl_808CE4E4               
    lui     $at, 0x436E                # $at = 436E0000
    mtc1    $at, $f10                  # $f10 = 238.00
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lui     $at, 0x436B                # $at = 436B0000
    addiu   t5, $zero, 0x7FFF          # t5 = 00007FFF
    c.eq.s  $f10, $f16                 
    nop
    bc1fl   lbl_808CE4E4               
    lui     $at, 0x436E                # $at = 436E0000
    mtc1    $at, $f18                  # $f18 = 238.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    swc1    $f12, 0x006C($sp)          
    sh      t5, 0x0066($sp)            
    swc1    $f18, 0x0068($sp)          
    beq     $zero, $zero, lbl_808CE628 
    swc1    $f4, 0x0070($sp)           
    lui     $at, 0x436E                # $at = 436E0000
lbl_808CE4E4:
    mtc1    $at, $f6                   # $f6 = 238.00
    mtc1    $zero, $f12                # $f12 = 0.00
    c.eq.s  $f6, $f0                   
    nop
    bc1f    lbl_808CE628               
    nop
    c.eq.s  $f12, $f2                  
    lui     $at, 0xC375                # $at = C3750000
    bc1f    lbl_808CE628               
    nop
    mtc1    $at, $f8                   # $f8 = -245.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lui     $at, 0x43EF                # $at = 43EF0000
    addiu   t6, $zero, 0x7FFF          # t6 = 00007FFF
    c.eq.s  $f8, $f10                  
    nop
    bc1f    lbl_808CE628               
    nop
    mtc1    $at, $f16                  # $f16 = 478.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    swc1    $f12, 0x006C($sp)          
    sh      t6, 0x0066($sp)            
    swc1    $f16, 0x0068($sp)          
    beq     $zero, $zero, lbl_808CE628 
    swc1    $f18, 0x0070($sp)          
lbl_808CE54C:
    addiu   $at, $zero, 0x0063         # $at = 00000063
    bne     v0, $at, lbl_808CE628      
    lui     $at, %hi(var_808CEAB4)     # $at = 808D0000
    lwc1    $f4, %lo(var_808CEAB4)($at) 
    lwc1    $f0, 0x0024(s0)            # 00000024
    c.eq.s  $f4, $f0                   
    nop
    bc1fl   lbl_808CE5C8               
    lui     $at, 0x445C                # $at = 445C0000
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, %hi(var_808CEAB8)     # $at = 808D0000
    c.eq.s  $f12, $f2                  
    nop
    bc1fl   lbl_808CE5C8               
    lui     $at, 0x445C                # $at = 445C0000
    lwc1    $f6, %lo(var_808CEAB8)($at) 
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     $at, 0x4443                # $at = 44430000
    c.eq.s  $f6, $f8                   
    nop
    bc1fl   lbl_808CE5C8               
    lui     $at, 0x445C                # $at = 445C0000
    mtc1    $at, $f10                  # $f10 = 880.00
    lui     $at, 0xC2A0                # $at = C2A00000
    mtc1    $at, $f16                  # $f16 = -80.00
    swc1    $f12, 0x006C($sp)          
    sh      $zero, 0x0066($sp)         
    swc1    $f10, 0x0068($sp)          
    beq     $zero, $zero, lbl_808CE628 
    swc1    $f16, 0x0070($sp)          
    lui     $at, 0x445C                # $at = 445C0000
lbl_808CE5C8:
    mtc1    $at, $f18                  # $f18 = 880.00
    mtc1    $zero, $f12                # $f12 = 0.00
    c.eq.s  $f18, $f0                  
    nop
    bc1f    lbl_808CE628               
    nop
    c.eq.s  $f12, $f2                  
    lui     $at, %hi(var_808CEABC)     # $at = 808D0000
    bc1f    lbl_808CE628               
    nop
    lwc1    $f4, %lo(var_808CEABC)($at) 
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lui     $at, 0xC47A                # $at = C47A0000
    c.eq.s  $f4, $f6                   
    nop
    bc1f    lbl_808CE628               
    nop
    mtc1    $at, $f8                   # $f8 = -1000.00
    lui     $at, 0xC28C                # $at = C28C0000
    mtc1    $at, $f10                  # $f10 = -70.00
    swc1    $f12, 0x006C($sp)          
    sh      $zero, 0x0066($sp)         
    swc1    $f8, 0x0068($sp)           
    swc1    $f10, 0x0070($sp)          
lbl_808CE628:
    jal     func_808CE1C0              
    or      a1, s0, $zero              # a1 = 00000000
    lh      t7, 0x00B4(s0)             # 000000B4
    lh      t8, 0x0066($sp)            
    lwc1    $f0, 0x0054(s0)            # 00000054
    lw      a1, 0x0050(s0)             # 00000050
    lw      a3, 0x0058(s0)             # 00000058
    sw      t7, 0x0010($sp)            
    sw      t8, 0x0014($sp)            
    lh      t9, 0x00B8(s0)             # 000000B8
    lwc1    $f16, 0x0068($sp)          
    lwc1    $f6, 0x006C($sp)           
    sw      t9, 0x0018($sp)            
    swc1    $f16, 0x001C($sp)          
    lwc1    $f18, 0x00BC(s0)           # 000000BC
    lwc1    $f10, 0x0070($sp)          
    mfc1    a2, $f0                    
    mul.s   $f4, $f18, $f0             
    addiu   a0, $sp, 0x0078            # a0 = FFFFFFB0
    swc1    $f10, 0x0024($sp)          
    add.s   $f8, $f4, $f6              
    jal     func_8008F914              
    swc1    $f8, 0x0020($sp)           
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8008FC98              
    addiu   a1, $sp, 0x0078            # a1 = FFFFFFB0
    beq     v0, $zero, lbl_808CE84C    
    or      t1, v0, $zero              # t1 = 00000000
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    lw      t2, 0x00BC($sp)            
    lw      v0, 0x02C0(t2)             # 000002C0
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t5, t5, 0xEDB0             # t5 = 800FEDB0
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(t2)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(t2)             # 000002C0
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t2)             # 000002C0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sw      t8, 0x001C($sp)            
    sw      t7, 0x0014($sp)            
    lw      a2, 0x003C($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8008E270              
    sw      $zero, 0x0018($sp)         
    lwc1    $f16, 0x0068($sp)          
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    trunc.w.s $f18, $f16                 
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, s0, 0x02C4             # a2 = 000002C4
    mfc1    t4, $f18                   
    nop
    sh      t4, 0x030A(s0)             # 0000030A
    lwc1    $f4, 0x006C($sp)           
    trunc.w.s $f6, $f4                   
    mfc1    t6, $f6                    
    nop
    sh      t6, 0x030C(s0)             # 0000030C
    lwc1    $f8, 0x0070($sp)           
    trunc.w.s $f10, $f8                  
    mfc1    t8, $f10                   
    jal     func_8004C130              # CollisionCheck_setOT
    sh      t8, 0x030E(s0)             # 0000030E
    jal     func_8007E404              
    lw      a0, 0x0000(s1)             # 00000000
    lw      a0, 0x00BC($sp)            
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(a0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lwc1    $f12, 0x0068($sp)          
    lwc1    $f14, 0x006C($sp)          
    lw      a2, 0x0070($sp)            
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lui     $at, %hi(var_808CEAC0)     # $at = 808D0000
    lwc1    $f18, %lo(var_808CEAC0)($at) 
    lwc1    $f16, 0x0060($sp)          
    lwc1    $f8, 0x00C4(s0)            # 000000C4
    lwc1    $f10, 0x0050(s0)           # 00000050
    mul.s   $f4, $f16, $f18            
    lwc1    $f16, 0x0058(s0)           # 00000058
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f6, $f14, $f4             
    mul.s   $f0, $f6, $f8              
    nop
    mul.s   $f12, $f10, $f0            
    nop
    mul.s   $f18, $f16, $f0            
    mfc1    a2, $f18                   
    jal     func_800AA8FC              
    nop
    lh      t6, 0x0066($sp)            
    lui     $at, %hi(var_808CEAC4)     # $at = 808D0000
    lwc1    $f8, %lo(var_808CEAC4)($at) 
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    jal     func_800AB900              
    lw      a0, 0x0000(s1)             # 00000000
    beq     v0, $zero, lbl_808CE84C    
    lw      t7, 0x00BC($sp)            
    lw      v1, 0x02D0(t7)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t7)             # 000002D0
    sw      v0, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      t4, 0x00BC($sp)            
    lui     t8, 0x0405                 # t8 = 04050000
    addiu   t8, t8, 0xF000             # t8 = 0404F000
    lw      v1, 0x02D0(t4)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(t4)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
lbl_808CE84C:
    lw      $ra, 0x0034($sp)           
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00C8           # $sp = 00000000

.section .data

var_808CE860: .word 0x003C0100, 0x00000000, 0x00270000, 0x00000318
.word func_808CC8E4
.word func_808CCDD4
.word func_808CDED8
.word func_808CE3A8
var_808CE880: .word \
0x06004580, 0x06004C20, 0x060035D4, 0x06002458, \
0x060054BC, 0x06001A1C, 0x06000608, 0x06000C20, \
0x060013A8
var_808CE8A4: .word \
0x0A000039, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00280064, 0x00000000, 0x00000000
var_808CE8D0: .word \
0x0A000039, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x003C0064, 0x00000000, 0x00000000
var_808CE8FC: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000100, 0x0B000000, 0x00000000, \
0x00140064
var_808CE920: .word 0x0A000039, 0x10000000, 0x00000001
.word var_808CE8FC
var_808CE930: .word 0x0A000023, 0x0064FE00
var_808CE938: .word \
0x04220001, 0x01800700, 0x06750027, 0xFE830600, \
0x06460001, 0xFBE80600, 0x041D0001, 0xF9AC0600, \
0xFC0C0001, 0xF99F0700, 0xF9890001, 0xFC6A0600, \
0xF9CE0001, 0xFF7A0600, 0xFC3F0001, 0x01930700, \
0x00000008
.word var_808CE938
var_808CE980: .word \
0x00580000, 0x081E0A00, 0x09B20178, 0x12170700, \
0x08B4FFE4, 0x19CD0C00, 0x028EFF9C, 0x22A00700, \
0xFED7FE0C, 0x29AB0C00, 0xEB49FE5C, 0x29900A00, \
0xE5E2FE0C, 0x1E500A00, 0xEB740064, 0x15230700, \
0xF20BFEF3, 0x0F350A00, 0x00000009
.word var_808CE980
var_808CE9D0: .word 0x00000000, 0x00000010
var_808CE9D8: .word \
0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, \
0x3FC00000, 0x3FC00000, 0x3FC00000, 0x3FC00000, \
0x3F800000
var_808CE9FC: .word 0xB0F804B0, 0x30FC012C
var_808CEA04: .word \
0x00000000, 0x00000001, 0x00000004, 0x00000005, \
0x00000006, 0x00000002, 0x00000003
var_808CEA20: .word \
0x00000000, 0x00000000, 0x00000002, 0x00000002, \
0x00000001, 0x00000001, 0x00000001, 0x00000003, \
0x00000003
var_808CEA44: .word func_808CD11C
.word func_808CD390
.word func_808CDA9C
.word func_808CDC90
.word func_808CCEEC
var_808CEA58: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_808CEA70: .word 0x3EAAAAAB
var_808CEA74: .word 0x3E4CCCCD
var_808CEA78: .word 0xC4368000
var_808CEA7C: .word 0xC4898000
var_808CEA80: .word 0xC4924000
var_808CEA84: .word 0x4567B000
var_808CEA88: .word 0x44B0A000
var_808CEA8C: .word 0xC4264000
var_808CEA90: .word 0x4622F983
var_808CEA94: .word 0x3DCCCCCD
var_808CEA98: .word 0x3DCCCCCD
var_808CEA9C: .word 0x3ECCCCCD
var_808CEAA0: .word 0x3F4CCCCD
var_808CEAA4: .word 0x3ECCCCCD
var_808CEAA8: .word 0x3F4CCCCD
var_808CEAAC: .word 0x4622F983
var_808CEAB0: .word 0x43B18000
var_808CEAB4: .word 0xC4368000
var_808CEAB8: .word 0xC4898000
var_808CEABC: .word 0xC4924000
var_808CEAC0: .word 0x3C23D70A
var_808CEAC4: .word 0x38C90FDB, 0x00000000, 0x00000000

