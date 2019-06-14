#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B74270:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s4, 0x0038($sp)            
    sw      s2, 0x0030($sp)            
    or      s2, a0, $zero              # s2 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s3, 0x0034($sp)            
    sw      s1, 0x002C($sp)            
    sw      s0, 0x0028($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lui     s1, %hi(var_80B755C0)      # s1 = 80B70000
    addiu   s1, s1, %lo(var_80B755C0)  # s1 = 80B755C0
    addu    s3, s4, $at                
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80B742AC:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80081628              # ObjectIndex
    lh      a1, 0x0000(s1)             # 80B755C0
    sb      s0, 0x020D(s2)             # 0000020D
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bltz    v0, lbl_80B742AC           
    addiu   s1, s1, 0x0008             # s1 = 80B755C8
    lbu     t6, 0x020D(s2)             # 0000020D
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t8, %hi(var_80B755C4)      # t8 = 80B70000
    sll     t7, t6,  3                 
    sb      v0, 0x020C(s2)             # 0000020C
    addu    t8, t8, t7                 
    lw      t8, %lo(var_80B755C4)(t8)  
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    addiu   a0, s2, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001EC20              
    sw      t8, 0x0204(s2)             # 00000204
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    or      a0, s2, $zero              # a0 = 00000000
    lh      t0, 0x001C(s2)             # 0000001C
    sh      $zero, 0x020A(s2)          # 0000020A
    sh      $zero, 0x0208(s2)          # 00000208
    andi    t1, t0, 0x00FF             # t1 = 00000000
    sltiu   $at, t1, 0x0005            
    sb      $zero, 0x0180(s2)          # 00000180
    beq     $at, $zero, lbl_80B745A8   
    sb      $zero, 0x0181(s2)          # 00000181
    sll     t1, t1,  2                 
    lui     $at, %hi(var_80B75610)     # $at = 80B70000
    addu    $at, $at, t1               
    lw      t1, %lo(var_80B75610)($at) 
    jr      t1                         
    nop
var_80B74344:
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   v0, s2, 0x0182             # v0 = 00000182
    addiu   t2, $zero, 0x0009          # t2 = 00000009
    sw      t2, 0x0018($sp)            
    sw      v0, 0x0010($sp)            
    sw      v0, 0x0014($sp)            
    addiu   a2, a2, 0x1BC8             # a2 = 06001BC8
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, s2, 0x013C             # a1 = 0000013C
    jal     func_8008C788              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t3, %hi(func_80B75378)     # t3 = 80B70000
    addiu   t3, t3, %lo(func_80B75378) # t3 = 80B75378
    sw      t3, 0x0270(s2)             # 00000270
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80B75378              
    or      a1, s4, $zero              # a1 = 00000000
    addiu   t4, $zero, 0x4000          # t4 = 00004000
    sh      t4, 0x018C(s2)             # 0000018C
    lh      t5, 0x018C(s2)             # 0000018C
    addiu   s0, s2, 0x01B8             # s0 = 000001B8
    or      a1, s0, $zero              # a1 = 000001B8
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_8004AB7C              
    sh      t5, 0x0188(s2)             # 00000188
    lui     a3, %hi(var_80B75560)      # a3 = 80B70000
    addiu   a3, a3, %lo(var_80B75560)  # a3 = 80B75560
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 000001B8
    jal     func_8004ACEC              
    or      a2, s2, $zero              # a2 = 00000000
    addiu   s0, s2, 0x0210             # s0 = 00000210
    or      a1, s0, $zero              # a1 = 00000210
    jal     func_8004A484              
    or      a0, s4, $zero              # a0 = 00000000
    lui     a3, %hi(var_80B755B0)      # a3 = 80B70000
    addiu   t6, s2, 0x0230             # t6 = 00000230
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80B755B0)  # a3 = 80B755B0
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000210
    jal     func_8004A874              
    or      a2, s2, $zero              # a2 = 00000000
    lw      t8, 0x022C(s2)             # 0000022C
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    sh      t7, 0x0036(t8)             # 00000036
    lwc1    $f4, 0x0024(s2)            # 00000024
    lw      t1, 0x022C(s2)             # 0000022C
    trunc.w.s $f6, $f4                   
    mfc1    t0, $f6                    
    nop
    sh      t0, 0x0030(t1)             # 00000030
    lwc1    $f8, 0x0028(s2)            # 00000028
    lw      t7, 0x022C(s2)             # 0000022C
    trunc.w.s $f10, $f8                  
    mfc1    t5, $f10                   
    nop
    addiu   t6, t5, 0x0032             # t6 = 00000032
    sh      t6, 0x0032(t7)             # 00000082
    lwc1    $f16, 0x002C(s2)           # 0000002C
    lw      t0, 0x022C(s2)             # 0000022C
    trunc.w.s $f18, $f16                 
    mfc1    t9, $f18                   
    nop
    sh      t9, 0x0034(t0)             # 00000034
    lh      a1, 0x001C(s2)             # 0000001C
    sra     a1, a1,  8                 
    andi    a1, a1, 0x003F             # a1 = 00000000
    beql    a1, $at, lbl_80B745AC      
    lw      $ra, 0x003C($sp)           
    jal     func_8002049C              
    or      a0, s4, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80B745AC    
    lw      $ra, 0x003C($sp)           
    jal     func_80020EB4              
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B745AC 
    lw      $ra, 0x003C($sp)           
var_80B74480:
    lui     t1, %hi(func_80B75378)     # t1 = 80B70000
    addiu   t1, t1, %lo(func_80B75378) # t1 = 80B75378
    sw      t1, 0x0270(s2)             # 00000270
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80B75378              
    or      a1, s4, $zero              # a1 = 00000000
    lui     $at, %hi(var_80B75624)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B75624)($at) 
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f6                   # $f6 = -6.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f12                  # $f12 = 8.00
    swc1    $f4, 0x006C(s2)            # 0000006C
    jal     func_80026D90              
    swc1    $f6, 0x0070(s2)            # 00000070
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f12                  # $f12 = 8.00
    jal     func_80026D64              
    swc1    $f0, 0x0050($sp)           
    swc1    $f0, 0x0064(s2)            # 00000064
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s2)             # 00000032
    swc1    $f0, 0x0040($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s2)             # 00000032
    lwc1    $f8, 0x0040($sp)           
    lwc1    $f10, 0x0050($sp)          
    lwc1    $f18, 0x0064(s2)           # 00000064
    lh      a0, 0x0032(s2)             # 00000032
    mul.s   $f16, $f8, $f10            
    nop
    mul.s   $f4, $f0, $f18             
    add.s   $f6, $f4, $f16             
    jal     func_800636C4              # sins?
    swc1    $f6, 0x005C(s2)            # 0000005C
    swc1    $f0, 0x0040($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s2)             # 00000032
    lwc1    $f8, 0x0040($sp)           
    lwc1    $f18, 0x0050($sp)          
    lwc1    $f16, 0x0064(s2)           # 00000064
    neg.s   $f10, $f8                  
    lui     $at, 0x4080                # $at = 40800000
    mul.s   $f4, $f10, $f18            
    mtc1    $at, $f12                  # $f12 = 4.00
    mul.s   $f6, $f0, $f16             
    add.s   $f8, $f6, $f4              
    jal     func_80026D64              
    swc1    $f8, 0x0064(s2)            # 00000064
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    lui     $at, 0x4580                # $at = 45800000
    mtc1    $at, $f12                  # $f12 = 4096.00
    add.s   $f18, $f0, $f10            
    jal     func_80026D90              
    swc1    $f18, 0x0060(s2)           # 00000060
    trunc.w.s $f16, $f0                  
    lui     $at, 0x4580                # $at = 45800000
    mtc1    $at, $f12                  # $f12 = 4096.00
    mfc1    t3, $f16                   
    jal     func_80026D90              
    sh      t3, 0x0030(s2)             # 00000030
    trunc.w.s $f6, $f0                   
    lui     $at, 0x4580                # $at = 45800000
    mtc1    $at, $f12                  # $f12 = 4096.00
    mfc1    t5, $f6                    
    jal     func_80026D90              
    sh      t5, 0x0032(s2)             # 00000032
    trunc.w.s $f4, $f0                   
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sh      t8, 0x020A(s2)             # 0000020A
    mfc1    t7, $f4                    
    nop
    sh      t7, 0x0034(s2)             # 00000034
lbl_80B745A8:
    lw      $ra, 0x003C($sp)           
lbl_80B745AC:
    lw      s0, 0x0028($sp)            
    lw      s1, 0x002C($sp)            
    lw      s2, 0x0030($sp)            
    lw      s3, 0x0034($sp)            
    lw      s4, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80B745C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    lw      a0, 0x001C($sp)            
    addiu   a1, a2, 0x01B8             # a1 = 000001B8
    andi    t7, t6, 0x00FF             # t7 = 00000000
    bnel    t7, $zero, lbl_80B7460C    
    lw      $ra, 0x0014($sp)           
    jal     func_8004ABCC              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004A550              
    addiu   a1, a2, 0x0210             # a1 = 00000210
    lw      $ra, 0x0014($sp)           
lbl_80B7460C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B74618:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0034($sp)            
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s2, 0x0038($sp)            
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f6                   # $f6 = 9.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   s2, s1, 0x1C24             # s2 = 00001C24
    add.s   $f8, $f4, $f6              
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    or      a0, s2, $zero              # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    addiu   a2, $zero, 0x01C1          # a2 = 000001C1
    swc1    $f10, 0x0014($sp)          
    lh      t6, 0x00B4(s0)             # 000000B4
    sw      t6, 0x0018($sp)            
    lh      t7, 0x00B6(s0)             # 000000B6
    sw      t7, 0x001C($sp)            
    lh      t8, 0x00B8(s0)             # 000000B8
    sw      t9, 0x0024($sp)            
    jal     func_80025110              # ActorSpawn
    sw      t8, 0x0020($sp)            
    lui     $at, %hi(var_80B75628)     # $at = 80B70000
    lwc1    $f18, %lo(var_80B75628)($at) 
    lui     $at, %hi(var_80B7562C)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B7562C)($at) 
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x0024(s0)           # 00000024
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    add.s   $f10, $f6, $f8             
    or      a0, s2, $zero              # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    add.s   $f4, $f16, $f18            
    swc1    $f10, 0x0010($sp)          
    lwc1    $f16, 0x002C(s0)           # 0000002C
    addiu   a2, $zero, 0x01C1          # a2 = 000001C1
    mfc1    a3, $f4                    
    swc1    $f16, 0x0014($sp)          
    lh      t0, 0x00B4(s0)             # 000000B4
    sw      t0, 0x0018($sp)            
    lh      t1, 0x00B6(s0)             # 000000B6
    sw      t1, 0x001C($sp)            
    lh      t2, 0x00B8(s0)             # 000000B8
    sw      t3, 0x0024($sp)            
    jal     func_80025110              # ActorSpawn
    sw      t2, 0x0020($sp)            
    lui     $at, %hi(var_80B75630)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B75630)($at) 
    lui     $at, %hi(var_80B75634)     # $at = 80B70000
    lwc1    $f10, %lo(var_80B75634)($at) 
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f18, 0x0024(s0)           # 00000024
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    add.s   $f16, $f8, $f10            
    or      a0, s2, $zero              # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    sub.s   $f6, $f18, $f4             
    swc1    $f16, 0x0010($sp)          
    lwc1    $f18, 0x002C(s0)           # 0000002C
    addiu   a2, $zero, 0x01C1          # a2 = 000001C1
    mfc1    a3, $f6                    
    swc1    $f18, 0x0014($sp)          
    lh      t4, 0x00B4(s0)             # 000000B4
    sw      t4, 0x0018($sp)            
    lh      t5, 0x00B6(s0)             # 000000B6
    sw      t5, 0x001C($sp)            
    lh      t6, 0x00B8(s0)             # 000000B8
    sw      t7, 0x0024($sp)            
    jal     func_80025110              # ActorSpawn
    sw      t6, 0x0020($sp)            
    lui     $at, %hi(var_80B75638)     # $at = 80B70000
    lwc1    $f6, %lo(var_80B75638)($at) 
    lui     $at, %hi(var_80B7563C)     # $at = 80B70000
    lwc1    $f16, %lo(var_80B7563C)($at) 
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x0024(s0)            # 00000024
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    add.s   $f18, $f10, $f16           
    or      a0, s2, $zero              # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    add.s   $f8, $f4, $f6              
    swc1    $f18, 0x0010($sp)          
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   a2, $zero, 0x01C1          # a2 = 000001C1
    mfc1    a3, $f8                    
    swc1    $f4, 0x0014($sp)           
    lh      t8, 0x00B4(s0)             # 000000B4
    sw      t8, 0x0018($sp)            
    lh      t9, 0x00B6(s0)             # 000000B6
    sw      t9, 0x001C($sp)            
    lh      t0, 0x00B8(s0)             # 000000B8
    sw      t1, 0x0024($sp)            
    jal     func_80025110              # ActorSpawn
    sw      t0, 0x0020($sp)            
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80B747C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lwc1    $f4, 0x0060(a0)            # 00000060
    lwc1    $f6, 0x006C(a0)            # 0000006C
    lwc1    $f0, 0x0070(a0)            # 00000070
    lui     $at, %hi(var_80B75640)     # $at = 80B70000
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0060(a0)            # 00000060
    lwc1    $f10, 0x0060(a0)           # 00000060
    c.lt.s  $f10, $f0                  
    nop
    bc1f    lbl_80B747FC               
    nop
    swc1    $f0, 0x0060(a0)            # 00000060
lbl_80B747FC:
    lwc1    $f0, %lo(var_80B75640)($at) 
    lwc1    $f16, 0x005C(a0)           # 0000005C
    lwc1    $f4, 0x0064(a0)            # 00000064
    lh      t6, 0x00B4(a0)             # 000000B4
    mul.s   $f18, $f16, $f0            
    lh      t7, 0x0030(a0)             # 00000030
    lh      t9, 0x00B6(a0)             # 000000B6
    mul.s   $f6, $f4, $f0              
    lh      t0, 0x0032(a0)             # 00000032
    lh      t2, 0x00B8(a0)             # 000000B8
    lh      t3, 0x0034(a0)             # 00000034
    lhu     v0, 0x020A(a0)             # 0000020A
    addu    t8, t6, t7                 
    addu    t1, t9, t0                 
    addu    t4, t2, t3                 
    swc1    $f18, 0x005C(a0)           # 0000005C
    swc1    $f6, 0x0064(a0)            # 00000064
    sh      t8, 0x00B4(a0)             # 000000B4
    sh      t1, 0x00B6(a0)             # 000000B6
    beq     v0, $zero, lbl_80B7485C    
    sh      t4, 0x00B8(a0)             # 000000B8
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    beq     $zero, $zero, lbl_80B74868 
    sh      t5, 0x020A(a0)             # 0000020A
lbl_80B7485C:
    jal     func_80020EB4              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
lbl_80B74868:
    jal     func_80021124              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B74880:
    sw      a1, 0x0004($sp)            
    lbu     t6, 0x01C9(a0)             # 000001C9
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80B748AC    
    nop
    lw      t8, 0x01F4(a0)             # 000001F4
    beq     t8, $zero, lbl_80B748AC    
    nop
    jr      $ra                        
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B748AC:
    jr      $ra                        
    nop


func_80B748B4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    addiu   a2, a0, 0x01B8             # a2 = 000001B8
    or      a1, a2, $zero              # a1 = 000001B8
    sw      a2, 0x001C($sp)            
    jal     func_80050B00              
    sw      a0, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    lw      a2, 0x001C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x0018($sp)            
    lw      a2, 0x0020($sp)            
    lw      a1, 0x0018($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a2, 0x0210             # a2 = 00000210
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B74914:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      a2, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    lw      a0, 0x001C($sp)            
    sra     a2, a2,  8                 
    andi    a2, a2, 0x003F             # a2 = 00000000
    beq     a2, $at, lbl_80B7494C      
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_800204D0              
    sw      a3, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
lbl_80B7494C:
    jal     func_80020EB4              
    or      a0, a3, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B74964:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    lhu     v0, 0x020A(a2)             # 0000020A
    lui     t7, %hi(func_80B75084)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B75084) # t7 = 80B75084
    blez    v0, lbl_80B74990           
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B749A8 
    sh      t6, 0x020A(a2)             # 0000020A
lbl_80B74990:
    sw      t7, 0x0270(a2)             # 00000270
    sh      t8, 0x020A(a2)             # 0000020A
    jal     func_80B748B4              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B74B08 
    lw      $ra, 0x0014($sp)           
lbl_80B749A8:
    lhu     v0, 0x020A(a2)             # 0000020A
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    slti    $at, v0, 0x0008            
    bne     $at, $zero, lbl_80B749C8   
    sll     t9, v0, 11                 
    addiu   t0, t9, 0xC000             # t0 = FFFFC000
    beq     $zero, $zero, lbl_80B749D0 
    sh      t0, 0x00B4(a2)             # 000000B4
lbl_80B749C8:
    sh      $zero, 0x00B4(a2)          # 000000B4
    lhu     v0, 0x020A(a2)             # 0000020A
lbl_80B749D0:
    slti    $at, v0, 0x000C            
    bne     $at, $zero, lbl_80B74A04   
    subu    a0, $zero, v0              
    subu    $at, $zero, a0             
    sll     a0, $at,  5                
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  2                 
    addiu   a0, a0, 0xE0C0             # a0 = FFFFE0C0
    sll     a0, a0, 16                 
    beq     $zero, $zero, lbl_80B74A4C 
    sra     a0, a0, 16                 
lbl_80B74A04:
    slti    $at, v0, 0x0008            
    bnel    $at, $zero, lbl_80B74A1C   
    slti    $at, v0, 0x0005            
    beq     $zero, $zero, lbl_80B74A4C 
    addiu   a0, $zero, 0xF830          # a0 = FFFFF830
    slti    $at, v0, 0x0005            
lbl_80B74A1C:
    bne     $at, $zero, lbl_80B74A4C   
    or      a0, $zero, $zero           # a0 = 00000000
    subu    $at, $zero, v0             
    sll     a0, $at,  5                
    subu    a0, a0, $at                
    sll     a0, a0,  2                 
    addu    a0, a0, $at                
    sll     a0, a0,  2                 
    addiu   a0, a0, 0x07D0             # a0 = 000007D0
    sll     a0, a0, 16                 
    beq     $zero, $zero, lbl_80B74A4C 
    sra     a0, a0, 16                 
lbl_80B74A4C:
    addiu   v0, a2, 0x000C             # v0 = 0000000C
    subu    a1, $zero, a0              
lbl_80B74A54:
    addiu   v1, v1, 0x0001             # v1 = 00000003
    slti    $at, v1, 0x0009            
    addiu   v0, v0, 0x0006             # v0 = 00000012
    bne     $at, $zero, lbl_80B74A54   
    sh      a1, 0x0180(v0)             # 00000192
    lhu     v0, 0x020A(a2)             # 0000020A
    slti    $at, v0, 0x0008            
    beq     $at, $zero, lbl_80B74B04   
    or      a0, v0, $zero              # a0 = 00000012
    sll     a0, a0, 29                 
    sra     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     $at, 0x4F80                # $at = 4F800000
    lhu     t1, 0x020A(a2)             # 0000020A
    mtc1    t1, $f4                    # $f4 = 0.00
    bgez    t1, lbl_80B74AAC           
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8              
lbl_80B74AAC:
    mul.s   $f10, $f0, $f6             
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    addiu   v0, a2, 0x000C             # v0 = 0000000C
    addiu   v1, $zero, 0x0005          # v1 = 00000005
    sll     t3, v1,  2                 
    subu    t3, t3, v1                 
    mul.s   $f18, $f10, $f16           
    sll     t3, t3,  1                 
    trunc.w.s $f4, $f18                  
    mfc1    a0, $f4                    
    nop
    sll     a0, a0, 16                 
    sra     a0, a0, 16                 
    sh      a0, 0x0184(v0)             # 00000190
    sh      a0, 0x018A(v0)             # 00000196
    sh      a0, 0x0190(v0)             # 0000019C
    addu    v0, a2, t3                 
    sh      a0, 0x018A(v0)             # 00000196
    sh      a0, 0x0190(v0)             # 0000019C
    sh      a0, 0x0196(v0)             # 000001A2
    sh      a0, 0x0184(v0)             # 00000190
lbl_80B74B04:
    lw      $ra, 0x0014($sp)           
lbl_80B74B08:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B74B14:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s1, 0x0040($sp)            
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)           
    sw      s0, 0x003C($sp)            
    sdc1    $f26, 0x0030($sp)          
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    sw      a1, 0x009C($sp)            
    lhu     v0, 0x020A(s1)             # 0000020A
    lui     t7, %hi(func_80B74964)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B74964) # t7 = 80B74964
    blez    v0, lbl_80B74B5C           
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B74B68 
    sh      t6, 0x020A(s1)             # 0000020A
lbl_80B74B5C:
    sw      t7, 0x0270(s1)             # 00000270
    beq     $zero, $zero, lbl_80B74EBC 
    sh      t8, 0x020A(s1)             # 0000020A
lbl_80B74B68:
    lhu     v0, 0x020A(s1)             # 0000020A
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    sll     t3, a0,  2                 
    slti    $at, v0, 0x0004            
    bne     $at, $zero, lbl_80B74B98   
    subu    t3, t3, a0                 
    subu    t9, $zero, v0              
    sll     t0, t9, 12                 
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t1, t0, $at                
    beq     $zero, $zero, lbl_80B74BA4 
    sh      t1, 0x00B4(s1)             # 000000B4
lbl_80B74B98:
    addiu   t2, $zero, 0x4000          # t2 = 00004000
    sh      t2, 0x00B4(s1)             # 000000B4
    lhu     v0, 0x020A(s1)             # 0000020A
lbl_80B74BA4:
    slti    $at, v0, 0x0006            
    bne     $at, $zero, lbl_80B74BDC   
    sll     t3, t3,  1                 
    subu    v1, $zero, v0              
    subu    $at, $zero, v1             
    sll     v1, $at,  5                
    subu    v1, v1, $at                
    sll     v1, v1,  2                 
    addu    v1, v1, $at                
    sll     v1, v1,  2                 
    addiu   v1, v1, 0xF060             # v1 = FFFFF060
    sll     v1, v1, 16                 
    beq     $zero, $zero, lbl_80B74C24 
    sra     v1, v1, 16                 
lbl_80B74BDC:
    slti    $at, v0, 0x0004            
    bnel    $at, $zero, lbl_80B74BF4   
    slti    $at, v0, 0x0003            
    beq     $zero, $zero, lbl_80B74C24 
    addiu   v1, $zero, 0xFC18          # v1 = FFFFFC18
    slti    $at, v0, 0x0003            
lbl_80B74BF4:
    bne     $at, $zero, lbl_80B74C24   
    or      v1, $zero, $zero           # v1 = 00000000
    subu    $at, $zero, v0             
    sll     v1, $at,  5                
    subu    v1, v1, $at                
    sll     v1, v1,  2                 
    addu    v1, v1, $at                
    sll     v1, v1,  2                 
    addiu   v1, v1, 0x03E8             # v1 = 000003E8
    sll     v1, v1, 16                 
    beq     $zero, $zero, lbl_80B74C24 
    sra     v1, v1, 16                 
lbl_80B74C24:
    addiu   v0, s1, 0x000C             # v0 = 0000000C
    sh      v1, 0x0186(v0)             # 00000192
    sh      v1, 0x018C(v0)             # 00000198
    sh      v1, 0x0192(v0)             # 0000019E
    addu    v0, s1, t3                 
    sh      v1, 0x018C(v0)             # 00000198
    sh      v1, 0x0192(v0)             # 0000019E
    sh      v1, 0x0198(v0)             # 000001A4
    sh      v1, 0x0186(v0)             # 00000192
    lhu     t4, 0x020A(s1)             # 0000020A
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t5, $sp, 0x0084            # t5 = FFFFFFEC
    bne     t4, $at, lbl_80B74DB8      
    lui     t6, %hi(var_80B755E0)      # t6 = 80B70000
    addiu   t6, t6, %lo(var_80B755E0)  # t6 = 80B755E0
    lw      t8, 0x0000(t6)             # 80B755E0
    lw      t7, 0x0004(t6)             # 80B755E4
    lui     t0, %hi(var_80B755EC)      # t0 = 80B70000
    sw      t8, 0x0000(t5)             # FFFFFFEC
    lw      t8, 0x0008(t6)             # 80B755E8
    addiu   t0, t0, %lo(var_80B755EC)  # t0 = 80B755EC
    sw      t7, 0x0004(t5)             # FFFFFFF0
    sw      t8, 0x0008(t5)             # FFFFFFF4
    lw      t2, 0x0000(t0)             # 80B755EC
    addiu   t9, $sp, 0x0078            # t9 = FFFFFFE0
    lw      t1, 0x0004(t0)             # 80B755F0
    sw      t2, 0x0000(t9)             # FFFFFFE0
    lw      t2, 0x0008(t0)             # 80B755F4
    lui     $at, %hi(var_80B75644)     # $at = 80B70000
    sw      t1, 0x0004(t9)             # FFFFFFE4
    sw      t2, 0x0008(t9)             # FFFFFFE8
    lwc1    $f26, %lo(var_80B75644)($at) 
    lui     $at, %hi(var_80B75648)     # $at = 80B70000
    lwc1    $f24, %lo(var_80B75648)($at) 
    or      s0, $zero, $zero           # s0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80B74CB4:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    jal     func_80026D90              
    swc1    $f4, 0x0070($sp)           
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D64              
    mov.s   $f22, $f0                  
    swc1    $f0, 0x0074($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s1)             # 00000032
    mov.s   $f20, $f0                  
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s1)             # 00000032
    lwc1    $f6, 0x0074($sp)           
    mul.s   $f8, $f0, $f6              
    nop
    mul.s   $f10, $f20, $f22           
    add.s   $f16, $f8, $f10            
    swc1    $f16, 0x006C($sp)          
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s1)             # 00000032
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s1)             # 00000032
    lwc1    $f18, 0x0074($sp)          
    neg.s   $f6, $f20                  
    lwc1    $f16, 0x006C($sp)          
    mul.s   $f4, $f0, $f18             
    addiu   t3, $zero, 0x012C          # t3 = 0000012C
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    mul.s   $f8, $f6, $f22             
    lw      a0, 0x009C($sp)            
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFD4
    mul.s   $f18, $f16, $f24           
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFEC
    addiu   a3, $sp, 0x0078            # a3 = FFFFFFE0
    add.s   $f10, $f4, $f8             
    swc1    $f18, 0x0084($sp)          
    neg.s   $f4, $f18                  
    mul.s   $f6, $f10, $f24            
    swc1    $f10, 0x0074($sp)          
    mul.s   $f8, $f4, $f26             
    neg.s   $f18, $f6                  
    swc1    $f6, 0x008C($sp)           
    mul.s   $f4, $f18, $f26            
    swc1    $f8, 0x0078($sp)           
    lwc1    $f18, 0x0070($sp)          
    swc1    $f4, 0x0080($sp)           
    lwc1    $f8, 0x0024(s1)            # 00000024
    add.s   $f6, $f16, $f8             
    swc1    $f6, 0x006C($sp)           
    lwc1    $f4, 0x0028(s1)            # 00000028
    add.s   $f16, $f18, $f4            
    swc1    $f16, 0x0070($sp)          
    lwc1    $f8, 0x002C(s1)            # 0000002C
    sw      t4, 0x0014($sp)            
    sw      t3, 0x0010($sp)            
    add.s   $f6, $f10, $f8             
    jal     func_8001C154              
    swc1    $f6, 0x0074($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    s0, $at, lbl_80B74CB4      
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80B74DB8:
    lhu     v0, 0x0208(s1)             # 00000208
    lw      t5, 0x009C($sp)            
    or      a0, s1, $zero              # a0 = 00000000
    andi    v1, v0, 0x0001             # v1 = 00000000
    bne     v1, $zero, lbl_80B74E94    
    nop
    lw      s0, 0x1C44(t5)             # 00001C44
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFC0
    jal     func_8002154C              
    addiu   a2, s0, 0x0024             # a2 = 00000025
    lwc1    $f0, 0x005C($sp)           
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    lwc1    $f0, 0x0058($sp)           
    bc1fl   lbl_80B74E90               
    lhu     v0, 0x0208(s1)             # 00000208
    abs.s   $f0, $f0                   
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f0, $f2                   
    lwc1    $f0, 0x0060($sp)           
    bc1fl   lbl_80B74E90               
    lhu     v0, 0x0208(s1)             # 00000208
    mtc1    $at, $f18                  # $f18 = 100.00
    nop
    c.lt.s  $f0, $f18                  
    nop
    bc1fl   lbl_80B74E90               
    lhu     v0, 0x0208(s1)             # 00000208
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x40C0                # $at = 40C00000
    or      a1, s1, $zero              # a1 = 00000000
    c.lt.s  $f4, $f0                   
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    bc1fl   lbl_80B74E90               
    lhu     v0, 0x0208(s1)             # 00000208
    lhu     t6, 0x0208(s1)             # 00000208
    mtc1    $at, $f0                   # $f0 = 6.00
    lh      a3, 0x008A(s1)             # 0000008A
    ori     t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0208(s1)             # 00000208
    mfc1    a2, $f0                    
    sw      t8, 0x0014($sp)            
    lw      a0, 0x009C($sp)            
    jal     func_80022E7C              
    swc1    $f0, 0x0010($sp)           
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39DC          # a1 = 000039DC
    or      a0, s0, $zero              # a0 = 00000001
    jal     func_80022F84              
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    lhu     v0, 0x0208(s1)             # 00000208
lbl_80B74E90:
    andi    v1, v0, 0x0001             # v1 = 00000000
lbl_80B74E94:
    bnel    v1, $zero, lbl_80B74EC0    
    lw      $ra, 0x0044($sp)           
    lhu     t9, 0x020A(s1)             # 0000020A
    addiu   $at, $zero, 0x0002         # $at = 00000002
    ori     t0, v0, 0x0001             # t0 = 00000001
    bne     t9, $at, lbl_80B74EBC      
    or      a0, s1, $zero              # a0 = 00000000
    sh      t0, 0x0208(s1)             # 00000208
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39DE          # a1 = 000039DE
lbl_80B74EBC:
    lw      $ra, 0x0044($sp)           
lbl_80B74EC0:
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    ldc1    $f26, 0x0030($sp)          
    lw      s0, 0x003C($sp)            
    lw      s1, 0x0040($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_80B74EE0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lhu     v0, 0x020A(s0)             # 0000020A
    addiu   $at, $zero, 0x0010         # $at = 00000010
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80B74F14      
    or      v1, v0, $zero              # v1 = 00000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_80B74F24      
    nop
lbl_80B74F14:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x39DB          # a1 = 000039DB
    lhu     v0, 0x020A(s0)             # 0000020A
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B74F24:
    blez    v1, lbl_80B74F38           
    lui     t7, %hi(func_80B74B14)     # t7 = 80B70000
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B74F58 
    sh      t6, 0x020A(s0)             # 0000020A
lbl_80B74F38:
    lhu     t9, 0x0208(s0)             # 00000208
    addiu   t7, t7, %lo(func_80B74B14) # t7 = 80B74B14
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    andi    t0, t9, 0xFFFE             # t0 = 00000000
    sw      t7, 0x0270(s0)             # 00000270
    sh      t8, 0x020A(s0)             # 0000020A
    beq     $zero, $zero, lbl_80B7503C 
    sh      t0, 0x0208(s0)             # 00000208
lbl_80B74F58:
    lhu     a0, 0x020A(s0)             # 0000020A
    sll     a0, a0, 13                 
    sll     a0, a0, 16                 
    jal     func_800636C4              # sins?
    sra     a0, a0, 16                 
    lhu     t1, 0x020A(s0)             # 0000020A
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t1, $f4                    # $f4 = 0.00
    bgez    t1, lbl_80B74F8C           
    cvt.s.w $f6, $f4                   
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8              
lbl_80B74F8C:
    mul.s   $f10, $f0, $f6             
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    addiu   v0, s0, 0x000C             # v0 = 0000000C
    mul.s   $f18, $f10, $f16           
    trunc.w.s $f4, $f18                  
    mfc1    v1, $f4                    
    nop
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
lbl_80B74FB8:
    addiu   a0, a0, 0x0001             # a0 = 00000003
    slti    $at, a0, 0x0009            
    addiu   v0, v0, 0x0006             # v0 = 00000012
    bne     $at, $zero, lbl_80B74FB8   
    sh      v1, 0x017E(v0)             # 00000190
    lhu     a0, 0x020A(s0)             # 0000020A
    sll     a0, a0, 12                 
    sll     a0, a0, 16                 
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    neg.s   $f8, $f0                   
    addiu   v0, s0, 0x000C             # v0 = 0000000C
    mul.s   $f10, $f8, $f6             
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    sll     t4, a0,  2                 
    subu    t4, t4, a0                 
    sll     t4, t4,  1                 
    trunc.w.s $f16, $f10                 
    mfc1    v1, $f16                   
    nop
    addiu   v1, v1, 0x03E8             # v1 = 000003E8
    sll     v1, v1, 16                 
    sra     v1, v1, 16                 
    sh      v1, 0x0186(v0)             # 00000192
    sh      v1, 0x018C(v0)             # 00000198
    sh      v1, 0x0192(v0)             # 0000019E
    addu    v0, s0, t4                 
    sh      v1, 0x018C(v0)             # 00000198
    sh      v1, 0x0192(v0)             # 0000019E
    sh      v1, 0x0198(v0)             # 000001A4
    sh      v1, 0x0186(v0)             # 00000192
lbl_80B7503C:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80B75050:
    sw      a1, 0x0004($sp)            
    lhu     v0, 0x020A(a0)             # 0000020A
    lui     t8, %hi(func_80B74EE0)     # t8 = 80B70000
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    blez    v0, lbl_80B75074           
    addiu   t8, t8, %lo(func_80B74EE0) # t8 = 80B74EE0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    jr      $ra                        
    sh      t6, 0x020A(a0)             # 0000020A
lbl_80B75074:
    sh      t7, 0x020A(a0)             # 0000020A
    sw      t8, 0x0270(a0)             # 00000270
    jr      $ra                        
    nop


func_80B75084:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0044($sp)            
    lw      t6, 0x0044($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    lw      a3, 0x1C44(t6)             # 00001C44
    addiu   a2, a3, 0x0024             # a2 = 00000024
    jal     func_8002154C              
    sw      a3, 0x003C($sp)            
    lbu     t7, 0x0181(s0)             # 00000181
    lw      a3, 0x003C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    beq     t7, $zero, lbl_80B750E4    
    lw      a1, 0x0044($sp)            
    lui     t8, %hi(func_80B75050)     # t8 = 80B70000
    addiu   t8, t8, %lo(func_80B75050) # t8 = 80B75050
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sw      t8, 0x0270(s0)             # 00000270
    sh      t9, 0x020A(s0)             # 0000020A
    beq     $zero, $zero, lbl_80B752D0 
    sb      $zero, 0x0181(s0)          # 00000181
lbl_80B750E4:
    jal     func_80B74880              
    sw      a3, 0x003C($sp)            
    beq     v0, $zero, lbl_80B75160    
    lw      a3, 0x003C($sp)            
    lw      t0, 0x01F4(s0)             # 000001F4
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xFFA6           # $at = 0001FFA6
    lw      v0, 0x0000(t0)             # 00000000
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    lui     t3, %hi(func_80B74EE0)     # t3 = 80B70000
    and     t1, v0, $at                
    beq     t1, $zero, lbl_80B75128    
    andi    t4, v0, 0x0048             # t4 = 00000000
    addiu   t3, t3, %lo(func_80B74EE0) # t3 = 80B74EE0
    sh      t2, 0x020A(s0)             # 0000020A
    beq     $zero, $zero, lbl_80B752C4 
    sw      t3, 0x0270(s0)             # 00000270
lbl_80B75128:
    beq     t4, $zero, lbl_80B752C4    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B74618              
    lw      a1, 0x0044($sp)            
    lui     t5, %hi(func_80B74914)     # t5 = 80B70000
    addiu   t5, t5, %lo(func_80B74914) # t5 = 80B74914
    sw      t5, 0x0270(s0)             # 00000270
    lw      a0, 0x0044($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x39DD          # a3 = 000039DD
    beq     $zero, $zero, lbl_80B752C8 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B75160:
    lw      a0, 0x0044($sp)            
    addiu   a1, s0, 0x0210             # a1 = 00000210
    jal     func_800264C8              
    sw      a3, 0x003C($sp)            
    beq     v0, $zero, lbl_80B751AC    
    lw      a3, 0x003C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B74618              
    lw      a1, 0x0044($sp)            
    lui     t6, %hi(func_80B74914)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B74914) # t6 = 80B74914
    sw      t6, 0x0270(s0)             # 00000270
    lw      a0, 0x0044($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8              
    addiu   a3, $zero, 0x39DD          # a3 = 000039DD
    beq     $zero, $zero, lbl_80B752C8 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B751AC:
    lw      a0, 0x0044($sp)            
    jal     func_8007943C              
    sw      a3, 0x003C($sp)            
    bne     v0, $zero, lbl_80B752C4    
    lw      a3, 0x003C($sp)            
    lwc1    $f0, 0x0034($sp)           
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    abs.s   $f0, $f0                   
    c.lt.s  $f0, $f2                   
    lwc1    $f0, 0x0030($sp)           
    bc1fl   lbl_80B752C8               
    or      a0, s0, $zero              # a0 = 00000000
    abs.s   $f0, $f0                   
    lwc1    $f4, 0x0038($sp)           
    c.lt.s  $f0, $f2                   
    lui     $at, 0x4248                # $at = 42480000
    bc1fl   lbl_80B752C8               
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f6                   # $f6 = 50.00
    nop
    c.lt.s  $f4, $f6                   
    nop
    bc1fl   lbl_80B752C8               
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    c.lt.s  $f0, $f4                   
    nop
    bc1fl   lbl_80B752C8               
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x00B6(a3)             # 000000B6
    lh      t8, 0x00B6(s0)             # 000000B6
    c.lt.s  $f0, $f4                   
    ori     t9, $zero, 0x8000          # t9 = 00008000
    subu    v0, t7, t8                 
    sll     v0, v0, 16                 
    bc1f    lbl_80B75254               
    sra     v0, v0, 16                 
    subu    v0, t9, v0                 
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
lbl_80B75254:
    bltz    v0, lbl_80B75264           
    subu    v1, $zero, v0              
    beq     $zero, $zero, lbl_80B75264 
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B75264:
    slti    $at, v1, 0x3000            
    beq     $at, $zero, lbl_80B752C4   
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sb      t0, 0x041C(a3)             # 0000041C
    lwc1    $f8, 0x0038($sp)           
    lui     $at, 0xBF80                # $at = BF800000
    c.le.s  $f0, $f8                   
    nop
    bc1fl   lbl_80B752AC               
    mtc1    $at, $f18                  # $f18 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    trunc.w.s $f16, $f10                 
    mfc1    t2, $f16                   
    beq     $zero, $zero, lbl_80B752C0 
    sb      t2, 0x041D(a3)             # 0000041D
    mtc1    $at, $f18                  # $f18 = 1.00
lbl_80B752AC:
    nop
    trunc.w.s $f6, $f18                  
    mfc1    t4, $f6                    
    nop
    sb      t4, 0x041D(a3)             # 0000041D
lbl_80B752C0:
    sw      s0, 0x0420(a3)             # 00000420
lbl_80B752C4:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B752C8:
    jal     func_80B748B4              
    lw      a1, 0x0044($sp)            
lbl_80B752D0:
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80B752E4:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x0C38             # v1 = 80120C38
    lui     a2, 0x0001                 # a2 = 00010000
    lui     a3, 0x8000                 # a3 = 80000000
    lbu     t6, 0x020C(a0)             # 0000020C
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, t6,  4                 
    addu    t7, t7, t6                 
    sll     t7, t7,  2                 
    addu    t8, a1, t7                 
    addu    t9, t8, a2                 
    lw      t0, 0x17B4(t9)             # 000017B4
    addu    t1, t0, a3                 
    sw      t1, 0x0018(v1)             # 80120C50
    lw      v0, 0x0204(a0)             # 00000204
    lb      t0, 0x001E(a0)             # 0000001E
    sll     t2, v0,  4                 
    srl     t3, t2, 28                 
    sll     t4, t3,  2                 
    addu    t5, v1, t4                 
    lw      t6, 0x0000(t5)             # 00000000
    and     t7, v0, $at                
    sll     t1, t0,  4                 
    addu    t1, t1, t0                 
    lui     $at, 0x8000                # $at = 80000000
    sll     t1, t1,  2                 
    addu    t8, t6, t7                 
    addu    t9, t8, $at                
    addu    t2, a1, t1                 
    sw      t9, 0x0204(a0)             # 00000204
    addu    t3, t2, a2                 
    lw      t4, 0x17B4(t3)             # 000017B4
    addu    t5, t4, a3                 
    sw      t5, 0x0018(v1)             # 80120C50
    jr      $ra                        
    nop


func_80B75378:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x001C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lbu     a1, 0x020C(a2)             # 0000020C
    sw      a2, 0x0018($sp)            
    jal     func_80081688              
    addu    a0, a0, $at                
    beq     v0, $zero, lbl_80B7541C    
    lw      a2, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)            
    jal     func_80B752E4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lh      t6, 0x001C(a2)             # 0000001C
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sltiu   $at, t7, 0x0005            
    beq     $at, $zero, lbl_80B7541C   
    sll     t7, t7,  2                 
    lui     $at, %hi(var_80B7564C)     # $at = 80B70000
    addu    $at, $at, t7               
    lw      t7, %lo(var_80B7564C)($at) 
    jr      t7                         
    nop
var_80B753E8:
    lui     t8, %hi(func_80B75084)     # t8 = 80B70000
    lui     t9, %hi(func_80B7547C)     # t9 = 80B70000
    addiu   t8, t8, %lo(func_80B75084) # t8 = 80B75084
    addiu   t9, t9, %lo(func_80B7547C) # t9 = 80B7547C
    sw      t8, 0x0270(a2)             # 00000270
    beq     $zero, $zero, lbl_80B7541C 
    sw      t9, 0x0134(a2)             # 00000134
var_80B75404:
    lui     t0, %hi(func_80B747C0)     # t0 = 80B70000
    lui     t1, %hi(func_80B754D8)     # t1 = 80B70000
    addiu   t0, t0, %lo(func_80B747C0) # t0 = 80B747C0
    addiu   t1, t1, %lo(func_80B754D8) # t1 = 80B754D8
    sw      t0, 0x0270(a2)             # 00000270
    sw      t1, 0x0134(a2)             # 00000134
lbl_80B7541C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7542C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0270(a0)             # 00000270
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B75450:
    lw      v0, 0x0204(a0)             # 00000204
    lw      v1, 0x0000(a1)             # 00000000
    lw      a3, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, a3, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      v0, 0x0004(a3)             # 00000004
    sw      t7, 0x0000(a3)             # 00000000
    jr      $ra                        
    nop


func_80B7547C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    lw      t6, 0x002C($sp)            
    jal     func_8007E56C              
    lw      a0, 0x0000(t6)             # 00000000
    lw      a0, 0x0028($sp)            
    jal     func_80B75450              
    lw      a1, 0x002C($sp)            
    lw      v0, 0x0028($sp)            
    lw      a0, 0x002C($sp)            
    lw      a1, 0x0140(v0)             # 00000140
    lw      a2, 0x015C(v0)             # 0000015C
    lbu     a3, 0x013E(v0)             # 0000013E
    sw      $zero, 0x0018($sp)         
    sw      $zero, 0x0014($sp)         
    jal     func_80089D8C              
    sw      $zero, 0x0010($sp)         
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80B754D8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    lh      v1, 0x001C(a0)             # 0000001C
    lhu     v0, 0x020A(a0)             # 0000020A
    lw      a1, 0x0024($sp)            
    andi    v1, v1, 0x00FF             # v1 = 00000000
    slti    $at, v0, 0x0014            
    beq     $at, $zero, lbl_80B7550C   
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    andi    t6, v0, 0x0001             # t6 = 00000000
    bnel    t6, $zero, lbl_80B75534    
    lw      $ra, 0x0014($sp)           
lbl_80B7550C:
    jal     func_80B75450              
    sw      v1, 0x001C($sp)            
    lw      v1, 0x001C($sp)            
    lui     a1, %hi(var_80B755F8)      # a1 = 80B70000
    lw      a0, 0x0024($sp)            
    sll     t7, v1,  2                 
    addu    a1, a1, t7                 
    jal     func_80028048              
    lw      a1, %lo(var_80B755F8)(a1)  
    lw      $ra, 0x0014($sp)           
lbl_80B75534:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80B75540: .word 0x01C10100, 0x00000010, 0x018E0000, 0x00000274
.word func_80B74270
.word func_80B745C8
.word func_80B7542C
.word 0x00000000
var_80B75560: .word \
0x09110900, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0x0001FFEE, 0x00000000, 0x01010000, \
0x00140064, 0x00000000, 0x00000000
var_80B7558C: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000008, \
0x00000000, 0x00010000, 0x00000000, 0x00000000, \
0x00640064
var_80B755B0: .word 0x0A000900, 0x00000000, 0x00000001
.word var_80B7558C
var_80B755C0: .word 0x002C0000
var_80B755C4: .word \
0x0600E5A0, 0x00590000, 0x060035C0, 0x01870000, \
0x06000000, 0x00010000, 0x0400F3D8
var_80B755E0: .word 0x00000000, 0x00000000, 0x00000000
var_80B755EC: .word 0x00000000, 0x3F800000, 0x00000000
var_80B755F8: .word \
0x06001250, 0x06001550, 0x060017B8, 0x06001A58, \
0x00000000, 0x00000000

.section .rodata

var_80B75610: .word var_80B74344
.word var_80B74480
.word var_80B74480
.word var_80B74480
.word var_80B74480
var_80B75624: .word 0xBF19999A
var_80B75628: .word 0x40FC28F6
var_80B7562C: .word 0x421F3333
var_80B75630: .word 0x417DC28F
var_80B75634: .word 0x4277EB85
var_80B75638: .word 0x406E147B
var_80B7563C: .word 0x42AA3333
var_80B75640: .word 0x3F7AE148
var_80B75644: .word 0x3DCCCCCD
var_80B75648: .word 0x3E4CCCCD
var_80B7564C: .word var_80B753E8
.word var_80B75404
.word var_80B75404
.word var_80B75404
.word var_80B75404

