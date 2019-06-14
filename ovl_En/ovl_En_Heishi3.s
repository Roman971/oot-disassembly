#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AA4CF0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lui     $at, %hi(var_80AA55E0)     # $at = 80AA0000
    sh      $zero, %lo(var_80AA55E0)($at) 
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, 0xC391                # $at = C3910000
    or      a0, s0, $zero              # a0 = 00000000
    bgtz    t6, lbl_80AA4D28           
    lui     a1, 0x3C23                 # a1 = 3C230000
    beq     $zero, $zero, lbl_80AA4D4C 
    sh      $zero, 0x0268(s0)          # 00000268
lbl_80AA4D28:
    lwc1    $f4, 0x0024(s0)            # 00000024
    mtc1    $at, $f6                   # $f6 = -290.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x0268(s0)             # 00000268
    c.lt.s  $f4, $f6                   
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    bc1f    lbl_80AA4D4C               
    nop
    sh      t8, 0x0268(s0)             # 00000268
lbl_80AA4D4C:
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20              
    lui     a3, 0x41F0                 # a3 = 41F00000
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t9, s0, 0x0180             # t9 = 00000180
    addiu   t0, s0, 0x01E6             # t0 = 000001E6
    addiu   t1, $zero, 0x0011          # t1 = 00000011
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, 0x5C30             # a3 = 06005C30
    addiu   a2, a2, 0xBAC8             # a2 = 0600BAC8
    lw      a0, 0x003C($sp)            
    jal     func_8008C684              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    sb      t2, 0x00AE(s0)             # 000000AE
    sb      t3, 0x001F(s0)             # 0000001F
    addiu   a1, s0, 0x026C             # a1 = 0000026C
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_80AA5604)      # a3 = 80AA0000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_80AA5604)  # a3 = 80AA5604
    lw      a0, 0x003C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lw      t5, 0x0024(s0)             # 00000024
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f8                   # $f8 = -3.00
    sw      t5, 0x0038(s0)             # 00000038
    lw      t5, 0x002C(s0)             # 0000002C
    lw      t4, 0x0028(s0)             # 00000028
    lui     t6, %hi(func_80AA4E48)     # t6 = 80AA0000
    addiu   t6, t6, %lo(func_80AA4E48) # t6 = 80AA4E48
    sw      t6, 0x024C(s0)             # 0000024C
    swc1    $f8, 0x006C(s0)            # 0000006C
    sw      t5, 0x0040(s0)             # 00000040
    sw      t4, 0x003C(s0)             # 0000003C
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA4E1C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x026C             # a1 = 0000026C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA4E48:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    lw      v1, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f18                  # $f18 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6                   
    sw      $zero, 0x0014($sp)         
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    swc1    $f18, 0x0018($sp)          
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lw      v1, 0x0028($sp)            
    lui     t1, %hi(func_80AA4EF8)     # t1 = 80AA0000
    lui     t2, %hi(func_80AA5054)     # t2 = 80AA0000
    lh      t0, 0x0268(v1)             # 00000268
    addiu   t1, t1, %lo(func_80AA4EF8) # t1 = 80AA4EF8
    addiu   t2, t2, %lo(func_80AA5054) # t2 = 80AA5054
    bnel    t0, $zero, lbl_80AA4EE8    
    sw      t2, 0x024C(v1)             # 0000024C
    beq     $zero, $zero, lbl_80AA4EE8 
    sw      t1, 0x024C(v1)             # 0000024C
    sw      t2, 0x024C(v1)             # 0000024C
lbl_80AA4EE8:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA4EF8:
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
    lh      t8, 0x008A(s0)             # 0000008A
    lh      t9, 0x00B6(s0)             # 000000B6
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t1, 0x8012                 # t1 = 80120000
    subu    v0, t8, t9                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    bltz    v0, lbl_80AA4F50           
    subu    v1, $zero, v0              
    sll     v1, v0, 16                 
    beq     $zero, $zero, lbl_80AA4F58 
    sra     v1, v1, 16                 
lbl_80AA4F50:
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_80AA4F58:
    slti    $at, v1, 0x4300            
    beq     $at, $zero, lbl_80AA4F90   
    lw      t2, 0x0024($sp)            
    lw      t0, -0x5A20(t0)            # 8011A5E0
    lui     $at, 0x4348                # $at = 43480000
    bnel    t0, $zero, lbl_80AA4F88    
    mtc1    $at, $f0                   # $f0 = 200.00
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f0                   # $f0 = 250.00
    beq     $zero, $zero, lbl_80AA4FBC 
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f0                   # $f0 = 250.00
lbl_80AA4F88:
    beq     $zero, $zero, lbl_80AA4FBC 
    lwc1    $f4, 0x0090(s0)            # 00000090
lbl_80AA4F90:
    lw      t1, -0x5A20(t1)            # 8011A5E0
    lui     $at, 0x42C8                # $at = 42C80000
    bnel    t1, $zero, lbl_80AA4FB4    
    mtc1    $at, $f0                   # $f0 = 100.00
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f0                   # $f0 = 150.00
    beq     $zero, $zero, lbl_80AA4FBC 
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f0                   # $f0 = 150.00
lbl_80AA4FB4:
    nop
    lwc1    $f4, 0x0090(s0)            # 00000090
lbl_80AA4FBC:
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80AA5044               
    lw      $ra, 0x001C($sp)           
    lwc1    $f6, 0x0028(t2)            # 00000028
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    sub.s   $f0, $f6, $f8              
    lui     v0, %hi(var_80AA55E0)      # v0 = 80AA0000
    addiu   v0, v0, %lo(var_80AA55E0)  # v0 = 80AA55E0
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_80AA5044               
    lw      $ra, 0x001C($sp)           
    lh      t3, 0x0000(v0)             # 80AA55E0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   a1, $zero, 0x702D          # a1 = 0000702D
    bne     t3, $zero, lbl_80AA5040    
    or      a2, s0, $zero              # a2 = 00000000
    sh      t4, 0x0000(v0)             # 80AA55E0
    jal     func_800DCE14              
    lw      a0, 0x002C($sp)            
    jal     func_800646F0              
    addiu   a0, $zero, 0x482C          # a0 = 0000482C
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     t5, %hi(func_80AA51C4)     # t5 = 80AA0000
    addiu   t5, t5, %lo(func_80AA51C4) # t5 = 80AA51C4
    sw      t5, 0x024C(s0)             # 0000024C
lbl_80AA5040:
    lw      $ra, 0x001C($sp)           
lbl_80AA5044:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA5054:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      v0, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0              
    sw      v0, 0x0024($sp)            
    lw      v0, 0x0024($sp)            
    lui     $at, 0xC33E                # $at = C33E0000
    mtc1    $at, $f4                   # $f4 = -190.00
    lwc1    $f2, 0x0024(v0)            # 00000024
    lui     $at, 0xC3BE                # $at = C3BE0000
    c.lt.s  $f2, $f4                   
    nop
    bc1fl   lbl_80AA51B4               
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f6                   # $f6 = -380.00
    nop
    c.lt.s  $f6, $f2                   
    nop
    bc1fl   lbl_80AA51B4               
    lw      $ra, 0x001C($sp)           
    lwc1    $f8, 0x0028(v0)            # 00000028
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    sub.s   $f0, $f8, $f10             
    lui     $at, 0x447F                # $at = 447F0000
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f16                  
    nop
    bc1fl   lbl_80AA51B4               
    lw      $ra, 0x001C($sp)           
    lwc1    $f0, 0x002C(v0)            # 0000002C
    mtc1    $at, $f18                  # $f18 = 1020.00
    lui     $at, 0x442F                # $at = 442F0000
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80AA51B4               
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f4                   # $f4 = 700.00
    lui     v1, %hi(var_80AA55E0)      # v1 = 80AA0000
    addiu   v1, v1, %lo(var_80AA55E0)  # v1 = 80AA55E0
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80AA51B4               
    lw      $ra, 0x001C($sp)           
    lh      t7, 0x0000(v1)             # 80AA55E0
    bnel    t7, $zero, lbl_80AA51B4    
    lw      $ra, 0x001C($sp)           
    lh      t8, 0x0268(s0)             # 00000268
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lui     $at, 0xC391                # $at = C3910000
    bnel    v0, t8, lbl_80AA5164       
    mtc1    $at, $f8                   # $f8 = -290.00
    lui     $at, 0xC391                # $at = C3910000
    mtc1    $at, $f6                   # $f6 = -290.00
    nop
    c.lt.s  $f2, $f6                   
    nop
    bc1fl   lbl_80AA517C               
    sh      v0, 0x0000(v1)             # 80AA55E0
    beq     $zero, $zero, lbl_80AA51B4 
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f8                   # $f8 = -290.00
lbl_80AA5164:
    nop
    c.lt.s  $f8, $f2                   
    nop
    bc1tl   lbl_80AA51B4               
    lw      $ra, 0x001C($sp)           
    sh      v0, 0x0000(v1)             # 80AA55E0
lbl_80AA517C:
    lw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0x702D          # a1 = 0000702D
    jal     func_800DCE14              
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800646F0              
    addiu   a0, $zero, 0x482C          # a0 = 0000482C
    lw      a0, 0x002C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     t9, %hi(func_80AA51C4)     # t9 = 80AA0000
    addiu   t9, t9, %lo(func_80AA51C4) # t9 = 80AA51C4
    sw      t9, 0x024C(s0)             # 0000024C
    lw      $ra, 0x001C($sp)           
lbl_80AA51B4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA51C4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x5880             # a0 = 06005880
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    lw      v1, 0x0028($sp)            
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f18                  # $f18 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5880             # a1 = 06005880
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6                   
    sw      $zero, 0x0014($sp)         
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    swc1    $f18, 0x0018($sp)          
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lw      v1, 0x0028($sp)            
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f4                   # $f4 = 2.50
    lui     t1, %hi(func_80AA526C)     # t1 = 80AA0000
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    addiu   t1, t1, %lo(func_80AA526C) # t1 = 80AA526C
    sh      t0, 0x0262(v1)             # 00000262
    sw      t1, 0x024C(v1)             # 0000024C
    swc1    $f4, 0x0068(v1)            # 00000068
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA526C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0              
    sw      a0, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x3F80                 # a1 = 3F800000
    bne     v0, $zero, lbl_80AA52AC    
    lw      a0, 0x002C($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x4188                 # a1 = 41880000
    beq     v0, $zero, lbl_80AA52B8    
lbl_80AA52AC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28F0          # a1 = 000028F0
lbl_80AA52B8:
    lh      t6, 0x0262(s0)             # 00000262
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    bne     t6, $zero, lbl_80AA52E4    
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t7, %hi(func_80AA5304)     # t7 = 80AA0000
    addiu   t7, t7, %lo(func_80AA5304) # t7 = 80AA5304
    sw      t7, 0x024C(s0)             # 0000024C
    beq     $zero, $zero, lbl_80AA52F0 
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_80AA52E4:
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
lbl_80AA52F0:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA5304:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6                   
    sw      $zero, 0x0014($sp)         
    swc1    $f18, 0x0018($sp)          
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8                    
    nop
    sll     t8, t7, 16                 
    sra     t9, t8, 16                 
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    jal     func_8008D17C              
    swc1    $f16, 0x0010($sp)          
    lw      t1, 0x0028($sp)            
    lui     t0, %hi(func_80AA5398)     # t0 = 80AA0000
    addiu   t0, t0, %lo(func_80AA5398) # t0 = 80AA5398
    sw      t0, 0x024C(t1)             # 0000024C
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA5398:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_8008C9C0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_800DD464              
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80AA5438      
    lw      $ra, 0x001C($sp)           
    jal     func_800D6110              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80AA5434    
    lw      a0, 0x0020($sp)            
    lbu     t6, 0x0266(a0)             # 00000266
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    bne     t6, $zero, lbl_80AA5434    
    addiu   v1, $zero, 0x002E          # v1 = 0000002E
    lhu     t7, 0x0EDC(v0)             # 8011B4AC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    ori     t8, t7, 0x4000             # t8 = 00004000
    sh      t8, 0x0EDC(v0)             # 8011B4AC
    addiu   t9, $zero, 0x047E          # t9 = 0000047E
    sh      t9, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sb      t0, 0x1E15($at)            # 00011E15
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    sb      t1, 0x0266(a0)             # 00000266
    addu    $at, $at, s0               
    sb      v1, 0x1E5E($at)            # 00011E5E
    sb      v1, 0x141D(v0)             # 8011B9ED
lbl_80AA5434:
    lw      $ra, 0x001C($sp)           
lbl_80AA5438:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA5448:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4270                 # a1 = 42700000
    lh      t6, 0x0264(s0)             # 00000264
    lh      v0, 0x0262(s0)             # 00000262
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     v0, $zero, lbl_80AA5484    
    sh      t7, 0x0264(s0)             # 00000264
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0262(s0)             # 00000262
lbl_80AA5484:
    lw      t9, 0x024C(s0)             # 0000024C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)            
    jalr    $ra, t9                    
    nop
    lwl     t1, 0x0030(s0)             # 00000030
    lwr     t1, 0x0033(s0)             # 00000033
    or      a0, s0, $zero              # a0 = 00000000
    swl     t1, 0x00B4(s0)             # 000000B4
    swr     t1, 0x00B7(s0)             # 000000B7
    lhu     t1, 0x0034(s0)             # 00000034
    jal     func_8002121C              
    sh      t1, 0x00B8(s0)             # 000000B8
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    addiu   t2, $zero, 0x001C          # t2 = 0000001C
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t2, 0x0014($sp)            
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
    addiu   a2, s0, 0x026C             # a2 = 0000026C
    or      a1, a2, $zero              # a1 = 0000026C
    sw      a2, 0x002C($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at                
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80AA5528:
    sw      a0, 0x0000($sp)            
    sw      a2, 0x0008($sp)            
    sw      a3, 0x000C($sp)            
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     a1, $at, lbl_80AA5554      
    lw      v0, 0x0014($sp)            
    lw      v1, 0x0010($sp)            
    lh      t7, 0x025E(v0)             # 0000025E
    lh      t6, 0x0000(v1)             # 00000000
    addu    t8, t6, t7                 
    sh      t8, 0x0000(v1)             # 00000000
lbl_80AA5554:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lw      v0, 0x0014($sp)            
    bne     a1, $at, lbl_80AA5584      
    lw      v1, 0x0010($sp)            
    lh      t9, 0x0000(v1)             # 00000000
    lh      t0, 0x0252(v0)             # 00000252
    lh      t2, 0x0004(v1)             # 00000004
    addu    t1, t9, t0                 
    sh      t1, 0x0000(v1)             # 00000000
    lh      t3, 0x0254(v0)             # 00000254
    addu    t4, t2, t3                 
    sh      t4, 0x0004(v1)             # 00000004
lbl_80AA5584:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    nop


func_80AA5590:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0024($sp)            
    jal     func_8007E298              
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0020($sp)            
    lui     a3, %hi(func_80AA5528)     # a3 = 80AA0000
    addiu   a3, a3, %lo(func_80AA5528) # a3 = 80AA5528
    lw      a1, 0x0140(v0)             # 00000140
    lw      a2, 0x015C(v0)             # 0000015C
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x0024($sp)            
    jal     func_8008993C              
    sw      v0, 0x0014($sp)            
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80AA55E0: .word 0x00000000
var_80AA55E4: .word 0x01420400, 0x00000000, 0x00970000, 0x000002B8
.word func_80AA4CF0
.word func_80AA4E1C
.word func_80AA5448
.word func_80AA5590
var_80AA5604: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x000F0046, 0x00000000, 0x00000000

.section .rodata


