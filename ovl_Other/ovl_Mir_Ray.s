#include <mips.h>
.set noreorder
.set noat

.section .text
func_80982630:
    lh      t6, 0x001C(a0)             # 0000001C
    lwc1    $f2, 0x026C(a0)            # 0000026C
    lwc1    $f4, 0x0278(a0)            # 00000278
    lui     t8, %hi(var_80983C78)      # t8 = 80980000
    addiu   t8, t8, %lo(var_80983C78)  # t8 = 80983C78
    sll     t7, t6,  5                 
    sub.s   $f6, $f4, $f2              
    addu    v0, t7, t8                 
    lwc1    $f12, 0x0010(v0)           # 00000010
    lwc1    $f8, 0x027C(a0)            # 0000027C
    lwc1    $f10, 0x0270(a0)           # 00000270
    mul.s   $f0, $f6, $f12             
    lwc1    $f6, 0x0274(a0)            # 00000274
    sub.s   $f18, $f8, $f10            
    lwc1    $f4, 0x0280(a0)            # 00000280
    lw      t1, 0x0158(a0)             # 00000158
    mul.s   $f14, $f18, $f12           
    add.s   $f10, $f2, $f0             
    sub.s   $f8, $f4, $f6              
    trunc.w.s $f18, $f10                 
    mul.s   $f16, $f8, $f12            
    mfc1    t0, $f18                   
    nop
    sh      t0, 0x0030(t1)             # 00000030
    lwc1    $f4, 0x0270(a0)            # 00000270
    lw      t4, 0x0158(a0)             # 00000158
    add.s   $f6, $f4, $f14             
    trunc.w.s $f8, $f6                   
    mfc1    t3, $f8                    
    nop
    sh      t3, 0x0032(t4)             # 00000032
    lwc1    $f10, 0x0274(a0)           # 00000274
    lw      t7, 0x0158(a0)             # 00000158
    add.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    t6, $f4                    
    nop
    sh      t6, 0x0034(t7)             # 00000034
    lh      t8, 0x0014(v0)             # 00000014
    lw      v1, 0x0158(a0)             # 00000158
    mtc1    t8, $f6                    # $f6 = 0.00
    lwc1    $f10, 0x0038(v1)           # 00000038
    cvt.s.w $f8, $f6                   
    mul.s   $f18, $f8, $f10            
    trunc.w.s $f4, $f18                  
    mfc1    t0, $f4                    
    nop
    sh      t0, 0x0036(v1)             # 00000036
    jr      $ra                        
    nop


func_809826F8:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0024($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      s1, 0x0028($sp)            
    sw      a1, 0x005C($sp)            
    lw      t6, 0x005C($sp)            
    lh      t7, 0x001C(s0)             # 0000001C
    lui     $at, 0x41F0                # $at = 41F00000
    lw      v1, 0x1C44(t6)             # 00001C44
    mtc1    $at, $f6                   # $f6 = 30.00
    lui     t9, %hi(var_80983C78)      # t9 = 80980000
    lwc1    $f10, 0x002C(v1)           # 0000002C
    lwc1    $f4, 0x0028(v1)            # 00000028
    lw      a2, 0x0024(v1)             # 00000024
    swc1    $f10, 0x0010($sp)          
    lh      t0, 0x0284(s0)             # 00000284
    add.s   $f8, $f4, $f6              
    addiu   t9, t9, %lo(var_80983C78)  # t9 = 80983C78
    sw      t0, 0x0014($sp)            
    lh      t1, 0x0286(s0)             # 00000286
    mfc1    a3, $f8                    
    addiu   a0, s0, 0x026C             # a0 = 0000026C
    addiu   a1, s0, 0x0278             # a1 = 00000278
    sll     t8, t7,  5                 
    addu    s1, t8, t9                 
    sw      a1, 0x0034($sp)            
    sw      a0, 0x0038($sp)            
    sw      v1, 0x0054($sp)            
    jal     func_8098398C              
    sw      t1, 0x0018($sp)            
    lw      v1, 0x0054($sp)            
    beq     v0, $zero, lbl_8098285C    
    lw      a1, 0x0038($sp)            
    lbu     t2, 0x001F(s1)             # 0000001F
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFEC
    lw      a0, 0x0034($sp)            
    andi    t3, t2, 0x0008             # t3 = 00000000
    beq     t3, $zero, lbl_809827A8    
    nop
    jal     func_80063D48              # Vec3f_Sub
    addiu   a0, v1, 0x0024             # a0 = 00000024
    beq     $zero, $zero, lbl_809827B4 
    lwc1    $f0, 0x0018(s1)            # 00000018
lbl_809827A8:
    jal     func_80063D48              # Vec3f_Sub
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFEC
    lwc1    $f0, 0x0018(s1)            # 00000018
lbl_809827B4:
    lwc1    $f16, 0x0044($sp)          
    lwc1    $f4, 0x026C(s0)            # 0000026C
    lwc1    $f10, 0x0048($sp)          
    mul.s   $f18, $f0, $f16            
    addiu   a0, s0, 0x0288             # a0 = 00000288
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    mul.s   $f16, $f0, $f10            
    add.s   $f6, $f18, $f4             
    trunc.w.s $f8, $f6                   
    mfc1    t5, $f8                    
    lwc1    $f8, 0x004C($sp)           
    sh      t5, 0x003C($sp)            
    lwc1    $f18, 0x0270(s0)           # 00000270
    mul.s   $f10, $f0, $f8             
    add.s   $f4, $f16, $f18            
    trunc.w.s $f6, $f4                   
    mfc1    t7, $f6                    
    nop
    sh      t7, 0x003E($sp)            
    lwc1    $f16, 0x0274(s0)           # 00000274
    add.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    t9, $f4                    
    nop
    sh      t9, 0x0040($sp)            
    jal     func_800637D4              
    lh      a1, 0x0016(s1)             # 00000016
    lbu     t0, 0x001C(s1)             # 0000001C
    addiu   a0, s0, 0x0290             # a0 = 00000290
    lh      a1, 0x003C($sp)            
    sw      t0, 0x0010($sp)            
    lbu     t1, 0x001D(s1)             # 0000001D
    lh      a2, 0x003E($sp)            
    lh      a3, 0x0040($sp)            
    sw      t1, 0x0014($sp)            
    lbu     t2, 0x001E(s1)             # 0000001E
    sw      t2, 0x0018($sp)            
    lh      t3, 0x0288(s0)             # 00000288
    jal     func_80065BCC              
    sw      t3, 0x001C($sp)            
    beq     $zero, $zero, lbl_8098288C 
    lw      $ra, 0x002C($sp)           
lbl_8098285C:
    addiu   a0, s0, 0x0288             # a0 = 00000288
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800637D4              
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lh      t4, 0x0288(s0)             # 00000288
    lbu     a1, 0x001C(s1)             # 0000001C
    lbu     a2, 0x001D(s1)             # 0000001D
    lbu     a3, 0x001E(s1)             # 0000001E
    addiu   a0, s0, 0x0290             # a0 = 00000290
    jal     func_80065C98              
    sw      t4, 0x0010($sp)            
    lw      $ra, 0x002C($sp)           
lbl_8098288C:
    lw      s0, 0x0024($sp)            
    lw      s1, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_8098289C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s2, 0x0030($sp)            
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s1, 0x002C($sp)            
    lh      t6, 0x001C(s0)             # 0000001C
    lui     t8, %hi(var_80983C78)      # t8 = 80980000
    addiu   t8, t8, %lo(var_80983C78)  # t8 = 80983C78
    lui     a1, %hi(var_80983DB8)      # a1 = 80980000
    sll     t7, t6,  5                 
    addu    s1, t7, t8                 
    addiu   a1, a1, %lo(var_80983DB8)  # a1 = 80983DB8
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_8001EC20              
    nop
    lh      t9, 0x001C(s0)             # 0000001C
    slti    $at, t9, 0x000A            
    bnel    $at, $zero, lbl_80982914   
    lh      t0, 0x0000(s1)             # 00000000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x0000(s1)             # 00000000
lbl_80982914:
    addiu   a0, s0, 0x0290             # a0 = 00000290
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    swc1    $f6, 0x026C(s0)            # 0000026C
    lh      t1, 0x0002(s1)             # 00000002
    mtc1    t1, $f8                    # $f8 = 0.00
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    cvt.s.w $f10, $f8                  
    swc1    $f10, 0x0270(s0)           # 00000270
    lh      t2, 0x0004(s1)             # 00000004
    mtc1    t2, $f16                   # $f16 = 0.00
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    cvt.s.w $f18, $f16                 
    swc1    $f18, 0x0274(s0)           # 00000274
    lh      t3, 0x000C(s1)             # 0000000C
    sh      t3, 0x0284(s0)             # 00000284
    lh      t4, 0x0006(s1)             # 00000006
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    mtc1    t4, $f4                    # $f4 = 0.00
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    cvt.s.w $f6, $f4                   
    lwc1    $f4, 0x026C(s0)            # 0000026C
    swc1    $f6, 0x0278(s0)            # 00000278
    lh      t5, 0x0008(s1)             # 00000008
    trunc.w.s $f6, $f4                   
    mtc1    t5, $f8                    # $f8 = 0.00
    mfc1    a1, $f6                    
    cvt.s.w $f10, $f8                  
    lwc1    $f8, 0x0270(s0)            # 00000270
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    swc1    $f10, 0x027C(s0)           # 0000027C
    lh      t6, 0x000A(s1)             # 0000000A
    trunc.w.s $f10, $f8                  
    mtc1    t6, $f16                   # $f16 = 0.00
    mfc1    a2, $f10                   
    cvt.s.w $f18, $f16                 
    lwc1    $f16, 0x0274(s0)           # 00000274
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    swc1    $f18, 0x0280(s0)           # 00000280
    trunc.w.s $f18, $f16                 
    lh      t7, 0x000E(s1)             # 0000000E
    mfc1    a3, $f18                   
    sh      t7, 0x0286(s0)             # 00000286
    sw      a0, 0x0038($sp)            
    sll     a3, a3, 16                 
    sra     a3, a3, 16                 
    sw      t4, 0x001C($sp)            
    sw      t3, 0x0018($sp)            
    sw      t2, 0x0014($sp)            
    jal     func_80065BCC              
    sw      t1, 0x0010($sp)            
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, s2, 0x07A8             # a1 = 000007A8
    jal     func_800665B0              
    lw      a2, 0x0038($sp)            
    lui     $at, 0xC406                # $at = C4060000
    mtc1    $at, $f0                   # $f0 = -536.00
    lui     $at, %hi(var_80983DE0)     # $at = 80980000
    lwc1    $f2, %lo(var_80983DE0)($at) 
    sw      v0, 0x028C(s0)             # 0000028C
    lui     $at, %hi(var_80983DE4)     # $at = 80980000
    swc1    $f0, 0x0220(s0)            # 00000220
    lwc1    $f4, %lo(var_80983DE4)($at) 
    lui     $at, %hi(var_80983DE8)     # $at = 80980000
    mtc1    $zero, $f12                # $f12 = 0.00
    swc1    $f4, 0x0224(s0)            # 00000224
    lwc1    $f6, %lo(var_80983DE8)($at) 
    lui     $at, %hi(var_80983DEC)     # $at = 80980000
    swc1    $f0, 0x0238(s0)            # 00000238
    swc1    $f12, 0x0230(s0)           # 00000230
    swc1    $f6, 0x022C(s0)            # 0000022C
    lwc1    $f8, %lo(var_80983DEC)($at) 
    lui     $at, %hi(var_80983DF0)     # $at = 80980000
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f8, 0x023C(s0)            # 0000023C
    lwc1    $f10, %lo(var_80983DF0)($at) 
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f16                  # $f16 = 800.00
    lui     $at, 0xC448                # $at = C4480000
    mtc1    $at, $f18                  # $f18 = -800.00
    swc1    $f2, 0x0250(s0)            # 00000250
    swc1    $f2, 0x025C(s0)            # 0000025C
    swc1    $f12, 0x0248(s0)           # 00000248
    swc1    $f10, 0x0244(s0)           # 00000244
    swc1    $f16, 0x0254(s0)           # 00000254
    swc1    $f18, 0x0260(s0)           # 00000260
    lbu     t5, 0x001F(s1)             # 0000001F
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    andi    t6, t5, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80982AD0    
    addiu   s1, s0, 0x019C             # s1 = 0000019C
    jal     func_8004A484              
    sw      a1, 0x0038($sp)            
    lui     a3, %hi(var_80983C68)      # a3 = 80980000
    addiu   t7, s0, 0x015C             # t7 = 0000015C
    lw      a1, 0x0038($sp)            
    sw      t7, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80983C68)  # a3 = 80983C68
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8004A874              
    or      a2, s0, $zero              # a2 = 00000000
    lbu     t8, 0x001F(s1)             # 000001BB
    andi    t9, t8, 0x0004             # t9 = 00000000
    bnel    t9, $zero, lbl_80982AD0    
    addiu   s1, s0, 0x019C             # s1 = 0000019C
    jal     func_80982630              
    or      a0, s0, $zero              # a0 = 00000000
    addiu   s1, s0, 0x019C             # s1 = 0000019C
lbl_80982AD0:
    or      a1, s1, $zero              # a1 = 0000019C
    jal     func_8004B858              
    or      a0, s2, $zero              # a0 = 00000000
    lui     a3, %hi(var_80983BF4)      # a3 = 80980000
    addiu   a3, a3, %lo(var_80983BF4)  # a3 = 80983BF4
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 0000019C
    jal     func_8004B960              
    or      a2, s0, $zero              # a2 = 00000000
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    beq     v1, $at, lbl_80982B18      
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v1, $at, lbl_80982B18      
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    v1, $at, lbl_80982B20      
    lw      $ra, 0x0034($sp)           
lbl_80982B18:
    sb      t0, 0x0003(s0)             # 00000003
    lw      $ra, 0x0034($sp)           
lbl_80982B20:
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80982B34:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x07A8             # a1 = 000007A8
    lw      a2, 0x028C(t6)             # 0000028C
    jal     func_80066610              
    sw      a3, 0x001C($sp)            
    lw      v0, 0x0018($sp)            
    lui     t9, %hi(var_80983C97)      # t9 = 80980000
    lw      a0, 0x001C($sp)            
    lh      t7, 0x001C(v0)             # 0000001C
    sll     t8, t7,  5                 
    addu    t9, t9, t8                 
    lbu     t9, %lo(var_80983C97)(t9)  
    andi    t0, t9, 0x0002             # t0 = 00000000
    beql    t0, $zero, lbl_80982B94    
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, v0, 0x013C             # a1 = 0000013C
    lw      v0, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
lbl_80982B94:
    jal     func_8004B8A8              
    addiu   a1, v0, 0x019C             # a1 = 0000019C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80982BAC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lw      t6, 0x1C44(s1)             # 00001C44
    lui     $at, %hi(var_80983BF0)     # $at = 80980000
    sb      $zero, %lo(var_80983BF0)($at) 
    sw      t6, 0x0024($sp)            
    lbu     t7, 0x029E(s0)             # 0000029E
    bnel    t7, $zero, lbl_80982C88    
    lw      $ra, 0x001C($sp)           
    lh      t8, 0x001C(s0)             # 0000001C
    lui     v0, %hi(var_80983C97)      # v0 = 80980000
    sll     t9, t8,  5                 
    addu    v0, v0, t9                 
    lbu     v0, %lo(var_80983C97)(v0)  
    andi    t0, v0, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_80982C28    
    andi    t1, v0, 0x0004             # t1 = 00000000
    beql    t1, $zero, lbl_80982C14    
    lui     $at, 0x0001                # $at = 00010000
    jal     func_80982630              
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
lbl_80982C14:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x013C             # a2 = 0000013C
lbl_80982C28:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x021C(s0)            # 0000021C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    c.lt.s  $f4, $f6                   
    addu    a1, s1, $at                
    or      a0, s1, $zero              # a0 = 00000000
    bc1fl   lbl_80982C58               
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x019C             # a2 = 0000019C
    or      a0, s0, $zero              # a0 = 00000000
lbl_80982C58:
    jal     func_809826F8              
    or      a1, s1, $zero              # a1 = 00000000
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x021C(s0)           # 0000021C
    lw      a0, 0x0024($sp)            
    c.lt.s  $f8, $f10                  
    nop
    bc1fl   lbl_80982C88               
    lw      $ra, 0x001C($sp)           
    jal     func_800230A0              
    addiu   a1, $zero, 0x1049          # a1 = 00001049
    lw      $ra, 0x001C($sp)           
lbl_80982C88:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80982C98:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0028($sp)            
    mtc1    $zero, $f16                # $f16 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    sw      a1, 0x005C($sp)            
    lw      t3, 0x005C($sp)            
    addiu   a0, s0, 0x026C             # a0 = 0000026C
    addiu   a1, s0, 0x0278             # a1 = 00000278
    lw      v1, 0x1C44(t3)             # 00001C44
    swc1    $f16, 0x021C(s0)           # 0000021C
    lwc1    $f4, 0x0A48(v1)            # 00000A48
    lw      a3, 0x0A44(v1)             # 00000A44
    lw      a2, 0x0A40(v1)             # 00000A40
    swc1    $f4, 0x0010($sp)           
    lh      t4, 0x0284(s0)             # 00000284
    sw      t4, 0x0014($sp)            
    lh      t5, 0x0286(s0)             # 00000286
    sw      v1, 0x0038($sp)            
    jal     func_8098398C              
    sw      t5, 0x0018($sp)            
    mtc1    $zero, $f16                # $f16 = 0.00
    beq     v0, $zero, lbl_80982E38    
    lw      v1, 0x0038($sp)            
    addiu   v0, v1, 0x0A10             # v0 = 00000A10
    lwc1    $f2, 0x0020(v0)            # 00000A30
    lwc1    $f12, 0x0024(v0)           # 00000A34
    lwc1    $f14, 0x0028(v0)           # 00000A38
    mul.s   $f8, $f2, $f2              
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f10, $f12, $f12           
    add.s   $f6, $f8, $f10             
    mul.s   $f4, $f14, $f14            
    add.s   $f0, $f4, $f6              
    sqrt.s  $f0, $f0                   
    c.eq.s  $f0, $f16                  
    mov.s   $f18, $f0                  
    bc1fl   lbl_80982D48               
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    beq     $zero, $zero, lbl_80982D54 
    swc1    $f2, 0x0268(s0)            # 00000268
    mtc1    $at, $f2                   # $f2 = 1.00
lbl_80982D48:
    nop
    div.s   $f8, $f2, $f0              
    swc1    $f8, 0x0268(s0)            # 00000268
lbl_80982D54:
    lh      t6, 0x001C(s0)             # 0000001C
    lui     t8, %hi(var_80983C97)      # t8 = 80980000
    sll     t7, t6,  5                 
    addu    t8, t8, t7                 
    lbu     t8, %lo(var_80983C97)(t8)  
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_80982D80    
    lwc1    $f10, 0x0278(s0)           # 00000278
    beq     $zero, $zero, lbl_80982E38 
    swc1    $f2, 0x021C(s0)            # 0000021C
    lwc1    $f10, 0x0278(s0)           # 00000278
lbl_80982D80:
    lwc1    $f4, 0x026C(s0)            # 0000026C
    sub.s   $f6, $f10, $f4             
    swc1    $f6, 0x004C($sp)           
    lwc1    $f10, 0x0270(s0)           # 00000270
    lwc1    $f8, 0x027C(s0)            # 0000027C
    sub.s   $f4, $f8, $f10             
    swc1    $f4, 0x0050($sp)           
    lwc1    $f8, 0x0274(s0)            # 00000274
    lwc1    $f6, 0x0280(s0)            # 00000280
    sub.s   $f10, $f6, $f8             
    lwc1    $f8, 0x004C($sp)           
    swc1    $f10, 0x0054($sp)          
    lwc1    $f4, 0x0020(v0)            # 00000A30
    neg.s   $f6, $f4                   
    lwc1    $f4, 0x0024(v0)            # 00000A34
    mul.s   $f10, $f6, $f8             
    lwc1    $f6, 0x0050($sp)           
    swc1    $f8, 0x0030($sp)           
    lwc1    $f8, 0x0028(v0)            # 00000A38
    mul.s   $f4, $f4, $f6              
    sub.s   $f10, $f10, $f4            
    lwc1    $f4, 0x0054($sp)           
    mul.s   $f8, $f4, $f8              
    sub.s   $f2, $f10, $f8             
    lwc1    $f10, 0x0030($sp)          
    c.lt.s  $f2, $f16                  
    nop
    bc1fl   lbl_80982E3C               
    lw      $ra, 0x002C($sp)           
    mul.s   $f8, $f4, $f4              
    c.eq.s  $f18, $f16                 
    mul.s   $f10, $f10, $f10           
    nop
    mul.s   $f6, $f6, $f6              
    add.s   $f4, $f10, $f6             
    add.s   $f0, $f8, $f4              
    bc1t    lbl_80982E38               
    sqrt.s  $f0, $f0                   
    c.eq.s  $f0, $f16                  
    nop
    bc1tl   lbl_80982E3C               
    lw      $ra, 0x002C($sp)           
    mul.s   $f6, $f18, $f0             
    neg.s   $f10, $f2                  
    div.s   $f8, $f10, $f6             
    swc1    $f8, 0x021C(s0)            # 0000021C
lbl_80982E38:
    lw      $ra, 0x002C($sp)           
lbl_80982E3C:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra                        
    nop


func_80982E4C:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f0                   # $f0 = 400.00
    sw      $ra, 0x0044($sp)           
    sw      s8, 0x0040($sp)            
    sw      s7, 0x003C($sp)            
    sw      s6, 0x0038($sp)            
    sw      s5, 0x0034($sp)            
    sw      s4, 0x0030($sp)            
    sw      s3, 0x002C($sp)            
    sw      s2, 0x0028($sp)            
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    lw      v0, 0x1C44(a1)             # 00001C44
    lwc1    $f6, 0x0268(a0)            # 00000268
    lwc1    $f16, 0x021C(a0)           # 0000021C
    lwc1    $f4, 0x0A30(v0)            # 00000A30
    or      s1, a0, $zero              # s1 = 00000000
    addiu   s4, a1, 0x07C0             # s4 = 000007C0
    mul.s   $f8, $f4, $f6              
    or      s3, $zero, $zero           # s3 = 00000000
    or      s2, a2, $zero              # s2 = 00000000
    addiu   s8, $sp, 0x006C            # s8 = FFFFFFCC
    addiu   s7, $sp, 0x0070            # s7 = FFFFFFD0
    addiu   s6, $sp, 0x007C            # s6 = FFFFFFDC
    addiu   s5, $sp, 0x0088            # s5 = FFFFFFE8
    neg.s   $f10, $f8                  
    addiu   s0, v0, 0x0A10             # s0 = 00000A10
    mul.s   $f18, $f10, $f16           
    nop
    mul.s   $f4, $f18, $f0             
    swc1    $f4, 0x0060($sp)           
    lwc1    $f8, 0x0268(a0)            # 00000268
    lwc1    $f6, 0x0A34(v0)            # 00000A34
    lwc1    $f18, 0x021C(a0)           # 0000021C
    mul.s   $f10, $f6, $f8             
    neg.s   $f16, $f10                 
    mul.s   $f4, $f16, $f18            
    nop
    mul.s   $f6, $f4, $f0              
    swc1    $f6, 0x0064($sp)           
    lwc1    $f10, 0x0268(a0)           # 00000268
    lwc1    $f8, 0x0A38(v0)            # 00000A38
    lwc1    $f4, 0x021C(a0)            # 0000021C
    mul.s   $f16, $f8, $f10            
    neg.s   $f18, $f16                 
    mul.s   $f6, $f18, $f4             
    nop
    mul.s   $f8, $f6, $f0              
    swc1    $f8, 0x0068($sp)           
lbl_80982F14:
    lwc1    $f10, 0x0010(s0)           # 00000A20
    lwc1    $f16, 0x0224(s1)           # 00000224
    lwc1    $f4, 0x0220(s1)            # 00000220
    lwc1    $f6, 0x0000(s0)            # 00000A10
    mul.s   $f18, $f10, $f16           
    lwc1    $f10, 0x0030(s0)           # 00000A40
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    mul.s   $f8, $f4, $f6              
    or      a0, s4, $zero              # a0 = 000007C0
    or      a1, s5, $zero              # a1 = FFFFFFE8
    or      a2, s6, $zero              # a2 = FFFFFFDC
    or      a3, s7, $zero              # a3 = FFFFFFD0
    add.s   $f16, $f10, $f8            
    add.s   $f4, $f18, $f16            
    swc1    $f4, 0x0088($sp)           
    lwc1    $f10, 0x0224(s1)           # 00000224
    lwc1    $f6, 0x0014(s0)            # 00000A24
    lwc1    $f18, 0x0220(s1)           # 00000220
    lwc1    $f16, 0x0004(s0)           # 00000A14
    mul.s   $f8, $f6, $f10             
    lwc1    $f10, 0x0034(s0)           # 00000A44
    mul.s   $f6, $f18, $f16            
    add.s   $f18, $f10, $f6            
    add.s   $f16, $f8, $f18            
    swc1    $f16, 0x008C($sp)          
    lwc1    $f6, 0x0224(s1)            # 00000224
    lwc1    $f10, 0x0018(s0)           # 00000A28
    lwc1    $f18, 0x0220(s1)           # 00000220
    mul.s   $f8, $f10, $f6             
    lwc1    $f10, 0x0008(s0)           # 00000A18
    mul.s   $f6, $f18, $f10            
    lwc1    $f18, 0x0038(s0)           # 00000A48
    sw      t6, 0x0014($sp)            
    sw      s8, 0x0010($sp)            
    add.s   $f10, $f18, $f6            
    lwc1    $f6, 0x0060($sp)           
    add.s   $f18, $f8, $f10            
    lwc1    $f10, 0x0064($sp)          
    add.s   $f8, $f6, $f4              
    lwc1    $f4, 0x0068($sp)           
    swc1    $f18, 0x0090($sp)          
    add.s   $f6, $f10, $f16            
    swc1    $f8, 0x007C($sp)           
    add.s   $f8, $f4, $f18             
    swc1    $f6, 0x0080($sp)           
    jal     func_80030AE8              
    swc1    $f8, 0x0084($sp)           
    beq     v0, $zero, lbl_80982FE4    
    addiu   s1, s1, 0x000C             # s1 = 0000000C
    lw      t7, 0x006C($sp)            
    beq     $zero, $zero, lbl_80982FE8 
    sw      t7, 0x004C(s2)             # 0000004C
lbl_80982FE4:
    sw      $zero, 0x004C(s2)          # 0000004C
lbl_80982FE8:
    addiu   s3, s3, 0x0054             # s3 = 00000054
    addiu   $at, $zero, 0x01F8         # $at = 000001F8
    bne     s3, $at, lbl_80982F14      
    addiu   s2, s2, 0x0054             # s2 = 00000054
    lw      $ra, 0x0044($sp)           
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    lw      s5, 0x0034($sp)            
    lw      s6, 0x0038($sp)            
    lw      s7, 0x003C($sp)            
    lw      s8, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_80983028:
    or      a1, a0, $zero              # a1 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    addiu   t3, $zero, 0x0054          # t3 = 00000054
lbl_80983038:
    addiu   a0, v0, 0x0001             # a0 = 00000001
    slti    $at, a0, 0x0006            
    beq     $at, $zero, lbl_8098311C   
    or      v1, a0, $zero              # v1 = 00000001
    sll     t6, v0,  2                 
    addu    t6, t6, v0                 
    sll     t6, t6,  2                 
    addu    t6, t6, v0                 
    sll     t6, t6,  2                 
    addu    a2, a1, t6                 
    lw      v0, 0x004C(a2)             # 0000004C
lbl_80983064:
    beql    v0, $zero, lbl_80983114    
    addiu   v1, v1, 0x0001             # v1 = 00000002
    multu   v1, t3                     
    mflo    t7                         
    addu    a3, a1, t7                 
    lw      t0, 0x004C(a3)             # 0000004C
    beql    t0, $zero, lbl_80983114    
    addiu   v1, v1, 0x0001             # v1 = 00000003
    lh      t8, 0x0008(v0)             # 00000008
    lh      t9, 0x0008(t0)             # 00000008
    subu    t1, t8, t9                 
    bltz    t1, lbl_809830A0           
    subu    t2, $zero, t1              
    beq     $zero, $zero, lbl_809830A0 
    or      t2, t1, $zero              # t2 = 00000000
lbl_809830A0:
    slti    $at, t2, 0x0064            
    beql    $at, $zero, lbl_80983114   
    addiu   v1, v1, 0x0001             # v1 = 00000004
    lh      t5, 0x000A(v0)             # 0000000A
    lh      t6, 0x000A(t0)             # 0000000A
    subu    t1, t5, t6                 
    bltz    t1, lbl_809830C8           
    subu    t2, $zero, t1              
    beq     $zero, $zero, lbl_809830C8 
    or      t2, t1, $zero              # t2 = 00000000
lbl_809830C8:
    slti    $at, t2, 0x0064            
    beql    $at, $zero, lbl_80983114   
    addiu   v1, v1, 0x0001             # v1 = 00000005
    lh      t7, 0x000C(v0)             # 0000000C
    lh      t8, 0x000C(t0)             # 0000000C
    subu    t1, t7, t8                 
    bltz    t1, lbl_809830F0           
    subu    t2, $zero, t1              
    beq     $zero, $zero, lbl_809830F0 
    or      t2, t1, $zero              # t2 = 00000000
lbl_809830F0:
    slti    $at, t2, 0x0064            
    beql    $at, $zero, lbl_80983114   
    addiu   v1, v1, 0x0001             # v1 = 00000006
    lh      t9, 0x000E(v0)             # 0000000E
    lh      t5, 0x000E(t0)             # 0000000E
    bnel    t9, t5, lbl_80983114       
    addiu   v1, v1, 0x0001             # v1 = 00000007
    sw      $zero, 0x004C(a3)          # 0000004C
    addiu   v1, v1, 0x0001             # v1 = 00000008
lbl_80983114:
    bnel    v1, t4, lbl_80983064       
    lw      v0, 0x004C(a2)             # 0000004C
lbl_8098311C:
    bne     a0, t4, lbl_80983038       
    or      v0, a0, $zero              # v0 = 00000001
    jr      $ra                        
    nop


func_8098312C:
    addiu   $sp, $sp, 0xFEB8           # $sp = FFFFFEB8
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f0                   # $f0 = 300.00
    lui     $at, 0x43C8                # $at = 43C80000
    sw      s8, 0x0078($sp)            
    sw      s7, 0x0074($sp)            
    sw      s1, 0x005C($sp)            
    sw      s0, 0x0058($sp)            
    mtc1    $at, $f2                   # $f2 = 400.00
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a2, $zero              # s1 = 00000000
    or      s7, a0, $zero              # s7 = 00000000
    addiu   s8, $sp, 0x0130            # s8 = FFFFFFE8
    sw      $ra, 0x007C($sp)           
    sw      s6, 0x0070($sp)            
    sw      s5, 0x006C($sp)            
    sw      s4, 0x0068($sp)            
    sw      s3, 0x0064($sp)            
    sw      s2, 0x0060($sp)            
    sdc1    $f30, 0x0050($sp)          
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    lw      s3, 0x1C44(s0)             # 00001C44
    lwc1    $f18, 0x0268(s7)           # 00000268
    lwc1    $f10, 0x021C(s7)           # 0000021C
    lwc1    $f4, 0x0A30(s3)            # 00000A30
    mul.s   $f16, $f4, $f18            
    neg.s   $f8, $f16                  
    mul.s   $f6, $f8, $f10             
    nop
    mul.s   $f4, $f6, $f2              
    swc1    $f4, 0x00E8($sp)           
    lwc1    $f16, 0x0268(s7)           # 00000268
    lwc1    $f18, 0x0A34(s3)           # 00000A34
    lwc1    $f6, 0x021C(s7)            # 0000021C
    mul.s   $f8, $f18, $f16            
    neg.s   $f10, $f8                  
    mul.s   $f18, $f10, $f6            
    nop
    mul.s   $f16, $f18, $f2            
    swc1    $f16, 0x00EC($sp)          
    lwc1    $f10, 0x0268(s7)           # 00000268
    lwc1    $f8, 0x0A38(s3)            # 00000A38
    mul.s   $f6, $f8, $f10             
    lwc1    $f8, 0x021C(s7)            # 0000021C
    neg.s   $f18, $f6                  
    mul.s   $f10, $f18, $f8            
    nop
    mul.s   $f6, $f10, $f2             
    swc1    $f6, 0x00F0($sp)           
    lwc1    $f18, 0x0A40(s3)           # 00000A40
    swc1    $f18, 0x0130($sp)          
    lwc1    $f8, 0x0A44(s3)            # 00000A44
    lwc1    $f18, 0x0130($sp)          
    swc1    $f8, 0x0134($sp)           
    lwc1    $f10, 0x0A48(s3)           # 00000A48
    add.s   $f8, $f4, $f18             
    swc1    $f10, 0x0138($sp)          
    lwc1    $f10, 0x0134($sp)          
    swc1    $f8, 0x0124($sp)           
    add.s   $f4, $f16, $f10            
    lwc1    $f16, 0x0138($sp)          
    add.s   $f6, $f6, $f16             
    swc1    $f4, 0x0128($sp)           
    swc1    $f6, 0x012C($sp)           
    swc1    $f18, 0x0080($sp)          
    lwc1    $f18, 0x0A10(s3)           # 00000A10
    swc1    $f8, 0x0084($sp)           
    lwc1    $f8, 0x0080($sp)           
    mul.s   $f18, $f18, $f0            
    addiu   t6, $sp, 0x0124            # t6 = FFFFFFDC
    addiu   a0, s7, 0x019C             # a0 = 0000019C
    addiu   a1, $sp, 0x00CC            # a1 = FFFFFF84
    or      a2, s8, $zero              # a2 = FFFFFFE8
    addiu   a3, $sp, 0x00C0            # a3 = FFFFFF78
    add.s   $f18, $f18, $f8            
    swc1    $f18, 0x00CC($sp)          
    lwc1    $f8, 0x0A14(s3)            # 00000A14
    mul.s   $f18, $f8, $f0             
    add.s   $f8, $f18, $f10            
    swc1    $f8, 0x00D0($sp)           
    lwc1    $f18, 0x0A18(s3)           # 00000A18
    mul.s   $f10, $f18, $f0            
    lwc1    $f18, 0x0084($sp)          
    add.s   $f8, $f10, $f16            
    swc1    $f8, 0x00D4($sp)           
    lwc1    $f10, 0x0A10(s3)           # 00000A10
    mul.s   $f16, $f10, $f0            
    add.s   $f8, $f16, $f18            
    swc1    $f8, 0x00C0($sp)           
    lwc1    $f10, 0x0A14(s3)           # 00000A14
    mul.s   $f16, $f10, $f0            
    add.s   $f18, $f16, $f4            
    swc1    $f18, 0x00C4($sp)          
    lwc1    $f8, 0x0A18(s3)            # 00000A18
    sw      t6, 0x0010($sp)            
    mul.s   $f10, $f8, $f0             
    add.s   $f16, $f10, $f6            
    jal     func_80050B64              
    swc1    $f16, 0x00C8($sp)          
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f28                  # $f28 = 600.00
    lui     $at, %hi(var_80983DF4)     # $at = 80980000
    lwc1    $f26, %lo(var_80983DF4)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f22                  # $f22 = 4.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f20                  # $f20 = 100.00
    mtc1    $zero, $f30                # $f30 = 0.00
    or      s2, $zero, $zero           # s2 = 00000000
    or      s0, s1, $zero              # s0 = 00000000
    addiu   s6, $sp, 0x00F4            # s6 = FFFFFFAC
    addiu   s5, $sp, 0x0100            # s5 = FFFFFFB8
    addiu   s4, $sp, 0x010C            # s4 = FFFFFFC4
lbl_80983308:
    lw      v0, 0x004C(s0)             # 0000004C
    beql    v0, $zero, lbl_80983648    
    addiu   s2, s2, 0x0054             # s2 = 00000054
    lh      t7, 0x0008(v0)             # 00000008
    addiu   t4, $sp, 0x0124            # t4 = FFFFFFDC
    addiu   t5, $sp, 0x0118            # t5 = FFFFFFD0
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    cvt.s.w $f18, $f4                  
    mul.s   $f12, $f18, $f26           
    swc1    $f12, 0x00DC($sp)          
    lw      t8, 0x004C(s0)             # 0000004C
    lh      t9, 0x000A(t8)             # 0000000A
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10                  
    mul.s   $f14, $f6, $f26            
    swc1    $f14, 0x00E0($sp)          
    lw      t0, 0x004C(s0)             # 0000004C
    lh      t1, 0x000C(t0)             # 0000000C
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f18, $f4                  
    mul.s   $f10, $f18, $f26           
    swc1    $f10, 0x00E4($sp)          
    lw      t2, 0x004C(s0)             # 0000004C
    mfc1    a2, $f10                   
    lh      t3, 0x000E(t2)             # 0000000E
    sw      t6, 0x001C($sp)            
    sw      t5, 0x0018($sp)            
    mtc1    t3, $f6                    # $f6 = 0.00
    sw      t4, 0x0014($sp)            
    sw      s8, 0x0010($sp)            
    cvt.s.w $f6, $f6                   
    mfc1    a3, $f6                    
    jal     func_800A7FC8              
    nop
    beq     v0, $zero, lbl_80983640    
    lwc1    $f4, 0x0118($sp)           
    swc1    $f4, 0x0000(s0)            # 00000000
    lwc1    $f18, 0x011C($sp)          
    addiu   s1, s3, 0x0A10             # s1 = 00000A10
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    swc1    $f18, 0x0004(s0)           # 00000004
    lwc1    $f8, 0x0120($sp)           
    lui     $at, 0x4448                # $at = 44480000
    swc1    $f8, 0x0008(s0)            # 00000008
    lwc1    $f10, 0x0130($sp)          
    lwc1    $f16, 0x0118($sp)          
    lwc1    $f4, 0x0134($sp)           
    lwc1    $f6, 0x011C($sp)           
    sub.s   $f2, $f16, $f10            
    lwc1    $f8, 0x0138($sp)           
    lwc1    $f18, 0x0120($sp)          
    sub.s   $f12, $f6, $f4             
    mul.s   $f16, $f2, $f2             
    sub.s   $f14, $f18, $f8            
    mul.s   $f10, $f12, $f12           
    lwc1    $f18, 0x021C(s7)           # 0000021C
    mul.s   $f4, $f14, $f14            
    nop
    mul.s   $f8, $f18, $f28            
    add.s   $f6, $f16, $f10            
    add.s   $f0, $f6, $f4              
    sqrt.s  $f0, $f0                   
    c.lt.s  $f0, $f8                   
    nop
    bc1f    lbl_80983424               
    nop
    beq     $zero, $zero, lbl_80983440 
    sb      t7, 0x0050(s0)             # 00000050
lbl_80983424:
    mtc1    $at, $f16                  # $f16 = 800.00
    nop
    sub.s   $f10, $f16, $f0            
    trunc.w.s $f6, $f10                  
    mfc1    t9, $f6                    
    nop
    sb      t9, 0x0050(s0)             # 00000050
lbl_80983440:
    lwc1    $f4, 0x0000(s1)            # 00000A10
    lwc1    $f8, 0x0130($sp)           
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    mul.s   $f18, $f4, $f20            
    lwc1    $f4, 0x0134($sp)           
    add.s   $f16, $f18, $f8            
    swc1    $f16, 0x010C($sp)          
    lwc1    $f10, 0x0004(s1)           # 00000A14
    mul.s   $f6, $f10, $f20            
    add.s   $f18, $f6, $f4             
    lwc1    $f6, 0x0138($sp)           
    swc1    $f18, 0x0110($sp)          
    lwc1    $f8, 0x0008(s1)            # 00000A18
    mul.s   $f10, $f8, $f20            
    lwc1    $f8, 0x00E8($sp)           
    add.s   $f4, $f10, $f6             
    mul.s   $f10, $f8, $f22            
    lwc1    $f8, 0x00EC($sp)           
    swc1    $f4, 0x0114($sp)           
    add.s   $f6, $f10, $f16            
    mul.s   $f10, $f8, $f22            
    swc1    $f6, 0x0100($sp)           
    lwc1    $f6, 0x00F0($sp)           
    mul.s   $f8, $f6, $f22             
    add.s   $f16, $f10, $f18           
    swc1    $f16, 0x0104($sp)          
    add.s   $f10, $f8, $f4             
    swc1    $f10, 0x0108($sp)          
    swc1    $f30, 0x0044(s0)           # 00000044
    lwc1    $f0, 0x0044(s0)            # 00000044
    lw      t0, 0x004C(s0)             # 0000004C
    swc1    $f24, 0x000C(s0)           # 0000000C
    swc1    $f24, 0x0020(s0)           # 00000020
    swc1    $f24, 0x0034(s0)           # 00000034
    swc1    $f24, 0x0048(s0)           # 00000048
    swc1    $f0, 0x0040(s0)            # 00000040
    swc1    $f0, 0x003C(s0)            # 0000003C
    swc1    $f0, 0x0038(s0)            # 00000038
    swc1    $f0, 0x0030(s0)            # 00000030
    swc1    $f0, 0x002C(s0)            # 0000002C
    swc1    $f0, 0x0028(s0)            # 00000028
    swc1    $f0, 0x0024(s0)            # 00000024
    swc1    $f0, 0x001C(s0)            # 0000001C
    swc1    $f0, 0x0018(s0)            # 00000018
    swc1    $f0, 0x0014(s0)            # 00000014
    swc1    $f0, 0x0010(s0)            # 00000010
    lh      t1, 0x000E(t0)             # 0000000E
    sw      t2, 0x001C($sp)            
    sw      s6, 0x0018($sp)            
    mtc1    t1, $f18                   # $f18 = 0.00
    sw      s5, 0x0014($sp)            
    sw      s4, 0x0010($sp)            
    cvt.s.w $f18, $f18                 
    lw      a2, 0x00E4($sp)            
    lwc1    $f14, 0x00E0($sp)          
    lwc1    $f12, 0x00DC($sp)          
    mfc1    a3, $f18                   
    jal     func_800A7FC8              
    nop
    beq     v0, $zero, lbl_80983560    
    lwc1    $f16, 0x00F4($sp)          
    lwc1    $f6, 0x0118($sp)           
    sub.s   $f8, $f16, $f6             
    swc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f10, 0x011C($sp)          
    lwc1    $f4, 0x00F8($sp)           
    sub.s   $f18, $f4, $f10            
    swc1    $f18, 0x0010(s0)           # 00000010
    lwc1    $f6, 0x0120($sp)           
    lwc1    $f16, 0x00FC($sp)          
    sub.s   $f8, $f16, $f6             
    swc1    $f8, 0x0014(s0)            # 00000014
lbl_80983560:
    lwc1    $f4, 0x0010(s1)            # 00000A20
    lwc1    $f18, 0x0130($sp)          
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    mul.s   $f10, $f4, $f20            
    lwc1    $f4, 0x0134($sp)           
    lwc1    $f12, 0x00DC($sp)          
    lwc1    $f14, 0x00E0($sp)          
    lw      a2, 0x00E4($sp)            
    add.s   $f16, $f10, $f18           
    swc1    $f16, 0x010C($sp)          
    lwc1    $f6, 0x0014(s1)            # 00000A24
    mul.s   $f8, $f6, $f20             
    add.s   $f10, $f8, $f4             
    lwc1    $f8, 0x0138($sp)           
    swc1    $f10, 0x0110($sp)          
    lwc1    $f18, 0x0018(s1)           # 00000A28
    mul.s   $f6, $f18, $f20            
    lwc1    $f18, 0x00E8($sp)          
    add.s   $f4, $f6, $f8              
    mul.s   $f6, $f18, $f22            
    lwc1    $f18, 0x00EC($sp)          
    swc1    $f4, 0x0114($sp)           
    add.s   $f8, $f6, $f16             
    mul.s   $f6, $f18, $f22            
    swc1    $f8, 0x0100($sp)           
    lwc1    $f8, 0x00F0($sp)           
    mul.s   $f18, $f8, $f22            
    add.s   $f16, $f6, $f10            
    swc1    $f16, 0x0104($sp)          
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x0108($sp)           
    lw      t3, 0x004C(s0)             # 0000004C
    lh      t4, 0x000E(t3)             # 0000000E
    sw      t5, 0x001C($sp)            
    sw      s6, 0x0018($sp)            
    mtc1    t4, $f10                   # $f10 = 0.00
    sw      s5, 0x0014($sp)            
    sw      s4, 0x0010($sp)            
    cvt.s.w $f10, $f10                 
    mfc1    a3, $f10                   
    jal     func_800A7FC8              
    nop
    beq     v0, $zero, lbl_80983644    
    lwc1    $f16, 0x00F4($sp)          
    lwc1    $f8, 0x0118($sp)           
    sub.s   $f18, $f16, $f8            
    swc1    $f18, 0x001C(s0)           # 0000001C
    lwc1    $f6, 0x011C($sp)           
    lwc1    $f4, 0x00F8($sp)           
    sub.s   $f10, $f4, $f6             
    swc1    $f10, 0x0020(s0)           # 00000020
    lwc1    $f8, 0x0120($sp)           
    lwc1    $f16, 0x00FC($sp)          
    sub.s   $f18, $f16, $f8            
    beq     $zero, $zero, lbl_80983644 
    swc1    $f18, 0x0024(s0)           # 00000024
lbl_80983640:
    sw      $zero, 0x004C(s0)          # 0000004C
lbl_80983644:
    addiu   s2, s2, 0x0054             # s2 = 000000A8
lbl_80983648:
    addiu   $at, $zero, 0x01F8         # $at = 000001F8
    bne     s2, $at, lbl_80983308      
    addiu   s0, s0, 0x0054             # s0 = 00000054
    lw      $ra, 0x007C($sp)           
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    ldc1    $f28, 0x0048($sp)          
    ldc1    $f30, 0x0050($sp)          
    lw      s0, 0x0058($sp)            
    lw      s1, 0x005C($sp)            
    lw      s2, 0x0060($sp)            
    lw      s3, 0x0064($sp)            
    lw      s4, 0x0068($sp)            
    lw      s5, 0x006C($sp)            
    lw      s6, 0x0070($sp)            
    lw      s7, 0x0074($sp)            
    lw      s8, 0x0078($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0148           # $sp = 00000000


func_8098369C:
    addiu   $sp, $sp, 0xFD80           # $sp = FFFFFD80
    sdc1    $f20, 0x0018($sp)          
    sw      s8, 0x0040($sp)            
    sw      s1, 0x0024($sp)            
    mtc1    $zero, $f20                # $f20 = 0.00
    or      s1, a0, $zero              # s1 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s7, 0x003C($sp)            
    sw      s6, 0x0038($sp)            
    sw      s5, 0x0034($sp)            
    sw      s4, 0x0030($sp)            
    sw      s3, 0x002C($sp)            
    sw      s2, 0x0028($sp)            
    sw      s0, 0x0020($sp)            
    lw      s0, 0x1C44(s8)             # 00001C44
    swc1    $f20, 0x021C(s1)           # 0000021C
    lui     t6, %hi(var_80983BF0)      # t6 = 80980000
    lbu     t6, %lo(var_80983BF0)(t6)  
    bnel    t6, $zero, lbl_8098395C    
    lw      $ra, 0x0044($sp)           
    lbu     t7, 0x029E(s1)             # 0000029E
    bnel    t7, $zero, lbl_8098395C    
    lw      $ra, 0x0044($sp)           
    jal     func_80079B7C              
    or      a0, s8, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80983958    
    addiu   a0, s0, 0x0A10             # a0 = 00000A10
    jal     func_800AA79C              
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80982C98              
    or      a1, s8, $zero              # a1 = 00000000
    lwc1    $f4, 0x021C(s1)            # 0000021C
    c.le.s  $f4, $f20                  
    nop
    bc1tl   lbl_8098395C               
    lw      $ra, 0x0044($sp)           
    lw      a0, 0x0000(s8)             # 00000000
    jal     func_8007E2C0              
    or      s3, a0, $zero              # s3 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lwc1    $f6, 0x021C(s1)            # 0000021C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mov.s   $f14, $f12                 
    mul.s   $f10, $f6, $f8             
    mfc1    a2, $f10                   
    jal     func_800AA8FC              
    nop
    lw      s2, 0x02D0(s3)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s2, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      t9, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s8)             # 00000000
    addiu   s4, $sp, 0x007C            # s4 = FFFFFDFC
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s3)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lwc1    $f16, 0x021C(s1)           # 0000021C
    mtc1    $at, $f18                  # $f18 = 100.00
    addiu   $at, $zero, 0x9600         # $at = FFFF9600
    lui     t8, 0xDE00                 # t8 = DE000000
    mul.s   $f4, $f16, $f18            
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s8, $zero              # a1 = 00000000
    trunc.w.s $f6, $f4                   
    mfc1    t4, $f6                    
    nop
    andi    t5, t4, 0x00FF             # t5 = 00000000
    or      t6, t5, $at                # t6 = FFFF9600
    sw      t6, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0C50             # t9 = 06000C50
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    jal     func_80982E4C              
    or      a2, s4, $zero              # a2 = FFFFFDFC
    jal     func_80983028              
    or      a0, s4, $zero              # a0 = FFFFFDFC
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s8, $zero              # a1 = 00000000
    jal     func_8098312C              
    or      a2, s4, $zero              # a2 = FFFFFDFC
    lw      t0, 0x00C8($sp)            
    addiu   s1, $sp, 0x00D0            # s1 = FFFFFE50
    addiu   v1, $sp, 0x0274            # v1 = FFFFFFF4
    bne     t0, $zero, lbl_80983834    
    addiu   s7, $sp, 0x0274            # s7 = FFFFFFF4
    sb      $zero, 0x00CC($sp)         
lbl_80983834:
    lw      t1, 0x004C(s1)             # FFFFFE9C
lbl_80983838:
    lbu     t2, 0x00CC($sp)            
    beql    t1, $zero, lbl_8098385C    
    addiu   s1, s1, 0x0054             # s1 = FFFFFEA4
    lbu     v0, 0x0050(s1)             # FFFFFEF4
    slt     $at, t2, v0                
    beql    $at, $zero, lbl_8098385C   
    addiu   s1, s1, 0x0054             # s1 = FFFFFEF8
    sb      v0, 0x00CC($sp)            
    addiu   s1, s1, 0x0054             # s1 = FFFFFF4C
lbl_8098385C:
    sltu    $at, s1, v1                
    bnel    $at, $zero, lbl_80983838   
    lw      t1, 0x004C(s1)             # FFFFFF98
    lui     $at, %hi(var_80983DF8)     # $at = 80980000
    lui     s6, 0xC810                 # s6 = C8100000
    lui     s5, 0xE200                 # s5 = E2000000
    ori     s5, s5, 0x001C             # s5 = E200001C
    ori     s6, s6, 0x4DD8             # s6 = C8104DD8
    lwc1    $f20, %lo(var_80983DF8)($at) 
    addiu   s1, $sp, 0x007C            # s1 = FFFFFDFC
    lw      t3, 0x004C(s1)             # FFFFFE48
lbl_80983888:
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   s0, s1, 0x000C             # s0 = FFFFFE08
    beq     t3, $zero, lbl_80983940    
    lui     s4, 0x0600                 # s4 = 06000000
    lwc1    $f12, 0x0000(s1)           # FFFFFDFC
    lwc1    $f14, 0x0004(s1)           # FFFFFE00
    lw      a2, 0x0008(s1)             # FFFFFE04
    jal     func_800AA7F4              
    addiu   s4, s4, 0x00B0             # s4 = 060000B0
    mfc1    a2, $f20                   
    mov.s   $f12, $f20                 
    mov.s   $f14, $f20                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s0, $zero              # a0 = FFFFFE08
    jal     func_800AA79C              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s2, 0x02D0(s3)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, s2, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s3)             # 000002D0
    sw      t5, 0x0000(s2)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s8)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   t6, s0, 0x0008             # t6 = FFFFFE10
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      s6, 0x0004(s0)             # FFFFFE0C
    sw      s5, 0x0000(s0)             # FFFFFE08
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   $at, $zero, 0x9600         # $at = FFFF9600
    addiu   t7, s0, 0x0008             # t7 = FFFFFE10
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      t8, 0x0000(s0)             # FFFFFE08
    lbu     t0, 0x00CC($sp)            
    or      t1, t0, $at                # t1 = FFFF9600
    sw      t1, 0x0004(s0)             # FFFFFE0C
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t2, s0, 0x0008             # t2 = FFFFFE10
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      s4, 0x0004(s0)             # FFFFFE0C
    sw      t3, 0x0000(s0)             # FFFFFE08
lbl_80983940:
    addiu   s1, s1, 0x0054             # s1 = FFFFFE50
    bnel    s1, s7, lbl_80983888       
    lw      t3, 0x004C(s1)             # FFFFFE9C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, %hi(var_80983BF0)     # $at = 80980000
    sb      t4, %lo(var_80983BF0)($at) 
lbl_80983958:
    lw      $ra, 0x0044($sp)           
lbl_8098395C:
    ldc1    $f20, 0x0018($sp)          
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    lw      s5, 0x0034($sp)            
    lw      s6, 0x0038($sp)            
    lw      s7, 0x003C($sp)            
    lw      s8, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0280           # $sp = 00000000


func_8098398C:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s0, 0x0018($sp)            
    sw      a3, 0x0094($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0088($sp)            
    sw      a2, 0x0090($sp)            
    lwc1    $f16, 0x0000(a3)           # 00000000
    lwc1    $f6, 0x0000(s0)            # 00000000
    lwc1    $f18, 0x0004(a3)           # 00000004
    lwc1    $f10, 0x0004(s0)           # 00000004
    lwc1    $f8, 0x0008(a3)            # 00000008
    sub.s   $f2, $f6, $f16             
    swc1    $f8, 0x0038($sp)           
    sub.s   $f12, $f10, $f18           
    mul.s   $f10, $f2, $f2             
    lwc1    $f6, 0x0038($sp)           
    lwc1    $f4, 0x0008(s0)            # 00000008
    mul.s   $f8, $f12, $f12            
    sub.s   $f14, $f4, $f6             
    mul.s   $f6, $f14, $f14            
    add.s   $f4, $f10, $f8             
    mtc1    $zero, $f8                 # $f8 = 0.00
    add.s   $f10, $f4, $f6             
    lwc1    $f4, 0x0090($sp)           
    c.eq.s  $f8, $f10                  
    swc1    $f10, 0x0034($sp)          
    bc1fl   lbl_80983A10               
    sub.s   $f6, $f4, $f16             
    beq     $zero, $zero, lbl_80983BBC 
    or      v0, $zero, $zero           # v0 = 00000000
    sub.s   $f6, $f4, $f16             
lbl_80983A10:
    lwc1    $f10, 0x0094($sp)          
    swc1    $f4, 0x0020($sp)           
    lwc1    $f4, 0x0038($sp)           
    mul.s   $f8, $f6, $f2              
    sub.s   $f6, $f10, $f18            
    swc1    $f10, 0x0024($sp)          
    lh      v0, 0x009E($sp)            
    lh      t8, 0x00A2($sp)            
    mul.s   $f6, $f6, $f12             
    or      a0, s0, $zero              # a0 = 00000000
    subu    t9, t8, v0                 
    or      a1, a3, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFD4
    add.s   $f8, $f8, $f6              
    lwc1    $f6, 0x0098($sp)           
    sub.s   $f10, $f6, $f4             
    swc1    $f6, 0x0028($sp)           
    mul.s   $f10, $f10, $f14           
    add.s   $f8, $f8, $f10             
    lwc1    $f10, 0x0034($sp)          
    div.s   $f0, $f8, $f10             
    mul.s   $f8, $f2, $f0              
    add.s   $f10, $f8, $f16            
    mul.s   $f8, $f12, $f0             
    nop
    mul.s   $f6, $f14, $f0             
    swc1    $f10, 0x0080($sp)          
    swc1    $f10, 0x002C($sp)          
    mtc1    v0, $f10                   # $f10 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    add.s   $f8, $f8, $f18             
    add.s   $f6, $f6, $f4              
    mtc1    t9, $f4                    # $f4 = 0.00
    swc1    $f8, 0x007C($sp)           
    cvt.s.w $f10, $f10                 
    swc1    $f6, 0x0078($sp)           
    cvt.s.w $f4, $f4                   
    mul.s   $f4, $f4, $f0              
    add.s   $f2, $f4, $f10             
    lwc1    $f10, 0x0020($sp)          
    lwc1    $f4, 0x002C($sp)           
    sub.s   $f12, $f4, $f10            
    lwc1    $f4, 0x0024($sp)           
    lwc1    $f10, 0x0028($sp)          
    sub.s   $f14, $f8, $f4             
    mul.s   $f8, $f2, $f2              
    sub.s   $f16, $f6, $f10            
    mul.s   $f4, $f12, $f12            
    nop
    mul.s   $f6, $f14, $f14            
    add.s   $f10, $f4, $f6             
    mul.s   $f4, $f16, $f16            
    add.s   $f6, $f10, $f4             
    c.le.s  $f6, $f8                   
    nop
    bc1f    lbl_80983BBC               
    nop
    jal     func_80063D48              # Vec3f_Sub
    sw      a3, 0x0088($sp)            
    lw      a3, 0x0088($sp)            
    lwc1    $f10, 0x0090($sp)          
    lwc1    $f6, 0x0094($sp)           
    lwc1    $f4, 0x0000(a3)            # 00000000
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFD4
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFC8
    sub.s   $f8, $f10, $f4             
    swc1    $f8, 0x0050($sp)           
    lwc1    $f10, 0x0004(a3)           # 00000004
    lwc1    $f8, 0x0098($sp)           
    sub.s   $f4, $f6, $f10             
    swc1    $f4, 0x0054($sp)           
    lwc1    $f6, 0x0008(a3)            # 00000008
    sub.s   $f10, $f8, $f6             
    jal     func_800A4EBC              
    swc1    $f10, 0x0058($sp)          
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f8, 0x0090($sp)           
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80983B60               
    lwc1    $f6, 0x0000(s0)            # 00000000
    beq     $zero, $zero, lbl_80983BBC 
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f6, 0x0000(s0)            # 00000000
lbl_80983B60:
    lwc1    $f4, 0x0094($sp)           
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFD4
    sub.s   $f10, $f8, $f6             
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFBC
    swc1    $f10, 0x0044($sp)          
    lwc1    $f8, 0x0004(s0)            # 00000004
    lwc1    $f10, 0x0098($sp)          
    sub.s   $f6, $f4, $f8              
    swc1    $f6, 0x0048($sp)           
    lwc1    $f4, 0x0008(s0)            # 00000008
    sub.s   $f8, $f10, $f4             
    jal     func_800A4EBC              
    swc1    $f8, 0x004C($sp)           
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.lt.s  $f6, $f0                   
    nop
    bc1f    lbl_80983BB4               
    nop
    beq     $zero, $zero, lbl_80983BBC 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80983BB4:
    beq     $zero, $zero, lbl_80983BBC 
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80983BBC:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0088           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80983BD0: .word 0x00B70700, 0x00000030, 0x00AB0000, 0x000002A0
.word func_8098289C
.word func_80982B34
.word func_80982BAC
.word func_8098369C
var_80983BF0: .word 0x00000000
var_80983BF4: .word \
0x0A090000, 0x00030000, 0x00000000, 0x00200000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x01000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80983C44: .word \
0x00000000, 0x00200000, 0x00000000, 0x00000000, \
0x00000000, 0x01000000, 0x00000000, 0x00000000, \
0x00320064
var_80983C68: .word 0x0A090000, 0x00000000, 0x00000001
.word var_80983C44
var_80983C78: .byte \
0xFB, 0x78, 0x02, 0xAE, 0xFC, 0x90, 0xFC, 0x68, 0x01, 0xE0, 0xFC, 0x87, 0x00, 0x1E, 0x00, 0x32, \
0x3F, 0x80, 0x00, 0x00, 0x00, 0x32, 0x00, 0x96, 0x3F, 0x4C, 0xCC, 0xCD, 0xFF, 0xFF, 0xFF
var_80983C97: .byte \
0x02, 0xF8, 0xC0, 0x04, 0x44, 0xFF, 0x42, 0xF9, 0x59, 0x03, 0x49, 0xFF, 0x46, 0x00, 0x1E, 0x00, \
0x46, 0x3F, 0x61, 0x47, 0xAE, 0x00, 0x36, 0x00, 0x96, 0x3F, 0x4C, 0xCC, 0xCD, 0xFF, 0xFF, 0xFF, \
0x02, 0x05, 0x57, 0x02, 0xE2, 0xFC, 0xA4, 0x04, 0x43, 0x01, 0xDC, 0xFC, 0xA4, 0x00, 0x1E, 0x00, \
0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x96, 0x3F, 0x4C, 0xCC, 0xCD, 0xFF, 0xFF, 0xFF, \
0x00, 0x08, 0x98, 0x04, 0x4F, 0xFF, 0x24, 0x07, 0xF8, 0x03, 0x4B, 0xFF, 0x24, 0x00, 0x1E, 0x00, \
0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x96, 0x3F, 0x4C, 0xCC, 0xCD, 0xFF, 0xFF, 0xFF, \
0x01, 0xFD, 0xD0, 0x08, 0x79, 0xFE, 0xCA, 0xFD, 0xD0, 0x06, 0xCF, 0xFE, 0xCA, 0x00, 0x1E, 0x00, \
0x46, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x96, 0x3F, 0x4C, 0xCC, 0xCD, 0xFF, 0xFF, 0xFF, \
0x00, 0x00, 0x3C, 0x07, 0x0A, 0xFB, 0xBE, 0x00, 0x3C, 0x03, 0xCD, 0xFB, 0xBE, 0x00, 0x1E, 0x00, \
0x46, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x96, 0x3F, 0x66, 0x66, 0x66, 0xFF, 0xFF, 0xFF, \
0x0D, 0x04, 0x74, 0x01, 0xE0, 0xFC, 0xA4, 0x04, 0x74, 0x01, 0xE0, 0xFC, 0xA4, 0x00, 0x1E, 0x00, \
0x1E, 0x3F, 0x80, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x64, 0x3F, 0x66, 0x66, 0x66, 0xFF, 0xFF, 0xFF, \
0x0E, 0xFD, 0xD0, 0x06, 0xCF, 0xFE, 0xCA, 0xFD, 0xD0, 0x06, 0xCF, 0xFE, 0xCA, 0x00, 0x1E, 0x00, \
0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x3F, 0x70, 0xA3, 0xD7, 0xFF, 0xFF, 0xFF, \
0x0C, 0x00, 0x3C, 0x06, 0xCF, 0xFE, 0xCA, 0x00, 0x3C, 0x06, 0xCF, 0xFE, 0xCA, 0x00, 0x1E, 0x00, \
0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x3F, 0x70, 0xA3, 0xD7, 0xFF, 0xFF, 0xFF, \
0x0C, 0xFB, 0x6A, 0x01, 0xC0, 0x04, 0xAA, 0xFB, 0x6A, 0x00, 0x94, 0x04, 0xAA, 0x00, 0x32, 0x00, \
0x64, 0x3F, 0x80, 0x00, 0x00, 0x00, 0x32, 0x00, 0x96, 0x3F, 0x4C, 0xCC, 0xCD, 0xFF, 0xFF, 0xFF, \
0x03
var_80983DB8: .word \
0xC8500000, 0xB0F40FA0, 0xB0F803E8, 0x30FC03E8, \
0x00000000, 0x00000000

.section .rodata

.word 0xC8BFBCCD, 0xB8F720C8, 0xAFC0B8BC, 0xBAC7D400
var_80983DE0: .word 0x443D8000
var_80983DE4: .word 0xC46AC000
var_80983DE8: .word 0xC4D34000
var_80983DEC: .word 0x446A8000
var_80983DF0: .word 0x44664000
var_80983DF4: .word 0x38000100
var_80983DF8: .word 0x3C23D70A, 0x00000000

