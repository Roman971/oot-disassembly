#include <mips.h>
.set noreorder
.set noat

.section .text
func_808F3480:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lui     a1, %hi(var_808F3B70)      # a1 = 808F0000
    sw      $zero, 0x002C($sp)         
    addiu   a1, a1, %lo(var_808F3B70)  # a1 = 808F3B70
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lh      t9, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    sra     t7, t6,  8                 
    andi    t8, t7, 0x003F             # t8 = 00000000
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sb      t8, 0x0158(s0)             # 00000158
    sh      t0, 0x001C(s0)             # 0000001C
    lw      t1, 0x003C($sp)            
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      t2, 0x07C0(t1)             # 000007C0
    lw      t3, 0x0028(t2)             # 00000028
    addiu   t4, t3, 0x0010             # t4 = 00000010
    jal     func_80035260              
    sw      t4, 0x0028($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_808F3530      
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f6                   # $f6 = -5.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lui     t8, %hi(func_808F3750)     # t8 = 808F0000
    addiu   t8, t8, %lo(func_808F3750) # t8 = 808F3750
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f0, 0x000C(s0)            # 0000000C
    trunc.w.s $f10, $f0                  
    swc1    $f0, 0x0028(s0)            # 00000028
    lw      t7, 0x0028($sp)            
    mfc1    t6, $f10                   
    nop
    sh      t6, 0x0002(t7)             # 00000002
    beq     $zero, $zero, lbl_808F35CC 
    sw      t8, 0x0154(s0)             # 00000154
lbl_808F3530:
    bne     v0, $zero, lbl_808F358C    
    lui     a0, 0x0600                 # a0 = 06000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x7798             # a0 = 06007798
    jal     func_80033EF4              
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lui     $at, %hi(var_808F3B80)     # $at = 808F0000
    lwc1    $f0, %lo(var_808F3B80)($at) 
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0050(s0)            # 00000050
    lw      t9, 0x0028($sp)            
    lui     t1, %hi(func_808F3618)     # t1 = 808F0000
    addiu   t1, t1, %lo(func_808F3618) # t1 = 808F3618
    lh      t0, 0x0002(t9)             # 00000002
    sw      t1, 0x0154(s0)             # 00000154
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    add.s   $f6, $f18, $f4             
    beq     $zero, $zero, lbl_808F35B4 
    swc1    $f6, 0x0028(s0)            # 00000028
lbl_808F358C:
    addiu   a0, a0, 0x5780             # a0 = 00005780
    jal     func_80033EF4              
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lui     t2, %hi(func_808F38C0)     # t2 = 808F0000
    addiu   t2, t2, %lo(func_808F38C0) # t2 = 808F38C0
    sw      $zero, 0x0134(s0)          # 00000134
    sw      t2, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4220                 # a1 = 42200000
lbl_808F35B4:
    lw      a0, 0x003C($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x002C($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
lbl_808F35CC:
    sh      $zero, 0x015A(s0)          # 0000015A
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808F35E4:
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


func_808F3618:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    lui     t7, 0x0001                 # t7 = 00010000
    lui     $at, 0x4F80                # $at = 4F800000
    addu    t7, t7, t6                 
    lw      t7, 0x1DE4(t7)             # 00011DE4
    andi    t8, t7, 0x00FF             # t8 = 00000000
    mtc1    t8, $f4                    # $f4 = 0.00
    bgez    t8, lbl_808F365C           
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8              
lbl_808F365C:
    lui     $at, %hi(var_808F3B84)     # $at = 808F0000
    lwc1    $f10, %lo(var_808F3B84)($at) 
    mul.s   $f12, $f6, $f10            
    jal     func_800CF470              
    nop
    lui     $at, 0x4325                # $at = 43250000
    mtc1    $at, $f16                  # $f16 = 165.00
    nop
    mul.s   $f18, $f0, $f16            
    swc1    $f18, 0x0020($sp)          
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f4, 0x0020($sp)           
    lwc1    $f6, 0x0008(s0)            # 00000008
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f8, $f0, $f4              
    add.s   $f10, $f8, $f6             
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x0020($sp)          
    lwc1    $f4, 0x0010(s0)            # 00000010
    lui     $at, 0x41A0                # $at = 41A00000
    mul.s   $f18, $f0, $f16            
    mtc1    $at, $f16                  # $f16 = 20.00
    lh      v0, 0x015A(s0)             # 0000015A
    addiu   t3, $zero, 0x0032          # t3 = 00000032
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    add.s   $f8, $f18, $f4             
    swc1    $f8, 0x002C(s0)            # 0000002C
    lw      t9, 0x002C($sp)            
    lw      t0, 0x07C0(t9)             # 000007C0
    lw      v1, 0x0028(t0)             # 00000028
    lh      t1, 0x0012(v1)             # 00000012
    addiu   v1, v1, 0x0010             # v1 = 00000010
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6                  
    add.s   $f18, $f10, $f16           
    beq     v0, $zero, lbl_808F3704    
    swc1    $f18, 0x0028(s0)           # 00000028
    sh      t2, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
lbl_808F3704:
    bnel    v0, $zero, lbl_808F3718    
    mtc1    v0, $f4                    # $f4 = 0.00
    sh      t3, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
    mtc1    v0, $f4                    # $f4 = 0.00
lbl_808F3718:
    lui     $at, %hi(var_808F3B88)     # $at = 808F0000
    lwc1    $f6, %lo(var_808F3B88)($at) 
    cvt.s.w $f8, $f4                   
    mul.s   $f12, $f8, $f6             
    jal     func_800CF470              
    nop
    add.s   $f16, $f0, $f0             
    lwc1    $f10, 0x0028(s0)           # 00000028
    add.s   $f18, $f10, $f16           
    swc1    $f18, 0x0028(s0)           # 00000028
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_808F3750:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lbu     a1, 0x0158(a2)             # 00000158
    sw      a2, 0x0018($sp)            
    jal     func_8002049C              
    or      a0, a3, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808F378C    
    lw      a2, 0x0018($sp)            
    lui     t7, %hi(func_808F379C)     # t7 = 808F0000
    addiu   t6, $zero, 0x0258          # t6 = 00000258
    addiu   t7, t7, %lo(func_808F379C) # t7 = 808F379C
    sh      t6, 0x015A(a2)             # 0000015A
    sw      t7, 0x0154(a2)             # 00000154
lbl_808F378C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F379C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x015A(s0)             # 0000015A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    bne     t6, $zero, lbl_808F37FC    
    lui     $at, 0x423C                # $at = 423C0000
    jal     func_8006385C              
    lw      a1, 0x000C(s0)             # 0000000C
    beq     v0, $zero, lbl_808F37E8    
    lw      a0, 0x0024($sp)            
    jal     func_80020510              
    lbu     a1, 0x0158(s0)             # 00000158
    lui     t7, %hi(func_808F3750)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808F3750) # t7 = 808F3750
    sw      t7, 0x0154(s0)             # 00000154
lbl_808F37E8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80023108              
    addiu   a1, $zero, 0x205E          # a1 = 0000205E
    beq     $zero, $zero, lbl_808F383C 
    lw      t9, 0x0024($sp)            
lbl_808F37FC:
    lwc1    $f4, 0x000C(s0)            # 0000000C
    mtc1    $at, $f6                   # $f6 = 0.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F00                 # a2 = 3F000000
    sub.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_808F3830    
    or      a0, s0, $zero              # a0 = 00000000
    lui     t8, %hi(func_808F386C)     # t8 = 808F0000
    addiu   t8, t8, %lo(func_808F386C) # t8 = 808F386C
    sw      t8, 0x0154(s0)             # 00000154
lbl_808F3830:
    jal     func_80023108              
    addiu   a1, $zero, 0x205E          # a1 = 0000205E
    lw      t9, 0x0024($sp)            
lbl_808F383C:
    lwc1    $f10, 0x0028(s0)           # 00000028
    lw      t0, 0x07C0(t9)             # 000007C0
    trunc.w.s $f16, $f10                 
    lw      v0, 0x0028(t0)             # 00000028
    mfc1    t2, $f16                   
    addiu   v0, v0, 0x0010             # v0 = 00000010
    sh      t2, 0x0002(v0)             # 00000012
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F386C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      a1, 0x015A(a0)             # 0000015A
    beq     a1, $zero, lbl_808F388C    
    addiu   t6, a1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      a1, 0x015A(a0)             # 0000015A
lbl_808F388C:
    jal     func_80023164              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lui     t8, %hi(func_808F379C)     # t8 = 808F0000
    addiu   t8, t8, %lo(func_808F379C) # t8 = 808F379C
    lh      t7, 0x015A(a0)             # 0000015A
    bnel    t7, $zero, lbl_808F38B4    
    lw      $ra, 0x0014($sp)           
    sw      t8, 0x0154(a0)             # 00000154
    lw      $ra, 0x0014($sp)           
lbl_808F38B4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F38C0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lbu     a1, 0x0158(a3)             # 00000158
    sw      a3, 0x0020($sp)            
    jal     func_8002049C              
    lw      a0, 0x0024($sp)            
    beq     v0, $zero, lbl_808F391C    
    lw      a3, 0x0020($sp)            
    lui     t7, %hi(func_808F3A20)     # t7 = 808F0000
    lui     t8, %hi(func_808F392C)     # t8 = 808F0000
    addiu   t6, $zero, 0x0104          # t6 = 00000104
    addiu   t7, t7, %lo(func_808F3A20) # t7 = 808F3A20
    addiu   t8, t8, %lo(func_808F392C) # t8 = 808F392C
    sh      t6, 0x015A(a3)             # 0000015A
    sw      t7, 0x0134(a3)             # 00000134
    sw      t8, 0x0154(a3)             # 00000154
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x0BE0          # a1 = 00000BE0
    jal     func_8006B6FC              
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
lbl_808F391C:
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F392C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      v0, 0x015A(s0)             # 0000015A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     $at, 0x42F0                # $at = 42F00000
    beq     v0, $zero, lbl_808F395C    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(s0)             # 0000015A
    lh      v0, 0x015A(s0)             # 0000015A
lbl_808F395C:
    bne     v0, $zero, lbl_808F39A4    
    lui     a2, 0x4040                 # a2 = 40400000
    jal     func_8006385C              
    lw      a1, 0x000C(s0)             # 0000000C
    beq     v0, $zero, lbl_808F3994    
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0024($sp)            
    jal     func_80020510              
    lbu     a1, 0x0158(s0)             # 00000158
    lui     t7, %hi(func_808F38C0)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808F38C0) # t7 = 808F38C0
    sw      $zero, 0x0134(s0)          # 00000134
    beq     $zero, $zero, lbl_808F39E8 
    sw      t7, 0x0154(s0)             # 00000154
lbl_808F3994:
    jal     func_80023108              
    addiu   a1, $zero, 0x2024          # a1 = 00002024
    beq     $zero, $zero, lbl_808F39EC 
    lw      $ra, 0x001C($sp)           
lbl_808F39A4:
    lwc1    $f4, 0x000C(s0)            # 0000000C
    mtc1    $at, $f6                   # $f6 = 0.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x4040                 # a2 = 40400000
    add.s   $f8, $f4, $f6              
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    bne     v0, $zero, lbl_808F39E0    
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80023108              
    addiu   a1, $zero, 0x2024          # a1 = 00002024
    beq     $zero, $zero, lbl_808F39EC 
    lw      $ra, 0x001C($sp)           
lbl_808F39E0:
    jal     func_80023164              
    lh      a1, 0x015A(s0)             # 0000015A
lbl_808F39E8:
    lw      $ra, 0x001C($sp)           
lbl_808F39EC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808F39FC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F3A20:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x0038($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808F3A4C    
    sll     t6, v0,  2                 
    bne     v0, $at, lbl_808F3A64      
lbl_808F3A4C:
    lui     a1, %hi(var_808F3B74)      # a1 = 808F0000
    addu    a1, a1, t6                 
    jal     func_80028048              
    lw      a1, %lo(var_808F3B74)(a1)  
    beq     $zero, $zero, lbl_808F3B38 
    lw      $ra, 0x003C($sp)           
lbl_808F3A64:
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1                 
    sw      t8, 0x0000(v1)             # 00000000
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    subu    a2, $zero, v0              
    andi    a3, v0, 0x007F             # a3 = 00000000
    sw      a3, 0x001C($sp)            
    sw      a3, 0x0020($sp)            
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      t4, 0x0028($sp)            
    sw      t3, 0x0024($sp)            
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0048($sp)            
    lw      t0, 0x0048($sp)            
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0044($sp)            
    lw      a1, 0x0044($sp)            
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x5DE0             # t9 = 06005DE0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)           
lbl_808F3B38:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    nop
    nop

.section .data

var_808F3B50: .word 0x00500100, 0x00000030, 0x00360000, 0x0000015C
.word func_808F3480
.word func_808F35E4
.word func_808F39FC
.word func_808F3A20
var_808F3B70: .word 0x48500064
var_808F3B74: .word 0x06007508, 0x06005DE0, 0x06005018

.section .rodata

var_808F3B80: .word 0x3E19999A
var_808F3B84: .word 0x3CC90FDB
var_808F3B88: .word 0x3E00ADFD, 0x00000000

