#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A31610:
    lwc1    $f4, 0x0024(a0)            # 00000024
    lw      v0, 0x015C(a0)             # 0000015C
    lui     $at, 0x426E                # $at = 426E0000
    trunc.w.s $f6, $f4                   
    mtc1    $at, $f10                  # $f10 = 59.50
    addiu   v0, v0, 0x0030             # v0 = 00000030
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x0000(v0)             # 00000030
    lwc1    $f8, 0x0028(a0)            # 00000028
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    nop
    sh      t9, 0x0002(v0)             # 00000032
    lwc1    $f4, 0x002C(a0)            # 0000002C
    trunc.w.s $f6, $f4                   
    mfc1    t1, $f6                    
    nop
    sh      t1, 0x0004(v0)             # 00000034
    jr      $ra                        
    nop


func_80A31668:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0034($sp)            
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      a1, 0x0028($sp)            
    jal     func_8004A484              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_80A31C64)      # a3 = 80A30000
    addiu   t6, s0, 0x0160             # t6 = 00000160
    lw      a1, 0x0028($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80A31C64)  # a3 = 80A31C64
    lw      a0, 0x0034($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80A31610              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t8, 0x015C(s0)             # 0000015C
    addiu   t7, $zero, 0x003A          # t7 = 0000003A
    sh      t7, 0x0036(t8)             # 00000036
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A316D0:
    lwc1    $f4, 0x0024(a0)            # 00000024
    lwc1    $f6, 0x0100(a0)            # 00000100
    lh      t6, 0x00B8(a0)             # 000000B8
    lui     $at, %hi(var_80A31C90)     # $at = 80A30000
    sub.s   $f0, $f4, $f6              
    lwc1    $f16, %lo(var_80A31C90)($at) 
    mtc1    t6, $f8                    # $f8 = 0.00
    mul.s   $f18, $f16, $f0            
    cvt.s.w $f10, $f8                  
    sub.s   $f4, $f10, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t8, $f6                    
    nop
    sh      t8, 0x00B8(a0)             # 000000B8
    jr      $ra                        
    nop


func_80A31710:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, %hi(var_80A31C7C)      # a1 = 80A30000
    addiu   a1, a1, %lo(var_80A31C7C)  # a1 = 80A31C7C
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A31668              
    lw      a1, 0x0024($sp)            
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      v0, 0x00B8(s0)             # 000000B8
    lui     a2, %hi(var_80A31C74)      # a2 = 80A30000
    addiu   a2, a2, %lo(var_80A31C74)  # a2 = 80A31C74
    addiu   a0, s0, 0x0098             # a0 = 00000098
    or      a1, $zero, $zero           # a1 = 00000000
    sh      v0, 0x00B6(s0)             # 000000B6
    jal     func_80050344              
    sh      v0, 0x00B4(s0)             # 000000B4
    lui     a1, 0x4414                 # a1 = 44140000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    ori     a1, a1, 0xC000             # a1 = 4414C000
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_8001EC20              
    lui     a3, 0x4110                 # a3 = 41100000
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    sb      t6, 0x00C8(s0)             # 000000C8
    jal     func_80A317D0              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A317A4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A550              
    addiu   a1, a2, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A317D0:
    lbu     t7, 0x0150(a0)             # 00000150
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     t6, %hi(func_80A31800)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A31800) # t6 = 80A31800
    ori     t8, t7, 0x0001             # t8 = 00000001
    sw      t6, 0x013C(a0)             # 0000013C
    sb      t8, 0x0150(a0)             # 00000150
    sh      $zero, 0x01A4(a0)          # 000001A4
    swc1    $f4, 0x01A0(a0)            # 000001A0
    jr      $ra                        
    nop


func_80A31800:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    lui     $at, %hi(var_80A31C94)     # $at = 80A30000
    lwc1    $f0, %lo(var_80A31C94)($at) 
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f4                   # $f4 = -100.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f10                  # $f10 = 2.50
    sub.s   $f8, $f4, $f6              
    mul.s   $f2, $f8, $f10             
    c.lt.s  $f2, $f0                   
    nop
    bc1fl   lbl_80A31850               
    sqrt.s  $f0, $f2                   
    mov.s   $f2, $f0                   
    sqrt.s  $f0, $f2                   
lbl_80A31850:
    lwc1    $f16, 0x01A0(s0)           # 000001A0
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f18, $f0, $f16            
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0068(s0)           # 00000068
    lwc1    $f4, 0x0068(s0)            # 00000068
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f6, $f0, $f4              
    jal     func_80063684              # coss?
    swc1    $f6, 0x005C(s0)            # 0000005C
    lwc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x005C(s0)           # 0000005C
    mul.s   $f12, $f0, $f8             
    lwc1    $f4, 0x002C(s0)            # 0000002C
    add.s   $f18, $f10, $f16           
    lui     $at, %hi(var_80A31C98)     # $at = 80A30000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x4000                 # a2 = 40000000
    swc1    $f18, 0x0024(s0)           # 00000024
    add.s   $f6, $f4, $f12             
    swc1    $f12, 0x0064(s0)           # 00000064
    lwc1    $f2, 0x0024(s0)            # 00000024
    swc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f8, %lo(var_80A31C98)($at) 
    lui     $at, %hi(var_80A31C9C)     # $at = 80A30000
    c.lt.s  $f8, $f2                   
    nop
    bc1f    lbl_80A318EC               
    nop
    lwc1    $f10, %lo(var_80A31C9C)($at) 
    lui     $at, %hi(var_80A31CA0)     # $at = 80A30000
    c.lt.s  $f2, $f10                  
    nop
    bc1f    lbl_80A318EC               
    nop
    lwc1    $f16, %lo(var_80A31CA0)($at) 
    beq     $zero, $zero, lbl_80A31924 
    swc1    $f16, 0x0028(s0)           # 00000028
lbl_80A318EC:
    lui     $at, %hi(var_80A31CA4)     # $at = 80A30000
    lwc1    $f18, %lo(var_80A31CA4)($at) 
    lui     $at, %hi(var_80A31CA8)     # $at = 80A30000
    lwc1    $f4, %lo(var_80A31CA8)($at) 
    sub.s   $f12, $f18, $f2            
    lui     $at, 0x42CE                # $at = 42CE0000
    mtc1    $at, $f6                   # $f6 = 103.00
    lui     $at, %hi(var_80A31CAC)     # $at = 80A30000
    abs.s   $f0, $f12                  
    lwc1    $f16, %lo(var_80A31CAC)($at) 
    sub.s   $f8, $f0, $f6              
    mul.s   $f10, $f4, $f8             
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0028(s0)           # 00000028
lbl_80A31924:
    lbu     v0, 0x0150(s0)             # 00000150
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80A319B8    
    lh      t1, 0x01A4(s0)             # 000001A4
    lh      a3, 0x008A(s0)             # 0000008A
    lh      a0, 0x0032(s0)             # 00000032
    andi    t7, v0, 0xFFFC             # t7 = 00000000
    mtc1    $zero, $f6                 # $f6 = 0.00
    subu    v1, a3, a0                 
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    slti    $at, v1, 0xC001            
    bne     $at, $zero, lbl_80A31974   
    sb      t7, 0x0150(s0)             # 00000150
    slti    $at, v1, 0x4000            
    beq     $at, $zero, lbl_80A31974   
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t8, a0, $at                
    sh      t8, 0x0032(s0)             # 00000032
    lh      a3, 0x008A(s0)             # 0000008A
lbl_80A31974:
    lw      a0, 0x002C($sp)            
    swc1    $f6, 0x0010($sp)           
    jal     func_80022E7C              
    sw      $zero, 0x0014($sp)         
    lw      t9, 0x002C($sp)            
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    jal     func_80022F84              
    lw      a0, 0x1C44(t9)             # 00001C44
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t0, 0x01A4(s0)             # 000001A4
    swc1    $f4, 0x01A8(s0)            # 000001A8
    swc1    $f8, 0x01A0(s0)            # 000001A0
    lh      t1, 0x01A4(s0)             # 000001A4
lbl_80A319B8:
    addiu   a0, s0, 0x01A0             # a0 = 000001A0
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     t1, $zero, lbl_80A31A28    
    lui     a2, 0x3D23                 # a2 = 3D230000
    lui     $at, %hi(var_80A31CB0)     # $at = 80A30000
    lwc1    $f0, %lo(var_80A31CB0)($at) 
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    lwc1    $f10, 0x01A8(s0)           # 000001A8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    sub.s   $f18, $f10, $f16           
    lwc1    $f10, 0x00BC(s0)           # 000000BC
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f18, 0x01A8(s0)           # 000001A8
    lwc1    $f6, 0x01A8(s0)            # 000001A8
    mul.s   $f8, $f6, $f4              
    add.s   $f16, $f10, $f8            
    swc1    $f16, 0x00BC(s0)           # 000000BC
    lwc1    $f18, 0x00BC(s0)           # 000000BC
    c.lt.s  $f18, $f0                  
    nop
    bc1f    lbl_80A31A30               
    nop
    jal     func_80A31A94              
    swc1    $f0, 0x00BC(s0)            # 000000BC
    beq     $zero, $zero, lbl_80A31A30 
    nop
lbl_80A31A28:
    jal     func_8006385C              
    ori     a2, a2, 0xD70A             # a2 = 0000D70A
lbl_80A31A30:
    lui     $at, %hi(var_80A31CB4)     # $at = 80A30000
    lwc1    $f6, %lo(var_80A31CB4)($at) 
    lwc1    $f2, 0x0024(s0)            # 00000024
    addiu   t2, $zero, 0xC000          # t2 = FFFFC000
    lui     $at, %hi(var_80A31CB8)     # $at = 80A30000
    c.lt.s  $f6, $f2                   
    or      a0, s0, $zero              # a0 = 00000000
    bc1f    lbl_80A31A5C               
    nop
    beq     $zero, $zero, lbl_80A31A78 
    sh      t2, 0x0032(s0)             # 00000032
lbl_80A31A5C:
    lwc1    $f4, %lo(var_80A31CB8)($at) 
    addiu   t3, $zero, 0x4000          # t3 = 00004000
    c.lt.s  $f2, $f4                   
    nop
    bc1f    lbl_80A31A78               
    nop
    sh      t3, 0x0032(s0)             # 00000032
lbl_80A31A78:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x20B8          # a1 = 000020B8
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A31A94:
    lui     t6, %hi(func_80A31AAC)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A31AAC) # t6 = 80A31AAC
    sw      t6, 0x013C(a0)             # 0000013C
    sh      $zero, 0x01A6(a0)          # 000001A6
    jr      $ra                        
    nop


func_80A31AAC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x01A6(a0)             # 000001A6
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x01A6(a0)             # 000001A6
    lh      t8, 0x01A6(a0)             # 000001A6
    slti    $at, t8, 0x003D            
    bnel    $at, $zero, lbl_80A31AF0   
    lw      $ra, 0x0014($sp)           
    jal     func_80A317D0              
    sw      a0, 0x0018($sp)            
    lui     $at, %hi(var_80A31CBC)     # $at = 80A30000
    lw      a0, 0x0018($sp)            
    lwc1    $f4, %lo(var_80A31CBC)($at) 
    swc1    $f4, 0x01A0(a0)            # 000001A0
    lw      $ra, 0x0014($sp)           
lbl_80A31AF0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A31AFC:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      v0, 0x1C44(s1)             # 00001C44
    lui     $at, 0x3000                # $at = 30000000
    ori     $at, $at, 0x00C0           # $at = 300000C0
    lw      t6, 0x066C(v0)             # 0000066C
    and     t7, t6, $at                
    bnel    t7, $zero, lbl_80A31BD8    
    lw      $ra, 0x0024($sp)           
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    jal     func_80A316D0              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x426E                # $at = 426E0000
    mtc1    $at, $f8                   # $f8 = 59.50
    swc1    $f4, 0x002C($sp)           
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   t8, $sp, 0x002C            # t8 = FFFFFFE4
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    add.s   $f10, $f6, $f8             
    addiu   a1, s0, 0x0078             # a1 = 00000078
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFF0
    or      a3, s0, $zero              # a3 = 00000000
    swc1    $f10, 0x0030($sp)          
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      t8, 0x0010($sp)            
    jal     func_8002F4B8              # Raycast
    swc1    $f16, 0x0034($sp)          
    swc1    $f0, 0x0080(s0)            # 00000080
    jal     func_80A31610              
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t0, 0x0150(s0)             # 00000150
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80A31BBC    
    or      a0, s1, $zero              # a0 = 00000000
    addu    a1, s1, $at                
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x0140             # a2 = 00000140
lbl_80A31BBC:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x0140             # a2 = 00000140
    lw      $ra, 0x0024($sp)           
lbl_80A31BD8:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80A31BE8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x06B0             # a1 = 060006B0
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80A31C20: .word 0x00F90600, 0x00000010, 0x011F0000, 0x000001AC
.word func_80A31710
.word func_80A317A4
.word func_80A31AFC
.word func_80A31BE8
var_80A31C40: .word \
0x00000000, 0x20000000, 0x00040000, 0x00000000, \
0x00000000, 0x01000100, 0x00000000, 0x00000000, \
0x003A0064
var_80A31C64: .word 0x0A110039, 0x20000000, 0x00000001
.word var_80A31C40
var_80A31C74: .word 0x0100000F, 0x0000FE00
var_80A31C7C: .word \
0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8, \
0x00000000

.section .rodata

var_80A31C90: .word 0x432F4CEB
var_80A31C94: .word 0x3C23D70A
var_80A31C98: .word 0x44B74000
var_80A31C9C: .word 0x44D12000
var_80A31CA0: .word 0xC3018000
var_80A31CA4: .word 0x44C42000
var_80A31CA8: .word 0x3EC2C859
var_80A31CAC: .word 0x43018000
var_80A31CB0: .word 0x4414C000
var_80A31CB4: .word 0x44DA2000
var_80A31CB8: .word 0x44AE2000
var_80A31CBC: .word 0x3DCCCCCD

