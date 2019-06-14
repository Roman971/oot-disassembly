#include <mips.h>
.set noreorder
.set noat

.section .text
func_809B6210:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x003C($sp)            
    lui     a1, %hi(var_809B743C)      # a1 = 809B0000
    addiu   a1, a1, %lo(var_809B743C)  # a1 = 809B743C
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(var_809B741C)      # t6 = 809B0000
    addiu   t6, t6, %lo(var_809B741C)  # t6 = 809B741C
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x0098(s0)             # 00000098
    sb      t7, 0x00AF(s0)             # 000000AF
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x0194             # a3 = 06000194
    addiu   a2, a2, 0x2BF0             # a2 = 06002BF0
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x003C($sp)            
    jal     func_8008C788              
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0030($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_809B73F0)      # a3 = 809B0000
    lw      a1, 0x0030($sp)            
    addiu   a3, a3, %lo(var_809B73F0)  # a3 = 809B73F0
    lw      a0, 0x003C($sp)            
    jal     func_8004AC84              
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, 0x3BC4                 # a1 = 3BC40000
    sh      $zero, 0x01EC(s0)          # 000001EC
    sb      $zero, 0x00AE(s0)          # 000000AE
    ori     a1, a1, 0x9BA6             # a1 = 3BC49BA6
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      $zero, 0x00B6(s0)          # 000000B6
    lui     $at, %hi(var_809B7480)     # $at = 809B0000
    swc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f6, %lo(var_809B7480)($at) 
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    sh      $zero, 0x01E8(s0)          # 000001E8
    sb      $zero, 0x01F4(s0)          # 000001F4
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f6, 0x006C(s0)            # 0000006C
    jal     func_809B63E8              
    swc1    $f8, 0x0060(s0)            # 00000060
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809B62F8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_8008D6D0              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B6338:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s2, 0x003C($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s3, 0x0040($sp)            
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0084(a1)            # 00000084
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, a1, 0x0024             # s1 = 00000024
    c.lt.s  $f4, $f6                   
    lui     $at, 0x3E80                # $at = 3E800000
    bc1fl   lbl_809B63C4               
    lw      $ra, 0x0044($sp)           
    mtc1    $at, $f24                  # $f24 = 0.25
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f22                  # $f22 = 30.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    addiu   s3, $zero, 0x000A          # s3 = 0000000A
    mfc1    a2, $f20                   
lbl_809B639C:
    mfc1    a3, $f20                   
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000024
    swc1    $f22, 0x0010($sp)          
    jal     func_8001CEDC              
    swc1    $f24, 0x0014($sp)          
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s3, lbl_809B639C       
    mfc1    a2, $f20                   
    lw      $ra, 0x0044($sp)           
lbl_809B63C4:
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    lw      s2, 0x003C($sp)            
    lw      s3, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_809B63E8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x004C             # a0 = 0600004C
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a0, 0x0028($sp)            
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x004C             # a1 = 0600004C
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f6, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      v0, 0x0028($sp)            
    lui     t8, %hi(func_809B6774)     # t8 = 809B0000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, t8, %lo(func_809B6774) # t8 = 809B6774
    sh      t7, 0x01EA(v0)             # 000001EA
    sw      t8, 0x0180(v0)             # 00000180
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809B6460:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0194             # a0 = 06000194
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a0, 0x0028($sp)            
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x0194             # a1 = 06000194
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f6, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      a0, 0x0028($sp)            
    lui     t7, %hi(func_809B67F4)     # t7 = 809B0000
    addiu   t7, t7, %lo(func_809B67F4) # t7 = 809B67F4
    addiu   a1, $zero, 0x3849          # a1 = 00003849
    sh      $zero, 0x01EA(a0)          # 000001EA
    jal     func_80022FD0              
    sw      t7, 0x0180(a0)             # 00000180
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809B64DC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x2C8C             # a0 = 06002C8C
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a0, 0x0028($sp)            
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2C8C             # a1 = 06002C8C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0014($sp)         
    swc1    $f6, 0x0010($sp)           
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      v0, 0x0028($sp)            
    lui     t7, %hi(func_809B68BC)     # t7 = 809B0000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, t7, %lo(func_809B68BC) # t7 = 809B68BC
    sh      t6, 0x01EA(v0)             # 000001EA
    sw      t7, 0x0180(v0)             # 00000180
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809B6550:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x0124             # a0 = 06000124
    mtc1    $zero, $f12                # $f12 = 0.00
    lwc1    $f6, 0x0084(s0)            # 00000084
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    c.lt.s  $f12, $f6                  
    mfc1    a3, $f12                   
    addiu   a1, a1, 0x0124             # a1 = 06000124
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    bc1f    lbl_809B65A4               
    cvt.s.w $f2, $f4                   
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    beq     $zero, $zero, lbl_809B65AC 
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_809B65A4:
    mov.s   $f0, $f12                  
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_809B65AC:
    mfc1    a2, $f0                    
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    swc1    $f2, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lui     t8, %hi(func_809B6A5C)     # t8 = 809B0000
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t8, t8, %lo(func_809B6A5C) # t8 = 809B6A5C
    sh      t7, 0x01EA(s0)             # 000001EA
    sw      t8, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x3849          # a1 = 00003849
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809B65F8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x00B4             # a0 = 060000B4
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a0, 0x0028($sp)            
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.s.w $f6, $f4                   
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x00B4             # a1 = 060000B4
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f6, 0x0010($sp)           
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C              
    swc1    $f8, 0x0018($sp)           
    lw      v0, 0x0028($sp)            
    lui     t8, %hi(func_809B6B04)     # t8 = 809B0000
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    addiu   t8, t8, %lo(func_809B6B04) # t8 = 809B6B04
    sh      t7, 0x01EA(v0)             # 000001EA
    sw      t8, 0x0180(v0)             # 00000180
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809B6670:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x004C             # a0 = 0600004C
    lh      t6, 0x01EA(s0)             # 000001EA
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t6, $at, lbl_809B66D0      
    cvt.s.w $f0, $f4                   
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)            
    addiu   a1, a1, 0x004C             # a1 = 0600004C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f0, 0x0010($sp)           
    jal     func_8008D17C              
    swc1    $f6, 0x0018($sp)           
lbl_809B66D0:
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x01EA(s0)             # 000001EA
    lw      t9, 0x0034($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    beq     t9, $zero, lbl_809B6754    
    lui     t1, %hi(func_809B6C38)     # t1 = 809B0000
    lwc1    $f8, 0x0084(s0)            # 00000084
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_809B6730               
    lwc1    $f6, 0x0060(s0)            # 00000060
    lwc1    $f16, 0x0060(s0)           # 00000060
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f10                  # $f10 = -5.00
    c.lt.s  $f16, $f0                  
    lui     $at, %hi(var_809B7484)     # $at = 809B0000
    swc1    $f10, 0x0068(s0)           # 00000068
    bc1f    lbl_809B6754               
    nop
    lwc1    $f18, %lo(var_809B7484)($at) 
    beq     $zero, $zero, lbl_809B6754 
    swc1    $f18, 0x0060(s0)           # 00000060
    lwc1    $f6, 0x0060(s0)            # 00000060
lbl_809B6730:
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f4                   # $f4 = -6.00
    c.lt.s  $f6, $f0                   
    lui     $at, %hi(var_809B7488)     # $at = 809B0000
    swc1    $f4, 0x0068(s0)            # 00000068
    bc1f    lbl_809B6754               
    nop
    lwc1    $f8, %lo(var_809B7488)($at) 
    swc1    $f8, 0x0060(s0)            # 00000060
lbl_809B6754:
    addiu   t1, t1, %lo(func_809B6C38) # t1 = 809B6C38
    sh      t0, 0x01EE(s0)             # 000001EE
    sw      t1, 0x0180(s0)             # 00000180
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809B6774:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      t6, 0x0020($sp)            
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lh      a1, 0x008A(t6)             # 0000008A
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a0, t6, 0x00B6             # a0 = 000000B6
    lw      a0, 0x0020($sp)            
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f4                   # $f4 = 160.00
    lwc1    $f0, 0x0090(a0)            # 00000090
    lui     $at, 0x4220                # $at = 42200000
    c.le.s  $f0, $f4                   
    nop
    bc1fl   lbl_809B67E8               
    lw      $ra, 0x001C($sp)           
    mtc1    $at, $f6                   # $f6 = 40.00
    nop
    c.lt.s  $f6, $f0                   
    nop
    bc1fl   lbl_809B67E8               
    lw      $ra, 0x001C($sp)           
    jal     func_809B6460              
    nop
    lw      $ra, 0x001C($sp)           
lbl_809B67E8:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809B67F4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lwc1    $f4, 0x0154(s0)            # 00000154
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0194             # a0 = 06000194
    jal     func_8008A194              
    swc1    $f4, 0x002C($sp)           
    mtc1    v0, $f8                    # $f8 = 0.00
    lwc1    $f6, 0x002C($sp)           
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    cvt.s.w $f10, $f8                  
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    c.le.s  $f10, $f6                  
    nop
    bc1fl   lbl_809B6860               
    lh      a1, 0x008A(s0)             # 0000008A
    sh      t6, 0x01EE(s0)             # 000001EE
    jal     func_809B64DC              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809B68AC 
    lw      $ra, 0x0024($sp)           
    lh      a1, 0x008A(s0)             # 0000008A
lbl_809B6860:
    jal     func_80064508              
    sw      $zero, 0x0010($sp)         
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f16                  # $f16 = 160.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    lui     $at, 0x4220                # $at = 42200000
    c.lt.s  $f16, $f0                  
    nop
    bc1t    lbl_809B68A0               
    nop
    mtc1    $at, $f18                  # $f18 = 40.00
    nop
    c.le.s  $f0, $f18                  
    nop
    bc1fl   lbl_809B68AC               
    lw      $ra, 0x0024($sp)           
lbl_809B68A0:
    jal     func_809B63E8              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_809B68AC:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809B68BC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lh      t6, 0x01EE(s0)             # 000001EE
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    sh      t6, 0x002E($sp)            
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)         
    jal     func_80064508              
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f4                   # $f4 = 160.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    lui     $at, 0x4220                # $at = 42200000
    c.lt.s  $f4, $f0                   
    nop
    bc1t    lbl_809B6928               
    nop
    mtc1    $at, $f6                   # $f6 = 40.00
    nop
    c.le.s  $f0, $f6                   
    nop
    bc1fl   lbl_809B6934               
    lh      v0, 0x002E($sp)            
lbl_809B6928:
    jal     func_809B63E8              
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x002E($sp)            
lbl_809B6934:
    lui     t9, %hi(func_809B6970)     # t9 = 809B0000
    addiu   t9, t9, %lo(func_809B6970) # t9 = 809B6970
    beq     v0, $zero, lbl_809B694C    
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_809B695C 
    sh      t7, 0x01EE(s0)             # 000001EE
lbl_809B694C:
    lh      t8, 0x008A(s0)             # 0000008A
    sh      $zero, 0x01EE(s0)          # 000001EE
    sw      t9, 0x0180(s0)             # 00000180
    sh      t8, 0x01F0(s0)             # 000001F0
lbl_809B695C:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809B6970:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    lh      a1, 0x01F0(s0)             # 000001F0
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addu    a1, a1, $at                
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sh      a1, 0x002E($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508              
    addiu   a3, $zero, 0x1F40          # a3 = 00001F40
    lh      a1, 0x002E($sp)            
    lh      t7, 0x00B6(s0)             # 000000B6
    bnel    a1, t7, lbl_809B6A4C       
    lw      $ra, 0x0024($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0084(s0)            # 00000084
    lh      t8, 0x01F0(s0)             # 000001F0
    lui     $at, 0x4000                # $at = 40000000
    c.lt.s  $f4, $f6                   
    or      a1, s0, $zero              # a1 = 00000000
    sh      t8, 0x0032(s0)             # 00000032
    bc1fl   lbl_809B6A14               
    mtc1    $at, $f18                  # $f18 = 2.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lui     $at, %hi(var_809B748C)     # $at = 809B0000
    swc1    $f8, 0x0060(s0)            # 00000060
    swc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f16, %lo(var_809B748C)($at) 
    beq     $zero, $zero, lbl_809B6A30 
    swc1    $f16, 0x006C(s0)           # 0000006C
    mtc1    $at, $f18                  # $f18 = 0.00
lbl_809B6A14:
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f4                   # $f4 = 6.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f6                   # $f6 = -2.00
    swc1    $f18, 0x0060(s0)           # 00000060
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f6, 0x006C(s0)            # 0000006C
lbl_809B6A30:
    jal     func_809B6338              
    lw      a0, 0x0034($sp)            
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sh      t9, 0x01F2(s0)             # 000001F2
    jal     func_809B6550              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)           
lbl_809B6A4C:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809B6A5C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, a3, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lui     $at, %hi(var_809B7490)     # $at = 809B0000
    lwc1    $f4, %lo(var_809B7490)($at) 
    lwc1    $f6, 0x0060(a3)            # 00000060
    c.le.s  $f6, $f4                   
    nop
    bc1tl   lbl_809B6AB8               
    mtc1    $zero, $f8                 # $f8 = 0.00
    lhu     t6, 0x0088(a3)             # 00000088
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_809B6AF8    
    lw      $ra, 0x0014($sp)           
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_809B6AB8:
    lwc1    $f10, 0x0084(a3)           # 00000084
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    c.lt.s  $f8, $f10                  
    nop
    bc1tl   lbl_809B6AE4               
    lhu     t8, 0x0088(a3)             # 00000088
    jal     func_80022FD0              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lhu     t8, 0x0088(a3)             # 00000088
lbl_809B6AE4:
    or      a0, a3, $zero              # a0 = 00000000
    andi    t9, t8, 0xFFFD             # t9 = 00000000
    jal     func_809B65F8              
    sh      t9, 0x0088(a3)             # 00000088
    lw      $ra, 0x0014($sp)           
lbl_809B6AF8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809B6B04:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lwc1    $f4, 0x0154(s0)            # 00000154
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x00B4             # a0 = 060000B4
    jal     func_8008A194              
    swc1    $f4, 0x0028($sp)           
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    cvt.s.w $f8, $f6                   
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C              
    swc1    $f8, 0x0024($sp)           
    lwc1    $f10, 0x0028($sp)          
    lwc1    $f16, 0x0024($sp)          
    mtc1    $zero, $f0                 # $f0 = 0.00
    c.eq.s  $f10, $f16                 
    nop
    bc1fl   lbl_809B6C28               
    lw      $ra, 0x001C($sp)           
    lh      v0, 0x01F2(s0)             # 000001F2
    or      a1, s0, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_809B6C00    
    lhu     v0, 0x0088(s0)             # 00000088
    lwc1    $f18, 0x0084(s0)           # 00000084
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    c.lt.s  $f0, $f18                  
    sh      t6, 0x01F2(s0)             # 000001F2
    sh      t7, 0x01EE(s0)             # 000001EE
    lui     $at, 0x4000                # $at = 40000000
    bc1fl   lbl_809B6BC8               
    mtc1    $at, $f10                  # $f10 = 2.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lui     $at, %hi(var_809B7494)     # $at = 809B0000
    swc1    $f4, 0x0060(s0)            # 00000060
    swc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f8, %lo(var_809B7494)($at) 
    beq     $zero, $zero, lbl_809B6BE4 
    swc1    $f8, 0x006C(s0)            # 0000006C
    mtc1    $at, $f10                  # $f10 = 0.00
lbl_809B6BC8:
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f16                  # $f16 = 6.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f18                  # $f18 = -2.00
    swc1    $f10, 0x0060(s0)           # 00000060
    swc1    $f16, 0x0068(s0)           # 00000068
    swc1    $f18, 0x006C(s0)           # 0000006C
lbl_809B6BE4:
    jal     func_809B6338              
    lw      a0, 0x0034($sp)            
    jal     func_809B6550              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809B6C28 
    lw      $ra, 0x001C($sp)           
    lhu     v0, 0x0088(s0)             # 00000088
lbl_809B6C00:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, v0, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_809B6C24    
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    sh      t9, 0x0088(s0)             # 00000088
    swc1    $f0, 0x0068(s0)            # 00000068
    jal     func_809B63E8              
    sh      t0, 0x01EE(s0)             # 000001EE
lbl_809B6C24:
    lw      $ra, 0x001C($sp)           
lbl_809B6C28:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809B6C38:
    sw      a1, 0x0004($sp)            
    lh      v0, 0x01EE(a0)             # 000001EE
    beql    v0, $zero, lbl_809B6C74    
    lhu     v1, 0x0088(a0)             # 00000088
    lhu     v1, 0x0088(a0)             # 00000088
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01EE(a0)             # 000001EE
    andi    t7, v1, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_809B6C98    
    andi    t8, v1, 0xFFFE             # t8 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t8, 0x0088(a0)             # 00000088
    jr      $ra                        
    swc1    $f4, 0x0068(a0)            # 00000068
lbl_809B6C70:
    lhu     v1, 0x0088(a0)             # 00000088
lbl_809B6C74:
    lui     t1, %hi(func_809B6774)     # t1 = 809B0000
    addiu   t1, t1, %lo(func_809B6774) # t1 = 809B6774
    andi    t9, v1, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_809B6C98    
    andi    t0, v1, 0xFFFE             # t0 = 00000000
    mtc1    $zero, $f6                 # $f6 = 0.00
    sh      t0, 0x0088(a0)             # 00000088
    sw      t1, 0x0180(a0)             # 00000180
    swc1    $f6, 0x0068(a0)            # 00000068
lbl_809B6C98:
    jr      $ra                        
    nop


func_809B6CA0:
    lhu     t6, 0x01EA(a0)             # 000001EA
    sltiu   $at, t6, 0x0005            
    beq     $at, $zero, lbl_809B6DDC   
    sll     t6, t6,  2                 
    lui     $at, %hi(var_809B7498)     # $at = 809B0000
    addu    $at, $at, t6               
    lw      t6, %lo(var_809B7498)($at) 
    jr      t6                         
    nop
var_809B6CC4:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    lwc1    $f0, 0x0154(a0)            # 00000154
    lui     $at, 0x40A0                # $at = 40A00000
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_809B6DE0               
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f6                   # $f6 = 5.00
    nop
    c.le.s  $f0, $f6                   
    nop
    bc1fl   lbl_809B6DE0               
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001


func_809B6D04:
    lwc1    $f0, 0x0154(a0)            # 00000154
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    c.le.s  $f8, $f0                   
    nop
    bc1fl   lbl_809B6DE0               
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    c.le.s  $f0, $f10                  
    nop
    bc1fl   lbl_809B6DE0               
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001


func_809B6D40:
    lwc1    $f0, 0x0154(a0)            # 00000154
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x4198                # $at = 41980000
    c.le.s  $f16, $f0                  
    nop
    bc1fl   lbl_809B6DE0               
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f18                  # $f18 = 19.00
    nop
    c.le.s  $f0, $f18                  
    nop
    bc1fl   lbl_809B6DE0               
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001


func_809B6D7C:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0154(a0)            # 00000154
    c.eq.s  $f4, $f6                   
    nop
    bc1fl   lbl_809B6DE0               
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001


func_809B6D9C:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lwc1    $f0, 0x0154(a0)            # 00000154
    lui     $at, 0x40A0                # $at = 40A00000
    c.le.s  $f8, $f0                   
    nop
    bc1fl   lbl_809B6DE0               
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f10                  # $f10 = 5.00
    nop
    c.le.s  $f0, $f10                  
    nop
    bc1fl   lbl_809B6DE0               
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809B6DDC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809B6DE0:
    jr      $ra                        
    nop


func_809B6DE8:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x004C($sp)            
    lbu     t6, 0x0194(s0)             # 00000194
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_809B6E24    
    lbu     v0, 0x0195(s0)             # 00000195
    jal     func_809B6670              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_809B70B0 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lbu     v0, 0x0195(s0)             # 00000195
lbl_809B6E24:
    andi    t8, v0, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_809B70B0    
    or      v0, $zero, $zero           # v0 = 00000000
    sb      $zero, 0x002F($sp)         
    lbu     t0, 0x00B1(s0)             # 000000B1
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sltiu   $at, t1, 0x000F            
    beq     $at, $zero, lbl_809B700C   
    sb      t9, 0x0195(s0)             # 00000195
    sll     t1, t1,  2                 
    lui     $at, %hi(var_809B74AC)     # $at = 809B0000
    addu    $at, $at, t1               
    lw      t1, %lo(var_809B74AC)($at) 
    jr      t1                         
    nop
var_809B6E68:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x002F($sp)            
var_809B6E70:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809B6CA0              
    sw      v1, 0x0030($sp)            
    beq     v0, $zero, lbl_809B700C    
    lw      v1, 0x0030($sp)            
    lh      t3, 0x01AC(s0)             # 000001AC
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    t3, $f4                    # $f4 = 0.00
    mtc1    $at, $f10                  # $f10 = 30.00
    lh      t4, 0x008A(s0)             # 0000008A
    cvt.s.w $f6, $f4                   
    lh      t5, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4120                # $at = 41200000
    subu    v0, t4, t5                 
    sll     v0, v0, 16                 
    sub.s   $f0, $f6, $f8              
    sra     v0, v0, 16                 
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_809B7010               
    lbu     t3, 0x00AF(s0)             # 000000AF
    mtc1    $at, $f16                  # $f16 = 10.00
    slti    $at, v0, 0xE001            
    c.lt.s  $f16, $f0                  
    nop
    bc1fl   lbl_809B7010               
    lbu     t3, 0x00AF(s0)             # 000000AF
    bne     $at, $zero, lbl_809B700C   
    slti    $at, v0, 0x2000            
    beql    $at, $zero, lbl_809B7010   
    lbu     t3, 0x00AF(s0)             # 000000AF
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sw      t6, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    beq     $zero, $zero, lbl_809B700C 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
var_809B6F1C:
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sh      t7, 0x01E8(s0)             # 000001E8
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sw      t8, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    beq     $zero, $zero, lbl_809B700C 
    addiu   v1, $zero, 0x0001          # v1 = 00000001
var_809B6F50:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809B6CA0              
    sw      v1, 0x0030($sp)            
    beq     v0, $zero, lbl_809B700C    
    lw      v1, 0x0030($sp)            
    lh      t9, 0x01AC(s0)             # 000001AC
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    t9, $f18                   # $f18 = 0.00
    mtc1    $at, $f8                   # $f8 = 30.00
    lh      t0, 0x008A(s0)             # 0000008A
    cvt.s.w $f4, $f18                  
    lh      t1, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4120                # $at = 41200000
    subu    v0, t0, t1                 
    sll     v0, v0, 16                 
    sub.s   $f0, $f4, $f6              
    sra     v0, v0, 16                 
    c.lt.s  $f0, $f8                   
    nop
    bc1fl   lbl_809B7010               
    lbu     t3, 0x00AF(s0)             # 000000AF
    mtc1    $at, $f10                  # $f10 = 10.00
    slti    $at, v0, 0xE001            
    c.lt.s  $f10, $f0                  
    nop
    bc1fl   lbl_809B7010               
    lbu     t3, 0x00AF(s0)             # 000000AF
    bne     $at, $zero, lbl_809B700C   
    slti    $at, v0, 0x2000            
    beql    $at, $zero, lbl_809B7010   
    lbu     t3, 0x00AF(s0)             # 000000AF
    jal     func_80028390              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t2, $zero, 0x0050          # t2 = 00000050
    sw      t2, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090              
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sw      v1, 0x0030($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809B6670              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      v1, 0x0030($sp)            
lbl_809B700C:
    lbu     t3, 0x00AF(s0)             # 000000AF
lbl_809B7010:
    lbu     t4, 0x002F($sp)            
    addiu   a0, s0, 0x01D0             # a0 = 000001D0
    bne     t3, $zero, lbl_809B705C    
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    sb      t4, 0x01F4(s0)             # 000001F4
    jal     func_80025D04              
    lw      a2, 0x004C($sp)            
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t5, 0x01EC(s0)             # 000001EC
    lw      a0, 0x004C($sp)            
    jal     func_80025B4C              
    or      a1, s0, $zero              # a1 = 00000000
    lw      a0, 0x004C($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8              
    addiu   a3, $zero, 0x384A          # a3 = 0000384A
    beq     $zero, $zero, lbl_809B70B0 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809B705C:
    bnel    v1, $zero, lbl_809B70B0    
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t6, 0x01AA(s0)             # 000001AA
    lw      a0, 0x004C($sp)            
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x003C($sp)          
    lh      t7, 0x01AC(s0)             # 000001AC
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x0040($sp)           
    lh      t8, 0x01AE(s0)             # 000001AE
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    jal     func_80051250              
    swc1    $f10, 0x0044($sp)          
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809B70B0:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_809B70C4:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lh      t6, 0x01EC(s0)             # 000001EC
    or      a0, s0, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_809B7174    
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0084(s0)            # 00000084
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    c.lt.s  $f4, $f6                   
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x01D0             # a1 = 000001D0
    or      a2, s1, $zero              # a2 = 00000000
    bc1fl   lbl_809B7120               
    sh      t8, 0x001C(s0)             # 0000001C
    beq     $zero, $zero, lbl_809B7120 
    sh      t7, 0x001C(s0)             # 0000001C
    sh      t8, 0x001C(s0)             # 0000001C
lbl_809B7120:
    jal     func_80025F04              
    lh      a3, 0x001C(s0)             # 0000001C
    beql    v0, $zero, lbl_809B7234    
    lw      $ra, 0x0024($sp)           
    lbu     t9, 0x01F4(s0)             # 000001F4
    addiu   a2, s0, 0x0024             # a2 = 00000024
    or      a0, s1, $zero              # a0 = 00000000
    bne     t9, $zero, lbl_809B715C    
    addiu   a1, s0, 0x0024             # a1 = 00000024
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80013A84              
    addiu   a3, $zero, 0x0080          # a3 = 00000080
    beq     $zero, $zero, lbl_809B7164 
    nop
lbl_809B715C:
    jal     func_80013678              
    addiu   a2, $zero, 0x0008          # a2 = 00000008
lbl_809B7164:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809B7234 
    lw      $ra, 0x0024($sp)           
lbl_809B7174:
    jal     func_80020F04              
    lui     a1, 0x41A0                 # a1 = 41A00000
    lui     a1, 0x3BC4                 # a1 = 3BC40000
    ori     a1, a1, 0x9BA6             # a1 = 3BC49BA6
    jal     func_80020F88              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    sw      t0, 0x0014($sp)            
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809B6DE8              
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0028($sp)            
    jal     func_80050B00              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    sw      a1, 0x002C($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0028($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0028($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)            
    jal     func_8008C9C0              
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0024($sp)           
lbl_809B7234:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_809B7244:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a2, 0x0030($sp)            
    sw      a3, 0x0034($sp)            
    lw      a0, 0x0038($sp)            
    lw      t7, 0x0030($sp)            
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sw      t8, 0x0018($sp)            
    sw      t6, 0x0010($sp)            
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    addiu   a0, a0, 0x01D0             # a0 = 000001D0
    jal     func_80025DFC              
    sw      t7, 0x0014($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809B7294:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x0054($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0054($sp)            
    jal     func_80022438              
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t6, %hi(func_809B7244)     # t6 = 809B0000
    addiu   t6, t6, %lo(func_809B7244) # t6 = 809B7244
    sw      t6, 0x0014($sp)            
    sw      s0, 0x0018($sp)            
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    lw      a0, 0x0054($sp)            
    lh      v1, 0x01E8(s0)             # 000001E8
    beq     v1, $zero, lbl_809B73BC    
    addiu   v0, v1, 0xFFFF             # v0 = FFFFFFFF
    lbu     t7, 0x0114(s0)             # 00000114
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    andi    t9, v0, 0x0001             # t9 = 00000001
    addiu   t8, t7, 0x0001             # t8 = 00000001
    bne     t9, $zero, lbl_809B73BC    
    sb      t8, 0x0114(s0)             # 00000114
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90              
    sh      v0, 0x003A($sp)            
    lh      v0, 0x003A($sp)            
    lui     t2, %hi(var_809B7448)      # t2 = 809B0000
    addiu   t2, t2, %lo(var_809B7448)  # t2 = 809B7448
    andi    t0, v0, 0x0003             # t0 = 00000000
    sll     t1, t0,  2                 
    subu    t1, t1, t0                 
    sll     t1, t1,  2                 
    addu    v1, t1, t2                 
    lwc1    $f6, 0x0000(v1)            # 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    add.s   $f8, $f4, $f6              
    sw      v1, 0x0034($sp)            
    add.s   $f10, $f0, $f8             
    jal     func_80026D90              
    swc1    $f10, 0x0040($sp)          
    lw      t3, 0x0034($sp)            
    lwc1    $f16, 0x0028(s0)           # 00000028
    lui     $at, 0x40A0                # $at = 40A00000
    lwc1    $f18, 0x0004(t3)           # 00000004
    mtc1    $at, $f12                  # $f12 = 5.00
    add.s   $f4, $f16, $f18            
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0044($sp)           
    lw      t4, 0x0034($sp)            
    lwc1    $f8, 0x002C(s0)            # 0000002C
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    lwc1    $f10, 0x0008(t4)           # 00000008
    sw      t5, 0x0018($sp)            
    sw      $zero, 0x0014($sp)         
    add.s   $f16, $f8, $f10            
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x0054($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    add.s   $f18, $f0, $f16            
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFF0
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_8001DFEC              
    swc1    $f18, 0x0048($sp)          
lbl_809B73BC:
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_809B73D0: .word 0x00C50500, 0x00000005, 0x00B50000, 0x000001F8
.word func_809B6210
.word func_809B62F8
.word func_809B70C4
.word func_809B7294
var_809B73F0: .word \
0x0A110939, 0x01000000, 0x00000000, 0xFFCFFFFF, \
0x04080000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x001E0028, 0x00000000, 0x00000000
var_809B741C: .word \
0x000000F2, 0x00F2F212, 0xD1D2D424, 0xF2F2E4F2, \
0xF2240000, 0x0000D1D4, 0xD2D2D8D4, 0x00000000
var_809B743C: .word 0x89170027, 0x801F0002, 0x304C001E
var_809B7448: .word \
0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, \
0x00000000, 0x00000000

.section .rodata

var_809B7480: .word 0xBEB33333
var_809B7484: .word 0x40066666
var_809B7488: .word 0x3FB33333
var_809B748C: .word 0xBEB33333
var_809B7490: .word 0xBDCCCCCD
var_809B7494: .word 0xBEB33333
var_809B7498: .word var_809B6CC4
.word func_809B6D04
.word func_809B6D40
.word func_809B6D7C
.word func_809B6D9C
var_809B74AC: .word var_809B6F50
.word var_809B6F1C
.word lbl_809B700C
.word lbl_809B700C
.word lbl_809B700C
.word lbl_809B700C
.word lbl_809B700C
.word lbl_809B700C
.word lbl_809B700C
.word lbl_809B700C
.word lbl_809B700C
.word lbl_809B700C
.word var_809B6F50
.word var_809B6E68
.word var_809B6E70
.word 0x00000000, 0x00000000

