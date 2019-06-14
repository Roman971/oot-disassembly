#include <mips.h>
.set noreorder
.set noat

.section .text
func_808DA650:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x0044($sp)            
    lui     a1, %hi(var_808DB168)      # a1 = 808E0000
    sw      $zero, 0x0030($sp)         
    addiu   a1, a1, %lo(var_808DB168)  # a1 = 808DB168
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xD5C0             # a0 = 0600D5C0
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    lw      a0, 0x0044($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0030($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, s0, 0x0158             # a1 = 00000158
    sw      a1, 0x002C($sp)            
    jal     func_8004A484              
    lw      a0, 0x0044($sp)            
    lui     a3, %hi(var_808DB158)      # a3 = 808E0000
    addiu   t6, s0, 0x0178             # t6 = 00000178
    lw      a1, 0x002C($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_808DB158)  # a3 = 808DB158
    lw      a0, 0x0044($sp)            
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    lw      v0, 0x0174(s0)             # 00000174
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    sll     v1, a0,  6                 
    lh      t7, 0x002E(v0)             # 0000002E
    sh      t7, 0x0036(v0)             # 00000036
    lw      v0, 0x0174(s0)             # 00000174
    lh      t8, 0x006E(v0)             # 0000006E
    sh      t8, 0x0076(v0)             # 00000076
    lw      t9, 0x0174(s0)             # 00000174
    addu    v0, t9, v1                 
    lh      t0, 0x002E(v0)             # 0000002E
    sh      t0, 0x0036(v0)             # 00000036
    lw      t1, 0x0174(s0)             # 00000174
    addu    v0, t1, v1                 
    lh      t2, 0x006E(v0)             # 0000006E
    sh      t2, 0x0076(v0)             # 00000076
    lw      t3, 0x0174(s0)             # 00000174
    addu    v0, t3, v1                 
    lh      t4, 0x00AE(v0)             # 000000AE
    sh      t4, 0x00B6(v0)             # 000000B6
    lw      t5, 0x0174(s0)             # 00000174
    addu    v0, t5, v1                 
    lh      t6, 0x00EE(v0)             # 000000EE
    sh      t6, 0x00F6(v0)             # 000000F6
    sh      $zero, 0x0156(s0)          # 00000156
    sh      $zero, 0x0154(s0)          # 00000154
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_808DA754:
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
    jal     func_8004A550              
    addiu   a1, a1, 0x0158             # a1 = 00000158
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808DA79C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x0156(s0)             # 00000156
    lh      v0, 0x0154(s0)             # 00000154
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   t7, t6, 0x0001             # t7 = 00000001
    bgez    t7, lbl_808DA7D4           
    andi    t8, t7, 0x0007             # t8 = 00000001
    beq     t8, $zero, lbl_808DA7D4    
    nop
    addiu   t8, t8, 0xFFF8             # t8 = FFFFFFF9
lbl_808DA7D4:
    beq     v0, $zero, lbl_808DA7E8    
    sh      t8, 0x0156(s0)             # 00000156
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0154(s0)             # 00000154
    lh      v0, 0x0154(s0)             # 00000154
lbl_808DA7E8:
    bnel    v0, $zero, lbl_808DA7F8    
    lh      t1, 0x00B6(s0)             # 000000B6
    sh      t0, 0x0154(s0)             # 00000154
    lh      t1, 0x00B6(s0)             # 000000B6
lbl_808DA7F8:
    addiu   t2, t1, 0x0180             # t2 = 00000180
    sh      t2, 0x00B6(s0)             # 000000B6
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lh      a0, 0x00B6(s0)             # 000000B6
    jal     func_80063684              # coss?
    swc1    $f0, 0x0024($sp)           
    lw      v0, 0x0174(s0)             # 00000174
    lwc1    $f14, 0x0024($sp)          
    lwc1    $f8, 0x0008(s0)            # 00000008
    lh      t3, 0x0028(v0)             # 00000028
    lh      t4, 0x002C(v0)             # 0000002C
    lh      t1, 0x002A(v0)             # 0000002A
    mtc1    t3, $f4                    # $f4 = 0.00
    mtc1    t4, $f6                    # $f6 = 0.00
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    cvt.s.w $f2, $f4                   
    sll     v1, a0,  6                 
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s0, 0x0158             # a2 = 00000158
    cvt.s.w $f12, $f6                  
    mul.s   $f10, $f0, $f2             
    add.s   $f16, $f8, $f10            
    mul.s   $f18, $f14, $f12           
    add.s   $f4, $f16, $f18            
    mul.s   $f18, $f14, $f2            
    trunc.w.s $f6, $f4                   
    mfc1    t6, $f6                    
    mul.s   $f6, $f0, $f12             
    sh      t6, 0x0030(v0)             # 00000030
    lwc1    $f8, 0x000C(s0)            # 0000000C
    trunc.w.s $f10, $f8                  
    mfc1    t0, $f10                   
    nop
    addu    t2, t0, t1                 
    sh      t2, 0x0032(v0)             # 00000032
    lwc1    $f16, 0x0010(s0)           # 00000010
    sub.s   $f4, $f16, $f18            
    add.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t4, $f10                   
    nop
    sh      t4, 0x0034(v0)             # 00000034
    lw      v0, 0x0174(s0)             # 00000174
    lwc1    $f4, 0x0008(s0)            # 00000008
    lh      t5, 0x0068(v0)             # 00000068
    lh      t6, 0x006C(v0)             # 0000006C
    lh      t3, 0x006A(v0)             # 0000006A
    mtc1    t5, $f16                   # $f16 = 0.00
    mtc1    t6, $f18                   # $f18 = 0.00
    addiu   v0, v0, 0x0040             # v0 = 00000040
    cvt.s.w $f2, $f16                  
    cvt.s.w $f12, $f18                 
    mul.s   $f6, $f0, $f2              
    add.s   $f8, $f4, $f6              
    mul.s   $f10, $f14, $f12           
    add.s   $f16, $f8, $f10            
    mul.s   $f10, $f14, $f2            
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    mul.s   $f18, $f0, $f12            
    sh      t8, 0x0030(v0)             # 00000070
    lwc1    $f4, 0x000C(s0)            # 0000000C
    trunc.w.s $f6, $f4                   
    mfc1    t2, $f6                    
    nop
    addu    t4, t2, t3                 
    sh      t4, 0x0032(v0)             # 00000072
    lwc1    $f8, 0x0010(s0)            # 00000010
    sub.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t6, $f6                    
    nop
    sh      t6, 0x0034(v0)             # 00000074
    lw      t7, 0x0174(s0)             # 00000174
    lwc1    $f16, 0x0008(s0)           # 00000008
    addu    v0, t7, v1                 
    lh      t8, 0x0028(v0)             # 00000068
    lh      t9, 0x002C(v0)             # 0000006C
    lh      t6, 0x002A(v0)             # 0000006A
    mtc1    t8, $f8                    # $f8 = 0.00
    mtc1    t9, $f10                   # $f10 = 0.00
    cvt.s.w $f2, $f8                   
    cvt.s.w $f12, $f10                 
    mul.s   $f18, $f0, $f2             
    add.s   $f4, $f16, $f18            
    mul.s   $f6, $f14, $f12            
    add.s   $f8, $f4, $f6              
    mul.s   $f6, $f14, $f2             
    trunc.w.s $f10, $f8                  
    mfc1    t1, $f10                   
    mul.s   $f10, $f0, $f12            
    sh      t1, 0x0030(v0)             # 00000070
    lwc1    $f16, 0x000C(s0)           # 0000000C
    trunc.w.s $f18, $f16                 
    mfc1    t5, $f18                   
    nop
    addu    t7, t5, t6                 
    sh      t7, 0x0032(v0)             # 00000072
    lwc1    $f4, 0x0010(s0)            # 00000010
    sub.s   $f8, $f4, $f6              
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    nop
    sh      t9, 0x0034(v0)             # 00000074
    lw      t0, 0x0174(s0)             # 00000174
    lwc1    $f8, 0x0008(s0)            # 00000008
    addu    v0, t0, v1                 
    lh      t1, 0x0068(v0)             # 000000A8
    lh      t2, 0x006C(v0)             # 000000AC
    lh      t9, 0x006A(v0)             # 000000AA
    mtc1    t1, $f4                    # $f4 = 0.00
    mtc1    t2, $f6                    # $f6 = 0.00
    addiu   v0, v0, 0x0040             # v0 = 00000080
    cvt.s.w $f2, $f4                   
    cvt.s.w $f12, $f6                  
    mul.s   $f10, $f0, $f2             
    add.s   $f16, $f8, $f10            
    mul.s   $f18, $f14, $f12           
    add.s   $f4, $f16, $f18            
    mul.s   $f18, $f14, $f2            
    trunc.w.s $f6, $f4                   
    mfc1    t4, $f6                    
    mul.s   $f6, $f0, $f12             
    sh      t4, 0x0030(v0)             # 000000B0
    lwc1    $f8, 0x000C(s0)            # 0000000C
    trunc.w.s $f10, $f8                  
    mfc1    t8, $f10                   
    nop
    addu    t0, t8, t9                 
    sh      t0, 0x0032(v0)             # 000000B2
    lwc1    $f16, 0x0010(s0)           # 00000010
    sub.s   $f4, $f16, $f18            
    add.s   $f8, $f4, $f6              
    trunc.w.s $f10, $f8                  
    mfc1    t2, $f10                   
    nop
    sh      t2, 0x0034(v0)             # 000000B4
    lw      t3, 0x0174(s0)             # 00000174
    lwc1    $f4, 0x0008(s0)            # 00000008
    addu    v0, t3, v1                 
    lh      t4, 0x00A8(v0)             # 00000128
    lh      t5, 0x00AC(v0)             # 0000012C
    lh      t2, 0x00AA(v0)             # 0000012A
    mtc1    t4, $f16                   # $f16 = 0.00
    mtc1    t5, $f18                   # $f18 = 0.00
    addiu   v0, v0, 0x0080             # v0 = 00000100
    cvt.s.w $f2, $f16                  
    cvt.s.w $f12, $f18                 
    mul.s   $f6, $f0, $f2              
    add.s   $f8, $f4, $f6              
    mul.s   $f10, $f14, $f12           
    add.s   $f16, $f8, $f10            
    mul.s   $f10, $f14, $f2            
    trunc.w.s $f18, $f16                 
    mfc1    t7, $f18                   
    mul.s   $f18, $f0, $f12            
    sh      t7, 0x0030(v0)             # 00000130
    lwc1    $f4, 0x000C(s0)            # 0000000C
    trunc.w.s $f6, $f4                   
    mfc1    t1, $f6                    
    nop
    addu    t3, t1, t2                 
    sh      t3, 0x0032(v0)             # 00000132
    lwc1    $f8, 0x0010(s0)            # 00000010
    sub.s   $f16, $f8, $f10            
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t5, $f6                    
    nop
    sh      t5, 0x0034(v0)             # 00000134
    lw      t6, 0x0174(s0)             # 00000174
    lwc1    $f16, 0x0008(s0)           # 00000008
    addu    v0, t6, v1                 
    lh      t7, 0x00E8(v0)             # 000001E8
    lh      t8, 0x00EC(v0)             # 000001EC
    lh      t5, 0x00EA(v0)             # 000001EA
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    t8, $f10                   # $f10 = 0.00
    addiu   v0, v0, 0x00C0             # v0 = 000001C0
    cvt.s.w $f2, $f8                   
    cvt.s.w $f12, $f10                 
    mul.s   $f18, $f0, $f2             
    add.s   $f4, $f16, $f18            
    mul.s   $f6, $f14, $f12            
    add.s   $f8, $f4, $f6              
    mul.s   $f6, $f14, $f2             
    trunc.w.s $f10, $f8                  
    mfc1    t0, $f10                   
    mul.s   $f10, $f0, $f12            
    sh      t0, 0x0030(v0)             # 000001F0
    lwc1    $f16, 0x000C(s0)           # 0000000C
    trunc.w.s $f18, $f16                 
    mfc1    t4, $f18                   
    nop
    addu    t6, t4, t5                 
    sh      t6, 0x0032(v0)             # 000001F2
    lwc1    $f4, 0x0010(s0)            # 00000010
    sub.s   $f8, $f4, $f6              
    add.s   $f16, $f8, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t8, $f18                   
    nop
    sh      t8, 0x0034(v0)             # 000001F4
    lw      a0, 0x003C($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at                
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C              
    addiu   a1, $zero, 0x2033          # a1 = 00002033
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_808DAB60:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      a2, 0x0060($sp)            
    sll     a2, a2, 16                 
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    lw      s0, 0x006C($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sra     a2, a2, 16                 
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0058($sp)            
    lh      t6, 0x0156(s1)             # 00000156
    lui     $at, %hi(var_808DB1A0)     # $at = 808E0000
    lwc1    $f8, %lo(var_808DB1A0)($at) 
    addu    t7, t6, a2                 
    bgez    t7, lbl_808DABAC           
    andi    t8, t7, 0x0007             # t8 = 00000000
    beq     t8, $zero, lbl_808DABAC    
    nop
    addiu   t8, t8, 0xFFF8             # t8 = FFFFFFF8
lbl_808DABAC:
    sll     t9, t8,  3                 
    subu    t9, t9, t8                 
    mtc1    t9, $f4                    # $f4 = 0.00
    addiu   a2, a2, 0x0001             # a2 = 00000001
    or      v0, s0, $zero              # v0 = 00000000
    cvt.s.w $f6, $f4                   
    lui     t2, 0xDB06                 # t2 = DB060000
    sll     a2, a2, 16                 
    ori     t2, t2, 0x0024             # t2 = DB060024
    addiu   s0, s0, 0x0008             # s0 = 00000008
    lui     $at, 0x00FF                # $at = 00FF0000
    mul.s   $f10, $f6, $f8             
    lui     v1, %hi(var_808DB174)      # v1 = 808E0000
    sra     a2, a2, 16                 
    trunc.w.s $f16, $f10                 
    mfc1    t0, $f16                   
    nop
    sll     t3, t0,  2                 
    addu    v1, v1, t3                 
    sw      t2, 0x0000(v0)             # 00000000
    lw      v1, %lo(var_808DB174)(v1)  
    lui     t8, 0x8012                 # t8 = 80120000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t5, v1,  4                 
    srl     t6, t5, 28                 
    sll     t7, t6,  2                 
    addu    t8, t8, t7                 
    lw      t8, 0x0C38(t8)             # 80120C38
    and     t4, v1, $at                
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t4, t8                 
    addu    t1, t9, $at                
    sw      t1, 0x0004(v0)             # 00000004
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a2, $at, lbl_808DAC6C      
    or      v0, s0, $zero              # v0 = 00000008
    lh      t2, 0x0154(s1)             # 00000154
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    lui     $at, %hi(var_808DB1A4)     # $at = 808E0000
    subu    t5, t3, t2                 
    mtc1    t5, $f18                   # $f18 = 0.00
    lwc1    $f6, %lo(var_808DB1A4)($at) 
    mtc1    a2, $f10                   # $f10 = 0.00
    cvt.s.w $f4, $f18                  
    cvt.s.w $f16, $f10                 
    mul.s   $f8, $f4, $f6              
    beq     $zero, $zero, lbl_808DAC78 
    add.s   $f14, $f16, $f8            
lbl_808DAC6C:
    mtc1    a2, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f14, $f18                 
lbl_808DAC78:
    lui     t6, 0xFA00                 # t6 = FA000000
    lui     t7, 0xFFFF                 # t7 = FFFF0000
    ori     t7, t7, 0x0096             # t7 = FFFF0096
    ori     t6, t6, 0x0001             # t6 = FA000001
    sw      t6, 0x0000(v0)             # 00000008
    sw      t7, 0x0004(v0)             # 0000000C
    addiu   s0, s0, 0x0008             # s0 = 00000010
    or      v1, s0, $zero              # v1 = 00000010
    lui     t8, 0xFF00                 # t8 = FF000000
    ori     t8, t8, 0x00FF             # t8 = FF0000FF
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      t4, 0x0000(v1)             # 00000010
    sw      t8, 0x0004(v1)             # 00000014
    addiu   s0, s0, 0x0008             # s0 = 00000018
    lw      t9, 0x0068($sp)            
    sll     v0, a2,  2                 
    subu    v0, v0, a2                 
    bne     t9, $zero, lbl_808DAD30    
    sll     v0, v0,  4                 
    sll     v0, a2,  2                 
    subu    v0, v0, a2                 
    sll     v0, v0,  4                 
    subu    v0, v0, a2                 
    lh      t1, 0x00B6(s1)             # 000000B6
    sll     v0, v0,  3                 
    subu    v0, v0, a2                 
    sll     v0, v0,  2                 
    subu    a0, t1, v0                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    sw      v0, 0x0020($sp)            
    swc1    $f14, 0x0048($sp)          
    jal     func_800636C4              # sins?
    sw      a3, 0x0064($sp)            
    neg.s   $f4, $f0                   
    lw      v0, 0x0020($sp)            
    swc1    $f4, 0x0050($sp)           
    lh      t3, 0x00B6(s1)             # 000000B6
    subu    a0, t3, v0                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lw      a3, 0x0064($sp)            
    lwc1    $f14, 0x0048($sp)          
    beq     $zero, $zero, lbl_808DAD88 
    neg.s   $f12, $f0                  
lbl_808DAD30:
    subu    v0, v0, a2                 
    lh      t2, 0x00B6(s1)             # 000000B6
    sll     v0, v0,  3                 
    subu    v0, v0, a2                 
    sll     v0, v0,  2                 
    subu    a0, t2, v0                 
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    sw      v0, 0x0020($sp)            
    swc1    $f14, 0x0048($sp)          
    jal     func_800636C4              # sins?
    sw      a3, 0x0064($sp)            
    swc1    $f0, 0x0050($sp)           
    lw      v0, 0x0020($sp)            
    lh      t5, 0x00B6(s1)             # 000000B6
    subu    a0, t5, v0                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lw      a3, 0x0064($sp)            
    lwc1    $f14, 0x0048($sp)          
    mov.s   $f12, $f0                  
lbl_808DAD88:
    lui     $at, %hi(var_808DB1A8)     # $at = 808E0000
    lwc1    $f6, %lo(var_808DB1A8)($at) 
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    mul.s   $f10, $f6, $f14            
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lui     $at, 0x41F0                # $at = 41F00000
    lui     t6, 0xDA38                 # t6 = DA380000
    add.s   $f0, $f10, $f16            
    ori     t6, t6, 0x0003             # t6 = DA380003
    or      a2, s0, $zero              # a2 = 00000018
    mul.s   $f18, $f0, $f8             
    swc1    $f0, 0x0028(a3)            # 00000028
    swc1    $f0, 0x0014(a3)            # 00000014
    swc1    $f0, 0x0000(a3)            # 00000000
    lwc1    $f10, 0x0050($sp)          
    lwc1    $f8, 0x0024(s1)            # 00000024
    mul.s   $f4, $f18, $f14            
    add.s   $f2, $f4, $f6              
    mtc1    $at, $f6                   # $f6 = 30.00
    lui     $at, %hi(var_808DB1AC)     # $at = 808E0000
    mul.s   $f16, $f2, $f10            
    add.s   $f18, $f16, $f8            
    swc1    $f18, 0x0030(a3)           # 00000030
    lwc1    $f16, %lo(var_808DB1AC)($at) 
    lwc1    $f4, 0x0028(s1)            # 00000028
    mul.s   $f8, $f16, $f14            
    add.s   $f10, $f4, $f6             
    mul.s   $f4, $f2, $f12             
    add.s   $f18, $f10, $f8            
    swc1    $f18, 0x0034(a3)           # 00000034
    lwc1    $f6, 0x002C(s1)            # 0000002C
    add.s   $f16, $f4, $f6             
    swc1    $f16, 0x0038(a3)           # 00000038
    sw      t6, 0x0000(a2)             # 00000018
    lw      t7, 0x0058($sp)            
    addiu   s0, s0, 0x0008             # s0 = 00000020
    or      a0, a3, $zero              # a0 = 00000000
    lw      v0, 0x0000(t7)             # 00000000
    lw      a1, 0x02C4(v0)             # 000002C4
    addiu   a1, a1, 0xFFC0             # a1 = FFFFFFC0
    sw      a1, 0x02C4(v0)             # 000002C4
    jal     func_800AB6BC              # guMtxF2L
    sw      a2, 0x0034($sp)            
    lw      a2, 0x0034($sp)            
    or      v1, s0, $zero              # v1 = 00000020
    addiu   s0, s0, 0x0008             # s0 = 00000028
    sw      v0, 0x0004(a2)             # 00000004
    lui     t8, 0x0601                 # t8 = 06010000
    addiu   t8, t8, 0xDC30             # t8 = 0600DC30
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t4, 0x0000(v1)             # 00000020
    sw      t8, 0x0004(v1)             # 00000024
    or      v0, s0, $zero              # v0 = 00000028
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_808DAE80:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s4, 0x002C($sp)            
    sw      s3, 0x0028($sp)            
    or      s3, a1, $zero              # s3 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s5, 0x0030($sp)            
    sw      s2, 0x0024($sp)            
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_8007E298              
    or      s1, a0, $zero              # s1 = 00000000
    lw      s2, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s2, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s3)             # 00000000
    addiu   s5, $sp, 0x004C            # s5 = FFFFFFB4
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0xAD00             # t0 = 0600AD00
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      t9, 0x0000(s0)             # 00000000
    sw      t0, 0x0004(s0)             # 00000004
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0xEDF0             # a1 = 800FEDF0
    jal     func_800ABA10              
    or      a0, s5, $zero              # a0 = FFFFFFB4
    lw      a0, 0x02D0(s1)             # 000002D0
    jal     func_8007DFBC              
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    sw      v0, 0x02D0(s1)             # 000002D0
    lh      t1, 0x07A0(s3)             # 000007A0
    sll     t2, t1,  2                 
    addu    t3, s3, t2                 
    jal     func_8004977C              
    lw      a0, 0x0790(t3)             # 00000790
    lh      t4, 0x00B6(s4)             # 000000B6
    addiu   s0, $zero, 0x0003          # s0 = 00000003
    subu    t5, v0, t4                 
    addiu   t6, t5, 0xD194             # t6 = FFFFD194
    sll     t7, t6, 16                 
    sra     t8, t7, 16                 
    bltz    t8, lbl_808DAFC8           
    nop
    addiu   s0, $zero, 0x0003          # s0 = 00000003
lbl_808DAF54:
    sw      $zero, 0x0010($sp)         
    lw      t9, 0x02D0(s1)             # 000002D0
    sll     a2, s0, 16                 
    sra     a2, a2, 16                 
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    or      a3, s5, $zero              # a3 = FFFFFFB4
    jal     func_808DAB60              
    sw      t9, 0x0014($sp)            
    addiu   s0, s0, 0xFFFF             # s0 = 00000002
    bgez    s0, lbl_808DAF54           
    sw      v0, 0x02D0(s1)             # 000002D0
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $zero, 0x0004          # s2 = 00000004
lbl_808DAF8C:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0010($sp)            
    lw      t1, 0x02D0(s1)             # 000002D0
    sll     a2, s0, 16                 
    sra     a2, a2, 16                 
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    or      a3, s5, $zero              # a3 = FFFFFFB4
    jal     func_808DAB60              
    sw      t1, 0x0014($sp)            
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s2, lbl_808DAF8C       
    sw      v0, 0x02D0(s1)             # 000002D0
    beq     $zero, $zero, lbl_808DB038 
    lw      $ra, 0x0034($sp)           
lbl_808DAFC8:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0010($sp)            
    lw      t3, 0x02D0(s1)             # 000002D0
    sll     a2, s0, 16                 
    sra     a2, a2, 16                 
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    or      a3, s5, $zero              # a3 = FFFFFFB4
    jal     func_808DAB60              
    sw      t3, 0x0014($sp)            
    addiu   s0, s0, 0xFFFF             # s0 = 00000000
    bgez    s0, lbl_808DAFC8           
    sw      v0, 0x02D0(s1)             # 000002D0
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $zero, 0x0004          # s2 = 00000004
lbl_808DB004:
    sw      $zero, 0x0010($sp)         
    lw      t4, 0x02D0(s1)             # 000002D0
    sll     a2, s0, 16                 
    sra     a2, a2, 16                 
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    or      a3, s5, $zero              # a3 = FFFFFFB4
    jal     func_808DAB60              
    sw      t4, 0x0014($sp)            
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s2, lbl_808DB004       
    sw      v0, 0x02D0(s1)             # 000002D0
    lw      $ra, 0x0034($sp)           
lbl_808DB038:
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    lw      s2, 0x0024($sp)            
    lw      s3, 0x0028($sp)            
    lw      s4, 0x002C($sp)            
    lw      s5, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           # $sp = 00000000
    nop
    nop

.section .data

var_808DB060: .word 0x00440100, 0x00000000, 0x002C0000, 0x000002F8
.word func_808DA650
.word func_808DA754
.word func_808DA79C
.word func_808DAE80
var_808DB080: .word \
0x00000000, 0x20000000, 0x01040000, 0x00000000, \
0x00000000, 0x19000000, 0x01000000, 0x001E0028, \
0x00190064, 0x00000000, 0x20000000, 0x01040000, \
0x00000000, 0x00000000, 0x19000000, 0x0100FFDD, \
0x0020004D, 0x00200064, 0x00000000, 0x20000000, \
0x01040000, 0x00000000, 0x00000000, 0x19000000, \
0x0100FFB0, 0x00230082, 0x002A0064, 0x00000000, \
0x20000000, 0x01040000, 0x00000000, 0x00000000, \
0x19000000, 0x01000000, 0x001EFFD8, 0x00190064, \
0x00000000, 0x20000000, 0x01040000, 0x00000000, \
0x00000000, 0x19000000, 0x01000023, 0x0020FFB3, \
0x00200064, 0x00000000, 0x20000000, 0x01040000, \
0x00000000, 0x00000000, 0x19000000, 0x01000050, \
0x0023FF7E, 0x002A0064
var_808DB158: .word 0x0A110000, 0x20000000, 0x00000006
.word var_808DB080
var_808DB168: .word 0xC8500064, 0xB0F80190, 0x30F405DC
var_808DB174: .word \
0x06015D20, 0x06016120, 0x06016520, 0x06016920, \
0x06016D20, 0x06017120, 0x06017520, 0x06017920, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_808DB1A0: .word 0x3E124925
var_808DB1A4: .word 0x3EAAAAAB
var_808DB1A8: .word 0x3F333333
var_808DB1AC: .word 0x3F333333

