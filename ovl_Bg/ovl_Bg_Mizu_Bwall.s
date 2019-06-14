#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B6DF10:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    nop
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f8, 0x0000(a1)            # 00000000
    mul.s   $f6, $f4, $f12             
    nop
    mul.s   $f10, $f8, $f14            
    add.s   $f16, $f6, $f10            
    swc1    $f16, 0x0000(a0)           # 00000000
    lwc1    $f18, 0x0004(a1)           # 00000004
    swc1    $f18, 0x0004(a0)           # 00000004
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f6, 0x0000(a1)            # 00000000
    mul.s   $f8, $f4, $f14             
    nop
    mul.s   $f10, $f6, $f12            
    sub.s   $f16, $f8, $f10            
    swc1    $f16, 0x0008(a0)           # 00000008
    jr      $ra                        
    nop


func_80B6DF64:
    addiu   $sp, $sp, 0xFE40           # $sp = FFFFFE40
    sw      s2, 0x0040($sp)            
    sw      s0, 0x0038($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x005C($sp)           
    sw      s8, 0x0058($sp)            
    sw      s7, 0x0054($sp)            
    sw      s6, 0x0050($sp)            
    sw      s5, 0x004C($sp)            
    sw      s4, 0x0048($sp)            
    sw      s3, 0x0044($sp)            
    sw      s1, 0x003C($sp)            
    sdc1    $f24, 0x0030($sp)          
    sdc1    $f22, 0x0028($sp)          
    sdc1    $f20, 0x0020($sp)          
    lui     a1, %hi(var_80B6F244)      # a1 = 80B70000
    sw      $zero, 0x01B4($sp)         
    addiu   a1, a1, %lo(var_80B6F244)  # a1 = 80B6F244
    jal     func_80063F7C              
    or      a0, s2, $zero              # a0 = 00000000
    lhu     t6, 0x001C(s2)             # 0000001C
    lwc1    $f4, 0x0028(s2)            # 00000028
    lui     t9, %hi(var_80B6F21C)      # t9 = 80B70000
    andi    t7, t6, 0x000F             # t7 = 00000000
    sll     t8, t7,  2                 
    addu    t9, t9, t8                 
    swc1    $f4, 0x028C(s2)            # 0000028C
    lw      t9, %lo(var_80B6F21C)(t9)  
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_80035260              
    sw      t9, 0x02A8(s2)             # 000002A8
    lhu     t0, 0x001C(s2)             # 0000001C
    lui     a0, %hi(var_80B6F230)      # a0 = 80B70000
    addiu   a1, $sp, 0x01B4            # a1 = FFFFFFF4
    andi    t1, t0, 0x000F             # t1 = 00000000
    sll     t2, t1,  2                 
    addu    a0, a0, t2                 
    jal     func_80033EF4              
    lw      a0, %lo(var_80B6F230)(a0)  
    addiu   s1, s0, 0x0810             # s1 = 00000810
    or      a1, s1, $zero              # a1 = 00000810
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x01B4($sp)            
    lhu     v1, 0x001C(s2)             # 0000001C
    sw      v0, 0x013C(s2)             # 0000013C
    andi    t3, v1, 0x000F             # t3 = 00000000
    sltiu   $at, t3, 0x0005            
    beq     $at, $zero, lbl_80B6E7A4   
    sll     t3, t3,  2                 
    lui     $at, %hi(var_80B6F260)     # $at = 80B70000
    addu    $at, $at, t3               
    lw      t3, %lo(var_80B6F260)($at) 
    jr      t3                         
    nop
var_80B6E04C:
    sra     a1, v1,  8                 
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_8002049C              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B6E088    
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000810
    jal     func_800314D8              
    lw      a2, 0x013C(s2)             # 0000013C
    lui     t4, %hi(func_80B6EDAC)     # t4 = 80B70000
    addiu   t4, t4, %lo(func_80B6EDAC) # t4 = 80B6EDAC
    sw      $zero, 0x02A8(s2)          # 000002A8
    beq     $zero, $zero, lbl_80B6E7A4 
    sw      t4, 0x0288(s2)             # 00000288
lbl_80B6E088:
    addiu   s8, s2, 0x0154             # s8 = 00000154
    jal     func_8004B064              
    or      a1, s8, $zero              # a1 = 00000154
    lui     s3, %hi(var_80B6F128)      # s3 = 80B70000
    addiu   s3, s3, %lo(var_80B6F128)  # s3 = 80B6F128
    addiu   t5, s2, 0x0174             # t5 = 00000174
    sw      t5, 0x0010($sp)            
    or      a3, s3, $zero              # a3 = 80B6F128
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s8, $zero              # a1 = 00000154
    jal     func_8004B3EC              
    or      a2, s2, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_80B6E0D0    
    nop
    jal     func_80020EB4              
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B6E7A8 
    lw      $ra, 0x005C($sp)           
lbl_80B6E0D0:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    mov.s   $f22, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s2)             # 000000B6
    lui     $at, 0x4000                # $at = 40000000
    addiu   s5, $sp, 0x0198            # s5 = FFFFFFD8
    mtc1    $at, $f20                  # $f20 = 2.00
    mov.s   $f24, $f0                  
    or      s6, s5, $zero              # s6 = FFFFFFD8
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s7, $zero, 0x0002          # s7 = 00000002
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80B6E104:
    addiu   s0, $sp, 0x0174            # s0 = FFFFFFB4
lbl_80B6E108:
    lw      t7, 0x000C(s3)             # 80B6F134
    sll     t8, s4,  4                 
    subu    t8, t8, s4                 
    sll     t8, t8,  2                 
    addu    t9, t7, t8                 
    addu    v0, t9, s1                 
    lwc1    $f6, 0x0018(v0)            # 00000018
    mfc1    a2, $f22                   
    mfc1    a3, $f24                   
    swc1    $f6, 0x0198($sp)           
    lwc1    $f8, 0x001C(v0)            # 0000001C
    or      a0, s0, $zero              # a0 = FFFFFFB4
    or      a1, s5, $zero              # a1 = FFFFFFD8
    swc1    $f8, 0x019C($sp)           
    lwc1    $f10, 0x0020(v0)           # 00000020
    add.s   $f16, $f10, $f20           
    jal     func_80B6DF10              
    swc1    $f16, 0x01A0($sp)          
    lwc1    $f18, 0x0000(s0)           # FFFFFFB4
    lwc1    $f4, 0x0024(s2)            # 00000024
    lwc1    $f8, 0x0004(s0)            # FFFFFFB8
    addiu   s0, s0, 0x000C             # s0 = FFFFFFC0
    add.s   $f6, $f18, $f4             
    lwc1    $f18, -0x0004(s0)          # FFFFFFBC
    addiu   s1, s1, 0x000C             # s1 = 0000000C
    swc1    $f6, -0x000C(s0)           # FFFFFFB4
    lwc1    $f10, 0x0028(s2)           # 00000028
    add.s   $f16, $f8, $f10            
    swc1    $f16, -0x0008(s0)          # FFFFFFB8
    lwc1    $f4, 0x002C(s2)            # 0000002C
    add.s   $f6, $f18, $f4             
    bne     s0, s6, lbl_80B6E108       
    swc1    $f6, -0x0004(s0)           # FFFFFFBC
    addiu   t0, $sp, 0x018C            # t0 = FFFFFFCC
    sw      t0, 0x0010($sp)            
    or      a0, s8, $zero              # a0 = 00000154
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0174            # a2 = FFFFFFB4
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0180            # a3 = FFFFFFC0
    addiu   s4, s4, 0x0001             # s4 = 00000001
    bnel    s4, s7, lbl_80B6E104       
    or      s1, $zero, $zero           # s1 = 00000000
    lui     t1, %hi(func_80B6EC80)     # t1 = 80B70000
    addiu   t1, t1, %lo(func_80B6EC80) # t1 = 80B6EC80
    beq     $zero, $zero, lbl_80B6E7A4 
    sw      t1, 0x0288(s2)             # 00000288
var_80B6E1C4:
    sra     a1, v1,  8                 
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_8002049C              
    or      a0, s0, $zero              # a0 = FFFFFFC0
    beq     v0, $zero, lbl_80B6E200    
    or      a0, s0, $zero              # a0 = FFFFFFC0
    or      a0, s0, $zero              # a0 = FFFFFFC0
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800314D8              
    lw      a2, 0x013C(s2)             # 0000013C
    lui     t2, %hi(func_80B6EDAC)     # t2 = 80B70000
    addiu   t2, t2, %lo(func_80B6EDAC) # t2 = 80B6EDAC
    sw      $zero, 0x02A8(s2)          # 000002A8
    beq     $zero, $zero, lbl_80B6E7A4 
    sw      t2, 0x0288(s2)             # 00000288
lbl_80B6E200:
    addiu   s8, s2, 0x0154             # s8 = 00000154
    jal     func_8004B064              
    or      a1, s8, $zero              # a1 = 00000154
    lui     s6, %hi(var_80B6F174)      # s6 = 80B70000
    addiu   s6, s6, %lo(var_80B6F174)  # s6 = 80B6F174
    addiu   t3, s2, 0x0174             # t3 = 00000174
    sw      t3, 0x0010($sp)            
    or      a3, s6, $zero              # a3 = 80B6F174
    or      a0, s0, $zero              # a0 = FFFFFFC0
    or      a1, s8, $zero              # a1 = 00000154
    jal     func_8004B3EC              
    or      a2, s2, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_80B6E248    
    nop
    jal     func_80020EB4              
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B6E7A8 
    lw      $ra, 0x005C($sp)           
lbl_80B6E248:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    mov.s   $f22, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s2)             # 000000B6
    lui     $at, 0x4000                # $at = 40000000
    addiu   s4, $sp, 0x0158            # s4 = FFFFFF98
    mtc1    $at, $f20                  # $f20 = 2.00
    mov.s   $f24, $f0                  
    or      s5, s4, $zero              # s5 = FFFFFF98
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s7, $sp, 0x0134            # s7 = FFFFFF74
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80B6E27C:
    addiu   s0, $sp, 0x0134            # s0 = FFFFFF74
lbl_80B6E280:
    lw      t5, 0x000C(s6)             # 80B6F180
    sll     t6, s3,  4                 
    subu    t6, t6, s3                 
    sll     t6, t6,  2                 
    addu    t7, t5, t6                 
    addu    v0, t7, s1                 
    lwc1    $f8, 0x0018(v0)            # 00000018
    mfc1    a2, $f22                   
    mfc1    a3, $f24                   
    swc1    $f8, 0x0158($sp)           
    lwc1    $f10, 0x001C(v0)           # 0000001C
    or      a0, s0, $zero              # a0 = FFFFFF74
    or      a1, s4, $zero              # a1 = FFFFFF98
    swc1    $f10, 0x015C($sp)          
    lwc1    $f16, 0x0020(v0)           # 00000020
    add.s   $f18, $f16, $f20           
    jal     func_80B6DF10              
    swc1    $f18, 0x0160($sp)          
    lwc1    $f4, 0x0000(s0)            # FFFFFF74
    lwc1    $f6, 0x0024(s2)            # 00000024
    lwc1    $f10, 0x0004(s0)           # FFFFFF78
    addiu   s0, s0, 0x000C             # s0 = FFFFFF80
    add.s   $f8, $f4, $f6              
    lwc1    $f4, -0x0004(s0)           # FFFFFF7C
    addiu   s1, s1, 0x000C             # s1 = 0000000C
    swc1    $f8, -0x000C(s0)           # FFFFFF74
    lwc1    $f16, 0x0028(s2)           # 00000028
    add.s   $f18, $f10, $f16           
    swc1    $f18, -0x0008(s0)          # FFFFFF78
    lwc1    $f6, 0x002C(s2)            # 0000002C
    add.s   $f8, $f4, $f6              
    bne     s0, s5, lbl_80B6E280       
    swc1    $f8, -0x0004(s0)           # FFFFFF7C
    addiu   t8, $sp, 0x014C            # t8 = FFFFFF8C
    sw      t8, 0x0010($sp)            
    or      a0, s8, $zero              # a0 = 00000154
    or      a1, s3, $zero              # a1 = 00000000
    or      a2, s7, $zero              # a2 = FFFFFF74
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0140            # a3 = FFFFFF80
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    s3, $at, lbl_80B6E27C      
    or      s1, $zero, $zero           # s1 = 00000000
    lui     t9, %hi(func_80B6EC80)     # t9 = 80B70000
    addiu   t9, t9, %lo(func_80B6EC80) # t9 = 80B6EC80
    beq     $zero, $zero, lbl_80B6E7A4 
    sw      t9, 0x0288(s2)             # 00000288
var_80B6E340:
    sra     a1, v1,  8                 
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_8002049C              
    or      a0, s0, $zero              # a0 = FFFFFF80
    beq     v0, $zero, lbl_80B6E37C    
    or      a0, s0, $zero              # a0 = FFFFFF80
    or      a0, s0, $zero              # a0 = FFFFFF80
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800314D8              
    lw      a2, 0x013C(s2)             # 0000013C
    lui     t0, %hi(func_80B6EDAC)     # t0 = 80B70000
    addiu   t0, t0, %lo(func_80B6EDAC) # t0 = 80B6EDAC
    sw      $zero, 0x02A8(s2)          # 000002A8
    beq     $zero, $zero, lbl_80B6E7A4 
    sw      t0, 0x0288(s2)             # 00000288
lbl_80B6E37C:
    addiu   s8, s2, 0x0154             # s8 = 00000154
    jal     func_8004B064              
    or      a1, s8, $zero              # a1 = 00000154
    lui     a3, %hi(var_80B6F1FC)      # a3 = 80B70000
    addiu   t1, s2, 0x0174             # t1 = 00000174
    sw      t1, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80B6F1FC)  # a3 = 80B6F1FC
    or      a0, s0, $zero              # a0 = FFFFFF80
    or      a1, s8, $zero              # a1 = 00000154
    jal     func_8004B3EC              
    or      a2, s2, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_80B6E3C0    
    nop
    jal     func_80020EB4              
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B6E7A8 
    lw      $ra, 0x005C($sp)           
lbl_80B6E3C0:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s2)             # 000000B6
    addiu   s5, $sp, 0x0118            # s5 = FFFFFF58
    lui     s3, %hi(var_80B6F128)      # s3 = 80B70000
    mov.s   $f22, $f0                  
    addiu   s3, s3, %lo(var_80B6F128)  # s3 = 80B6F128
    or      s6, s5, $zero              # s6 = FFFFFF58
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s7, $zero, 0x0002          # s7 = 00000002
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80B6E3F4:
    addiu   s0, $sp, 0x00F4            # s0 = FFFFFF34
lbl_80B6E3F8:
    lw      t3, 0x000C(s3)             # 80B6F134
    sll     t4, s4,  4                 
    subu    t4, t4, s4                 
    sll     t4, t4,  2                 
    addu    t5, t3, t4                 
    addu    v0, t5, s1                 
    lwc1    $f10, 0x0018(v0)           # 00000018
    mfc1    a2, $f20                   
    mfc1    a3, $f22                   
    swc1    $f10, 0x0118($sp)          
    lwc1    $f16, 0x001C(v0)           # 0000001C
    or      a0, s0, $zero              # a0 = FFFFFF34
    or      a1, s5, $zero              # a1 = FFFFFF58
    swc1    $f16, 0x011C($sp)          
    lwc1    $f18, 0x0020(v0)           # 00000020
    jal     func_80B6DF10              
    swc1    $f18, 0x0120($sp)          
    lwc1    $f4, 0x0000(s0)            # FFFFFF34
    lwc1    $f6, 0x0024(s2)            # 00000024
    lwc1    $f10, 0x0004(s0)           # FFFFFF38
    addiu   s0, s0, 0x000C             # s0 = FFFFFF40
    add.s   $f8, $f4, $f6              
    lwc1    $f4, -0x0004(s0)           # FFFFFF3C
    addiu   s1, s1, 0x000C             # s1 = 0000000C
    swc1    $f8, -0x000C(s0)           # FFFFFF34
    lwc1    $f16, 0x0028(s2)           # 00000028
    add.s   $f18, $f10, $f16           
    swc1    $f18, -0x0008(s0)          # FFFFFF38
    lwc1    $f6, 0x002C(s2)            # 0000002C
    add.s   $f8, $f4, $f6              
    bne     s0, s6, lbl_80B6E3F8       
    swc1    $f8, -0x0004(s0)           # FFFFFF3C
    addiu   t6, $sp, 0x010C            # t6 = FFFFFF4C
    sw      t6, 0x0010($sp)            
    or      a0, s8, $zero              # a0 = 00000154
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x00F4            # a2 = FFFFFF34
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0100            # a3 = FFFFFF40
    addiu   s4, s4, 0x0001             # s4 = 00000001
    bnel    s4, s7, lbl_80B6E3F4       
    or      s1, $zero, $zero           # s1 = 00000000
    lui     t7, %hi(func_80B6EC80)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B6EC80) # t7 = 80B6EC80
    beq     $zero, $zero, lbl_80B6E7A4 
    sw      t7, 0x0288(s2)             # 00000288
var_80B6E4B0:
    sra     a1, v1,  8                 
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_8002049C              
    or      a0, s0, $zero              # a0 = FFFFFF40
    beq     v0, $zero, lbl_80B6E4EC    
    or      a0, s0, $zero              # a0 = FFFFFF40
    or      a0, s0, $zero              # a0 = FFFFFF40
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800314D8              
    lw      a2, 0x013C(s2)             # 0000013C
    lui     t8, %hi(func_80B6EDAC)     # t8 = 80B70000
    addiu   t8, t8, %lo(func_80B6EDAC) # t8 = 80B6EDAC
    sw      $zero, 0x02A8(s2)          # 000002A8
    beq     $zero, $zero, lbl_80B6E7A4 
    sw      t8, 0x0288(s2)             # 00000288
lbl_80B6E4EC:
    addiu   s8, s2, 0x0154             # s8 = 00000154
    jal     func_8004B064              
    or      a1, s8, $zero              # a1 = 00000154
    lui     a3, %hi(var_80B6F20C)      # a3 = 80B70000
    addiu   t9, s2, 0x0174             # t9 = 00000174
    sw      t9, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80B6F20C)  # a3 = 80B6F20C
    or      a0, s0, $zero              # a0 = FFFFFF40
    or      a1, s8, $zero              # a1 = 00000154
    jal     func_8004B3EC              
    or      a2, s2, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_80B6E530    
    nop
    jal     func_80020EB4              
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B6E7A8 
    lw      $ra, 0x005C($sp)           
lbl_80B6E530:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    mov.s   $f22, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s2)             # 000000B6
    lui     $at, 0x4000                # $at = 40000000
    addiu   s5, $sp, 0x00D8            # s5 = FFFFFF18
    lui     s3, %hi(var_80B6F128)      # s3 = 80B70000
    mtc1    $at, $f20                  # $f20 = 2.00
    mov.s   $f24, $f0                  
    addiu   s3, s3, %lo(var_80B6F128)  # s3 = 80B6F128
    or      s6, s5, $zero              # s6 = FFFFFF18
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s7, $zero, 0x0002          # s7 = 00000002
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80B6E56C:
    addiu   s0, $sp, 0x00B4            # s0 = FFFFFEF4
lbl_80B6E570:
    lw      t1, 0x000C(s3)             # 80B6F134
    sll     t2, s4,  4                 
    subu    t2, t2, s4                 
    sll     t2, t2,  2                 
    addu    t3, t1, t2                 
    addu    v0, t3, s1                 
    lwc1    $f10, 0x0018(v0)           # 00000018
    mfc1    a2, $f22                   
    mfc1    a3, $f24                   
    swc1    $f10, 0x00D8($sp)          
    lwc1    $f16, 0x001C(v0)           # 0000001C
    or      a0, s0, $zero              # a0 = FFFFFEF4
    or      a1, s5, $zero              # a1 = FFFFFF18
    swc1    $f16, 0x00DC($sp)          
    lwc1    $f18, 0x0020(v0)           # 00000020
    add.s   $f4, $f18, $f20            
    jal     func_80B6DF10              
    swc1    $f4, 0x00E0($sp)           
    lwc1    $f6, 0x0000(s0)            # FFFFFEF4
    lwc1    $f8, 0x0024(s2)            # 00000024
    lwc1    $f16, 0x0004(s0)           # FFFFFEF8
    addiu   s0, s0, 0x000C             # s0 = FFFFFF00
    add.s   $f10, $f6, $f8             
    lwc1    $f6, -0x0004(s0)           # FFFFFEFC
    addiu   s1, s1, 0x000C             # s1 = 0000000C
    swc1    $f10, -0x000C(s0)          # FFFFFEF4
    lwc1    $f18, 0x0028(s2)           # 00000028
    add.s   $f4, $f16, $f18            
    swc1    $f4, -0x0008(s0)           # FFFFFEF8
    lwc1    $f8, 0x002C(s2)            # 0000002C
    add.s   $f10, $f6, $f8             
    bne     s0, s6, lbl_80B6E570       
    swc1    $f10, -0x0004(s0)          # FFFFFEFC
    addiu   t4, $sp, 0x00CC            # t4 = FFFFFF0C
    sw      t4, 0x0010($sp)            
    or      a0, s8, $zero              # a0 = 00000154
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x00B4            # a2 = FFFFFEF4
    jal     func_80050BD4              
    addiu   a3, $sp, 0x00C0            # a3 = FFFFFF00
    addiu   s4, s4, 0x0001             # s4 = 00000001
    bnel    s4, s7, lbl_80B6E56C       
    or      s1, $zero, $zero           # s1 = 00000000
    lui     t5, %hi(func_80B6EC80)     # t5 = 80B70000
    addiu   t5, t5, %lo(func_80B6EC80) # t5 = 80B6EC80
    beq     $zero, $zero, lbl_80B6E7A4 
    sw      t5, 0x0288(s2)             # 00000288
var_80B6E62C:
    sra     a1, v1,  8                 
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_8002049C              
    or      a0, s0, $zero              # a0 = FFFFFF00
    beq     v0, $zero, lbl_80B6E668    
    or      a0, s0, $zero              # a0 = FFFFFF00
    or      a0, s0, $zero              # a0 = FFFFFF00
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800314D8              
    lw      a2, 0x013C(s2)             # 0000013C
    lui     t6, %hi(func_80B6EDAC)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B6EDAC) # t6 = 80B6EDAC
    sw      $zero, 0x02A8(s2)          # 000002A8
    beq     $zero, $zero, lbl_80B6E7A4 
    sw      t6, 0x0288(s2)             # 00000288
lbl_80B6E668:
    addiu   s8, s2, 0x0154             # s8 = 00000154
    jal     func_8004B064              
    or      a1, s8, $zero              # a1 = 00000154
    lui     a3, %hi(var_80B6F20C)      # a3 = 80B70000
    addiu   t7, s2, 0x0174             # t7 = 00000174
    sw      t7, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80B6F20C)  # a3 = 80B6F20C
    or      a0, s0, $zero              # a0 = FFFFFF00
    or      a1, s8, $zero              # a1 = 00000154
    jal     func_8004B3EC              
    or      a2, s2, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_80B6E6AC    
    nop
    jal     func_80020EB4              
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B6E7A8 
    lw      $ra, 0x005C($sp)           
lbl_80B6E6AC:
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    mov.s   $f22, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s2)             # 000000B6
    lui     $at, 0x4000                # $at = 40000000
    addiu   s5, $sp, 0x0098            # s5 = FFFFFED8
    lui     s3, %hi(var_80B6F128)      # s3 = 80B70000
    mtc1    $at, $f20                  # $f20 = 2.00
    mov.s   $f24, $f0                  
    addiu   s3, s3, %lo(var_80B6F128)  # s3 = 80B6F128
    or      s6, s5, $zero              # s6 = FFFFFED8
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s7, $zero, 0x0002          # s7 = 00000002
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80B6E6E8:
    addiu   s0, $sp, 0x0074            # s0 = FFFFFEB4
lbl_80B6E6EC:
    lw      t9, 0x000C(s3)             # 80B6F134
    sll     t0, s4,  4                 
    subu    t0, t0, s4                 
    sll     t0, t0,  2                 
    addu    t1, t9, t0                 
    addu    v0, t1, s1                 
    lwc1    $f16, 0x0018(v0)           # 00000018
    mfc1    a2, $f22                   
    mfc1    a3, $f24                   
    swc1    $f16, 0x0098($sp)          
    lwc1    $f18, 0x001C(v0)           # 0000001C
    or      a0, s0, $zero              # a0 = FFFFFEB4
    or      a1, s5, $zero              # a1 = FFFFFED8
    swc1    $f18, 0x009C($sp)          
    lwc1    $f4, 0x0020(v0)            # 00000020
    add.s   $f6, $f4, $f20             
    jal     func_80B6DF10              
    swc1    $f6, 0x00A0($sp)           
    lwc1    $f8, 0x0000(s0)            # FFFFFEB4
    lwc1    $f10, 0x0024(s2)           # 00000024
    lwc1    $f18, 0x0004(s0)           # FFFFFEB8
    addiu   s0, s0, 0x000C             # s0 = FFFFFEC0
    add.s   $f16, $f8, $f10            
    lwc1    $f8, -0x0004(s0)           # FFFFFEBC
    addiu   s1, s1, 0x000C             # s1 = 0000000C
    swc1    $f16, -0x000C(s0)          # FFFFFEB4
    lwc1    $f4, 0x0028(s2)            # 00000028
    add.s   $f6, $f18, $f4             
    swc1    $f6, -0x0008(s0)           # FFFFFEB8
    lwc1    $f10, 0x002C(s2)           # 0000002C
    add.s   $f16, $f8, $f10            
    bne     s0, s6, lbl_80B6E6EC       
    swc1    $f16, -0x0004(s0)          # FFFFFEBC
    addiu   t2, $sp, 0x008C            # t2 = FFFFFECC
    sw      t2, 0x0010($sp)            
    or      a0, s8, $zero              # a0 = 00000154
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0074            # a2 = FFFFFEB4
    jal     func_80050BD4              
    addiu   a3, $sp, 0x0080            # a3 = FFFFFEC0
    addiu   s4, s4, 0x0001             # s4 = 00000001
    bnel    s4, s7, lbl_80B6E6E8       
    or      s1, $zero, $zero           # s1 = 00000000
    lui     t3, %hi(func_80B6EC80)     # t3 = 80B70000
    addiu   t3, t3, %lo(func_80B6EC80) # t3 = 80B6EC80
    sw      t3, 0x0288(s2)             # 00000288
lbl_80B6E7A4:
    lw      $ra, 0x005C($sp)           
lbl_80B6E7A8:
    ldc1    $f20, 0x0020($sp)          
    ldc1    $f22, 0x0028($sp)          
    ldc1    $f24, 0x0030($sp)          
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
    addiu   $sp, $sp, 0x01C0           # $sp = 00000000


func_80B6E7E0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(t6)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x001C($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004B148              
    addiu   a1, a1, 0x0154             # a1 = 00000154
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B6E828:
    lui     $at, 0xC170                # $at = C1700000
    mtc1    $at, $f2                   # $f2 = -15.00
    lui     $at, %hi(var_80B6F278)     # $at = 80B70000
    lw      t6, 0x07C0(a1)             # 000007C0
    addiu   v1, $zero, 0x00A0          # v1 = 000000A0
    lw      v0, 0x0028(t6)             # 00000028
    lh      t7, 0x0022(v0)             # 00000022
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f0, $f4                   
    c.lt.s  $f0, $f2                   
    nop
    bc1f    lbl_80B6E87C               
    nop
    lui     $at, 0x42BE                # $at = 42BE0000
    mtc1    $at, $f14                  # $f14 = 95.00
    lui     $at, %hi(var_80B6F274)     # $at = 80B70000
    sw      v0, 0x0290(a0)             # 00000290
    beq     $zero, $zero, lbl_80B6E8DC 
    lwc1    $f12, %lo(var_80B6F274)($at) 
lbl_80B6E87C:
    lwc1    $f12, %lo(var_80B6F278)($at) 
    addiu   v1, $zero, 0x00A0          # v1 = 000000A0
    lui     $at, 0x42BE                # $at = 42BE0000
    c.lt.s  $f0, $f12                  
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    bc1fl   lbl_80B6E8D8               
    mtc1    $at, $f14                  # $f14 = 95.00
    lui     $at, 0x42BE                # $at = 42BE0000
    mtc1    $at, $f14                  # $f14 = 95.00
    sub.s   $f6, $f0, $f2              
    lui     $at, 0x43E6                # $at = 43E60000
    mtc1    $at, $f8                   # $f8 = 460.00
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   v1, $zero, 0x00A0          # v1 = 000000A0
    div.s   $f10, $f6, $f8             
    mul.s   $f16, $f10, $f14           
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    nop
    subu    t0, v0, t9                 
    beq     $zero, $zero, lbl_80B6E8DC 
    sw      t0, 0x0290(a0)             # 00000290
    mtc1    $at, $f14                  # $f14 = 460.00
lbl_80B6E8D8:
    sw      v1, 0x0290(a0)             # 00000290
lbl_80B6E8DC:
    c.lt.s  $f0, $f12                  
    lui     $at, %hi(var_80B6F27C)     # $at = 80B70000
    bc1f    lbl_80B6E8F4               
    nop
    beq     $zero, $zero, lbl_80B6E93C 
    sw      v0, 0x0294(a0)             # 00000294
lbl_80B6E8F4:
    lwc1    $f4, %lo(var_80B6F27C)($at) 
    lui     $at, 0x43A0                # $at = 43A00000
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80B6E93C               
    sw      v1, 0x0294(a0)             # 00000294
    sub.s   $f6, $f0, $f12             
    mtc1    $at, $f8                   # $f8 = 320.00
    nop
    div.s   $f10, $f6, $f8             
    mul.s   $f16, $f10, $f14           
    trunc.w.s $f18, $f16                 
    mfc1    t2, $f18                   
    nop
    subu    t3, v0, t2                 
    beq     $zero, $zero, lbl_80B6E93C 
    sw      t3, 0x0294(a0)             # 00000294
    sw      v1, 0x0294(a0)             # 00000294
lbl_80B6E93C:
    lui     $at, %hi(var_80B6F280)     # $at = 80B70000
    lwc1    $f12, %lo(var_80B6F280)($at) 
    c.lt.s  $f0, $f12                  
    nop
    bc1fl   lbl_80B6E960               
    c.lt.s  $f0, $f2                   
    beq     $zero, $zero, lbl_80B6E99C 
    sw      v0, 0x0298(a0)             # 00000298
    c.lt.s  $f0, $f2                   
lbl_80B6E960:
    lui     $at, 0x444D                # $at = 444D0000
    bc1fl   lbl_80B6E99C               
    sw      v1, 0x0298(a0)             # 00000298
    sub.s   $f4, $f0, $f12             
    mtc1    $at, $f6                   # $f6 = 820.00
    nop
    div.s   $f8, $f4, $f6              
    mul.s   $f10, $f8, $f14            
    trunc.w.s $f16, $f10                 
    mfc1    t5, $f16                   
    nop
    subu    t6, v0, t5                 
    beq     $zero, $zero, lbl_80B6E99C 
    sw      t6, 0x0298(a0)             # 00000298
    sw      v1, 0x0298(a0)             # 00000298
lbl_80B6E99C:
    lw      t7, 0x0298(a0)             # 00000298
    sw      t7, 0x029C(a0)             # 0000029C
    jr      $ra                        
    nop


func_80B6E9AC:
    addiu   $sp, $sp, 0xFE90           # $sp = FFFFFE90
    sw      s6, 0x0078($sp)            
    sw      s2, 0x0068($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x007C($sp)           
    sw      s5, 0x0074($sp)            
    sw      s4, 0x0070($sp)            
    sw      s3, 0x006C($sp)            
    sw      s1, 0x0064($sp)            
    sw      s0, 0x0060($sp)            
    sdc1    $f30, 0x0058($sp)          
    sdc1    $f28, 0x0050($sp)          
    sdc1    $f26, 0x0048($sp)          
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    mov.s   $f28, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s2)             # 000000B6
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f26                  # $f26 = 120.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f24                  # $f24 = 40.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f22                  # $f22 = 80.00
    mtc1    $zero, $f20                # $f20 = 0.00
    mov.s   $f30, $f0                  
    addiu   s0, $sp, 0x0090            # s0 = FFFFFF20
    addiu   s5, $sp, 0x0144            # s5 = FFFFFFD4
    addiu   s4, $zero, 0x0003          # s4 = 00000003
    addiu   s3, $zero, 0x0002          # s3 = 00000002
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    lhu     v0, 0x001C(s2)             # 0000001C
lbl_80B6EA3C:
    andi    v0, v0, 0x000F             # v0 = 00000000
    beq     v0, $zero, lbl_80B6EA68    
    nop
    beq     v0, s1, lbl_80B6EA9C       
    nop
    beq     v0, s3, lbl_80B6EAD8       
    nop
    beq     v0, s4, lbl_80B6EAD8       
    nop
    beq     $zero, $zero, lbl_80B6EAD8 
    nop
lbl_80B6EA68:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f22             
    sub.s   $f6, $f4, $f24             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0000(s0)            # FFFFFF20
    mul.s   $f8, $f0, $f20             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0004(s0)            # FFFFFF24
    mul.s   $f10, $f0, $f22            
    sub.s   $f16, $f10, $f24           
    beq     $zero, $zero, lbl_80B6EB10 
    swc1    $f16, 0x0008(s0)           # FFFFFF28
lbl_80B6EA9C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f18, $f0, $f20            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0000(s0)           # FFFFFF20
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    nop
    mul.s   $f6, $f0, $f4              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0004(s0)            # FFFFFF24
    mul.s   $f8, $f0, $f22             
    sub.s   $f10, $f8, $f24            
    beq     $zero, $zero, lbl_80B6EB10 
    swc1    $f10, 0x0008(s0)           # FFFFFF28
lbl_80B6EAD8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f16, $f0, $f26            
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f18                  # $f18 = 60.00
    nop
    sub.s   $f4, $f16, $f18            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0000(s0)            # FFFFFF20
    mul.s   $f6, $f0, $f26             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0004(s0)            # FFFFFF24
    mul.s   $f8, $f0, $f20             
    swc1    $f8, 0x0008(s0)            # FFFFFF28
lbl_80B6EB10:
    addiu   s0, s0, 0x000C             # s0 = FFFFFF2C
    sltu    $at, s0, s5                
    bnel    $at, $zero, lbl_80B6EA3C   
    lhu     v0, 0x001C(s2)             # 0000001C
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f24                  # $f24 = 240.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f22                  # $f22 = 50.00
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f20                  # $f20 = 120.00
    addiu   s1, s2, 0x0024             # s1 = 00000024
    addiu   s0, $sp, 0x0090            # s0 = FFFFFF20
    addiu   s5, s6, 0x1C24             # s5 = 00001C24
    addiu   s4, $sp, 0x0144            # s4 = FFFFFFD4
    addiu   s3, $sp, 0x0154            # s3 = FFFFFFE4
    lwc1    $f2, 0x0008(s0)            # FFFFFF28
lbl_80B6EB50:
    lwc1    $f0, 0x0000(s0)            # FFFFFF20
    lwc1    $f10, 0x0000(s1)           # 00000024
    mul.s   $f16, $f2, $f28            
    add.s   $f18, $f10, $f16           
    mul.s   $f4, $f0, $f30             
    add.s   $f6, $f18, $f4             
    mul.s   $f4, $f2, $f30             
    swc1    $f6, 0x0154($sp)           
    lwc1    $f10, 0x0004(s1)           # 00000028
    lwc1    $f8, 0x0004(s0)            # FFFFFF24
    add.s   $f16, $f8, $f10            
    mul.s   $f8, $f0, $f28             
    swc1    $f16, 0x0158($sp)          
    lwc1    $f18, 0x0008(s1)           # 0000002C
    add.s   $f6, $f18, $f4             
    sub.s   $f10, $f6, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x015C($sp)          
    mul.s   $f16, $f0, $f20            
    trunc.w.s $f18, $f16                 
    mfc1    s2, $f18                   
    nop
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    addiu   s2, s2, 0x0014             # s2 = 00000014
    sll     s2, s2, 16                 
    jal     func_800CDCCC              # Rand.Next() float
    sra     s2, s2, 16                 
    mul.s   $f4, $f0, $f24             
    mfc1    a2, $f22                   
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFE4
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    sw      s2, 0x0010($sp)            
    sw      $zero, 0x0018($sp)         
    trunc.w.s $f6, $f4                   
    mfc1    t8, $f6                    
    nop
    sll     t9, t8, 16                 
    sra     t0, t9, 16                 
    addiu   t1, t0, 0x0014             # t1 = 00000014
    jal     func_80026308              
    sw      t1, 0x0014($sp)            
    lwc1    $f8, 0x0158($sp)           
    lwc1    $f10, 0x015C($sp)          
    addiu   t2, $zero, 0x000B          # t2 = 0000000B
    sw      t2, 0x0024($sp)            
    or      a0, s5, $zero              # a0 = 00001C24
    or      a1, s6, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0039          # a2 = 00000039
    lw      a3, 0x0154($sp)            
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    swc1    $f8, 0x0010($sp)           
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)          
    addiu   s0, s0, 0x000C             # s0 = FFFFFF2C
    bnel    s0, s4, lbl_80B6EB50       
    lwc1    $f2, 0x0008(s0)            # FFFFFF34
    lw      $ra, 0x007C($sp)           
    ldc1    $f20, 0x0030($sp)          
    ldc1    $f22, 0x0038($sp)          
    ldc1    $f24, 0x0040($sp)          
    ldc1    $f26, 0x0048($sp)          
    ldc1    $f28, 0x0050($sp)          
    ldc1    $f30, 0x0058($sp)          
    lw      s0, 0x0060($sp)            
    lw      s1, 0x0064($sp)            
    lw      s2, 0x0068($sp)            
    lw      s3, 0x006C($sp)            
    lw      s4, 0x0070($sp)            
    lw      s5, 0x0074($sp)            
    lw      s6, 0x0078($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0170           # $sp = 00000000


func_80B6EC80:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B6E828              
    or      a1, s1, $zero              # a1 = 00000000
    lbu     v0, 0x0165(s0)             # 00000165
    lui     $at, 0x4416                # $at = 44160000
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80B6ED40    
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    lhu     a1, 0x001C(s0)             # 0000001C
    sb      t7, 0x0165(s0)             # 00000165
    or      a0, s1, $zero              # a0 = 00000000
    sra     a1, a1,  8                 
    jal     func_800204D0              
    andi    a1, a1, 0x003F             # a1 = 00000000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x02A0(s0)             # 000002A0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    jal     func_800314D8              
    lw      a2, 0x013C(s0)             # 0000013C
    sw      $zero, 0x02A8(s0)          # 000002A8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B6E9AC              
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2810          # a1 = 00002810
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     t0, %hi(func_80B6ED80)     # t0 = 80B70000
    addiu   t0, t0, %lo(func_80B6ED80) # t0 = 80B6ED80
    beq     $zero, $zero, lbl_80B6ED6C 
    sw      t0, 0x0288(s0)             # 00000288
lbl_80B6ED40:
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    c.lt.s  $f4, $f6                   
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    bc1fl   lbl_80B6ED70               
    lw      $ra, 0x0024($sp)           
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0154             # a2 = 00000154
lbl_80B6ED6C:
    lw      $ra, 0x0024($sp)           
lbl_80B6ED70:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80B6ED80:
    sw      a1, 0x0004($sp)            
    lw      v0, 0x02A0(a0)             # 000002A0
    lui     t7, %hi(func_80B6EDAC)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B6EDAC) # t7 = 80B6EDAC
    blez    v0, lbl_80B6EDA0           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    jr      $ra                        
    sw      t6, 0x02A0(a0)             # 000002A0
lbl_80B6EDA0:
    sw      t7, 0x0288(a0)             # 00000288
    jr      $ra                        
    nop


func_80B6EDAC:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B6EDBC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0288(a0)             # 00000288
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B6EDE0:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s3, 0x0050($sp)            
    sw      s2, 0x004C($sp)            
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s1, 0x0048($sp)            
    sw      s0, 0x0044($sp)            
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, s2                 
    lw      a0, 0x0000(s2)             # 00000000
    lw      t6, 0x1DE4(t6)             # 00011DE4
    or      s1, a0, $zero              # s1 = 00000000
    jal     func_8007E298              
    sw      t6, 0x007C($sp)            
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    sw      t4, 0x0028($sp)            
    sw      t3, 0x0024($sp)            
    sw      t2, 0x0018($sp)            
    sw      t1, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    sw      $zero, 0x0034($sp)         
    sw      $zero, 0x0030($sp)         
    sw      $zero, 0x002C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    lw      t5, 0x0290(s3)             # 00000290
    lw      a2, 0x007C($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      s0, 0x0070($sp)            
    sw      t5, 0x0038($sp)            
    jal     func_8007ECA4              
    sw      a2, 0x0058($sp)            
    lw      v1, 0x0070($sp)            
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    sw      t3, 0x0028($sp)            
    sw      t2, 0x0024($sp)            
    sw      t1, 0x0018($sp)            
    sw      $zero, 0x0034($sp)         
    sw      $zero, 0x0030($sp)         
    sw      $zero, 0x002C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    lw      t4, 0x0294(s3)             # 00000294
    lw      a2, 0x0058($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      s0, 0x006C($sp)            
    jal     func_8007ECA4              
    sw      t4, 0x0038($sp)            
    lw      t0, 0x006C($sp)            
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0028             # t6 = DB060028
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    sw      t2, 0x0028($sp)            
    sw      t1, 0x0024($sp)            
    sw      t9, 0x0018($sp)            
    sw      $zero, 0x0034($sp)         
    sw      $zero, 0x0030($sp)         
    sw      $zero, 0x002C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    lw      t3, 0x0298(s3)             # 00000298
    lw      a2, 0x0058($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      s0, 0x0068($sp)            
    jal     func_8007ECA4              
    sw      t3, 0x0038($sp)            
    lw      v1, 0x0068($sp)            
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x002C             # t5 = DB06002C
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    lw      a2, 0x007C($sp)            
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    sw      t1, 0x0028($sp)            
    sw      t9, 0x0024($sp)            
    sw      t8, 0x0018($sp)            
    sw      $zero, 0x0034($sp)         
    sw      $zero, 0x0030($sp)         
    sw      $zero, 0x002C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x001C($sp)         
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    lw      t2, 0x029C(s3)             # 0000029C
    addu    $at, a2, $zero             
    sll     a2, a2,  2                 
    subu    a2, a2, $at                
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      s0, 0x0064($sp)            
    jal     func_8007ECA4              
    sw      t2, 0x0038($sp)            
    lw      t0, 0x0064($sp)            
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    sw      s0, 0x0060($sp)            
    lw      v1, 0x0060($sp)            
    sw      v0, 0x0004(v1)             # 00000004
    lw      t5, 0x02A8(s3)             # 000002A8
    beql    t5, $zero, lbl_80B6F074    
    lw      $ra, 0x0054($sp)           
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lw      t8, 0x02A8(s3)             # 000002A8
    sw      t8, 0x0004(s0)             # 00000004
    lw      $ra, 0x0054($sp)           
lbl_80B6F074:
    lw      s0, 0x0044($sp)            
    lw      s1, 0x0048($sp)            
    lw      s2, 0x004C($sp)            
    lw      s3, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0088           # $sp = 00000000
    nop

.section .data

var_80B6F090: .word 0x01BA0100, 0x00000010, 0x00590000, 0x000002AC
.word func_80B6DF64
.word func_80B6E7E0
.word func_80B6EDBC
.word func_80B6EDE0
var_80B6F0B0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000008, \
0x00000000, 0x00010000, 0xC2200000, 0x00000000, \
0xC2200000, 0xC2200000, 0x00000000, 0x42200000, \
0x42200000, 0x00000000, 0x42200000, 0x00000000, \
0x00000000, 0x00000000, 0x00000008, 0x00000000, \
0x00010000, 0xC2200000, 0x00000000, 0xC2200000, \
0x42200000, 0x00000000, 0x42200000, 0x42200000, \
0x00000000, 0xC2200000
var_80B6F128: .word 0x0A000900, 0x00020000, 0x00000002
.word var_80B6F0B0
var_80B6F138: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000008, \
0x00000000, 0x00010000, 0x00000000, 0x42E80000, \
0x00000000, 0x00000000, 0x00000000, 0x428C0000, \
0x00000000, 0x00000000, 0xC28C0000
var_80B6F174: .word 0x0A000900, 0x00020000, 0x00000001
.word var_80B6F138
var_80B6F184: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000008, \
0x00000000, 0x00010000, 0x00000000, 0x42F00000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x42700000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000008, 0x00000000, \
0x00010000, 0x00000000, 0x42F00000, 0x00000000, \
0x42700000, 0x00000000, 0x00000000, 0x42700000, \
0x42F00000, 0x00000000
var_80B6F1FC: .word 0x0A000900, 0x00020000, 0x00000002
.word var_80B6F184
var_80B6F20C: .word 0x0A000900, 0x00020000, 0x00000002
.word var_80B6F184
var_80B6F21C: .word \
0x06001A30, 0x06002390, 0x06001CD0, 0x06002090, \
0x06001770
var_80B6F230: .word \
0x06001C58, 0x060025A4, 0x06001DE8, 0x06001DE8, \
0x06001DE8
var_80B6F244: .word \
0xB0F805DC, 0xB0FC044C, 0xB0F403E8, 0x48500064, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B6F260: .word var_80B6E04C
.word var_80B6E1C4
.word var_80B6E340
.word var_80B6E4B0
.word var_80B6E62C
var_80B6F274: .word 0x43DE8000
var_80B6F278: .word 0x43DE8000
var_80B6F27C: .word 0x443F4000
var_80B6F280: .word 0xC450C000, 0x00000000, 0x00000000, 0x00000000

