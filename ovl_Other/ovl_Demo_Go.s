#include <mips.h>
.set noreorder
.set noat

.section .text
func_809BF840:
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_809BF860    
    nop
    beq     v0, $at, lbl_809BF868      
    addiu   v1, $zero, 0x0005          # v1 = 00000005
    beq     $zero, $zero, lbl_809BF870 
    nop
lbl_809BF860:
    beq     $zero, $zero, lbl_809BF870 
    addiu   v1, $zero, 0x0003          # v1 = 00000003
lbl_809BF868:
    beq     $zero, $zero, lbl_809BF870 
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_809BF870:
    or      v0, v1, $zero              # v0 = 00000004
    jr      $ra                        
    nop


func_809BF87C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0030($sp)            
    lw      a1, 0x0030($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      v0, 0x001C(t6)             # 0000001C
    lw      a0, 0x0034($sp)            
    addiu   a2, $sp, 0x0020            # a2 = FFFFFFF0
    beq     v0, $zero, lbl_809BF8B0    
    addiu   a1, a1, 0x0024             # a1 = 00000024
    bne     v0, $at, lbl_809BF8D8      
lbl_809BF8B0:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addu    a0, a0, $at                
    jal     func_8008EC20              
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFEC
    lw      a0, 0x0034($sp)            
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFF0
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x28A0          # a3 = 000028A0
lbl_809BF8D8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809BF8E8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_8008D6D0              
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809BF90C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x0182(a2)             # 00000182
    addiu   v1, a2, 0x0182             # v1 = 00000182
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_809BF934    
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    beq     $zero, $zero, lbl_809BF944 
    addiu   v1, a2, 0x0182             # v1 = 00000182
lbl_809BF934:
    lh      t7, 0x0000(v1)             # 00000182
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             # 00000182
    lh      v0, 0x0000(v1)             # 00000182
lbl_809BF944:
    bne     v0, $zero, lbl_809BF964    
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    sw      v1, 0x001C($sp)            
    jal     func_80063BF0              
    sw      a2, 0x0038($sp)            
    lw      v1, 0x001C($sp)            
    lw      a2, 0x0038($sp)            
    sh      v0, 0x0000(v1)             # 00000000
lbl_809BF964:
    lh      t9, 0x0000(v1)             # 00000000
    addiu   v0, a2, 0x0180             # v0 = 00000180
    sh      t9, 0x0000(v0)             # 00000180
    lh      t0, 0x0000(v0)             # 00000180
    slti    $at, t0, 0x0003            
    bnel    $at, $zero, lbl_809BF988   
    lw      $ra, 0x0014($sp)           
    sh      $zero, 0x0000(v0)          # 00000180
    lw      $ra, 0x0014($sp)           
lbl_809BF988:
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809BF994:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780              
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809BF9BC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0028($sp)            
    lw      a0, 0x0028($sp)            
    lui     a1, 0x4140                 # a1 = 41400000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D6A8              
    sw      a0, 0x001C($sp)            
    bne     v0, $zero, lbl_809BF9F4    
    lw      a0, 0x001C($sp)            
    jal     func_8008D6A8              
    lui     a1, 0x41C8                 # a1 = 41C80000
    beql    v0, $zero, lbl_809BFA08    
    lw      $ra, 0x0014($sp)           
lbl_809BF9F4:
    lw      a0, 0x0028($sp)            
    addiu   a1, $zero, 0x38B8          # a1 = 000038B8
    jal     func_80064780              
    addiu   a0, a0, 0x00E4             # a0 = 000000E4
    lw      $ra, 0x0014($sp)           
lbl_809BFA08:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFA14:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     $at, 0x41F0                # $at = 41F00000
    sw      a1, 0x0024($sp)            
    mtc1    $at, $f0                   # $f0 = 30.00
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    mfc1    a3, $f0                    
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)            
    lw      a0, 0x0024($sp)            
    lui     a2, 0x4296                 # a2 = 42960000
    jal     func_80021E6C              
    swc1    $f0, 0x0010($sp)           
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFA5C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a1, 0x003C($sp)            
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    lw      t6, 0x0038($sp)            
    lui     v0, 0x8012                 # v0 = 80120000
    lui     $at, 0x42C8                # $at = 42C80000
    lw      t8, 0x0024(t6)             # 00000024
    mtc1    $at, $f8                   # $f8 = 100.00
    sw      t8, 0x0000(a1)             # FFFFFFF0
    lw      t7, 0x0028(t6)             # 00000028
    sw      t7, 0x0004(a1)             # FFFFFFF4
    lw      t8, 0x002C(t6)             # 0000002C
    sw      t8, 0x0008(a1)             # FFFFFFF8
    lw      v0, -0x4600(v0)            # 8011BA00
    lw      a0, 0x003C($sp)            
    lh      t9, 0x146A(v0)             # 8012146A
    lh      t0, 0x146E(v0)             # 8012146E
    lh      a3, 0x146C(v0)             # 8012146C
    mtc1    t9, $f4                    # $f4 = 0.00
    addiu   t1, t0, 0x012C             # t1 = 0000012C
    sw      t1, 0x0010($sp)            
    cvt.s.w $f6, $f4                   
    lh      t2, 0x1470(v0)             # 80121470
    sw      $zero, 0x0018($sp)         
    addiu   a3, a3, 0x000A             # a3 = 0000000A
    sw      t2, 0x0014($sp)            
    add.s   $f10, $f6, $f8             
    mfc1    a2, $f10                   
    jal     func_80026308              
    nop
    jal     func_809BF994              
    lw      a0, 0x0038($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFAF4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0040($sp)            
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    lw      a0, 0x0040($sp)            
    beql    t6, $zero, lbl_809BFBE8    
    lw      $ra, 0x0014($sp)           
    jal     func_809BF840              
    sw      a1, 0x0044($sp)            
    lw      a1, 0x0044($sp)            
    sll     t7, v0,  2                 
    addiu   a3, a1, 0x1D64             # a3 = 00001D64
    addu    t8, a3, t7                 
    lw      v1, 0x0028(t8)             # 00000028
    beql    v1, $zero, lbl_809BFBE8    
    lw      $ra, 0x0014($sp)           
    lhu     a0, 0x0004(v1)             # 00000004
    lhu     a1, 0x0002(v1)             # 00000002
    lhu     a2, 0x0010(a3)             # 00001D74
    jal     func_8005C690              
    sw      v1, 0x0030($sp)            
    lw      v1, 0x0030($sp)            
    lw      a1, 0x0040($sp)            
    lw      t0, 0x0010(v1)             # 00000010
    lw      t9, 0x000C(v1)             # 0000000C
    lw      t2, 0x0018(v1)             # 00000018
    lw      t1, 0x0014(v1)             # 00000014
    mtc1    t0, $f6                    # $f6 = 0.00
    lw      t4, 0x0020(v1)             # 00000020
    mtc1    t9, $f4                    # $f4 = 0.00
    lw      t3, 0x001C(v1)             # 0000001C
    mtc1    t2, $f10                   # $f10 = 0.00
    cvt.s.w $f12, $f6                  
    mtc1    t1, $f8                    # $f8 = 0.00
    mtc1    t4, $f6                    # $f6 = 0.00
    addiu   v0, a1, 0x0024             # v0 = 00000024
    cvt.s.w $f2, $f4                   
    mtc1    t3, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10                 
    cvt.s.w $f14, $f8                  
    cvt.s.w $f8, $f6                   
    cvt.s.w $f18, $f4                  
    swc1    $f8, 0x0018($sp)           
    sub.s   $f10, $f16, $f2            
    sub.s   $f8, $f18, $f12            
    mul.s   $f4, $f10, $f0             
    nop
    mul.s   $f10, $f8, $f0             
    add.s   $f6, $f4, $f2              
    add.s   $f4, $f10, $f12            
    swc1    $f6, 0x0000(v0)            # 00000024
    swc1    $f4, 0x0004(v0)            # 00000028
    lwc1    $f6, 0x0018($sp)           
    sub.s   $f8, $f6, $f14             
    mul.s   $f10, $f8, $f0             
    add.s   $f4, $f10, $f14            
    swc1    $f4, 0x0008(v0)            # 0000002C
    lh      a0, 0x0008(v1)             # 00000008
    sh      a0, 0x00B6(a1)             # 000000B6
    sh      a0, 0x000E(v0)             # 00000032
    lw      $ra, 0x0014($sp)           
lbl_809BFBE8:
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFBF4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     $at, 0x4100                # $at = 41000000
    lwc1    $f0, 0x018C(a0)            # 0000018C
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     t6, 0x8012                 # t6 = 80120000
    lui     t8, 0x8012                 # t8 = 80120000
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_809BFC64               
    nop
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, %hi(var_809C0480)     # $at = 809C0000
    lwc1    $f10, %lo(var_809C0480)($at) 
    lh      t7, 0x1472(t6)             # 80121472
    lui     $at, %hi(var_809C0484)     # $at = 809C0000
    lwc1    $f18, %lo(var_809C0484)($at) 
    mtc1    t7, $f6                    # $f6 = 0.00
    lui     $at, 0x3E00                # $at = 3E000000
    cvt.s.w $f8, $f6                   
    mtc1    $at, $f6                   # $f6 = 0.13
    mul.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    mul.s   $f8, $f4, $f6              
    nop
    mul.s   $f10, $f8, $f0             
    beq     $zero, $zero, lbl_809BFC94 
    swc1    $f10, 0x0068(a0)           # 00000068
lbl_809BFC64:
    lw      t8, -0x4600(t8)            # 8011BA00
    lui     $at, %hi(var_809C0488)     # $at = 809C0000
    lwc1    $f4, %lo(var_809C0488)($at) 
    lh      t9, 0x1472(t8)             # 80121472
    lui     $at, %hi(var_809C048C)     # $at = 809C0000
    lwc1    $f8, %lo(var_809C048C)($at) 
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    mul.s   $f6, $f18, $f4             
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0068(a0)           # 00000068
lbl_809BFC94:
    jal     func_8002121C              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFCAC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_8002121C              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFCCC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lbu     t6, 0x1D6C(a2)             # 00001D6C
    or      a0, a3, $zero              # a0 = 00000000
    beql    t6, $zero, lbl_809BFD78    
    lw      $ra, 0x0014($sp)           
    sw      a2, 0x001C($sp)            
    jal     func_809BF840              
    sw      a3, 0x0018($sp)            
    lw      a2, 0x001C($sp)            
    sll     t7, v0,  2                 
    lw      a3, 0x0018($sp)            
    addu    t8, a2, t7                 
    lw      a1, 0x1D8C(t8)             # 00001D8C
    lui     t9, 0x8012                 # t9 = 80120000
    beql    a1, $zero, lbl_809BFD78    
    lw      $ra, 0x0014($sp)           
    lw      t9, -0x4600(t9)            # 8011BA00
    lh      a0, 0x0032(a3)             # 00000032
    lh      a2, 0x0008(a1)             # 00000008
    lh      v0, 0x1474(t9)             # 80121474
    addiu   t0, $zero, 0xFF6A          # t0 = FFFFFF6A
    subu    v1, a2, a0                 
    subu    t1, t0, v0                 
    slt     $at, t1, v1                
    beq     $at, $zero, lbl_809BFD54   
    addiu   t2, v0, 0x0096             # t2 = 00000096
    slt     $at, v1, t2                
    beq     $at, $zero, lbl_809BFD54   
    nop
    beq     $zero, $zero, lbl_809BFD6C 
    or      v1, a2, $zero              # v1 = 00000000
lbl_809BFD54:
    blez    v1, lbl_809BFD64           
    addu    v1, v0, a0                 
    beq     $zero, $zero, lbl_809BFD6C 
    addiu   v1, v1, 0x0096             # v1 = 00000096
lbl_809BFD64:
    subu    v1, a0, v0                 
    addiu   v1, v1, 0xFF6A             # v1 = 00000000
lbl_809BFD6C:
    sh      v1, 0x00B6(a3)             # 000000B6
    sh      v1, 0x0032(a3)             # 00000032
    lw      $ra, 0x0014($sp)           
lbl_809BFD78:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFD84:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_8008C9C0              
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFDA8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a2, 0x0020($sp)            
    jal     func_809BF840              
    nop
    lw      v1, 0x001C($sp)            
    sll     t7, v0,  2                 
    lbu     t6, 0x1D6C(v1)             # 00001D6C
    addiu   v1, v1, 0x1D64             # v1 = 00001D64
    addu    t8, v1, t7                 
    beql    t6, $zero, lbl_809BFE04    
    or      v0, $zero, $zero           # v0 = 00000000
    lw      a0, 0x0028(t8)             # 00000028
    lhu     t9, 0x0022($sp)            
    beql    a0, $zero, lbl_809BFE04    
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t0, 0x0000(a0)             # 00000000
    bnel    t9, t0, lbl_809BFE04       
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_809BFE04 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_809BFE04:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFE14:
    sw      a1, 0x0004($sp)            
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0184(a0)             # 00000184
    jr      $ra                        
    nop


func_809BFE28:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_809BFDA8              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_809BFE74    
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0184(a0)             # 00000184
    sw      t7, 0x0188(a0)             # 00000188
    sw      a0, 0x0018($sp)            
    jal     func_809BFAF4              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809BF87C              
    lw      a1, 0x001C($sp)            
lbl_809BFE74:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFE84:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    lw      a0, 0x0018($sp)            
    beql    t6, $zero, lbl_809BFEF0    
    lw      $ra, 0x0014($sp)           
    jal     func_809BF840              
    sw      a1, 0x001C($sp)            
    lw      a1, 0x001C($sp)            
    sll     t7, v0,  2                 
    addiu   v1, a1, 0x1D64             # v1 = 00001D64
    addu    t8, v1, t7                 
    lw      a0, 0x0028(t8)             # 00000028
    beql    a0, $zero, lbl_809BFEF0    
    lw      $ra, 0x0014($sp)           
    lhu     t9, 0x0010(v1)             # 00001D74
    lhu     t0, 0x0004(a0)             # 00000004
    slt     $at, t9, t0                
    bnel    $at, $zero, lbl_809BFEF0   
    lw      $ra, 0x0014($sp)           
    jal     func_809BFA5C              
    lw      a0, 0x0018($sp)            
    lw      t2, 0x0018($sp)            
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sw      t1, 0x0184(t2)             # 00000184
    lw      $ra, 0x0014($sp)           
lbl_809BFEF0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFEFC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809BFDA8              
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    beq     v0, $zero, lbl_809BFF24    
    lw      t7, 0x0018($sp)            
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0184(t7)             # 00000184
lbl_809BFF24:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFF34:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    beq     a2, $zero, lbl_809BFFA0    
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x29A8             # a0 = 060029A8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4                   
    lw      a0, 0x0028($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x29A8             # a1 = 060029A8
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)           
    sw      $zero, 0x0014($sp)         
    swc1    $f8, 0x0018($sp)           
    jal     func_8008D17C              
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)            
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0184(v0)             # 00000184
    swc1    $f10, 0x018C(v0)           # 0000018C
lbl_809BFFA0:
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_809BFFB0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x018C(a0)            # 0000018C
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f16                  # $f16 = 8.00
    add.s   $f8, $f4, $f6              
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    swc1    $f8, 0x018C(a0)            # 0000018C
    lwc1    $f10, 0x018C(a0)           # 0000018C
    c.le.s  $f16, $f10                 
    nop
    bc1f    lbl_809BFFE8               
    nop
    sw      t6, 0x0184(a0)             # 00000184
lbl_809BFFE8:
    jr      $ra                        
    nop


func_809BFFF0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809BFE14              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C0010:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_809BFE28              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C0030:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809BFAF4              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809BFA14              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809BFE84              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C0074:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809BFA14              
    lw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_809BFEFC              
    lw      a1, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C00AC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_809BFA14              
    lw      a1, 0x0024($sp)            
    jal     func_809BFD84              
    lw      a0, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    jal     func_809BF90C              
    lw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_809BFF34              
    lw      a2, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C00FC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BFCCC              
    lw      a1, 0x0024($sp)            
    jal     func_809BFCAC              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BFA14              
    lw      a1, 0x0024($sp)            
    jal     func_809BFD84              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BF90C              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BF9BC              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BFFB0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C0164:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BFCCC              
    lw      a1, 0x0024($sp)            
    jal     func_809BFBF4              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BFA14              
    lw      a1, 0x0024($sp)            
    jal     func_809BFD84              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BF90C              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809BF9BC              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809C01C4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0184(a0)             # 00000184
    bltz    v0, lbl_809C01FC           
    slti    $at, v0, 0x0007            
    beq     $at, $zero, lbl_809C01FC   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_809C043C)      # v1 = 809C0000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_809C043C)(v1)  
    beql    v1, $zero, lbl_809C0200    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_809C01FC:
    lw      $ra, 0x0014($sp)           
lbl_809C0200:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809C020C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    lw      a0, 0x0038($sp)            
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_8001EC20              
    addiu   a0, a0, 0x00B4             # a0 = 000000B4
    lw      a1, 0x0038($sp)            
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0xFEF0             # a2 = 0600FEF0
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    sw      a1, 0x0028($sp)            
    lw      a0, 0x003C($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_8008C788              
    sw      $zero, 0x0018($sp)         
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194              
    addiu   a0, a0, 0x4930             # a0 = 06004930
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4                   
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0                    
    sw      t6, 0x0014($sp)            
    addiu   a1, a1, 0x4930             # a1 = 06004930
    lw      a0, 0x0028($sp)            
    swc1    $f6, 0x0010($sp)           
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C              
    swc1    $f0, 0x0018($sp)           
    lw      t7, 0x0038($sp)            
    sw      $zero, 0x0184(t7)          # 00000184
    lw      $ra, 0x0024($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_809C02B8:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809C02C8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0040($sp)            
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0040($sp)            
    lui     t4, %hi(var_809C0430)      # t4 = 809C0000
    lw      t8, 0x0044($sp)            
    lh      v0, 0x0180(t6)             # 00000180
    sll     t7, v0,  2                 
    addu    t4, t4, t7                 
    lw      t4, %lo(var_809C0430)(t4)  
    lw      a0, 0x0000(t8)             # 00000000
    sw      t4, 0x0030($sp)            
    jal     func_8007E298              
    sw      a0, 0x0028($sp)            
    lui     t5, 0x8012                 # t5 = 80120000
    lui     $ra, 0x00FF                # $ra = 00FF0000
    ori     $ra, $ra, 0xFFFF           # $ra = 00FFFFFF
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    lw      t3, 0x0028($sp)            
    lw      t4, 0x0030($sp)            
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    sll     t7, t4,  4                 
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t3)             # 000002C0
    srl     t8, t7, 28                 
    ori     t6, t6, 0x0020             # t6 = DB060020
    sll     t9, t8,  2                 
    sw      t6, 0x0000(v0)             # 00000000
    addu    t6, t5, t9                 
    lw      t7, 0x0000(t6)             # DB060020
    and     t8, t4, $ra                
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8                 
    addu    t6, t9, $at                
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t2, 0x0601                 # t2 = 06010000
    addiu   t2, t2, 0xE680             # t2 = 0600E680
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t3)             # 000002C0
    sll     t9, t2,  4                 
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    srl     t6, t9, 28                 
    sll     t7, t6,  2                 
    sw      t8, 0x0000(v0)             # 00000000
    addu    t8, t5, t7                 
    lw      t9, 0x0000(t8)             # DB060024
    and     t6, t2, $ra                
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t9, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0004(v0)             # 00000004
    lw      t9, 0x0040($sp)            
    lw      a0, 0x0044($sp)            
    addiu   v1, t9, 0x013C             # v1 = 00000144
    lw      a1, 0x0004(v1)             # 00000148
    lw      a2, 0x0020(v1)             # 00000164
    lbu     a3, 0x0002(v1)             # 00000146
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0010($sp)         
    jal     func_80089D8C              
    sw      t9, 0x0018($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_809C03DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x0188(a0)             # 00000188
    bltz    v0, lbl_809C0414           
    slti    $at, v0, 0x0002            
    beq     $at, $zero, lbl_809C0414   
    sll     t6, v0,  2                 
    lui     v1, %hi(var_809C0458)      # v1 = 809C0000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_809C0458)(v1)  
    beql    v1, $zero, lbl_809C0418    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_809C0414:
    lw      $ra, 0x0014($sp)           
lbl_809C0418:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_809C0430: .word 0x0600CE80, 0x0600D280, 0x0600D680
var_809C043C: .word func_809BFFF0
.word func_809C0010
.word func_809C0030
.word func_809C0074
.word func_809C00AC
.word func_809C00FC
.word func_809C0164
var_809C0458: .word func_809C02B8
.word func_809C02C8
var_809C0460: .word 0x00CA0400, 0x00000010, 0x00C90000, 0x00000190
.word func_809C020C
.word func_809BF8E8
.word func_809C01C4
.word func_809C03DC

.section .rodata

var_809C0480: .word 0x3C23D70A
var_809C0484: .word 0x3F99999A
var_809C0488: .word 0x3C23D70A
var_809C048C: .word 0x3F99999A

