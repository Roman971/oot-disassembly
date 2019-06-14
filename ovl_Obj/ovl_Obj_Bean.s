#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A80D90:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0158             # a1 = 00000158
    sw      a1, 0x0018($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8004AB7C              
    sw      a2, 0x0020($sp)            
    lui     a3, %hi(var_80A830B4)      # a3 = 80A80000
    lw      a2, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80A830B4)  # a3 = 80A830B4
    lw      a0, 0x0024($sp)            
    jal     func_8004ACEC              
    lw      a1, 0x0018($sp)            
    lw      a0, 0x0020($sp)            
    jal     func_80050B00              
    lw      a1, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A80DE8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a1, 0x0024($sp)            
    sw      a2, 0x0028($sp)            
    sw      $zero, 0x0018($sp)         
    lw      a0, 0x0020($sp)            
    jal     func_80035260              
    or      a1, a3, $zero              # a1 = 00000000
    lw      a0, 0x0028($sp)            
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF8
    lw      a0, 0x0024($sp)            
    lw      a2, 0x0020($sp)            
    lw      a3, 0x0018($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0020($sp)            
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A80E40:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f4, 0x0024(a3)            # 00000024
    lui     $at, %hi(var_80A83120)     # $at = 80A80000
    lwc1    $f8, %lo(var_80A83120)($at) 
    swc1    $f4, 0x0024($sp)           
    lwc1    $f6, 0x0028(a3)            # 00000028
    lw      a0, 0x0034($sp)            
    addiu   t6, $sp, 0x0024            # t6 = FFFFFFF4
    add.s   $f10, $f6, $f8             
    addiu   a1, a3, 0x0078             # a1 = 00000078
    addiu   a2, $sp, 0x0020            # a2 = FFFFFFF0
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    swc1    $f10, 0x0028($sp)          
    lwc1    $f16, 0x002C(a3)           # 0000002C
    sw      a3, 0x0030($sp)            
    sw      t6, 0x0010($sp)            
    jal     func_8002F4B8              # Raycast
    swc1    $f16, 0x002C($sp)          
    lw      a3, 0x0030($sp)            
    swc1    $f0, 0x0080(a3)            # 00000080
    lw      $ra, 0x001C($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A80EA8:
    sh      $zero, 0x01AA(a0)          # 000001AA
    lh      v0, 0x01AA(a0)             # 000001AA
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      v0, 0x01A8(a0)             # 000001A8
    sh      v0, 0x01A6(a0)             # 000001A6
    swc1    $f4, 0x01D4(a0)            # 000001D4
    jr      $ra                        
    nop


func_80A80EC8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sdc1    $f20, 0x0018($sp)          
    lh      t6, 0x01A6(s0)             # 000001A6
    lh      t8, 0x01A8(s0)             # 000001A8
    lh      t0, 0x01AA(s0)             # 000001AA
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    addiu   t7, t6, 0x00B6             # t7 = 000000B6
    addiu   t9, t8, 0x00FB             # t9 = 000000FB
    addiu   t1, t0, 0x0064             # t1 = 00000064
    sh      t7, 0x01A6(s0)             # 000001A6
    sh      t9, 0x01A8(s0)             # 000001A8
    sh      t1, 0x01AA(s0)             # 000001AA
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x01D4             # a0 = 000001D4
    jal     func_8006385C              
    lui     a1, 0x4000                 # a1 = 40000000
    lh      a0, 0x01A6(s0)             # 000001A6
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lh      a0, 0x01A8(s0)             # 000001A8
    mov.s   $f20, $f0                  
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    add.s   $f4, $f0, $f20             
    lwc1    $f6, 0x01D4(s0)            # 000001D4
    lh      a0, 0x01A6(s0)             # 000001A6
    mul.s   $f8, $f4, $f6              
    sll     a0, a0,  2                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_80063684              # coss?
    swc1    $f8, 0x01D8(s0)            # 000001D8
    lh      a0, 0x01A8(s0)             # 000001A8
    mov.s   $f20, $f0                  
    sll     a0, a0,  2                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    add.s   $f10, $f0, $f20            
    lwc1    $f16, 0x01D4(s0)           # 000001D4
    lh      a0, 0x01AA(s0)             # 000001AA
    mul.s   $f18, $f10, $f16           
    addu    $at, a0, $zero             
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    swc1    $f18, 0x01DC(s0)           # 000001DC
    lh      a0, 0x01A8(s0)             # 000001A8
    mov.s   $f20, $f0                  
    sll     a0, a0,  3                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lui     $at, %hi(var_80A83124)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A83124)($at) 
    lui     $at, %hi(var_80A83128)     # $at = 80A80000
    lwc1    $f8, %lo(var_80A83128)($at) 
    mul.s   $f6, $f0, $f4              
    lui     $at, %hi(var_80A8312C)     # $at = 80A80000
    lwc1    $f18, %lo(var_80A8312C)($at) 
    mul.s   $f10, $f20, $f8            
    lui     $at, %hi(var_80A83130)     # $at = 80A80000
    lwc1    $f8, %lo(var_80A83130)($at) 
    lh      a0, 0x01AA(s0)             # 000001AA
    addu    $at, a0, $zero             
    add.s   $f16, $f6, $f10            
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  1                 
    add.s   $f4, $f16, $f18            
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    mul.s   $f2, $f4, $f8              
    swc1    $f2, 0x0058(s0)            # 00000058
    jal     func_80063684              # coss?
    swc1    $f2, 0x0050(s0)            # 00000050
    lui     $at, %hi(var_80A83134)     # $at = 80A80000
    lwc1    $f6, %lo(var_80A83134)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    mul.s   $f10, $f0, $f6             
    lui     $at, %hi(var_80A83138)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A83138)($at) 
    lh      a0, 0x01A6(s0)             # 000001A6
    addu    $at, a0, $zero             
    add.s   $f18, $f10, $f16           
    sll     a0, a0,  2                 
    subu    a0, a0, $at                
    sll     a0, a0, 16                 
    mul.s   $f8, $f18, $f4             
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0054(s0)            # 00000054
    lh      a0, 0x01AA(s0)             # 000001AA
    mov.s   $f20, $f0                  
    sll     a0, a0,  1                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lh      t2, 0x0016(s0)             # 00000016
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f16                  # $f16 = 1000.00
    mtc1    t2, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80A8313C)     # $at = 80A80000
    mul.s   $f18, $f20, $f16           
    lwc1    $f8, %lo(var_80A8313C)($at) 
    cvt.s.w $f10, $f6                  
    mul.s   $f6, $f0, $f8              
    add.s   $f4, $f10, $f18            
    add.s   $f16, $f6, $f4             
    trunc.w.s $f10, $f16                 
    mfc1    t4, $f10                   
    nop
    sh      t4, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x0024($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80A810D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sh      $zero, 0x01AA(a0)          # 000001AA
    lh      v0, 0x01AA(a0)             # 000001AA
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    sh      v0, 0x01A8(a0)             # 000001A8
    jal     func_80020F88              
    sh      v0, 0x01A6(a0)             # 000001A6
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A81108:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t6, 0x01A6(s0)             # 000001A6
    addiu   t9, $zero, 0x5FFF          # t9 = 00005FFF
    addiu   t3, $zero, 0x4000          # t3 = 00004000
    addiu   t7, t6, 0x0384             # t7 = 00000384
    sh      t7, 0x01A6(s0)             # 000001A6
    lh      t8, 0x01A6(s0)             # 000001A6
    slti    $at, t8, 0x6000            
    bnel    $at, $zero, lbl_80A81144   
    lh      t0, 0x01A8(s0)             # 000001A8
    sh      t9, 0x01A6(s0)             # 000001A6
    lh      t0, 0x01A8(s0)             # 000001A8
lbl_80A81144:
    addiu   t1, t0, 0x0258             # t1 = 00000258
    sh      t1, 0x01A8(s0)             # 000001A8
    lh      t2, 0x01A8(s0)             # 000001A8
    slti    $at, t2, 0x4001            
    bne     $at, $zero, lbl_80A81160   
    nop
    sh      t3, 0x01A8(s0)             # 000001A8
lbl_80A81160:
    jal     func_800636C4              # sins?
    lh      a0, 0x01A6(s0)             # 000001A6
    lui     $at, %hi(var_80A83140)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A83140)($at) 
    lh      a0, 0x01A8(s0)             # 000001A8
    mul.s   $f6, $f0, $f4              
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0054(s0)            # 00000054
    lui     $at, %hi(var_80A83144)     # $at = 80A80000
    lwc1    $f8, %lo(var_80A83144)($at) 
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f2, $f0, $f8              
    addiu   a0, s0, 0x01D8             # a0 = 000001D8
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    swc1    $f2, 0x0058(s0)            # 00000058
    jal     func_8006385C              
    swc1    $f2, 0x0050(s0)            # 00000050
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    jal     func_8006385C              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0016(s0)             # 00000016
    jal     func_80063704              
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A811E0:
    lwc1    $f4, 0x01C8(a0)            # 000001C8
    lwc1    $f6, 0x01D8(a0)            # 000001D8
    lwc1    $f16, 0x01D0(a0)           # 000001D0
    lwc1    $f18, 0x01DC(a0)           # 000001DC
    add.s   $f8, $f4, $f6              
    lwc1    $f10, 0x01CC(a0)           # 000001CC
    add.s   $f4, $f16, $f18            
    swc1    $f8, 0x0024(a0)            # 00000024
    swc1    $f10, 0x0028(a0)           # 00000028
    swc1    $f4, 0x002C(a0)            # 0000002C
    jr      $ra                        
    nop


func_80A81210:
    sw      a1, 0x0004($sp)            
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lbu     t6, 0x01E7(a0)             # 000001E7
    andi    t8, t6, 0xFFF0             # t8 = 00000000
    sb      t8, 0x01E7(a0)             # 000001E7
    or      t9, t8, a1                 # t9 = 00000000
    sb      t9, 0x01E7(a0)             # 000001E7
    jr      $ra                        
    nop


func_80A81234:
    lh      t7, 0x001C(a0)             # 0000001C
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1                 
    lw      t6, 0x1E08(t6)             # 00011E08
    sra     t8, t7,  8                 
    andi    t9, t8, 0x001F             # t9 = 00000000
    sll     t0, t9,  3                 
    addu    t1, t6, t0                 
    lbu     t2, 0x0000(t1)             # 00000000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sh      $zero, 0x01E2(a0)          # 000001E2
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x01E0(a0)             # 000001E0
    sh      t4, 0x01E4(a0)             # 000001E4
    jr      $ra                        
    nop


func_80A81274:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t7, 0x001C(a2)             # 0000001C
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a3                 
    lw      t6, 0x1E08(t6)             # 00011E08
    sra     t8, t7,  8                 
    andi    t9, t8, 0x001F             # t9 = 00000000
    sll     t0, t9,  3                 
    addu    v1, t6, t0                 
    lw      v0, 0x0004(v1)             # 00000004
    lui     t4, 0x8012                 # t4 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t1, v0,  4                 
    srl     t2, t1, 28                 
    sll     t3, t2,  2                 
    addu    t4, t4, t3                 
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    a1, t4, t5                 
    addu    a1, a1, $at                
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a0, a2, 0x01C8             # a0 = 000001C8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A812F0:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x007C($sp)            
    lbu     t6, 0x01E6(s0)             # 000001E6
    lui     t8, %hi(var_80A830E0)      # t8 = 80A80000
    addiu   t8, t8, %lo(var_80A830E0)  # t8 = 80A830E0
    sll     t7, t6,  3                 
    addu    v0, t7, t8                 
    lw      a1, 0x0000(v0)             # 00000000
    lw      a2, 0x0004(v0)             # 00000004
    jal     func_8006385C              
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lw      t9, 0x007C($sp)            
    lh      t1, 0x001C(s0)             # 0000001C
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, t9                 
    lw      t0, 0x1E08(t0)             # 00011E08
    sra     t2, t1,  8                 
    andi    t3, t2, 0x001F             # t3 = 00000000
    sll     t4, t3,  3                 
    addu    a2, t0, t4                 
    lw      v1, 0x0004(a2)             # 00000004
    lh      t2, 0x01E4(s0)             # 000001E4
    lui     t8, 0x8012                 # t8 = 80120000
    sll     t5, v1,  4                 
    srl     t6, t5, 28                 
    sll     t7, t6,  2                 
    addu    t8, t8, t7                 
    lw      t8, 0x0C38(t8)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t3, t2,  2                 
    and     t9, v1, $at                
    subu    t3, t3, t2                 
    sll     t3, t3,  1                 
    addu    t1, t8, t9                 
    addu    a1, t1, t3                 
    lui     $at, 0x8000                # $at = 80000000
    addu    a1, a1, $at                
    sw      a1, 0x0054($sp)            
    sw      a2, 0x0074($sp)            
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFE4
    addiu   a1, s0, 0x01C8             # a1 = 000001C8
    sw      a1, 0x0028($sp)            
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFE4
    jal     func_80063D48              # Vec3f_Sub
    addiu   a2, $sp, 0x0068            # a2 = FFFFFFF0
    jal     func_800A5510              
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFF0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lwc1    $f2, 0x0068(s0)            # 00000068
    lui     $at, 0x00FF                # $at = 00FF0000
    mov.s   $f14, $f0                  
    c.lt.s  $f2, $f16                  
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lw      t0, 0x0074($sp)            
    lui     t7, 0x8012                 # t7 = 80120000
    bc1f    lbl_80A813F4               
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFE4
    beq     $zero, $zero, lbl_80A813F8 
    mov.s   $f12, $f16                 
lbl_80A813F4:
    mov.s   $f12, $f2                  
lbl_80A813F8:
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_80A81544               
    div.s   $f10, $f2, $f14            
    lw      v1, 0x0004(t0)             # 00000004
    lh      t2, 0x01E2(s0)             # 000001E2
    lw      a0, 0x0028($sp)            
    sll     t4, v1,  4                 
    srl     t5, t4, 28                 
    sll     t6, t5,  2                 
    addu    t7, t7, t6                 
    lw      t7, 0x0C38(t7)             # 80120C38
    sll     t1, t2,  2                 
    and     t8, v1, $at                
    subu    t1, t1, t2                 
    sll     t1, t1,  1                 
    addu    t9, t7, t8                 
    addu    t3, t9, t1                 
    lui     $at, 0x8000                # $at = 80000000
    addu    t0, t3, $at                
    jal     func_80063CAC              # Vec3f_Copy
    sw      t0, 0x0050($sp)            
    lh      v0, 0x01E4(s0)             # 000001E4
    lh      t5, 0x01E0(s0)             # 000001E0
    lui     t1, 0x8012                 # t1 = 80120000
    sh      v0, 0x01E2(s0)             # 000001E2
    lh      t4, 0x01E2(s0)             # 000001E2
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFC8
    addiu   t6, v0, 0x0001             # t6 = 00000001
    slt     $at, t4, t5                
    bnel    $at, $zero, lbl_80A81484   
    sh      t6, 0x01E4(s0)             # 000001E4
    beq     $zero, $zero, lbl_80A81484 
    sh      $zero, 0x01E4(s0)          # 000001E4
    sh      t6, 0x01E4(s0)             # 000001E4
lbl_80A81484:
    lw      t7, 0x0074($sp)            
    lh      t4, 0x01E4(s0)             # 000001E4
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      v1, 0x0004(t7)             # 00000004
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t5, t4,  2                 
    sll     t8, v1,  4                 
    srl     t2, t8, 28                 
    sll     t9, t2,  2                 
    addu    t1, t1, t9                 
    lw      t1, 0x0C38(t1)             # 80120C38
    subu    t5, t5, t4                 
    and     t3, v1, $at                
    sll     t5, t5,  1                 
    addu    t0, t1, t3                 
    addu    t6, t0, t5                 
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t6, $at                
    sw      t7, 0x004C($sp)            
    lw      a1, 0x0054($sp)            
    jal     func_80063D80              
    lw      a2, 0x0050($sp)            
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFBC
    lw      a1, 0x004C($sp)            
    jal     func_80063D80              
    lw      a2, 0x0054($sp)            
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFC8
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFBC
    jal     func_800A4EE0              
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFB8
    beq     v0, $zero, lbl_80A81510    
    lwc1    $f6, 0x0030($sp)           
    mtc1    $zero, $f4                 # $f4 = 0.00
    beq     $zero, $zero, lbl_80A81584 
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_80A81510:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    add.s   $f10, $f6, $f8             
    lwc1    $f6, 0x0068(s0)            # 00000068
    mul.s   $f4, $f10, $f18            
    nop
    mul.s   $f8, $f6, $f4              
    swc1    $f8, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_80A81588 
    lw      $ra, 0x001C($sp)           
    div.s   $f10, $f2, $f14            
lbl_80A81544:
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFF0
    mfc1    a1, $f10                   
    jal     func_80063DDC              
    nop
    lwc1    $f18, 0x01C8(s0)           # 000001C8
    lwc1    $f6, 0x0068($sp)           
    lwc1    $f8, 0x01CC(s0)            # 000001CC
    add.s   $f4, $f18, $f6             
    lwc1    $f6, 0x01D0(s0)            # 000001D0
    swc1    $f4, 0x01C8(s0)            # 000001C8
    lwc1    $f10, 0x006C($sp)          
    add.s   $f18, $f8, $f10            
    swc1    $f18, 0x01CC(s0)           # 000001CC
    lwc1    $f4, 0x0070($sp)           
    add.s   $f8, $f6, $f4              
    swc1    $f8, 0x01D0(s0)            # 000001D0
lbl_80A81584:
    lw      $ra, 0x001C($sp)           
lbl_80A81588:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0078           # $sp = 00000000
    jr      $ra                        
    nop


func_80A81598:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s2, 0x0028($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    sdc1    $f20, 0x0018($sp)          
    lw      s0, 0x1C3C(a1)             # 00001C3C
    lui     $at, %hi(var_80A83148)     # $at = 80A80000
    addiu   s1, $zero, 0x0014          # s1 = 00000014
    beql    s0, $zero, lbl_80A8160C    
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f20, %lo(var_80A83148)($at) 
    lh      t6, 0x0000(s0)             # 00000000
lbl_80A815D0:
    addiu   a0, s0, 0x0024             # a0 = 00000024
    bnel    s1, t6, lbl_80A81600       
    lw      s0, 0x0124(s0)             # 00000124
    jal     func_800A5538              
    addiu   a1, s2, 0x0024             # a1 = 00000024
    c.lt.s  $f0, $f20                  
    nop
    bc1fl   lbl_80A81600               
    lw      s0, 0x0124(s0)             # 00000124
    beq     $zero, $zero, lbl_80A8160C 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      s0, 0x0124(s0)             # 00000124
lbl_80A81600:
    bnel    s0, $zero, lbl_80A815D0    
    lh      t6, 0x0000(s0)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A8160C:
    lw      $ra, 0x002C($sp)           
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A81628:
    addiu   $sp, $sp, 0xFF30           # $sp = FFFFFF30
    sw      s6, 0x0090($sp)            
    sw      s0, 0x0078($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s8, 0x0098($sp)            
    sw      s7, 0x0094($sp)            
    sw      s5, 0x008C($sp)            
    sw      s4, 0x0088($sp)            
    sw      s3, 0x0084($sp)            
    sw      s2, 0x0080($sp)            
    sw      s1, 0x007C($sp)            
    sdc1    $f30, 0x0070($sp)          
    sdc1    $f28, 0x0068($sp)          
    sdc1    $f26, 0x0060($sp)          
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    lui     $at, %hi(var_80A8314C)     # $at = 80A80000
    lwc1    $f30, %lo(var_80A8314C)($at) 
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f28                  # $f28 = 180.00
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f26                  # $f26 = 13.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f24                  # $f24 = 60.00
    lui     $at, 0x4060                # $at = 40600000
    lui     s8, %hi(var_80A83100)      # s8 = 80A80000
    mtc1    $at, $f22                  # $f22 = 3.50
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, s8, %lo(var_80A83100)  # s8 = 80A83100
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s7, $sp, 0x00B8            # s7 = FFFFFFE8
    addiu   s5, $sp, 0x00C4            # s5 = FFFFFFF4
    addiu   s1, s1, 0x4E20             # s1 = 00004E20
lbl_80A816B8:
    sll     s1, s1, 16                 
    jal     func_800CDCCC              # Rand.Next() float
    sra     s1, s1, 16                 
    mul.s   $f20, $f0, $f24            
    sll     a0, s1, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    mul.s   $f4, $f0, $f20             
    lwc1    $f6, 0x0024(s0)            # 00000024
    sll     a0, s1, 16                 
    sra     a0, a0, 16                 
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x00C4($sp)           
    lwc1    $f10, 0x0028(s0)           # 00000028
    jal     func_80063684              # coss?
    swc1    $f10, 0x00C8($sp)          
    mul.s   $f16, $f0, $f20            
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sll     a0, s1, 16                 
    sra     a0, a0, 16                 
    add.s   $f4, $f16, $f18            
    jal     func_800636C4              # sins?
    swc1    $f4, 0x00CC($sp)           
    mul.s   $f6, $f0, $f22             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00B8($sp)           
    mul.s   $f8, $f0, $f26             
    sll     a0, s1, 16                 
    sra     a0, a0, 16                 
    jal     func_80063684              # coss?
    swc1    $f8, 0x00BC($sp)           
    mul.s   $f10, $f0, $f22            
    lwc1    $f6, 0x00B8($sp)           
    swc1    $f10, 0x00C0($sp)          
    lwc1    $f18, 0x0100(s0)           # 00000100
    lwc1    $f16, 0x0024(s0)           # 00000024
    sub.s   $f4, $f16, $f18            
    add.s   $f8, $f6, $f4              
    lwc1    $f6, 0x00BC($sp)           
    swc1    $f8, 0x00B8($sp)           
    lwc1    $f16, 0x0104(s0)           # 00000104
    lwc1    $f10, 0x0028(s0)           # 00000028
    sub.s   $f18, $f10, $f16           
    add.s   $f4, $f6, $f18             
    lwc1    $f6, 0x00C0($sp)           
    swc1    $f4, 0x00BC($sp)           
    lwc1    $f10, 0x0108(s0)           # 00000108
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sub.s   $f16, $f8, $f10            
    add.s   $f18, $f6, $f16            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00C0($sp)          
    mul.s   $f4, $f0, $f28             
    addiu   s3, $zero, 0xFF9C          # s3 = FFFFFF9C
    trunc.w.s $f8, $f4                   
    mfc1    v0, $f8                    
    nop
    addiu   s2, v0, 0x001E             # s2 = 0000001E
    slti    $at, s2, 0x005A            
    beq     $at, $zero, lbl_80A817D4   
    addiu   v0, $zero, 0x0040          # v0 = 00000040
    jal     func_800CDCCC              # Rand.Next() float
    addiu   s3, $zero, 0xFFB0          # s3 = FFFFFFB0
    c.lt.s  $f0, $f30                  
    nop
    bc1f    lbl_80A817CC               
    nop
    beq     $zero, $zero, lbl_80A817D4 
    addiu   v0, $zero, 0x0060          # v0 = 00000060
lbl_80A817CC:
    beq     $zero, $zero, lbl_80A817D4 
    addiu   v0, $zero, 0x0040          # v0 = 00000040
lbl_80A817D4:
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    andi    t5, s4, 0x0001             # t5 = 00000000
    sll     t6, t5,  2                 
    sw      t7, 0x0018($sp)            
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sra     t9, s2,  3                 
    addiu   t0, t9, 0x0028             # t0 = 00000028
    sw      t8, 0x001C($sp)            
    addu    t7, s8, t6                 
    lw      t8, 0x0000(t7)             # 00000028
    sll     t1, t0, 16                 
    sra     t2, t1, 16                 
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x0038($sp)            
    sw      t3, 0x0034($sp)            
    sw      t2, 0x0030($sp)            
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFF4
    or      a2, s7, $zero              # a2 = FFFFFFE8
    or      a3, s5, $zero              # a3 = FFFFFFF4
    sw      s3, 0x0010($sp)            
    sw      v0, 0x0014($sp)            
    sw      $zero, 0x0020($sp)         
    sw      s2, 0x0024($sp)            
    sw      $zero, 0x0028($sp)         
    sw      $zero, 0x002C($sp)         
    jal     func_8001D998              
    sw      t8, 0x003C($sp)            
    addiu   s4, s4, 0x0001             # s4 = 00000001
    addiu   $at, $zero, 0x0024         # $at = 00000024
    bnel    s4, $at, lbl_80A816B8      
    addiu   s1, s1, 0x4E20             # s1 = 00009C40
    lw      $ra, 0x009C($sp)           
    ldc1    $f20, 0x0048($sp)          
    ldc1    $f22, 0x0050($sp)          
    ldc1    $f24, 0x0058($sp)          
    ldc1    $f26, 0x0060($sp)          
    ldc1    $f28, 0x0068($sp)          
    ldc1    $f30, 0x0070($sp)          
    lw      s0, 0x0078($sp)            
    lw      s1, 0x007C($sp)            
    lw      s2, 0x0080($sp)            
    lw      s3, 0x0084($sp)            
    lw      s4, 0x0088($sp)            
    lw      s5, 0x008C($sp)            
    lw      s6, 0x0090($sp)            
    lw      s7, 0x0094($sp)            
    lw      s8, 0x0098($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00D0           # $sp = 00000000


func_80A818A0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   a0, s0, 0x01B2             # a0 = 000001B2
    lh      a1, 0x01B4(s0)             # 000001B4
    jal     func_800637D4              
    lh      a2, 0x01B6(s0)             # 000001B6
    addiu   a0, s0, 0x01B8             # a0 = 000001B8
    lh      a1, 0x01BA(s0)             # 000001BA
    jal     func_800637D4              
    lh      a2, 0x01BC(s0)             # 000001BC
    lh      t6, 0x01BE(s0)             # 000001BE
    lh      t7, 0x01B8(s0)             # 000001B8
    addu    t8, t6, t7                 
    sh      t8, 0x01BE(s0)             # 000001BE
    jal     func_800636C4              # sins?
    lh      a0, 0x01BE(s0)             # 000001BE
    lh      t9, 0x01B2(s0)             # 000001B2
    lui     $at, %hi(var_80A83150)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A83150)($at) 
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f0, $f8             
    sub.s   $f16, $f4, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t1, $f18                   
    nop
    sh      t1, 0x01C0(s0)             # 000001C0
    jal     func_800636C4              # sins?
    lh      a0, 0x01C0(s0)             # 000001C0
    lui     $at, %hi(var_80A83154)     # $at = 80A80000
    lwc1    $f6, %lo(var_80A83154)($at) 
    lh      a0, 0x01C0(s0)             # 000001C0
    mul.s   $f8, $f0, $f6              
    jal     func_80063684              # coss?
    swc1    $f8, 0x0054(s0)            # 00000054
    lui     $at, %hi(var_80A83158)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A83158)($at) 
    mul.s   $f2, $f0, $f4              
    swc1    $f2, 0x0058(s0)            # 00000058
    swc1    $f2, 0x0050(s0)            # 00000050
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A8195C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     t6, %hi(func_80A819CC)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A819CC) # t6 = 80A819CC
    sw      t6, 0x01AC(s0)             # 000001AC
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    sh      v0, 0x01B0(s0)             # 000001B0
    addiu   a0, $zero, 0x00C8          # a0 = 000000C8
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0190          # a1 = 00000190
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sh      v0, 0x01B4(s0)             # 000001B4
    sh      t7, 0x01B6(s0)             # 000001B6
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0320          # a1 = 00000320
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sh      v0, 0x01BA(s0)             # 000001BA
    sh      t8, 0x01BC(s0)             # 000001BC
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A819CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x01B0(a0)             # 000001B0
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x01B0(a0)             # 000001B0
    jal     func_80A818A0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      t8, 0x01B0(a0)             # 000001B0
    bgezl   t8, lbl_80A81A04           
    lw      $ra, 0x0014($sp)           
    jal     func_80A81A10              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A81A04:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A81A10:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     t6, %hi(func_80A81A88)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A81A88) # t6 = 80A81A88
    sw      t6, 0x01AC(s0)             # 000001AC
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    sh      v0, 0x01B0(s0)             # 000001B0
    addiu   a0, $zero, 0x07D0          # a0 = 000007D0
    jal     func_80063BF0              
    addiu   a1, $zero, 0x03E8          # a1 = 000003E8
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    sh      v0, 0x01B4(s0)             # 000001B4
    sh      t7, 0x01B6(s0)             # 000001B6
    addiu   a0, $zero, 0x36B0          # a0 = 000036B0
    jal     func_80063BF0              
    addiu   a1, $zero, 0x1770          # a1 = 00001770
    addiu   t8, $zero, 0x0FA0          # t8 = 00000FA0
    addiu   t9, $zero, 0x18E4          # t9 = 000018E4
    sh      v0, 0x01BA(s0)             # 000001BA
    sh      t8, 0x01BC(s0)             # 000001BC
    sh      t9, 0x01C0(s0)             # 000001C0
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A81A88:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t6, 0x01B0(s0)             # 000001B0
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    addiu   a0, $zero, 0x00C8          # a0 = 000000C8
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x01B0(s0)             # 000001B0
    lh      t8, 0x01B0(s0)             # 000001B0
    bne     t8, $at, lbl_80A81ADC      
    nop
    jal     func_80063BF0              
    addiu   a1, $zero, 0x0190          # a1 = 00000190
    sh      v0, 0x01B4(s0)             # 000001B4
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    jal     func_80063BF0              
    addiu   a1, $zero, 0x01F4          # a1 = 000001F4
    addiu   t9, $zero, 0x07D0          # t9 = 000007D0
    sh      v0, 0x01BA(s0)             # 000001BA
    sh      t9, 0x01BC(s0)             # 000001BC
lbl_80A81ADC:
    jal     func_80A818A0              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x01B0(s0)             # 000001B0
    bgezl   t0, lbl_80A81AFC           
    lw      $ra, 0x001C($sp)           
    jal     func_80A8195C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A81AFC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A81B0C:
    lui     t6, %hi(func_80A81B50)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A81B50) # t6 = 80A81B50
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    addiu   t8, $zero, 0x0BB8          # t8 = 00000BB8
    addiu   t9, $zero, 0x012C          # t9 = 0000012C
    addiu   t0, $zero, 0x3A98          # t0 = 00003A98
    addiu   t1, $zero, 0x0FA0          # t1 = 00000FA0
    addiu   t2, $zero, 0x18E4          # t2 = 000018E4
    sw      t6, 0x01AC(a0)             # 000001AC
    sh      t7, 0x01B0(a0)             # 000001B0
    sh      t8, 0x01B4(a0)             # 000001B4
    sh      t9, 0x01B6(a0)             # 000001B6
    sh      t0, 0x01BA(a0)             # 000001BA
    sh      t1, 0x01BC(a0)             # 000001BC
    sh      t2, 0x01C0(a0)             # 000001C0
    jr      $ra                        
    nop


func_80A81B50:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      t6, 0x01B0(s0)             # 000001B0
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    jal     func_800CDCCC              # Rand.Next() float
    sh      t7, 0x01B0(s0)             # 000001B0
    lui     $at, %hi(var_80A8315C)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A8315C)($at) 
    addiu   a0, $zero, 0x0898          # a0 = 00000898
    c.lt.s  $f0, $f4                   
    nop
    bc1f    lbl_80A81BA8               
    nop
    jal     func_80063BF0              
    addiu   a1, $zero, 0x03E8          # a1 = 000003E8
    sh      v0, 0x01B4(s0)             # 000001B4
    addiu   a0, $zero, 0x2EE0          # a0 = 00002EE0
    jal     func_80063BF0              
    addiu   a1, $zero, 0x1F40          # a1 = 00001F40
    sh      v0, 0x01BA(s0)             # 000001BA
lbl_80A81BA8:
    jal     func_80A818A0              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x01B0(s0)             # 000001B0
    bgezl   t8, lbl_80A81BC8           
    lw      $ra, 0x001C($sp)           
    jal     func_80A81BD8              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A81BC8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A81BD8:
    lui     t6, %hi(func_80A81BEC)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A81BEC) # t6 = 80A81BEC
    sw      t6, 0x01AC(a0)             # 000001AC
    jr      $ra                        
    nop


func_80A81BEC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    addiu   a0, s0, 0x01C0             # a0 = 000001C0
    addiu   a1, $zero, 0x33E9          # a1 = 000033E9
    jal     func_800637D4              
    addiu   a2, $zero, 0x0168          # a2 = 00000168
    jal     func_800636C4              # sins?
    lh      a0, 0x01C0(s0)             # 000001C0
    lui     $at, %hi(var_80A83160)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A83160)($at) 
    lh      a0, 0x01C0(s0)             # 000001C0
    mul.s   $f6, $f0, $f4              
    jal     func_80063684              # coss?
    swc1    $f6, 0x0054(s0)            # 00000054
    lui     $at, %hi(var_80A83164)     # $at = 80A80000
    lwc1    $f8, %lo(var_80A83164)($at) 
    mul.s   $f2, $f0, $f8              
    swc1    $f2, 0x0058(s0)            # 00000058
    swc1    $f2, 0x0050(s0)            # 00000050
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A81C50:
    lui     t6, %hi(func_80A81C6C)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A81C6C) # t6 = 80A81C6C
    addiu   t7, $zero, 0x33E9          # t7 = 000033E9
    sw      t6, 0x01AC(a0)             # 000001AC
    sh      t7, 0x01C0(a0)             # 000001C0
    jr      $ra                        
    nop


func_80A81C6C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a1, a0, $zero              # a1 = 00000000
    lh      t6, 0x01C0(a1)             # 000001C0
    addiu   t7, t6, 0xF6A0             # t7 = FFFFF6A0
    sh      t7, 0x01C0(a1)             # 000001C0
    lh      a0, 0x01C0(a1)             # 000001C0
    jal     func_800636C4              # sins?
    sw      a1, 0x0018($sp)            
    lui     $at, %hi(var_80A83168)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A83168)($at) 
    lw      a1, 0x0018($sp)            
    mul.s   $f6, $f0, $f4              
    lh      a0, 0x01C0(a1)             # 000001C0
    jal     func_80063684              # coss?
    swc1    $f6, 0x0054(a1)            # 00000054
    lui     $at, %hi(var_80A8316C)     # $at = 80A80000
    lwc1    $f8, %lo(var_80A8316C)($at) 
    lw      a1, 0x0018($sp)            
    mul.s   $f2, $f0, $f8              
    lh      t8, 0x01C0(a1)             # 000001C0
    slti    $at, t8, 0x18E4            
    swc1    $f2, 0x0058(a1)            # 00000058
    beq     $at, $zero, lbl_80A81CD8   
    swc1    $f2, 0x0050(a1)            # 00000050
    jal     func_80A81CE8              
    or      a0, a1, $zero              # a0 = 00000000
lbl_80A81CD8:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A81CE8:
    lui     t6, %hi(func_80A81D2C)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A81D2C) # t6 = 80A81D2C
    addiu   t7, $zero, 0x0BB8          # t7 = 00000BB8
    addiu   t8, $zero, 0x00C8          # t8 = 000000C8
    addiu   t9, $zero, 0x3E80          # t9 = 00003E80
    addiu   t0, $zero, 0x01F4          # t0 = 000001F4
    addiu   t1, $zero, 0x0010          # t1 = 00000010
    sw      t6, 0x01AC(a0)             # 000001AC
    sh      t7, 0x01B2(a0)             # 000001B2
    sh      $zero, 0x01B4(a0)          # 000001B4
    sh      t8, 0x01B6(a0)             # 000001B6
    sh      t9, 0x01B8(a0)             # 000001B8
    sh      t0, 0x01BA(a0)             # 000001BA
    sh      $zero, 0x01BC(a0)          # 000001BC
    sh      t1, 0x01B0(a0)             # 000001B0
    jr      $ra                        
    nop


func_80A81D2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x01B0(a0)             # 000001B0
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   t9, $zero, 0x07D0          # t9 = 000007D0
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x01B0(a0)             # 000001B0
    lh      t8, 0x01B0(a0)             # 000001B0
    bne     t8, $at, lbl_80A81D58      
    nop
    sh      t9, 0x01BC(a0)             # 000001BC
lbl_80A81D58:
    jal     func_80A818A0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    lh      t0, 0x01B2(a0)             # 000001B2
    bgtzl   t0, lbl_80A81D7C           
    lw      $ra, 0x0014($sp)           
    jal     func_80A8195C              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A81D7C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A81D88:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a1, %hi(var_80A83108)      # a1 = 80A80000
    addiu   a1, a1, %lo(var_80A83108)  # a1 = 80A83108
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    addiu   $at, $zero, 0x0011         # $at = 00000011
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t6, $zero, lbl_80A81DCC    
    nop
    beq     $zero, $zero, lbl_80A81DCC 
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80A81DCC:
    bnel    v0, $at, lbl_80A81EF4      
    lh      a1, 0x001C(s0)             # 0000001C
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80A81EE0    
    nop
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    lw      a1, 0x0024($sp)            
    sra     v0, v0,  8                 
    andi    v0, v0, 0x001F             # v0 = 00000000
    bne     v0, $at, lbl_80A81E18      
    lui     t7, 0x0001                 # t7 = 00010000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A81F34 
    lw      $ra, 0x001C($sp)           
lbl_80A81E18:
    addu    t7, t7, a1                 
    lw      t7, 0x1E08(t7)             # 00001E08
    sll     t8, v0,  3                 
    addu    t9, t7, t8                 
    lbu     t0, 0x0000(t9)             # 00000000
    slti    $at, t0, 0x0003            
    beq     $at, $zero, lbl_80A81E48   
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A81F34 
    lw      $ra, 0x001C($sp)           
lbl_80A81E48:
    jal     func_80A81234              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A81274              
    lw      a1, 0x0024($sp)            
    jal     func_80A811E0              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A828D8              
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x05DC             # a2 = 060005DC
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80A80DE8              
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    lbu     t1, 0x01E7(s0)             # 000001E7
    or      a0, s0, $zero              # a0 = 00000000
    ori     t2, t1, 0x0020             # t2 = 00000020
    sb      t2, 0x01E7(s0)             # 000001E7
    jal     func_80A80D90              
    lw      a1, 0x0024($sp)            
    lbu     t3, 0x01E7(s0)             # 000001E7
    lui     a2, 0x8002                 # a2 = 80020000
    lui     a3, 0x410C                 # a3 = 410C0000
    ori     t4, t3, 0x0010             # t4 = 00000010
    sb      t4, 0x01E7(s0)             # 000001E7
    ori     a3, a3, 0xCCCD             # a3 = 410CCCCD
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_8001EC20              
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A80E40              
    lw      a1, 0x0024($sp)            
    lh      t5, 0x0018(s0)             # 00000018
    andi    t6, t5, 0x0003             # t6 = 00000000
    beq     $zero, $zero, lbl_80A81F20 
    sb      t6, 0x01E6(s0)             # 000001E6
lbl_80A81EE0:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A81F34 
    lw      $ra, 0x001C($sp)           
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80A81EF4:
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80A81F18    
    nop
    jal     func_80A82378              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A81F24 
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_80A81F18:
    jal     func_80A81FC0              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A81F20:
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_80A81F24:
    lh      v0, 0x00B8(s0)             # 000000B8
    sh      v0, 0x0018(s0)             # 00000018
    sh      v0, 0x0034(s0)             # 00000034
    lw      $ra, 0x001C($sp)           
lbl_80A81F34:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A81F44:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lbu     v0, 0x01E7(a3)             # 000001E7
    lw      a0, 0x001C($sp)            
    andi    t6, v0, 0x0020             # t6 = 00000000
    beq     t6, $zero, lbl_80A81F7C    
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(a3)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lbu     v0, 0x01E7(a3)             # 000001E7
lbl_80A81F7C:
    andi    t8, v0, 0x0010             # t8 = 00000000
    beq     t8, $zero, lbl_80A81F98    
    lw      a0, 0x001C($sp)            
    addiu   a1, a3, 0x0158             # a1 = 00000158
    jal     func_8004ABCC              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
lbl_80A81F98:
    lui     v0, %hi(var_80A83090)      # v0 = 80A80000
    addiu   v0, v0, %lo(var_80A83090)  # v0 = 80A83090
    lw      t9, 0x0000(v0)             # 80A83090
    bnel    a3, t9, lbl_80A81FB4       
    lw      $ra, 0x0014($sp)           
    sw      $zero, 0x0000(v0)          # 80A83090
    lw      $ra, 0x0014($sp)           
lbl_80A81FB4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A81FC0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A81FF8)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A81FF8) # t6 = 80A81FF8
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x002F          # t7 = 0000002F
    sh      t7, 0x010E(a0)             # 0000010E
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A81FF8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    jal     func_80022930              
    lw      a1, 0x001C($sp)            
    beq     v0, $zero, lbl_80A82054    
    lw      a0, 0x0018($sp)            
    jal     func_80022B04              
    lw      a0, 0x001C($sp)            
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80A82068      
    lw      $ra, 0x0014($sp)           
    jal     func_80A82074              
    lw      a0, 0x0018($sp)            
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    lh      a1, 0x001C(t6)             # 0000001C
    jal     func_800204D0              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     $zero, $zero, lbl_80A82068 
    lw      $ra, 0x0014($sp)           
lbl_80A82054:
    lw      a1, 0x001C($sp)            
    lui     a2, 0x4220                 # a2 = 42200000
    jal     func_80022A34              
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lw      $ra, 0x0014($sp)           
lbl_80A82068:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82074:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A820AC)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A820AC) # t6 = 80A820AC
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    sh      t7, 0x01A4(a0)             # 000001A4
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A820AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x01A4(a0)             # 000001A4
    bgtzl   t6, lbl_80A820D0           
    lw      $ra, 0x0014($sp)           
    jal     func_80A820DC              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A820D0:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A820DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A8211C)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A8211C) # t6 = 80A8211C
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     a1, 0x3C23                 # a1 = 3C230000
    lw      a0, 0x0018($sp)            
    jal     func_80020F88              
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8211C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lui     a1, 0x3E2A                 # a1 = 3E2A0000
    lui     a2, 0x3C23                 # a2 = 3C230000
    ori     a2, a2, 0xD70A             # a2 = 3C23D70A
    ori     a1, a1, 0xBA63             # a1 = 3E2ABA63
    jal     func_8006385C              
    addiu   a0, s0, 0x0054             # a0 = 00000054
    andi    v1, v0, 0x0001             # v1 = 00000000
    lui     a1, 0x3D12                 # a1 = 3D120000
    lui     a2, 0x3A94                 # a2 = 3A940000
    ori     a2, a2, 0x1C82             # a2 = 3A941C82
    ori     a1, a1, 0x31C4             # a1 = 3D1231C4
    sw      v1, 0x0024($sp)            
    jal     func_8006385C              
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lw      v1, 0x0024($sp)            
    lwc1    $f4, 0x0050(s0)            # 00000050
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    and     v1, v1, v0                 
    beq     v1, $zero, lbl_80A8219C    
    swc1    $f4, 0x0058(s0)            # 00000058
    lh      t6, 0x01A4(s0)             # 000001A4
    bgtzl   t6, lbl_80A821A4           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A821C0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A821A4 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A8219C:
    sh      t7, 0x01A4(s0)             # 000001A4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A821A4:
    jal     func_8002313C              
    addiu   a1, $zero, 0x00C6          # a1 = 000000C6
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A821C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A821F8)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A821F8) # t6 = 80A821F8
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x33E9          # t7 = 000033E9
    sh      t7, 0x01A6(a0)             # 000001A6
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A821F8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)            
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lh      t6, 0x01A6(a1)             # 000001A6
    addiu   t7, t6, 0xF6A0             # t7 = FFFFF6A0
    sh      t7, 0x01A6(a1)             # 000001A6
    lh      a0, 0x01A6(a1)             # 000001A6
    jal     func_800636C4              # sins?
    sw      a1, 0x0018($sp)            
    lui     $at, %hi(var_80A83170)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A83170)($at) 
    lw      a1, 0x0018($sp)            
    mul.s   $f6, $f0, $f4              
    lh      a0, 0x01A6(a1)             # 000001A6
    jal     func_80063684              # coss?
    swc1    $f6, 0x0054(a1)            # 00000054
    lui     $at, %hi(var_80A83174)     # $at = 80A80000
    lwc1    $f8, %lo(var_80A83174)($at) 
    lw      a1, 0x0018($sp)            
    mul.s   $f2, $f0, $f8              
    lh      t8, 0x01A6(a1)             # 000001A6
    slti    $at, t8, 0x18E4            
    swc1    $f2, 0x0058(a1)            # 00000058
    beq     $at, $zero, lbl_80A8226C   
    swc1    $f2, 0x0050(a1)            # 00000050
    jal     func_80A8227C              
    or      a0, a1, $zero              # a0 = 00000000
lbl_80A8226C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8227C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A822B8)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A822B8) # t6 = 80A822B8
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x0BB8          # t7 = 00000BB8
    sh      $zero, 0x01A6(a0)          # 000001A6
    sh      t7, 0x01A8(a0)             # 000001A8
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A822B8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      t6, 0x01A6(s0)             # 000001A6
    lh      t8, 0x01A8(s0)             # 000001A8
    addiu   t7, t6, 0x3E80             # t7 = 00003E80
    sh      t7, 0x01A6(s0)             # 000001A6
    addiu   t9, t8, 0xFF38             # t9 = FFFFFF38
    sh      t9, 0x01A8(s0)             # 000001A8
    jal     func_800636C4              # sins?
    lh      a0, 0x01A6(s0)             # 000001A6
    lh      t0, 0x01A8(s0)             # 000001A8
    lui     $at, %hi(var_80A83178)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A83178)($at) 
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f10, $f0, $f8             
    sub.s   $f16, $f4, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    a0, $f18                   
    nop
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sh      a0, 0x0026($sp)            
    lui     $at, %hi(var_80A8317C)     # $at = 80A80000
    lwc1    $f6, %lo(var_80A8317C)($at) 
    lh      a0, 0x0026($sp)            
    mul.s   $f8, $f0, $f6              
    jal     func_80063684              # coss?
    swc1    $f8, 0x0054(s0)            # 00000054
    lui     $at, %hi(var_80A83180)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A83180)($at) 
    lh      t2, 0x01A8(s0)             # 000001A8
    mul.s   $f2, $f0, $f4              
    swc1    $f2, 0x0058(s0)            # 00000058
    bgez    t2, lbl_80A82364           
    swc1    $f2, 0x0050(s0)            # 00000050
    jal     func_80A82378              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A82364:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82378:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A823C0)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A823C0) # t6 = 80A823C0
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88              
    lw      a0, 0x0018($sp)            
    jal     func_80A8195C              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A823C0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      t9, 0x01AC(s0)             # 000001AC
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9                    
    nop
    lbu     t6, 0x01E7(s0)             # 000001E7
    lw      a0, 0x002C($sp)            
    andi    t7, t6, 0x0040             # t7 = 00000000
    bne     t7, $zero, lbl_80A82474    
    nop
    jal     func_8005991C              
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     v0, $zero, lbl_80A82474    
    lui     v1, %hi(var_80A83090)      # v1 = 80A80000
    addiu   v1, v1, %lo(var_80A83090)  # v1 = 80A83090
    lw      t8, 0x0000(v1)             # 80A83090
    lui     $at, 0x4248                # $at = 42480000
    bne     t8, $zero, lbl_80A82474    
    nop
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 50.00
    nop
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80A82474               
    nop
    jal     func_80A824B8              
    or      a0, s0, $zero              # a0 = 00000000
    lui     v1, %hi(var_80A83090)      # v1 = 80A80000
    addiu   v1, v1, %lo(var_80A83090)  # v1 = 80A83090
    sw      s0, 0x0000(v1)             # 80A83090
    lw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0x08A2          # a1 = 000008A2
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    lw      t0, 0x0004(s0)             # 00000004
    ori     t1, t0, 0x0010             # t1 = 00000010
    beq     $zero, $zero, lbl_80A824A4 
    sw      t1, 0x0004(s0)             # 00000004
lbl_80A82474:
    lui     v1, %hi(var_80A83090)      # v1 = 80A80000
    addiu   v1, v1, %lo(var_80A83090)  # v1 = 80A83090
    lw      t2, 0x0000(v1)             # 80A83090
    lw      a0, 0x002C($sp)            
    bnel    s0, t2, lbl_80A824A8       
    lw      $ra, 0x0024($sp)           
    jal     func_8005991C              
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    lui     v1, %hi(var_80A83090)      # v1 = 80A80000
    bne     v0, $zero, lbl_80A824A4    
    addiu   v1, v1, %lo(var_80A83090)  # v1 = 80A83090
    sw      $zero, 0x0000(v1)          # 80A83090
lbl_80A824A4:
    lw      $ra, 0x0024($sp)           
lbl_80A824A8:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A824B8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A824F8)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A824F8) # t6 = 80A824F8
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_80A81B0C              
    lw      a0, 0x0018($sp)            
    lw      t8, 0x0018($sp)            
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    sh      t7, 0x01A4(t8)             # 000001A4
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A824F8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a0, 0x0018($sp)            
    lw      t9, 0x01AC(a0)             # 000001AC
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    lh      t6, 0x01A4(a0)             # 000001A4
    bgtzl   t6, lbl_80A82530           
    lw      $ra, 0x0014($sp)           
    jal     func_80A8253C              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A82530:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A8253C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A82578)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A82578) # t6 = 80A82578
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x01C4(a0)            # 000001C4
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A82578:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a0, 0x0018($sp)            
    lw      t9, 0x01AC(a0)             # 000001AC
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    lui     $at, %hi(var_80A83184)     # $at = 80A80000
    lwc1    $f6, %lo(var_80A83184)($at) 
    lwc1    $f4, 0x01C4(a0)            # 000001C4
    lui     $at, %hi(var_80A83188)     # $at = 80A80000
    lh      t6, 0x0016(a0)             # 00000016
    add.s   $f8, $f4, $f6              
    lwc1    $f4, 0x000C(a0)            # 0000000C
    swc1    $f8, 0x01C4(a0)            # 000001C4
    lwc1    $f10, %lo(var_80A83188)($at) 
    lwc1    $f0, 0x01C4(a0)            # 000001C4
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f6                   # $f6 = 800.00
    mul.s   $f16, $f0, $f10            
    lui     $at, %hi(var_80A8318C)     # $at = 80A80000
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f18, $f16                 
    add.s   $f10, $f4, $f8             
    mfc1    t1, $f18                   
    nop
    addu    t2, t6, t1                 
    sh      t2, 0x00B6(a0)             # 000000B6
    swc1    $f10, 0x0028(a0)           # 00000028
    lwc1    $f16, %lo(var_80A8318C)($at) 
    c.le.s  $f16, $f0                  
    nop
    bc1f    lbl_80A82610               
    nop
    jal     func_80A82628              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
lbl_80A82610:
    jal     func_8002313C              
    addiu   a1, $zero, 0x00C7          # a1 = 000000C7
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82628:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A82660)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A82660) # t6 = 80A82660
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x003C          # t7 = 0000003C
    sh      t7, 0x01A4(a0)             # 000001A4
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A82660:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s4, 0x0028($sp)            
    sw      s3, 0x0024($sp)            
    or      s3, a1, $zero              # s3 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s2, 0x0020($sp)            
    sw      s1, 0x001C($sp)            
    sw      s0, 0x0018($sp)            
    lw      t9, 0x01AC(s4)             # 000001AC
    or      a0, s4, $zero              # a0 = 00000000
    jalr    $ra, t9                    
    nop
    lh      v0, 0x01A4(s4)             # 000001A4
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bnel    v0, $at, lbl_80A826B8      
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    jal     func_80A81C50              
    or      a0, s4, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A82758 
    lw      $ra, 0x002C($sp)           
    addiu   $at, $zero, 0x001E         # $at = 0000001E
lbl_80A826B8:
    bne     v0, $at, lbl_80A82744      
    nop
    lbu     t6, 0x01E7(s4)             # 000001E7
    andi    t7, t6, 0x0040             # t7 = 00000000
    bnel    t7, $zero, lbl_80A82758    
    lw      $ra, 0x002C($sp)           
    lwc1    $f4, 0x0024(s4)            # 00000024
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f8                   # $f8 = 25.00
    swc1    $f4, 0x0038($sp)           
    lwc1    $f6, 0x0028(s4)            # 00000028
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $zero, 0x0003          # s2 = 00000003
    sub.s   $f10, $f6, $f8             
    addiu   s1, $sp, 0x0038            # s1 = FFFFFFF0
    swc1    $f10, 0x003C($sp)          
    lwc1    $f16, 0x002C(s4)           # 0000002C
    swc1    $f16, 0x0040($sp)          
    or      a0, s3, $zero              # a0 = 00000000
lbl_80A82704:
    or      a1, s1, $zero              # a1 = FFFFFFF0
    jal     func_80013678              
    addiu   a2, $zero, 0x0012          # a2 = 00000012
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s2, lbl_80A82704       
    or      a0, s3, $zero              # a0 = 00000000
    lbu     t8, 0x01E7(s4)             # 000001E7
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x28E7          # a1 = 000028E7
    ori     t0, t8, 0x0040             # t0 = 00000040
    jal     func_80022FD0              
    sb      t0, 0x01E7(s4)             # 000001E7
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    beq     $zero, $zero, lbl_80A82758 
    lw      $ra, 0x002C($sp)           
lbl_80A82744:
    bgtzl   v0, lbl_80A82758           
    lw      $ra, 0x002C($sp)           
    jal     func_80A82774              
    or      a0, s4, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_80A82758:
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    lw      s3, 0x0024($sp)            
    lw      s4, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80A82774:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A827AC)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A827AC) # t6 = 80A827AC
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    jal     func_80A81BD8              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A827AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a0, 0x0018($sp)            
    lw      t9, 0x01AC(a0)             # 000001AC
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    lui     $at, %hi(var_80A83190)     # $at = 80A80000
    lwc1    $f6, %lo(var_80A83190)($at) 
    lwc1    $f4, 0x01C4(a0)            # 000001C4
    lui     $at, %hi(var_80A83194)     # $at = 80A80000
    mtc1    $zero, $f2                 # $f2 = 0.00
    sub.s   $f8, $f4, $f6              
    lwc1    $f4, 0x000C(a0)            # 0000000C
    lh      v0, 0x0016(a0)             # 00000016
    swc1    $f8, 0x01C4(a0)            # 000001C4
    lwc1    $f10, %lo(var_80A83194)($at) 
    lwc1    $f0, 0x01C4(a0)            # 000001C4
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f6                   # $f6 = 800.00
    mul.s   $f16, $f0, $f10            
    c.le.s  $f0, $f2                   
    mul.s   $f8, $f0, $f6              
    trunc.w.s $f18, $f16                 
    add.s   $f10, $f4, $f8             
    mfc1    t0, $f18                   
    nop
    addu    t1, v0, t0                 
    sh      t1, 0x00B6(a0)             # 000000B6
    bc1f    lbl_80A82838               
    swc1    $f10, 0x0028(a0)           # 00000028
    swc1    $f2, 0x01C4(a0)            # 000001C4
    jal     func_80A82848              
    sh      v0, 0x00B6(a0)             # 000000B6
lbl_80A82838:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82848:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A82880)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A82880) # t6 = 80A82880
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    sh      t7, 0x01A4(a0)             # 000001A4
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A82880:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    sw      a0, 0x0018($sp)            
    lw      t9, 0x01AC(a0)             # 000001AC
    jalr    $ra, t9                    
    nop
    lw      a0, 0x0018($sp)            
    lh      t6, 0x01A4(a0)             # 000001A4
    bgtzl   t6, lbl_80A828CC           
    lw      $ra, 0x0014($sp)           
    jal     func_80A821C0              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lw      t7, 0x0004(a0)             # 00000004
    and     t8, t7, $at                
    sw      t8, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)           
lbl_80A828CC:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A828D8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A82904)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A82904) # t6 = 80A82904
    sw      t6, 0x0154(a0)             # 00000154
    jal     func_80A81210              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82904:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80035364              
    lw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80A82960    
    nop
    jal     func_80A82978              
    lw      a0, 0x0018($sp)            
    lw      v1, 0x001C($sp)            
    addiu   $at, $zero, 0x005B         # $at = 0000005B
    addiu   a1, $zero, 0x002C          # a1 = 0000002C
    lh      t6, 0x00A4(v1)             # 000000A4
    bne     t6, $at, lbl_80A82958      
    nop
    lw      a0, 0x0790(v1)             # 00000790
    jal     func_800495BC              
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    beq     $zero, $zero, lbl_80A82960 
    nop
lbl_80A82958:
    jal     func_800495BC              
    lw      a0, 0x0790(v1)             # 00000790
lbl_80A82960:
    jal     func_80A80EC8              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82978:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A829BC)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A829BC) # t6 = 80A829BC
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      a0, 0x0018($sp)            
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t7, 0x0004(a0)             # 00000004
    swc1    $f4, 0x0068(a0)            # 00000068
    ori     t8, t7, 0x0010             # t8 = 00000010
    sw      t8, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A829BC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80A812F0              
    or      a1, s0, $zero              # a1 = 00000000
    lh      t6, 0x01E0(s1)             # 000001E0
    lh      t7, 0x01E2(s1)             # 000001E2
    or      a0, s1, $zero              # a0 = 00000000
    bne     t6, t7, lbl_80A82A4C       
    nop
    jal     func_80A81234              
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80A81274              
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80A82AEC              
    or      a0, s1, $zero              # a0 = 00000000
    lw      t8, 0x0004(s1)             # 00000004
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t9, t8, $at                
    sw      t9, 0x0004(s1)             # 00000004
    lw      a0, 0x0790(s0)             # 00000790
    addiu   $at, $zero, 0x002D         # $at = 0000002D
    lh      v0, 0x0142(a0)             # 00000142
    beq     v0, $at, lbl_80A82A3C      
    addiu   $at, $zero, 0x002C         # $at = 0000002C
    bne     v0, $at, lbl_80A82AD0      
    nop
lbl_80A82A3C:
    jal     func_800495BC              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_80A82AD0 
    nop
lbl_80A82A4C:
    jal     func_80035364              
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A82A9C    
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x00CA          # a1 = 000000CA
    lh      t0, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x005B         # $at = 0000005B
    addiu   a1, $zero, 0x002C          # a1 = 0000002C
    bne     t0, $at, lbl_80A82A8C      
    nop
    lw      a0, 0x0790(s0)             # 00000790
    jal     func_800495BC              
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    beq     $zero, $zero, lbl_80A82AD0 
    nop
lbl_80A82A8C:
    jal     func_800495BC              
    lw      a0, 0x0790(s0)             # 00000790
    beq     $zero, $zero, lbl_80A82AD0 
    nop
lbl_80A82A9C:
    lbu     t1, 0x01E7(s1)             # 000001E7
    andi    t2, t1, 0x0080             # t2 = 00000000
    beq     t2, $zero, lbl_80A82AD0    
    nop
    lw      a0, 0x0790(s0)             # 00000790
    addiu   $at, $zero, 0x002D         # $at = 0000002D
    lh      v0, 0x0142(a0)             # 00000142
    beq     v0, $at, lbl_80A82AC8      
    addiu   $at, $zero, 0x002C         # $at = 0000002C
    bne     v0, $at, lbl_80A82AD0      
    nop
lbl_80A82AC8:
    jal     func_800495BC              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_80A82AD0:
    jal     func_80A80EC8              
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A82AEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A82B18)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A82B18) # t6 = 80A82B18
    sw      t6, 0x0154(a0)             # 00000154
    jal     func_80A81210              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82B18:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_80035388              
    lw      a0, 0x0018($sp)            
    bne     v0, $zero, lbl_80A82B40    
    nop
    jal     func_80A828D8              
    lw      a0, 0x0018($sp)            
lbl_80A82B40:
    jal     func_80A80EC8              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82B58:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A82B84)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A82B84) # t6 = 80A82B84
    sw      t6, 0x0154(a0)             # 00000154
    jal     func_80A81210              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82B84:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_80035364              
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80A82BCC    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A81234              
    lw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A81274              
    lw      a1, 0x0024($sp)            
    jal     func_80A811E0              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A82BE0              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A82BCC:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82BE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A82C20)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A82C20) # t6 = 80A82C20
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    jal     func_80A810D8              
    sh      t7, 0x01A4(a0)             # 000001A4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82C20:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80A81598              
    sw      a0, 0x0018($sp)            
    beq     v0, $zero, lbl_80A82C44    
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    beq     $zero, $zero, lbl_80A82C58 
    sh      t6, 0x01A4(a0)             # 000001A4
lbl_80A82C44:
    lh      t7, 0x01A4(a0)             # 000001A4
    bgtzl   t7, lbl_80A82C5C           
    lw      $ra, 0x0014($sp)           
    jal     func_80A82C68              
    nop
lbl_80A82C58:
    lw      $ra, 0x0014($sp)           
lbl_80A82C5C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82C68:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lui     t6, %hi(func_80A82CA0)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A82CA0) # t6 = 80A82CA0
    sw      t6, 0x0154(a0)             # 00000154
    sw      a0, 0x0018($sp)            
    jal     func_80A81210              
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      a0, 0x0018($sp)            
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    sh      t7, 0x01A4(a0)             # 000001A4
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A82CA0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_80A81598              
    sw      a3, 0x002C($sp)            
    sw      v0, 0x0024($sp)            
    jal     func_80A81108              
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x0024($sp)            
    lw      a3, 0x002C($sp)            
    beq     t6, $zero, lbl_80A82CF8    
    or      a0, a3, $zero              # a0 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031530              
    lw      a2, 0x013C(s0)             # 0000013C
    beq     $zero, $zero, lbl_80A82D08 
    lh      t7, 0x01A4(s0)             # 000001A4
lbl_80A82CF8:
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031530              
    lw      a2, 0x013C(s0)             # 0000013C
    lh      t7, 0x01A4(s0)             # 000001A4
lbl_80A82D08:
    lw      t8, 0x0024($sp)            
    bgtzl   t7, lbl_80A82D30           
    lw      $ra, 0x001C($sp)           
    bnel    t8, $zero, lbl_80A82D30    
    lw      $ra, 0x001C($sp)           
    jal     func_80A80EA8              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A828D8              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A82D30:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82D40:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x01A4(s0)             # 000001A4
    blez    v0, lbl_80A82D68           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01A4(s0)             # 000001A4
lbl_80A82D68:
    lw      t9, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lbu     t7, 0x01E7(s0)             # 000001E7
    andi    t8, t7, 0x0004             # t8 = 00000000
    beql    t8, $zero, lbl_80A82E74    
    sw      $zero, 0x00C0(s0)          # 000000C0
    jal     func_80A811E0              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lui     $at, 0x4420                # $at = 44200000
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80A82E0C               
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f8, 0x0050(s0)            # 00000050
    mtc1    $at, $f10                  # $f10 = 640.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    mul.s   $f16, $f8, $f10            
    addiu   a2, s0, 0x0158             # a2 = 00000158
    or      a1, a2, $zero              # a1 = 00000158
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t1, $f6                    
    nop
    sh      t1, 0x0198(s0)             # 00000198
    jal     func_80050B00              
    sw      a2, 0x0024($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0024($sp)            
    addu    a1, s1, $at                
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A82E0C:
    jal     func_80A80E40              
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x42B0                # $at = 42B00000
    mtc1    $at, $f10                  # $f10 = 88.00
    lwc1    $f8, 0x0050(s0)            # 00000050
    lui     t2, 0x8002                 # t2 = 80020000
    addiu   t2, t2, 0xEFF4             # t2 = 8001EFF4
    mul.s   $f16, $f8, $f10            
    sw      t2, 0x00C0(s0)             # 000000C0
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80A81598              
    swc1    $f16, 0x00C4(s0)           # 000000C4
    beq     v0, $zero, lbl_80A82E74    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A81628              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    jal     func_800314D8              
    lw      a2, 0x013C(s0)             # 0000013C
    jal     func_80A82B58              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A82E78 
    or      a0, s0, $zero              # a0 = 00000000
    sw      $zero, 0x00C0(s0)          # 000000C0
lbl_80A82E74:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A82E78:
    jal     func_80020F04              
    lui     a1, 0x40C0                 # a1 = 40C00000
    lbu     t3, 0x01E7(s0)             # 000001E7
    andi    t4, t3, 0x0020             # t4 = 00000000
    beql    t4, $zero, lbl_80A82EC0    
    lw      $ra, 0x001C($sp)           
    jal     func_80035364              
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A82EB4    
    lbu     t9, 0x01E7(s0)             # 000001E7
    lbu     t5, 0x01E7(s0)             # 000001E7
    ori     t6, t5, 0x0080             # t6 = 00000080
    beq     $zero, $zero, lbl_80A82EBC 
    sb      t6, 0x01E7(s0)             # 000001E7
    lbu     t9, 0x01E7(s0)             # 000001E7
lbl_80A82EB4:
    andi    t7, t9, 0xFF7F             # t7 = 00000000
    sb      t7, 0x01E7(s0)             # 000001E7
lbl_80A82EBC:
    lw      $ra, 0x001C($sp)           
lbl_80A82EC0:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A82ED0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lwc1    $f12, 0x0008(a0)           # 00000008
    lwc1    $f14, 0x000C(a0)           # 0000000C
    lw      a2, 0x0010(a0)             # 00000010
    sw      a0, 0x0018($sp)            
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0018($sp)            
    lui     $at, %hi(var_80A83198)     # $at = 80A80000
    lwc1    $f8, %lo(var_80A83198)($at) 
    lh      t6, 0x0016(a0)             # 00000016
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lui     $at, %hi(var_80A8319C)     # $at = 80A80000
    lwc1    $f12, %lo(var_80A8319C)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0650             # a1 = 06000650
    jal     func_80028048              
    lw      a0, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82F58:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lwc1    $f12, 0x0024(a0)           # 00000024
    lwc1    $f14, 0x0028(a0)           # 00000028
    lw      a2, 0x002C(a0)             # 0000002C
    sw      a0, 0x0018($sp)            
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0018($sp)            
    lui     $at, %hi(var_80A831A0)     # $at = 80A80000
    lwc1    $f8, %lo(var_80A831A0)($at) 
    lh      t6, 0x00B6(a0)             # 000000B6
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lui     $at, %hi(var_80A831A4)     # $at = 80A80000
    lwc1    $f12, %lo(var_80A831A4)($at) 
    lw      a0, 0x0018($sp)            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    lwc1    $f14, 0x01C4(a0)           # 000001C4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x01B0             # a1 = 060001B0
    jal     func_80028048              
    lw      a0, 0x001C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A82FE4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lbu     v0, 0x01E7(a2)             # 000001E7
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0090             # a1 = 06000090
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80A8301C    
    lw      a0, 0x001C($sp)            
    jal     func_80028048              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lbu     v0, 0x01E7(a2)             # 000001E7
lbl_80A8301C:
    andi    t7, v0, 0x0004             # t7 = 00000000
    beq     t7, $zero, lbl_80A83040    
    lw      a0, 0x001C($sp)            
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x03F0             # a1 = 060003F0
    jal     func_80028048              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lbu     v0, 0x01E7(a2)             # 000001E7
lbl_80A83040:
    andi    t8, v0, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80A83060    
    or      a0, a2, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)            
    jal     func_80A82ED0              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lbu     v0, 0x01E7(a2)             # 000001E7
lbl_80A83060:
    andi    t9, v0, 0x0008             # t9 = 00000000
    beq     t9, $zero, lbl_80A83074    
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80A82F58              
    lw      a1, 0x001C($sp)            
lbl_80A83074:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_80A83090: .word 0x00000000
var_80A83094: .word 0x01260100, 0x00400000, 0x011E0000, 0x000001E8
.word func_80A81D88
.word func_80A81F44
.word func_80A82D40
.word func_80A82FE4
var_80A830B4: .word \
0x0A000009, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0040001E, 0xFFE10000, 0x00000000
var_80A830E0: .word \
0x40400000, 0x3E99999A, 0x41200000, 0x3F000000, \
0x41F00000, 0x3F000000, 0x40400000, 0x3E99999A
var_80A83100: .word 0x04035A80, 0x04035B40
var_80A83108: .word \
0xC8500064, 0xB0F407D0, 0xB0F800C8, 0x30FC0640, \
0x00000000, 0x00000000

.section .rodata

var_80A83120: .word 0x41EFFFFF
var_80A83124: .word 0x3C23D70A
var_80A83128: .word 0x3D75C28F
var_80A8312C: .word 0x3F88F5C3
var_80A83130: .word 0x3DCCCCCD
var_80A83134: .word 0x3E4CCCCD
var_80A83138: .word 0x3DCCCCCD
var_80A8313C: .word 0x45034000
var_80A83140: .word 0x3E2DC750
var_80A83144: .word 0x3DDB22D2
var_80A83148: .word 0x461C4000
var_80A8314C: .word 0x3DCCCCCD
var_80A83150: .word 0x45C72000
var_80A83154: .word 0x3E328769
var_80A83158: .word 0x3DFA03BF
var_80A8315C: .word 0x3DCCCCCD
var_80A83160: .word 0x3E328769
var_80A83164: .word 0x3DFA03BF
var_80A83168: .word 0x3E328769
var_80A8316C: .word 0x3DFA03BF
var_80A83170: .word 0x3E328769
var_80A83174: .word 0x3DFA03BF
var_80A83178: .word 0x45C72000
var_80A8317C: .word 0x3E328769
var_80A83180: .word 0x3DFA03BF
var_80A83184: .word 0x3A83126F
var_80A83188: .word 0x492AE600
var_80A8318C: .word 0x3DCCCCCD
var_80A83190: .word 0x3A83126F
var_80A83194: .word 0x492AE600
var_80A83198: .word 0x38C90FDB
var_80A8319C: .word 0x3DCCCCCD
var_80A831A0: .word 0x38C90FDB
var_80A831A4: .word 0x3DCCCCCD, 0x00000000, 0x00000000

