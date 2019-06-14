#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B33550:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0058($sp)            
    sw      a1, 0x005C($sp)            
    addiu   v1, $sp, 0x0040            # v1 = FFFFFFE8
    lui     t6, %hi(var_80B33F08)      # t6 = 80B30000
    addiu   t6, t6, %lo(var_80B33F08)  # t6 = 80B33F08
    lw      t8, 0x0000(t6)             # 80B33F08
    lui     t0, %hi(var_80B33F14)      # t0 = 80B30000
    addiu   t0, t0, %lo(var_80B33F14)  # t0 = 80B33F14
    sw      t8, 0x0000(v1)             # FFFFFFE8
    lw      t7, 0x0004(t6)             # 80B33F0C
    addiu   t9, $sp, 0x0034            # t9 = FFFFFFDC
    lui     $at, 0x0001                # $at = 00010000
    sw      t7, 0x0004(v1)             # FFFFFFEC
    lw      t8, 0x0008(t6)             # 80B33F10
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x005A          # a1 = 0000005A
    sw      t8, 0x0008(v1)             # FFFFFFF0
    lw      t2, 0x0000(t0)             # 80B33F14
    lw      t1, 0x0004(t0)             # 80B33F18
    sw      t2, 0x0000(t9)             # FFFFFFDC
    lw      t2, 0x0008(t0)             # 80B33F1C
    sw      t1, 0x0004(t9)             # FFFFFFE0
    sw      t2, 0x0008(t9)             # FFFFFFE4
    lbu     t3, 0x002C(s1)             # 0000002C
    lw      a0, 0x0058($sp)            
    bne     t3, $zero, lbl_80B336FC    
    addu    a0, a0, $at                
    jal     func_80081628              # ObjectIndex
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0020($sp)            
    bltz    v0, lbl_80B336F4           
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80081688              
    sw      v0, 0x004C($sp)            
    beq     v0, $zero, lbl_80B336F4    
    lw      a1, 0x004C($sp)            
    lw      t4, 0x0058($sp)            
    sll     t5, a1,  4                 
    addu    t5, t5, a1                 
    sll     t5, t5,  2                 
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t6, t4, t5                 
    addu    t7, t7, t6                 
    lw      t7, 0x17B4(t7)             # 000117B4
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x0C38             # a0 = 80120C38
    lui     $at, 0x8000                # $at = 80000000
    lw      v1, 0x0018(a0)             # 80120C50
    addu    t8, t7, $at                
    sw      t8, 0x0018(a0)             # 80120C50
    sh      a1, 0x0044(s0)             # 00000044
    lw      t0, 0x0000(s1)             # 00000000
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    lui     v0, 0x0601                 # v0 = 06010000
    sw      t0, 0x0000(s0)             # 00000000
    lw      t9, 0x0004(s1)             # 00000004
    addiu   v0, v0, 0x0D60             # v0 = 06010D60
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t9, 0x0004(s0)             # 00000004
    lw      t0, 0x0008(s1)             # 00000008
    lui     t9, %hi(func_80B3389C)     # t9 = 80B30000
    addiu   t9, t9, %lo(func_80B3389C) # t9 = 80B3389C
    sw      t0, 0x0008(s0)             # 00000008
    lw      t2, 0x000C(s1)             # 0000000C
    lui     t0, %hi(func_80B33C9C)     # t0 = 80B30000
    addiu   t0, t0, %lo(func_80B33C9C) # t0 = 80B33C9C
    sw      t2, 0x000C(s0)             # 0000000C
    lw      t1, 0x0010(s1)             # 00000010
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t1, 0x0010(s0)             # 00000010
    lw      t2, 0x0014(s1)             # 00000014
    sll     t1, v0,  4                 
    sw      t2, 0x0014(s0)             # 00000014
    lw      t4, 0x0018(s1)             # 00000018
    srl     t2, t1, 28                 
    sw      t4, 0x0018(s0)             # 00000018
    lw      t3, 0x001C(s1)             # 0000001C
    sw      t3, 0x001C(s0)             # 0000001C
    lw      t4, 0x0020(s1)             # 00000020
    sll     t3, t2,  2                 
    sw      t4, 0x0020(s0)             # 00000020
    lbu     t5, 0x0026(s1)             # 00000026
    sh      t6, 0x005C(s0)             # 0000005C
    addu    t4, a0, t3                 
    sh      t5, 0x0048(s0)             # 00000048
    lh      t7, 0x0024(s1)             # 00000024
    sh      t8, 0x0040(s0)             # 00000040
    sw      t9, 0x0028(s0)             # 00000028
    sw      t0, 0x0024(s0)             # 00000024
    sh      t7, 0x0050(s0)             # 00000050
    lw      t5, 0x0000(t4)             # 00000000
    and     t6, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t5, t6                 
    addu    t8, t7, $at                
    sw      t8, 0x0038(s0)             # 00000038
    beq     $zero, $zero, lbl_80B33884 
    sw      v1, 0x0018(a0)             # 80120C50
lbl_80B336F4:
    beq     $zero, $zero, lbl_80B33888 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B336FC:
    lw      t9, 0x0028(s1)             # 00000028
    addiu   v0, $sp, 0x0024            # v0 = FFFFFFCC
    sw      t9, 0x003C(s0)             # 0000003C
    lw      t1, 0x0000(v1)             # 00000000
    lw      t0, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v0)             # FFFFFFCC
    lw      t1, 0x0008(v1)             # 00000008
    lw      t3, 0x0000(v0)             # FFFFFFCC
    sw      t0, 0x0004(v0)             # FFFFFFD0
    sw      t1, 0x0008(v0)             # FFFFFFD4
    sw      t3, 0x0018(s0)             # 00000018
    lw      t2, 0x0004(v0)             # FFFFFFD0
    sw      t2, 0x001C(s0)             # 0000001C
    lw      t3, 0x0008(v0)             # FFFFFFD4
    sw      t3, 0x0020(s0)             # 00000020
    lw      t5, 0x0000(v0)             # FFFFFFCC
    sw      t5, 0x000C(s0)             # 0000000C
    lw      t4, 0x0004(v0)             # FFFFFFD0
    sw      t4, 0x0010(s0)             # 00000010
    lw      t5, 0x0008(v0)             # FFFFFFD4
    jal     func_800CDCCC              # Rand.Next() float
    sw      t5, 0x0014(s0)             # 00000014
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    nop
    mul.s   $f6, $f0, $f4              
    trunc.w.s $f8, $f6                   
    mfc1    t9, $f8                    
    nop
    addiu   t0, t9, 0x006F             # t0 = 0000006F
    sh      t0, 0x005C(s0)             # 0000005C
    lh      t1, 0x0024(s1)             # 00000024
    mtc1    t1, $f10                   # $f10 = 0.00
    jal     func_80026D64              
    cvt.s.w $f12, $f10                 
    trunc.w.s $f16, $f0                  
    lh      t6, 0x0024(s1)             # 00000024
    lui     t9, %hi(func_80B33A90)     # t9 = 80B30000
    lui     t0, %hi(func_80B33D34)     # t0 = 80B30000
    mfc1    t5, $f16                   
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, t9, %lo(func_80B33A90) # t9 = 80B33A90
    addiu   t0, t0, %lo(func_80B33D34) # t0 = 80B33D34
    addu    t7, t5, t6                 
    sh      t7, 0x0050(s0)             # 00000050
    sh      t8, 0x0040(s0)             # 00000040
    sw      t9, 0x0028(s0)             # 00000028
    sw      t0, 0x0024(s0)             # 00000024
    lbu     t1, 0x0026(s1)             # 00000026
    lui     a0, 0x8012                 # a0 = 80120000
    lui     v0, %hi(var_80B33F80)      # v0 = 80B30000
    sh      t1, 0x0048(s0)             # 00000048
    lbu     t2, 0x0026(s1)             # 00000026
    addiu   t3, $sp, 0x0034            # t3 = FFFFFFDC
    addiu   a0, a0, 0x0C38             # a0 = 80120C38
    beq     t2, $zero, lbl_80B3383C    
    addiu   v0, v0, %lo(var_80B33F80)  # v0 = 80B33F80
    lw      t5, 0x0000(t3)             # FFFFFFDC
    lui     v0, %hi(var_80B33F80)      # v0 = 80B30000
    addiu   v0, v0, %lo(var_80B33F80)  # v0 = 80B33F80
    sw      t5, 0x0000(s0)             # 00000000
    lw      t4, 0x0004(t3)             # FFFFFFE0
    sll     t6, v0,  4                 
    lui     a0, 0x8012                 # a0 = 80120000
    sw      t4, 0x0004(s0)             # 00000004
    lw      t5, 0x0008(t3)             # FFFFFFE4
    srl     t7, t6, 28                 
    addiu   a0, a0, 0x0C38             # a0 = 80120C38
    sll     t8, t7,  2                 
    addu    t9, a0, t8                 
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t5, 0x0008(s0)             # 00000008
    lw      t0, 0x0000(t9)             # 80B33A90
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t1, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1                 
    addu    t3, t2, $at                
    beq     $zero, $zero, lbl_80B33884 
    sw      t3, 0x0038(s0)             # 00000038
lbl_80B3383C:
    lw      t5, 0x0000(s1)             # 00000000
    sll     t6, v0,  4                 
    srl     t7, t6, 28                 
    sw      t5, 0x0000(s0)             # 00000000
    lw      t4, 0x0004(s1)             # 00000004
    sll     t8, t7,  2                 
    addu    t9, a0, t8                 
    sw      t4, 0x0004(s0)             # 00000004
    lw      t5, 0x0008(s1)             # 00000008
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t5, 0x0008(s0)             # 00000008
    lw      t0, 0x0000(t9)             # 80B33A90
    and     t1, v0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t0, t1                 
    addu    t3, t2, $at                
    sw      t3, 0x0038(s0)             # 00000038
lbl_80B33884:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B33888:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80B3389C:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0018($sp)            
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a1, 0x0054($sp)            
    lh      t6, 0x0050(s1)             # 00000050
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    mtc1    t6, $f4                    # $f4 = 0.00
    lw      s0, 0x0000(a0)             # 00000000
    lui     t0, 0x0001                 # t0 = 00010000
    cvt.s.w $f6, $f4                   
    or      a3, $zero, $zero           # a3 = 00000000
    div.s   $f10, $f6, $f8             
    swc1    $f10, 0x0044($sp)          
    lh      t7, 0x0044(s1)             # 00000044
    sll     t8, t7,  4                 
    addu    t8, t8, t7                 
    sll     t8, t8,  2                 
    addu    t9, a0, t8                 
    addu    t0, t0, t9                 
    lw      t0, 0x17B4(t0)             # 000117B4
    sw      t0, 0x0040($sp)            
    lwc1    $f12, 0x0000(s1)           # 00000000
    lwc1    $f14, 0x0004(s1)           # 00000004
    lw      a2, 0x0008(s1)             # 00000008
    jal     func_800AA7F4              
    sw      a0, 0x0050($sp)            
    lwc1    $f12, 0x0044($sp)          
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      a1, 0x0040($sp)            
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, a1, $at                
    lui     $at, 0x8012                # $at = 80120000
    sw      t1, 0x0C50($at)            # 80120C50
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0018             # t3 = DB060018
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      a1, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0050($sp)            
    jal     func_8007E2C0              
    lw      a0, 0x0000(t4)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lh      t7, 0x0040(s1)             # 00000040
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = FFFFFF00
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    lui     t4, %hi(var_80B33F20)      # t4 = 80B30000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lh      t2, 0x0048(s1)             # 00000048
    addiu   t4, t4, %lo(var_80B33F20)  # t4 = 80B33F20
    lui     $at, 0x0001                # $at = 00010000
    sll     t3, t2,  2                 
    subu    t3, t3, t2                 
    addu    v0, t3, t4                 
    lbu     t6, 0x0002(v0)             # 00000002
    lbu     t9, 0x0000(v0)             # 00000000
    lbu     t3, 0x0001(v0)             # 00000001
    sll     t7, t6,  8                 
    sll     t0, t9, 24                 
    or      t1, t7, t0                 # t1 = 00000008
    sll     t4, t3, 16                 
    or      t5, t1, t4                 # t5 = 80B33F28
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0050($sp)            
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54              
    addu    a0, a0, $at                
    lh      t9, 0x0046(s1)             # 00000046
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f4                   # $f4 = 32768.00
    mtc1    t9, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_80B34400)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B34400)($at) 
    cvt.s.w $f18, $f16                 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f6, $f18, $f4             
    mul.s   $f12, $f6, $f8             
    jal     func_800AAD4C              
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      v1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t1, 0x0038(s1)             # 00000038
    sw      t1, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80B33A90:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0018($sp)            
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0014($sp)            
    sw      a0, 0x0050($sp)            
    sw      a1, 0x0054($sp)            
    lh      t7, 0x0050(s1)             # 00000050
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    mtc1    t7, $f4                    # $f4 = 0.00
    lw      t6, 0x0050($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f6, $f4                   
    lw      s0, 0x0000(t6)             # 00000000
    div.s   $f10, $f6, $f8             
    swc1    $f10, 0x0044($sp)          
    lwc1    $f12, 0x0000(s1)           # 00000000
    lwc1    $f14, 0x0004(s1)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(s1)             # 00000008
    lwc1    $f12, 0x0044($sp)          
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lh      t8, 0x0048(s1)             # 00000048
    lw      t4, 0x0050($sp)            
    beq     t8, $zero, lbl_80B33B70    
    nop
    lw      t9, 0x0050($sp)            
    jal     func_8007E404              
    lw      a0, 0x0000(t9)             # 00000000
    lh      t0, 0x0046(s1)             # 00000046
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f4                   # $f4 = 32768.00
    mtc1    t0, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_80B34404)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B34404)($at) 
    cvt.s.w $f18, $f16                 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f6, $f18, $f4             
    mul.s   $f12, $f6, $f8             
    jal     func_800AA9E0              
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xE200                 # t2 = E2000000
    lui     t3, 0x0C18                 # t3 = 0C180000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    ori     t3, t3, 0x4DD8             # t3 = 0C184DD8
    ori     t2, t2, 0x001C             # t2 = E200001C
    sw      t2, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80B33BB4 
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_80B33B70:
    jal     func_8007E2C0              
    lw      a0, 0x0000(t4)             # 00000000
    lw      a0, 0x0050($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54              
    addu    a0, a0, $at                
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xE200                 # t6 = E2000000
    lui     t7, 0x0C18                 # t7 = 0C180000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    ori     t7, t7, 0x49D8             # t7 = 0C1849D8
    ori     t6, t6, 0x001C             # t6 = E200001C
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_80B33BB4:
    lui     t9, 0xE700                 # t9 = E7000000
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lh      t2, 0x0040(s1)             # 00000040
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t4, t3, $at                # t4 = FFFFFF00
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0x00FF                 # t7 = 00FF0000
    ori     t7, t7, 0x9B00             # t7 = 00FF9B00
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lh      t8, 0x0046(s1)             # 00000046
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t8, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80B34408)     # $at = 80B30000
    lwc1    $f6, %lo(var_80B34408)($at) 
    cvt.s.w $f16, $f10                 
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18            
    mul.s   $f12, $f4, $f6             
    jal     func_800AAD4C              
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AB900              
    sw      v1, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x0038(s1)             # 00000038
    sw      t3, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80B33C9C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0020($sp)            
    lui     $at, %hi(var_80B3440C)     # $at = 80B30000
    lwc1    $f4, %lo(var_80B3440C)($at) 
    lw      a2, 0x0020($sp)            
    mul.s   $f6, $f0, $f4              
    lh      t6, 0x0046(a2)             # 00000046
    lh      v0, 0x0050(a2)             # 00000050
    addiu   t3, v0, 0xFFF6             # t3 = FFFFFFF6
    trunc.w.s $f8, $f6                   
    mfc1    t0, $f8                    
    nop
    addu    t1, t6, t0                 
    addiu   t2, t1, 0x4000             # t2 = 00004000
    blez    v0, lbl_80B33D04           
    sh      t2, 0x0046(a2)             # 00000046
    sh      t3, 0x0050(a2)             # 00000050
    lh      t4, 0x0050(a2)             # 00000050
    bgtzl   t4, lbl_80B33D08           
    lh      v0, 0x0040(a2)             # 00000040
    sh      $zero, 0x0050(a2)          # 00000050
    sh      $zero, 0x005C(a2)          # 0000005C
lbl_80B33D04:
    lh      v0, 0x0040(a2)             # 00000040
lbl_80B33D08:
    blez    v0, lbl_80B33D24           
    addiu   t5, v0, 0xFFF6             # t5 = FFFFFFF6
    sh      t5, 0x0040(a2)             # 00000040
    lh      t7, 0x0040(a2)             # 00000040
    bgtzl   t7, lbl_80B33D28           
    lw      $ra, 0x0014($sp)           
    sh      $zero, 0x0040(a2)          # 00000040
lbl_80B33D24:
    lw      $ra, 0x0014($sp)           
lbl_80B33D28:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B33D34:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0038($sp)            
    sw      a1, 0x003C($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B34410)     # $at = 80B30000
    lwc1    $f4, %lo(var_80B34410)($at) 
    lh      t6, 0x0046(s0)             # 00000046
    lh      v0, 0x0048(s0)             # 00000048
    mul.s   $f6, $f0, $f4              
    addiu   $at, $zero, 0x0001         # $at = 00000001
    trunc.w.s $f8, $f6                   
    mfc1    t0, $f8                    
    nop
    addu    t1, t6, t0                 
    addiu   t2, t1, 0x4000             # t2 = 00004000
    bne     v0, $at, lbl_80B33E20      
    sh      t2, 0x0046(s0)             # 00000046
    lw      t3, 0x0038($sp)            
    lui     $at, %hi(var_80B34414)     # $at = 80B30000
    lwc1    $f12, %lo(var_80B34414)($at) 
    lw      t4, 0x1C44(t3)             # 00001C44
    jal     func_80026D64              
    sw      t4, 0x0030($sp)            
    trunc.w.s $f10, $f0                  
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    mfc1    t7, $f10                   
    jal     func_80026D90              
    sh      t7, 0x0036($sp)            
    lh      t9, 0x0036($sp)            
    lw      t8, 0x0030($sp)            
    lui     $at, 0x4170                # $at = 41700000
    sll     t6, t9,  2                 
    subu    t6, t6, t9                 
    sll     t6, t6,  2                 
    addu    v0, t8, t6                 
    lwc1    $f16, 0x08F8(v0)           # 000008F8
    mtc1    $at, $f12                  # $f12 = 15.00
    add.s   $f18, $f0, $f16            
    swc1    $f18, 0x0000(s0)           # 00000000
    jal     func_80026D90              
    sw      v0, 0x0024($sp)            
    lw      t0, 0x0024($sp)            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    lwc1    $f4, 0x08FC(t0)            # 000008FC
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0004(s0)            # 00000004
    lw      t1, 0x0024($sp)            
    lwc1    $f8, 0x0900(t1)            # 00000900
    add.s   $f10, $f0, $f8             
    swc1    $f10, 0x0008(s0)           # 00000008
    beq     $zero, $zero, lbl_80B33EBC 
    lh      t0, 0x005C(s0)             # 0000005C
lbl_80B33E20:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_80B33EBC      
    lh      t0, 0x005C(s0)             # 0000005C
    lw      t2, 0x003C(s0)             # 0000003C
    lui     $at, %hi(var_80B34418)     # $at = 80B30000
    lwc1    $f12, %lo(var_80B34418)($at) 
    jal     func_80026D64              
    sw      t2, 0x002C($sp)            
    trunc.w.s $f16, $f0                  
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f12                  # $f12 = 15.00
    mfc1    t4, $f16                   
    jal     func_80026D90              
    sh      t4, 0x0036($sp)            
    lh      t7, 0x0036($sp)            
    lw      t5, 0x002C($sp)            
    lui     $at, 0x41A0                # $at = 41A00000
    sll     t9, t7,  2                 
    subu    t9, t9, t7                 
    sll     t9, t9,  2                 
    addu    v0, t5, t9                 
    lwc1    $f18, 0x0208(v0)           # 00000208
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f4, $f0, $f18             
    swc1    $f4, 0x0000(s0)            # 00000000
    jal     func_80026D90              
    sw      v0, 0x0024($sp)            
    lw      t8, 0x0024($sp)            
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f12                  # $f12 = 15.00
    lwc1    $f6, 0x020C(t8)            # 0000020C
    add.s   $f8, $f0, $f6              
    jal     func_80026D90              
    swc1    $f8, 0x0004(s0)            # 00000004
    lw      t6, 0x0024($sp)            
    lwc1    $f10, 0x0210(t6)           # 00000210
    add.s   $f16, $f0, $f10            
    swc1    $f16, 0x0008(s0)           # 00000008
    lh      t0, 0x005C(s0)             # 0000005C
lbl_80B33EBC:
    slti    $at, t0, 0x0064            
    beql    $at, $zero, lbl_80B33EEC   
    lw      $ra, 0x001C($sp)           
    lh      t1, 0x0040(s0)             # 00000040
    addiu   t2, t1, 0xFFCE             # t2 = FFFFFFCE
    sh      t2, 0x0040(s0)             # 00000040
    lh      t3, 0x0040(s0)             # 00000040
    bgezl   t3, lbl_80B33EEC           
    lw      $ra, 0x001C($sp)           
    sh      $zero, 0x0040(s0)          # 00000040
    sh      $zero, 0x005C(s0)          # 0000005C
    lw      $ra, 0x001C($sp)           
lbl_80B33EEC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

.word 0x00000016
.word func_80B33550
var_80B33F08: .word 0x00000000, 0x00000000, 0x00000000
var_80B33F14: .word 0x00000000, 0xC47A0000, 0x00000000
var_80B33F20: .word \
0xA5FF3D00, 0xFFFFFF28, 0x00FFFF00, 0x0000FFFF, \
0x00FFFF96, 0x00000000, 0x00000000, 0x00000000
var_80B33F40: .word \
0xFFF6FFF6, 0x00000000, 0x00000400, 0xFFFFFFFF, \
0x000AFFF6, 0x00000000, 0x04000400, 0xFFFFFFFF, \
0x000A000A, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0xFFF6000A, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80B33F80: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80B33FF8
.word \
0xF5900000, 0x07054150, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00054150, 0xF2000000, 0x0007C07C, \
0xFC3097FF, 0x5FFEFE38, 0xD9F0FBFF, 0x00000000, \
0x01004008
.word var_80B33F40
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80B33FF8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x005B3000, 0x00000000, 0x00000000, \
0x00000000, 0x000B0000, 0x07000000, 0x00000000, \
0x00000000, 0x005BB64B, 0x3A000000, 0x00000000, \
0x00000000, 0x005B0000, 0x00000000, 0x00000000, \
0x00000000, 0x001E00B6, 0xFF5B0000, 0x00000000, \
0x00000000, 0x00251F0C, 0x07000000, 0x0A000000, \
0x00000000, 0x00000000, 0xB6FF0000, 0x00000000, \
0x00000000, 0x00255B00, 0x071F1E14, 0x0A000000, \
0x00000000, 0x00000000, 0x00457350, 0x00000000, \
0x00000000, 0x00295B8C, 0x5B5B0000, 0x00000000, \
0x00000000, 0x00000000, 0x00455C39, 0x0F000000, \
0x00000000, 0x0000A1FF, 0x5B000000, 0x00000000, \
0x00000000, 0x00000000, 0x005B5B00, 0x00000000, \
0x00000000, 0x005B311C, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x5BB60000, 0x00000000, \
0x00000000, 0x5BB63100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0xFFB60000, 0x00000000, \
0x00000046, 0xEA310000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0072B646, 0x00000000, \
0x0000B6A1, 0x81000000, 0x00000000, 0x00000000, \
0x00000000, 0x000C0000, 0x00172E19, 0xBDAB5D41, \
0x366BEAEA, 0x81000000, 0x00000000, 0x00000000, \
0x00000000, 0x06000000, 0x00000074, 0xFFFF0500, \
0x0A2342B6, 0xFF000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x005B0000, \
0x03030100, 0x00FF0700, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00020503, \
0x00000000, 0x00466200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00076200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00002962, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00003EA1, 0x62000000, 0x00000000, \
0x00000000, 0x0000002E, 0xB6350000, 0x00000000, \
0x00000000, 0x000000EA, 0x46000000, 0x00000000, \
0x00000000, 0x00002EFF, 0xFF5A0000, 0x00000000, \
0x00000000, 0x000000FF, 0xFF001700, 0x00000000, \
0x00000000, 0x01015BFF, 0xA1A10000, 0x00000000, \
0x00000000, 0x00030046, 0x97732100, 0x00000000, \
0x00000000, 0x040CB65E, 0x4A5B4600, 0x00000000, \
0x00000003, 0x0C0E8C46, 0x1C035C00, 0x00000000, \
0x00000017, 0x134F5B00, 0x00000046, 0x46000000, \
0x00000000, 0x34D20000, 0x0401005B, 0x00000000, \
0x00000000, 0x5BB60000, 0x00000000, 0x30FCB600, \
0x0000A1E7, 0x00000001, 0x0100141E, 0x5B000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000A1FF, \
0x5B46FF00, 0x00000100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x000000FC, \
0xFFA13100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0xB6000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B34400: .word 0x40490FF9
var_80B34404: .word 0x3F921FF3
var_80B34408: .word 0x40490FF9
var_80B3440C: .word 0x469C4000
var_80B34410: .word 0x469C4000
var_80B34414: .word 0x418F3333
var_80B34418: .word 0x41BF3333, 0x00000000

