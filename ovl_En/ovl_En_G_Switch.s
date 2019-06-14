#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A706E0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    sh      t9, 0x014C(s0)             # 0000014C
    sra     t6, v0, 12                 
    andi    t7, t6, 0x000F             # t7 = 00000000
    sh      t7, 0x0140(s0)             # 00000140
    lh      v1, 0x0140(s0)             # 00000140
    andi    t8, v0, 0x003F             # t8 = 00000000
    sh      t8, 0x0144(s0)             # 00000144
    beq     v1, $zero, lbl_80A7074C    
    lui     $at, %hi(var_80A71CF0)     # $at = 80A70000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_80A70798      
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_80A70824      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_80A708F4      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A70968 
    lw      $ra, 0x001C($sp)           
lbl_80A7074C:
    sh      $zero, %lo(var_80A71CF0)($at) 
    lh      t0, 0x001C(s0)             # 0000001C
    lh      a1, 0x0144(s0)             # 00000144
    or      a0, s1, $zero              # a0 = 00000000
    sra     t1, t0,  6                 
    sh      t1, 0x0142(s0)             # 00000142
    lh      t2, 0x0142(s0)             # 00000142
    andi    t3, t2, 0x003F             # t3 = 00000000
    jal     func_8002049C              
    sh      t3, 0x0142(s0)             # 00000142
    beq     v0, $zero, lbl_80A7078C    
    lui     t4, %hi(func_80A70BE4)     # t4 = 80A70000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A70968 
    lw      $ra, 0x001C($sp)           
lbl_80A7078C:
    addiu   t4, t4, %lo(func_80A70BE4) # t4 = 00000BE4
    beq     $zero, $zero, lbl_80A70964 
    sw      t4, 0x013C(s0)             # 0000013C
lbl_80A70798:
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sh      t5, 0x0148(s0)             # 00000148
    sh      t6, 0x014C(s0)             # 0000014C
    addiu   a1, s0, 0x016C             # a1 = 0000016C
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80A71CF4)      # a3 = 80A70000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80A71CF4)  # a3 = 80A71CF4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f4                   # $f4 = 700.00
    lui     t7, %hi(func_80A71710)     # t7 = 80A70000
    addiu   t7, t7, %lo(func_80A71710) # t7 = 80A71710
    sw      t7, 0x0134(s0)             # 00000134
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0144(s0)             # 00000144
    jal     func_8002049C              
    swc1    $f4, 0x00BC(s0)            # 000000BC
    beq     v0, $zero, lbl_80A70808    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A70968 
    lw      $ra, 0x001C($sp)           
lbl_80A70808:
    lui     a1, 0x3CF5                 # a1 = 3CF50000
    jal     func_80020F88              
    ori     a1, a1, 0xC28F             # a1 = 3CF5C28F
    lui     t8, %hi(func_80A70CC8)     # t8 = 80A70000
    addiu   t8, t8, %lo(func_80A70CC8) # t8 = 80A70CC8
    beq     $zero, $zero, lbl_80A70964 
    sw      t8, 0x013C(s0)             # 0000013C
lbl_80A70824:
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f6                   # $f6 = -3.00
    lui     $at, %hi(var_80A71D90)     # $at = 80A70000
    swc1    $f6, 0x006C(s0)            # 0000006C
    jal     func_80026D64              
    lwc1    $f12, %lo(var_80A71D90)($at) 
    trunc.w.s $f8, $f0                   
    addiu   a1, s0, 0x016C             # a1 = 0000016C
    or      a0, s1, $zero              # a0 = 00000000
    mfc1    t0, $f8                    
    nop
    sh      t0, 0x0148(s0)             # 00000148
    jal     func_8004AB7C              
    sw      a1, 0x0020($sp)            
    lui     a3, %hi(var_80A71CF4)      # a3 = 80A70000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80A71CF4)  # a3 = 80A71CF4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f0                   # $f0 = 0.25
    lui     $at, %hi(var_80A71D94)     # $at = 80A70000
    lui     t1, 0x0001                 # t1 = 00010000
    swc1    $f0, 0x0050(s0)            # 00000050
    lwc1    $f10, %lo(var_80A71D94)($at) 
    addiu   t2, $zero, 0x012C          # t2 = 0000012C
    lui     $at, 0x0001                # $at = 00010000
    ori     t1, t1, 0xF820             # t1 = 0001F820
    sh      t2, 0x014E(s0)             # 0000014E
    ori     $at, $at, 0x17A4           # $at = 000117A4
    sw      t1, 0x018C(s0)             # 0000018C
    addu    a0, s1, $at                
    lh      a1, 0x014E(s0)             # 0000014E
    swc1    $f0, 0x0058(s0)            # 00000058
    jal     func_80081628              # ObjectIndex
    swc1    $f10, 0x0054(s0)           # 00000054
    sb      v0, 0x0168(s0)             # 00000168
    lb      t3, 0x0168(s0)             # 00000168
    bgez    t3, lbl_80A708D0           
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A708D0:
    lui     t6, %hi(func_80A70B4C)     # t6 = 80A70000
    addiu   t4, $zero, 0x0018          # t4 = 00000018
    addiu   t5, $zero, 0x004A          # t5 = 0000004A
    addiu   t6, t6, %lo(func_80A70B4C) # t6 = 80A70B4C
    sh      t4, 0x01AC(s0)             # 000001AC
    sh      t5, 0x01AE(s0)             # 000001AE
    sh      $zero, 0x01B0(s0)          # 000001B0
    beq     $zero, $zero, lbl_80A70964 
    sw      t6, 0x013C(s0)             # 0000013C
lbl_80A708F4:
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f16                  # $f16 = 700.00
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
    ori     a1, a1, 0xCCCD             # a1 = 3D4CCCCD
    jal     func_80020F88              
    swc1    $f16, 0x00BC(s0)           # 000000BC
    addiu   a1, s0, 0x016C             # a1 = 0000016C
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80A71CF4)      # a3 = 80A70000
    lw      a1, 0x0020($sp)            
    addiu   a3, a3, %lo(var_80A71CF4)  # a3 = 80A71CF4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lui     t7, %hi(func_80A71710)     # t7 = 80A70000
    lui     t1, %hi(func_80A70E94)     # t1 = 80A70000
    addiu   t7, t7, %lo(func_80A71710) # t7 = 80A71710
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    addiu   t1, t1, %lo(func_80A70E94) # t1 = 80A70E94
    sw      t7, 0x0134(s0)             # 00000134
    sh      t8, 0x01AC(s0)             # 000001AC
    sh      t9, 0x01AE(s0)             # 000001AE
    sh      t0, 0x01B0(s0)             # 000001B0
    sw      t1, 0x013C(s0)             # 0000013C
lbl_80A70964:
    lw      $ra, 0x001C($sp)           
lbl_80A70968:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A70978:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x016C             # a1 = 0000016C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A709A4:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s2, 0x0028($sp)            
    lui     t7, %hi(var_80A71D4C)      # t7 = 80A70000
    addiu   t7, t7, %lo(var_80A71D4C)  # t7 = 80A71D4C
    lw      t9, 0x0000(t7)             # 80A71D4C
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFDC
    lw      t8, 0x0004(t7)             # 80A71D50
    sw      t9, 0x0000(t6)             # FFFFFFDC
    lw      t9, 0x0008(t7)             # 80A71D54
    lui     t1, %hi(var_80A71D58)      # t1 = 80A70000
    addiu   t1, t1, %lo(var_80A71D58)  # t1 = 80A71D58
    sw      t8, 0x0004(t6)             # FFFFFFE0
    sw      t9, 0x0008(t6)             # FFFFFFE4
    lw      t3, 0x0000(t1)             # 80A71D58
    addiu   t0, $sp, 0x0038            # t0 = FFFFFFD0
    lw      t2, 0x0004(t1)             # 80A71D5C
    sw      t3, 0x0000(t0)             # FFFFFFD0
    lw      t3, 0x0008(t1)             # 80A71D60
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    sw      t2, 0x0004(t0)             # FFFFFFD4
    jal     func_80026D90              
    sw      t3, 0x0008(t0)             # FFFFFFD8
    lwc1    $f4, 0x0024(s1)            # 00000024
    lui     $at, 0x420C                # $at = 420C0000
    mtc1    $at, $f12                  # $f12 = 35.00
    add.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x005C($sp)           
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f8, 0x0028(s1)            # 00000028
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    add.s   $f16, $f8, $f10            
    add.s   $f18, $f0, $f16            
    jal     func_80026D90              
    swc1    $f18, 0x0060($sp)          
    lwc1    $f4, 0x002C(s1)            # 0000002C
    addiu   s2, $sp, 0x0050            # s2 = FFFFFFE8
    or      a3, s2, $zero              # a3 = FFFFFFE8
    add.s   $f6, $f0, $f4              
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x02BC          # a2 = 000002BC
    swc1    $f6, 0x0064($sp)           
    lh      t4, 0x0192(s1)             # 00000192
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0050($sp)          
    lh      t5, 0x0194(s1)             # 00000194
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0054($sp)          
    lh      t6, 0x0196(s1)             # 00000196
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    jal     func_8001D7CC              
    swc1    $f6, 0x0058($sp)           
    lh      v0, 0x0140(s1)             # 00000140
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $at, lbl_80A70AF0      
    or      a1, s2, $zero              # a1 = FFFFFFE8
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFD0
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFDC
    jal     func_8001E110              
    swc1    $f8, 0x003C($sp)           
    lh      v0, 0x0140(s1)             # 00000140
lbl_80A70AF0:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v0, $at, lbl_80A70B38      
    lw      $ra, 0x002C($sp)           
    lh      t9, 0x014C(s1)             # 0000014C
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $sp, 0x005C            # s2 = FFFFFFF4
    blez    t9, lbl_80A70B34           
    or      a0, s1, $zero              # a0 = 00000000
lbl_80A70B10:
    or      a1, s2, $zero              # a1 = FFFFFFF4
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    jal     func_80A71838              
    lh      a3, 0x0148(s1)             # 00000148
    lh      t0, 0x014C(s1)             # 0000014C
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, s0, t0                
    bnel    $at, $zero, lbl_80A70B10   
    or      a0, s1, $zero              # a0 = 00000000
lbl_80A70B34:
    lw      $ra, 0x002C($sp)           
lbl_80A70B38:
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80A70B4C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x001C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lb      a1, 0x0168(a2)             # 00000168
    sw      a2, 0x0018($sp)            
    jal     func_80081688              
    addu    a0, a0, $at                
    beq     v0, $zero, lbl_80A70BD4    
    lw      a2, 0x0018($sp)            
    lb      t7, 0x0168(a2)             # 00000168
    lw      t6, 0x001C($sp)            
    lui     t0, 0x0001                 # t0 = 00010000
    sll     t8, t7,  4                 
    addu    t8, t8, t7                 
    sll     t8, t8,  2                 
    addu    t9, t6, t8                 
    addu    t0, t0, t9                 
    lw      t0, 0x17B4(t0)             # 000117B4
    lui     $at, 0x8000                # $at = 80000000
    lui     t3, %hi(func_80A71680)     # t3 = 80A70000
    addu    t1, t0, $at                
    lui     $at, 0x8012                # $at = 80120000
    sw      t1, 0x0C50($at)            # 80120C50
    lb      t2, 0x0168(a2)             # 00000168
    lui     t4, %hi(func_80A71234)     # t4 = 80A70000
    addiu   t3, t3, %lo(func_80A71680) # t3 = 80A71680
    addiu   t4, t4, %lo(func_80A71234) # t4 = 80A71234
    sw      t3, 0x0134(a2)             # 00000134
    sw      t4, 0x013C(a2)             # 0000013C
    sb      t2, 0x001E(a2)             # 0000001E
lbl_80A70BD4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A70BE4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lui     v0, %hi(var_80A71CF0)      # v0 = 80A70000
    lh      v0, %lo(var_80A71CF0)(v0)  
    lh      v1, 0x015A(s0)             # 0000015A
    slt     $at, v1, v0                
    beq     $at, $zero, lbl_80A70C4C   
    slti    $at, v0, 0x0005            
    beq     $at, $zero, lbl_80A70C4C   
    lui     a0, 0x8010                 # a0 = 80100000
    lui     a2, %hi(var_80A71D64)      # a2 = 80A70000
    addu    a2, a2, v1                 
    lb      a2, %lo(var_80A71D64)(a2)  
    addiu   a0, a0, 0x4394             # a0 = 80104394
    addiu   a1, $zero, 0x28E8          # a1 = 000028E8
    jal     func_800C5934              
    sw      a3, 0x0024($sp)            
    lui     t6, %hi(var_80A71CF0)      # t6 = 80A70000
    lh      t6, %lo(var_80A71CF0)(t6)  
    lw      a3, 0x0024($sp)            
    lui     v0, %hi(var_80A71CF0)      # v0 = 80A70000
    sh      t6, 0x015A(s0)             # 0000015A
    lh      v0, %lo(var_80A71CF0)(v0)  
lbl_80A70C4C:
    lh      t7, 0x0142(s0)             # 00000142
    slt     $at, v0, t7                
    bnel    $at, $zero, lbl_80A70CB8   
    lw      $ra, 0x001C($sp)           
    lh      t8, 0x00A4(a3)             # 000000A4
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    bne     t8, $at, lbl_80A70C90      
    nop
    lb      a1, 0x0003(s0)             # 00000003
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a1, $at, lbl_80A70C90      
    nop
    jal     func_800206AC              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A70CA4 
    nop
lbl_80A70C90:
    jal     func_800646F0              
    sw      a3, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_800204D0              
    lh      a1, 0x0144(s0)             # 00000144
lbl_80A70CA4:
    jal     func_800646F0              
    addiu   a0, $zero, 0x4803          # a0 = 00004803
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A70CB8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A70CC8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x1C44(a1)             # 00001C44
    lui     $at, 0x4461                # $at = 44610000
    mtc1    $at, $f6                   # $f6 = 900.00
    sw      t6, 0x001C($sp)            
    lwc1    $f4, 0x008C(a2)            # 0000008C
    lh      t7, 0x00B6(a2)             # 000000B6
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    c.lt.s  $f4, $f6                   
    addiu   t8, t7, 0x0800             # t8 = 00000800
    sh      t8, 0x00B6(a2)             # 000000B6
    bc1fl   lbl_80A70DA4               
    lw      $ra, 0x0014($sp)           
    jal     func_800721CC              
    sw      a2, 0x0020($sp)            
    lui     v0, %hi(var_80A71CF0)      # v0 = 80A70000
    addiu   v0, v0, %lo(var_80A71CF0)  # v0 = 80A71CF0
    lh      t9, 0x0000(v0)             # 80A71CF0
    addiu   a0, $zero, 0x4803          # a0 = 00004803
    addiu   t0, t9, 0x0001             # t0 = 00000001
    jal     func_800646F0              
    sh      t0, 0x0000(v0)             # 80A71CF0
    lw      t1, 0x001C($sp)            
    lw      a2, 0x0020($sp)            
    lui     $at, 0x4220                # $at = 42200000
    lw      t3, 0x0024(t1)             # 00000024
    mtc1    $at, $f10                  # $f10 = 40.00
    lui     t4, 0x8012                 # t4 = 80120000
    sw      t3, 0x0024(a2)             # 00000024
    lw      t2, 0x0028(t1)             # 00000028
    lui     t6, %hi(func_80A70DB0)     # t6 = 80A70000
    lui     $at, 0x41A0                # $at = 41A00000
    sw      t2, 0x0028(a2)             # 00000028
    lwc1    $f8, 0x0028(a2)            # 00000028
    lw      t3, 0x002C(t1)             # 0000002C
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    add.s   $f16, $f8, $f10            
    sw      t3, 0x002C(a2)             # 0000002C
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t6, t6, %lo(func_80A70DB0) # t6 = 80A70DB0
    swc1    $f16, 0x0028(a2)           # 00000028
    lw      t4, -0x5A2C(t4)            # 8011A5D4
    bnel    t4, $zero, lbl_80A70D98    
    swc1    $f8, 0x006C(a2)            # 0000006C
    lwc1    $f18, 0x0028(a2)           # 00000028
    mtc1    $at, $f4                   # $f4 = 20.00
    nop
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0028(a2)            # 00000028
    swc1    $f8, 0x006C(a2)            # 0000006C
lbl_80A70D98:
    sh      t5, 0x0146(a2)             # 00000146
    sw      t6, 0x013C(a2)             # 0000013C
    lw      $ra, 0x0014($sp)           
lbl_80A70DA4:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A70DB0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x00B6(a2)             # 000000B6
    lh      t8, 0x0146(a2)             # 00000146
    lw      v0, 0x1C44(a1)             # 00001C44
    addiu   t7, t6, 0x03C0             # t7 = 000003C0
    bne     t8, $zero, lbl_80A70DE4    
    sh      t7, 0x00B6(a2)             # 000000B6
    jal     func_80020EB4              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A70E88 
    lw      $ra, 0x0014($sp)           
lbl_80A70DE4:
    lh      a0, 0x0146(a2)             # 00000146
    addiu   $at, $zero, 0x3A98         # $at = 00003A98
    lw      t0, 0x0024(v0)             # 00000024
    multu   a0, $at                    
    sw      t0, 0x0024(a2)             # 00000024
    lw      t9, 0x0028(v0)             # 00000028
    sw      t9, 0x0028(a2)             # 00000028
    lw      t0, 0x002C(v0)             # 0000002C
    mflo    a0                         
    sll     a0, a0, 16                 
    sw      t0, 0x002C(a2)             # 0000002C
    sw      a2, 0x0020($sp)            
    sw      v0, 0x001C($sp)            
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lw      a2, 0x0020($sp)            
    lui     $at, %hi(var_80A71D98)     # $at = 80A70000
    lwc1    $f8, %lo(var_80A71D98)($at) 
    lh      t1, 0x0146(a2)             # 00000146
    lw      v0, 0x001C($sp)            
    lui     $at, 0x4220                # $at = 42200000
    mtc1    t1, $f4                    # $f4 = 0.00
    lwc1    $f18, 0x0028(v0)           # 00000028
    lui     t2, 0x8012                 # t2 = 80120000
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f4                   # $f4 = 40.00
    lui     $at, 0x41A0                # $at = 41A00000
    mul.s   $f10, $f6, $f8             
    add.s   $f6, $f18, $f4             
    mul.s   $f16, $f0, $f10            
    add.s   $f8, $f16, $f6             
    swc1    $f8, 0x0028(a2)            # 00000028
    lw      t2, -0x5A2C(t2)            # 8011A5D4
    bnel    t2, $zero, lbl_80A70E88    
    lw      $ra, 0x0014($sp)           
    lwc1    $f10, 0x0028(a2)           # 00000028
    mtc1    $at, $f18                  # $f18 = 20.00
    nop
    add.s   $f4, $f10, $f18            
    swc1    $f4, 0x0028(a2)            # 00000028
    lw      $ra, 0x0014($sp)           
lbl_80A70E88:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A70E94:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lh      t6, 0x00B6(s0)             # 000000B6
    lh      t8, 0x0152(s0)             # 00000152
    addiu   t7, t6, 0x03C0             # t7 = 000003C0
    bne     t8, $zero, lbl_80A71220    
    sh      t7, 0x00B6(s0)             # 000000B6
    lh      v0, 0x0156(s0)             # 00000156
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A70EE4      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80A70F64      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80A70FD0      
    nop
    beq     $zero, $zero, lbl_80A71024 
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80A70EE4:
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f4, 0x0060(s0)            # 00000060
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_80A71190               
    lbu     v1, 0x017D(s0)             # 0000017D
    lwc1    $f8, 0x000C(s0)            # 0000000C
    mtc1    $at, $f10                  # $f10 = 50.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    sub.s   $f16, $f8, $f10            
    c.lt.s  $f6, $f16                  
    nop
    bc1fl   lbl_80A71190               
    lbu     v1, 0x017D(s0)             # 0000017D
    lw      v0, 0x0118(s0)             # 00000118
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x006C(s0)            # 0000006C
    lw      t9, 0x0130(v0)             # 00000130
    beq     t9, $zero, lbl_80A70F54    
    nop
    lh      t1, 0x0150(s0)             # 00000150
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sll     t2, t1,  1                 
    addu    t3, v0, t2                 
    sh      t0, 0x0156(t3)             # 00000156
lbl_80A70F54:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A71190 
    lbu     v1, 0x017D(s0)             # 0000017D
lbl_80A70F64:
    jal     func_80021124              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f18, 0x005C(s0)           # 0000005C
    c.lt.s  $f18, $f0                  
    nop
    bc1fl   lbl_80A71190               
    lbu     v1, 0x017D(s0)             # 0000017D
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x015C(s0)            # 0000015C
    c.lt.s  $f4, $f8                   
    nop
    bc1fl   lbl_80A71190               
    lbu     v1, 0x017D(s0)             # 0000017D
    lw      v0, 0x0118(s0)             # 00000118
    lw      t4, 0x0130(v0)             # 00000130
    beq     t4, $zero, lbl_80A70FC0    
    nop
    lh      t6, 0x0150(s0)             # 00000150
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     t7, t6,  1                 
    addu    t8, v0, t7                 
    sh      t5, 0x0156(t8)             # 00000156
lbl_80A70FC0:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A71190 
    lbu     v1, 0x017D(s0)             # 0000017D
lbl_80A70FD0:
    jal     func_80021124              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f10, 0x015C(s0)           # 0000015C
    lwc1    $f6, 0x0024(s0)            # 00000024
    c.lt.s  $f10, $f6                  
    nop
    bc1fl   lbl_80A71190               
    lbu     v1, 0x017D(s0)             # 0000017D
    lw      v0, 0x0118(s0)             # 00000118
    lw      t9, 0x0130(v0)             # 00000130
    beq     t9, $zero, lbl_80A71014    
    nop
    lh      t2, 0x0150(s0)             # 00000150
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sll     t0, t2,  1                 
    addu    t3, v0, t0                 
    sh      t1, 0x0156(t3)             # 00000156
lbl_80A71014:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A71190 
    lbu     v1, 0x017D(s0)             # 0000017D
lbl_80A71024:
    lh      v0, 0x0158(s0)             # 00000158
    beql    v0, $zero, lbl_80A71044    
    lwc1    $f2, 0x015C(s0)            # 0000015C
    beql    v0, $at, lbl_80A710D8      
    lh      t7, 0x0154(s0)             # 00000154
    beq     $zero, $zero, lbl_80A71190 
    lbu     v1, 0x017D(s0)             # 0000017D
    lwc1    $f2, 0x015C(s0)            # 0000015C
lbl_80A71044:
    lwc1    $f16, 0x0024(s0)           # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    sub.s   $f0, $f16, $f2             
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0024             # a0 = 00000024
    abs.s   $f0, $f0                   
    c.lt.s  $f12, $f0                  
    nop
    bc1tl   lbl_80A710A0               
    mfc1    a1, $f2                    
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x0160(s0)            # 00000160
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t6, $zero, 0x003C          # t6 = 0000003C
    sub.s   $f0, $f18, $f4             
    abs.s   $f0, $f0                   
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_80A710CC               
    sh      t4, 0x0158(s0)             # 00000158
    mfc1    a1, $f2                    
lbl_80A710A0:
    jal     func_80064280              
    lui     a3, 0x41F0                 # a3 = 41F00000
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x0160(s0)             # 00000160
    jal     func_80064280              
    lui     a3, 0x41F0                 # a3 = 41F00000
    beq     $zero, $zero, lbl_80A71190 
    lbu     v1, 0x017D(s0)             # 0000017D
    sh      t4, 0x0158(s0)             # 00000158
lbl_80A710CC:
    beq     $zero, $zero, lbl_80A7118C 
    sh      t6, 0x0154(s0)             # 00000154
    lh      t7, 0x0154(s0)             # 00000154
lbl_80A710D8:
    bnel    t7, $zero, lbl_80A71190    
    lbu     v1, 0x017D(s0)             # 0000017D
    lwc1    $f2, 0x0008(s0)            # 00000008
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    sub.s   $f0, $f8, $f2              
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0024             # a0 = 00000024
    abs.s   $f0, $f0                   
    c.lt.s  $f12, $f0                  
    nop
    bc1tl   lbl_80A71138               
    mfc1    a1, $f2                    
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f6, 0x000C(s0)            # 0000000C
    sub.s   $f0, $f10, $f6             
    abs.s   $f0, $f0                   
    c.lt.s  $f12, $f0                  
    nop
    bc1fl   lbl_80A71164               
    lw      v0, 0x0118(s0)             # 00000118
    mfc1    a1, $f2                    
lbl_80A71138:
    jal     func_80064280              
    lui     a3, 0x41F0                 # a3 = 41F00000
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x000C(s0)             # 0000000C
    jal     func_80064280              
    lui     a3, 0x41F0                 # a3 = 41F00000
    beq     $zero, $zero, lbl_80A71190 
    lbu     v1, 0x017D(s0)             # 0000017D
    lw      v0, 0x0118(s0)             # 00000118
lbl_80A71164:
    lw      t5, 0x0130(v0)             # 00000130
    beq     t5, $zero, lbl_80A71184    
    nop
    lh      t9, 0x0150(s0)             # 00000150
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sll     t2, t9,  1                 
    addu    t0, v0, t2                 
    sh      t8, 0x0156(t0)             # 00000156
lbl_80A71184:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A7118C:
    lbu     v1, 0x017D(s0)             # 0000017D
lbl_80A71190:
    lui     t3, 0x8012                 # t3 = 80120000
    andi    t1, v1, 0x0002             # t1 = 00000000
    bnel    t1, $zero, lbl_80A711B4    
    lw      v0, 0x0118(s0)             # 00000118
    lw      t3, -0x4600(t3)            # 8011BA00
    lh      t4, 0x12E4(t3)             # 801212E4
    beql    t4, $zero, lbl_80A71224    
    lw      $ra, 0x001C($sp)           
    lw      v0, 0x0118(s0)             # 00000118
lbl_80A711B4:
    andi    t6, v1, 0xFFFD             # t6 = 00000000
    sb      t6, 0x017D(s0)             # 0000017D
    lw      t7, 0x0130(v0)             # 00000130
    beql    t7, $zero, lbl_80A71224    
    lw      $ra, 0x001C($sp)           
    lh      t5, 0x0146(v0)             # 00000146
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addiu   a0, $zero, 0x28D3          # a0 = 000028D3
    addiu   t9, t5, 0x0001             # t9 = 00000001
    sh      t9, 0x0146(v0)             # 00000146
    lh      t8, 0x0150(s0)             # 00000150
    sll     t0, t8,  1                 
    addu    t1, v0, t0                 
    jal     func_800646F0              
    sh      t2, 0x0156(t1)             # 00000156
    jal     func_800646F0              
    addiu   a0, $zero, 0x4803          # a0 = 00004803
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A709A4              
    lw      a1, 0x0024($sp)            
    lui     t6, %hi(func_80A7151C)     # t6 = 80A70000
    addiu   t3, $zero, 0x0032          # t3 = 00000032
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t6, t6, %lo(func_80A7151C) # t6 = 80A7151C
    sh      t3, 0x0146(s0)             # 00000146
    sh      t4, 0x014A(s0)             # 0000014A
    sw      t6, 0x013C(s0)             # 0000013C
lbl_80A71220:
    lw      $ra, 0x001C($sp)           
lbl_80A71224:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80A71234:
    addiu   $sp, $sp, 0xFF18           # $sp = FFFFFF18
    sw      s8, 0x0098($sp)            
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x009C($sp)           
    sw      s7, 0x0094($sp)            
    sw      s6, 0x0090($sp)            
    sw      s5, 0x008C($sp)            
    sw      s4, 0x0088($sp)            
    sw      s3, 0x0084($sp)            
    sw      s2, 0x0080($sp)            
    sw      s1, 0x007C($sp)            
    sw      s0, 0x0078($sp)            
    sdc1    $f30, 0x0070($sp)          
    sdc1    $f28, 0x0068($sp)          
    sdc1    $f26, 0x0060($sp)          
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x00B6(a2)             # 000000B6
    lbu     v0, 0x017D(a2)             # 0000017D
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   t7, t6, 0x03C0             # t7 = 000003C0
    andi    t8, v0, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_80A714D4    
    sh      t7, 0x00B6(a2)             # 000000B6
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f30                  # $f30 = 5.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f28                  # $f28 = 0.50
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f26                  # $f26 = 10.00
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    lui     $at, 0x4100                # $at = 41000000
    sb      t9, 0x017D(a2)             # 0000017D
    lui     s6, 0x0600                 # s6 = 06000000
    mtc1    $at, $f24                  # $f24 = 8.00
    addiu   s6, s6, 0x1960             # s6 = 06001960
    sw      a2, 0x00E8($sp)            
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s1, a2, 0x0024             # s1 = 00000024
    addiu   s7, $zero, 0x001E          # s7 = 0000001E
    addiu   s5, $sp, 0x00C4            # s5 = FFFFFFDC
    addiu   s4, $sp, 0x00D0            # s4 = FFFFFFE8
lbl_80A712E4:
    sll     a0, s2, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    sll     a0, s2, 16                 
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    mul.s   $f4, $f20, $f24            
    mov.s   $f22, $f0                  
    mov.s   $f12, $f30                 
    jal     func_80026D90              
    swc1    $f4, 0x00D0($sp)           
    mul.s   $f8, $f22, $f24            
    lwc1    $f10, 0x00D0($sp)          
    add.s   $f6, $f0, $f26             
    mul.s   $f16, $f10, $f28           
    swc1    $f6, 0x00D4($sp)           
    swc1    $f8, 0x00D8($sp)           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00C4($sp)          
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f18                  # $f18 = 15.00
    lwc1    $f8, 0x00D8($sp)           
    lwc1    $f16, 0x00D0($sp)          
    mul.s   $f4, $f0, $f18             
    add.s   $f6, $f4, $f26             
    mul.s   $f10, $f8, $f28            
    swc1    $f6, 0x00C8($sp)           
    lwc1    $f6, 0x00D4($sp)           
    swc1    $f10, 0x00CC($sp)          
    lwc1    $f18, 0x0000(s1)           # 00000024
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x00D0($sp)           
    lwc1    $f10, 0x0004(s1)           # 00000028
    add.s   $f16, $f6, $f10            
    swc1    $f16, 0x00D4($sp)          
    lwc1    $f18, 0x0008(s1)           # 0000002C
    add.s   $f4, $f8, $f18             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00D8($sp)           
    lui     $at, %hi(var_80A71D9C)     # $at = 80A70000
    lwc1    $f6, %lo(var_80A71D9C)($at) 
    lui     $at, %hi(var_80A71DA0)     # $at = 80A70000
    c.lt.s  $f0, $f6                   
    nop
    bc1f    lbl_80A713A8               
    nop
    beq     $zero, $zero, lbl_80A713C8 
    addiu   s0, $zero, 0x0060          # s0 = 00000060
lbl_80A713A8:
    lwc1    $f10, %lo(var_80A71DA0)($at) 
    addiu   s0, $zero, 0x0020          # s0 = 00000020
    c.lt.s  $f0, $f10                  
    nop
    bc1f    lbl_80A713C8               
    nop
    beq     $zero, $zero, lbl_80A713C8 
    addiu   s0, $zero, 0x0040          # s0 = 00000040
lbl_80A713C8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f16                  # $f16 = 130.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    mul.s   $f8, $f0, $f16             
    addiu   t0, $zero, 0xFF10          # t0 = FFFFFF10
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x003C          # t6 = 0000003C
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    add.s   $f4, $f8, $f18             
    addiu   t8, $zero, 0x012C          # t8 = 0000012C
    sw      t8, 0x0038($sp)            
    sw      t7, 0x0034($sp)            
    trunc.w.s $f6, $f4                   
    sw      t6, 0x0030($sp)            
    sw      t5, 0x002C($sp)            
    sw      t2, 0x001C($sp)            
    mfc1    t4, $f6                    
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0010($sp)            
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE8
    or      a2, s5, $zero              # a2 = FFFFFFDC
    or      a3, s1, $zero              # a3 = 00000024
    sw      s0, 0x0014($sp)            
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0028($sp)         
    sw      s6, 0x003C($sp)            
    jal     func_8001D998              
    sw      t4, 0x0024($sp)            
    addiu   s2, s2, 0x4E20             # s2 = 00004E20
    sll     s2, s2, 16                 
    addiu   s3, s3, 0x0001             # s3 = 00000001
    bne     s3, s7, lbl_80A712E4       
    sra     s2, s2, 16                 
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000024
    lui     a2, 0x41F0                 # a2 = 41F00000
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    jal     func_80026308              
    sw      $zero, 0x0018($sp)         
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8              
    addiu   a3, $zero, 0x2887          # a3 = 00002887
    lw      a0, 0x00E8($sp)            
    jal     func_80A709A4              
    or      a1, s8, $zero              # a1 = 00000000
    lw      t2, 0x00E8($sp)            
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sh      t1, 0x0146(t2)             # 00000146
    lw      t4, 0x00E8($sp)            
    lui     t5, %hi(func_80A7151C)     # t5 = 80A70000
    addiu   t5, t5, %lo(func_80A7151C) # t5 = 80A7151C
    sh      t3, 0x014A(t4)             # 0000014A
    lw      t6, 0x00E8($sp)            
    sw      t5, 0x013C(t6)             # 0000013C
lbl_80A714D4:
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
    addiu   $sp, $sp, 0x00E8           # $sp = 00000000


func_80A7151C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      t6, 0x0146(a0)             # 00000146
    bnel    t6, $zero, lbl_80A71540    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    nop
    lw      $ra, 0x0014($sp)           
lbl_80A71540:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7154C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x003C($sp)            
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)            
    jalr    $ra, t9                    
    nop
    lh      v0, 0x0146(s0)             # 00000146
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80A71588    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0146(s0)             # 00000146
lbl_80A71588:
    lh      v0, 0x0154(s0)             # 00000154
    beq     v0, $zero, lbl_80A71598    
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0154(s0)             # 00000154
lbl_80A71598:
    lh      v0, 0x0152(s0)             # 00000152
    beq     v0, $zero, lbl_80A715A8    
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0152(s0)             # 00000152
lbl_80A715A8:
    lh      v0, 0x0140(s0)             # 00000140
    beql    v0, $zero, lbl_80A71600    
    lw      t1, 0x0134(s0)             # 00000134
    beq     v0, $at, lbl_80A715FC      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_80A71600      
    lw      t1, 0x0134(s0)             # 00000134
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    addiu   t0, $zero, 0x001C          # t0 = 0000001C
    mfc1    a2, $f0                    
    mfc1    a3, $f0                    
    sw      t0, 0x0014($sp)            
    lw      a0, 0x003C($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C              
    swc1    $f4, 0x0010($sp)           
lbl_80A715FC:
    lw      t1, 0x0134(s0)             # 00000134
lbl_80A71600:
    beql    t1, $zero, lbl_80A71670    
    lw      $ra, 0x0024($sp)           
    lh      t2, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t2, $at, lbl_80A71628      
    lw      v0, 0x013C(s0)             # 0000013C
    jal     func_80A7194C              
    lw      a1, 0x003C($sp)            
    lw      v0, 0x013C(s0)             # 0000013C
lbl_80A71628:
    lui     t3, %hi(func_80A7151C)     # t3 = 80A70000
    addiu   t3, t3, %lo(func_80A7151C) # t3 = 80A7151C
    beq     t3, v0, lbl_80A7166C       
    lui     t4, %hi(func_80A70CC8)     # t4 = 80A70000
    addiu   t4, t4, %lo(func_80A70CC8) # t4 = 80A70CC8
    beq     t4, v0, lbl_80A7166C       
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, s0, 0x016C             # a2 = 0000016C
    or      a1, a2, $zero              # a1 = 0000016C
    jal     func_80050B00              
    sw      a2, 0x002C($sp)            
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at                
lbl_80A7166C:
    lw      $ra, 0x0024($sp)           
lbl_80A71670:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A71680:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x014A(a0)             # 0000014A
    bnel    t6, $zero, lbl_80A71704    
    lw      $ra, 0x0014($sp)           
    lw      a0, 0x0000(a2)             # 00000000
    sw      a2, 0x0034($sp)            
    jal     func_8007E298              
    sw      a0, 0x0024($sp)            
    lw      a1, 0x0024($sp)            
    lw      a2, 0x0034($sp)            
    lw      v1, 0x02C0(a1)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(a2)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      a3, 0x001C($sp)            
    lw      a1, 0x0024($sp)            
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a1)             # 000002C0
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t1, t1, 0x17C0             # t1 = 060017C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a1)             # 000002C0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)           
lbl_80A71704:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80A71710:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    sw      a1, 0x003C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x014A(a3)             # 0000014A
    lw      t7, 0x003C($sp)            
    bnel    t6, $zero, lbl_80A7180C    
    lh      t8, 0x0140(a3)             # 00000140
    lw      a0, 0x0000(t7)             # 00000000
    sw      a3, 0x0038($sp)            
    jal     func_8007E298              
    or      s0, a0, $zero              # s0 = 00000000
    lw      a0, 0x0038($sp)            
    lw      a1, 0x003C($sp)            
    jal     func_80022438              
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t1, 0x003C($sp)            
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0024($sp)            
    lw      t0, 0x0024($sp)            
    lw      a3, 0x0038($sp)            
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lh      t4, 0x0148(a3)             # 00000148
    lui     a2, %hi(var_80A71D6C)      # a2 = 80A70000
    lui     t1, 0x8012                 # t1 = 80120000
    sll     t5, t4,  2                 
    addu    a2, a2, t5                 
    lw      a2, %lo(var_80A71D6C)(a2)  
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, a2,  4                 
    srl     t8, t7, 28                 
    sll     t9, t8,  2                 
    addu    t1, t1, t9                 
    lw      t1, 0x0C38(t1)             # 80120C38
    and     t6, a2, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t6, t1                 
    addu    t3, t2, $at                
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0x0404                 # t7 = 04040000
    addiu   t7, t7, 0x5150             # t7 = 04045150
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      t5, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lh      t8, 0x0140(a3)             # 00000140
lbl_80A7180C:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, a3, $zero              # a0 = 00000000
    bnel    t8, $at, lbl_80A71828      
    lw      $ra, 0x001C($sp)           
    jal     func_80A71B0C              
    lw      a1, 0x003C($sp)            
    lw      $ra, 0x001C($sp)           
lbl_80A71828:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A71838:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      a2, 0x0050($sp)            
    sw      a3, 0x0054($sp)            
    sll     a3, a3, 16                 
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    sra     a3, a3, 16                 
    sw      $ra, 0x001C($sp)           
    sw      s0, 0x0018($sp)            
    lh      v1, 0x014C(a0)             # 0000014C
    addiu   s0, a0, 0x01B8             # s0 = 000001B8
    or      v0, $zero, $zero           # v0 = 00000000
    blezl   v1, lbl_80A7193C           
    lw      $ra, 0x001C($sp)           
lbl_80A71870:
    lbu     t6, 0x0012(s0)             # 000001CA
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16                 
    bne     t6, $zero, lbl_80A7192C    
    sra     v0, v0, 16                 
    lw      t8, 0x0000(a1)             # 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x447A                # $at = 447A0000
    sw      t8, 0x0000(s0)             # 000001B8
    lw      t7, 0x0004(a1)             # 00000004
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    mtc1    $at, $f12                  # $f12 = 1000.00
    sw      t7, 0x0004(s0)             # 000001BC
    lw      t8, 0x0008(a1)             # 00000008
    sh      a2, 0x000C(s0)             # 000001C4
    sh      a3, 0x0010(s0)             # 000001C8
    sh      t9, 0x000E(s0)             # 000001C6
    swc1    $f0, 0x0020(s0)            # 000001D8
    swc1    $f0, 0x0024(s0)            # 000001DC
    swc1    $f0, 0x0028(s0)            # 000001E0
    jal     func_80026D90              
    sw      t8, 0x0008(s0)             # 000001C0
    lui     $at, %hi(var_80A71DA4)     # $at = 80A70000
    lwc1    $f4, %lo(var_80A71DA4)($at) 
    lui     $at, %hi(var_80A71DA8)     # $at = 80A70000
    lwc1    $f12, %lo(var_80A71DA8)($at) 
    sub.s   $f6, $f0, $f4              
    jal     func_80026D90              
    swc1    $f6, 0x0030($sp)           
    mov.s   $f12, $f0                  
    jal     func_800AAB94              
    or      a1, $zero, $zero           # a1 = 00000000
    lwc1    $f12, 0x0030($sp)          
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFEC
    addiu   a1, s0, 0x0014             # a1 = 000001CC
    swc1    $f0, 0x0038($sp)           
    swc1    $f0, 0x0034($sp)           
    jal     func_800AB958              
    swc1    $f8, 0x003C($sp)           
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beq     $zero, $zero, lbl_80A71938 
    sb      t0, 0x0012(s0)             # 000001CA
lbl_80A7192C:
    slt     $at, v0, v1                
    bne     $at, $zero, lbl_80A71870   
    addiu   s0, s0, 0x002C             # s0 = 000001E4
lbl_80A71938:
    lw      $ra, 0x001C($sp)           
lbl_80A7193C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra                        
    nop


func_80A7194C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s1, 0x004C($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s2, 0x0050($sp)            
    sw      s0, 0x0048($sp)            
    sdc1    $f30, 0x0040($sp)          
    sdc1    $f28, 0x0038($sp)          
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x005C($sp)            
    lh      v1, 0x014C(s1)             # 0000014C
    addiu   s0, s1, 0x01B8             # s0 = 000001B8
    or      s2, $zero, $zero           # s2 = 00000000
    blez    v1, lbl_80A71ADC           
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f30                  # $f30 = 30.00
    lui     $at, %hi(var_80A71DAC)     # $at = 80A70000
    lwc1    $f28, %lo(var_80A71DAC)($at) 
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f26                  # $f26 = 15.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f24                  # $f24 = 10.00
    nop
lbl_80A719B4:
    lbu     t6, 0x0012(s0)             # 000001CA
    beql    t6, $zero, lbl_80A71AC8    
    addiu   s2, s2, 0x0001             # s2 = 00000001
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f6, $f0, $f24             
    lwc1    $f4, 0x0020(s0)            # 000001D8
    add.s   $f8, $f6, $f26             
    add.s   $f10, $f4, $f8             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0020(s0)           # 000001D8
    mul.s   $f18, $f0, $f24            
    lwc1    $f16, 0x0024(s0)           # 000001DC
    add.s   $f6, $f18, $f26            
    add.s   $f4, $f16, $f6             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0024(s0)            # 000001DC
    mul.s   $f10, $f0, $f24            
    lwc1    $f8, 0x0028(s0)            # 000001E0
    lwc1    $f6, 0x0000(s0)            # 000001B8
    lwc1    $f4, 0x0014(s0)            # 000001CC
    mfc1    a2, $f28                   
    mfc1    a3, $f30                   
    add.s   $f2, $f6, $f4              
    or      a0, s0, $zero              # a0 = 000001B8
    add.s   $f18, $f10, $f26           
    lwc1    $f10, 0x0004(s0)           # 000001BC
    mfc1    a1, $f2                    
    add.s   $f16, $f8, $f18            
    lwc1    $f8, 0x0018(s0)            # 000001D0
    lwc1    $f18, 0x0008(s0)           # 000001C0
    swc1    $f16, 0x0028(s0)           # 000001E0
    lwc1    $f16, 0x001C(s0)           # 000001D4
    add.s   $f20, $f10, $f8            
    jal     func_80064280              
    add.s   $f22, $f18, $f16           
    mfc1    a1, $f20                   
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    addiu   a0, s0, 0x0004             # a0 = 000001BC
    jal     func_80064280              
    lui     a3, 0x437A                 # a3 = 437A0000
    mfc1    a1, $f22                   
    mfc1    a2, $f28                   
    mfc1    a3, $f30                   
    jal     func_80064280              
    addiu   a0, s0, 0x0008             # a0 = 000001C0
    lui     a2, 0x3F66                 # a2 = 3F660000
    ori     a2, a2, 0x6666             # a2 = 3F666666
    addiu   a0, s0, 0x0018             # a0 = 000001D0
    lui     a1, 0xC1A0                 # a1 = C1A00000
    jal     func_80064280              
    lui     a3, 0x3F80                 # a3 = 3F800000
    lh      v0, 0x000E(s0)             # 000001C6
    beq     v0, $zero, lbl_80A71AA0    
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x000E(s0)             # 000001C6
    beq     $zero, $zero, lbl_80A71AC4 
    lh      v1, 0x014C(s1)             # 0000014C
lbl_80A71AA0:
    lh      v0, 0x000C(s0)             # 000001C4
    slti    $at, v0, 0x000A            
    beq     $at, $zero, lbl_80A71ABC   
    addiu   t8, v0, 0xFFFE             # t8 = FFFFFFFE
    sb      $zero, 0x0012(s0)          # 000001CA
    beq     $zero, $zero, lbl_80A71AC4 
    lh      v1, 0x014C(s1)             # 0000014C
lbl_80A71ABC:
    sh      t8, 0x000C(s0)             # 000001C4
    lh      v1, 0x014C(s1)             # 0000014C
lbl_80A71AC4:
    addiu   s2, s2, 0x0001             # s2 = 00000002
lbl_80A71AC8:
    sll     s2, s2, 16                 
    sra     s2, s2, 16                 
    slt     $at, s2, v1                
    bne     $at, $zero, lbl_80A719B4   
    addiu   s0, s0, 0x002C             # s0 = 000001E4
lbl_80A71ADC:
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    ldc1    $f28, 0x0038($sp)          
    ldc1    $f30, 0x0040($sp)          
    lw      s0, 0x0048($sp)            
    lw      s1, 0x004C($sp)            
    lw      s2, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80A71B0C:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x004C($sp)           
    sw      s8, 0x0048($sp)            
    sw      s7, 0x0044($sp)            
    sw      s6, 0x0040($sp)            
    sw      s5, 0x003C($sp)            
    sw      s4, 0x0038($sp)            
    sw      s3, 0x0034($sp)            
    sw      s2, 0x0030($sp)            
    sw      s1, 0x002C($sp)            
    sw      s0, 0x0028($sp)            
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a0, 0x0050($sp)            
    sw      a1, 0x0054($sp)            
    lw      t6, 0x0054($sp)            
    lw      s1, 0x0050($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    addiu   s1, s1, 0x01B8             # s1 = 000001B8
    or      s2, a0, $zero              # s2 = 00000000
    jal     func_8007E298              
    nop
    lw      t7, 0x0050($sp)            
    lui     s8, %hi(var_80A71D6C)      # s8 = 80A70000
    addiu   s8, s8, %lo(var_80A71D6C)  # s8 = 80A71D6C
    lh      a2, 0x014C(t7)             # 0000014C
    or      s4, $zero, $zero           # s4 = 00000000
    lui     $at, %hi(var_80A71DB0)     # $at = 80A70000
    blez    a2, lbl_80A71CB0           
    lui     s7, 0xDB06                 # s7 = DB060000
    lui     s6, 0xDA38                 # s6 = DA380000
    ori     s6, s6, 0x0003             # s6 = DA380003
    lwc1    $f22, %lo(var_80A71DB0)($at) 
    ori     s7, s7, 0x0020             # s7 = DB060020
lbl_80A71B94:
    lbu     t8, 0x0012(s1)             # 000001CA
    beql    t8, $zero, lbl_80A71C9C    
    addiu   s4, s4, 0x0001             # s4 = 00000001
    lh      t9, 0x000C(s1)             # 000001C4
    lui     s5, 0x0404                 # s5 = 04040000
    addiu   s5, s5, 0x5150             # s5 = 04045150
    mtc1    t9, $f4                    # $f4 = 0.00
    lwc1    $f12, 0x0000(s1)           # 000001B8
    lwc1    $f14, 0x0004(s1)           # 000001BC
    cvt.s.w $f6, $f4                   
    lw      a2, 0x0008(s1)             # 000001C0
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA7F4              
    div.s   $f20, $f6, $f22            
    mfc1    a2, $f20                   
    mov.s   $f12, $f20                 
    mov.s   $f14, $f20                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0020(s1)           # 000001D8
    jal     func_800AA9E0              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0024(s1)           # 000001DC
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0028(s1)           # 000001E0
    jal     func_800AAD4C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s3, 0x02C0(s2)             # 000002C0
    addiu   t0, s3, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s2)             # 000002C0
    sw      s6, 0x0000(s3)             # 00000000
    lw      t1, 0x0054($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t1)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t0, 0x8012                 # t0 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s2)             # 000002C0
    sw      s7, 0x0000(s0)             # 00000000
    lh      t3, 0x0010(s1)             # 000001C8
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t3,  2                 
    addu    t5, s8, t4                 
    lw      a0, 0x0000(t5)             # 00000000
    sll     t7, a0,  4                 
    srl     t8, t7, 28                 
    sll     t9, t8,  2                 
    addu    t0, t0, t9                 
    lw      t0, 0x0C38(t0)             # 80120C38
    and     t6, a0, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t6, t0                 
    addu    t2, t1, $at                
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s2)             # 000002C0
    sw      s5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      t5, 0x0050($sp)            
    lh      a2, 0x014C(t5)             # 0000014C
    addiu   s4, s4, 0x0001             # s4 = 00000002
lbl_80A71C9C:
    sll     s4, s4, 16                 
    sra     s4, s4, 16                 
    slt     $at, s4, a2                
    bne     $at, $zero, lbl_80A71B94   
    addiu   s1, s1, 0x002C             # s1 = 000001E4
lbl_80A71CB0:
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    lw      s3, 0x0034($sp)            
    lw      s4, 0x0038($sp)            
    lw      s5, 0x003C($sp)            
    lw      s6, 0x0040($sp)            
    lw      s7, 0x0044($sp)            
    lw      s8, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    nop
    nop

.section .data

var_80A71CF0: .word 0x00000000
var_80A71CF4: .word \
0x0A000900, 0x20010000, 0x02000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, \
0x000D0028, 0x00000000, 0x00000000, 0x00000001, \
0x00020013, 0x00140000
var_80A71D2C: .word 0x01170600, 0x00000030, 0x00010000, 0x000012E8
.word func_80A706E0
.word func_80A70978
.word func_80A7154C
.word 0x00000000
var_80A71D4C: .word 0x00000000, 0x00000000, 0x00000000
var_80A71D58: .word 0x00000000, 0x00000000, 0x00000000
var_80A71D64: .word 0x00020405, 0x07000000
var_80A71D6C: .word \
0x04044E50, 0x04044E70, 0x04044E90, 0x04044ED0, \
0x04044EB0, 0x04044EF0, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_80A71D90: .word 0x403F5C29
var_80A71D94: .word 0x3EE66666
var_80A71D98: .word 0x3E99999A
var_80A71D9C: .word 0x3E4CCCCD
var_80A71DA0: .word 0x3F19999A
var_80A71DA4: .word 0x464B2000
var_80A71DA8: .word 0x477FFF00
var_80A71DAC: .word 0x3E99999A
var_80A71DB0: .word 0x461C4000, 0x00000000, 0x00000000, 0x00000000

