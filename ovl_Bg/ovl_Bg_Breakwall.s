#include <mips.h>
.set noreorder
.set noat

.section .text
func_80900D00:
    sw      a1, 0x01DC(a0)             # 000001DC
    jr      $ra                        
    nop


func_80900D0C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_809018E0)      # a1 = 80900000
    addiu   a1, a1, %lo(var_809018E0)  # a1 = 809018E0
    sra     t8, t6, 13                 
    andi    t9, t8, 0x0003             # t9 = 00000000
    sw      t9, 0x002C($sp)            
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t0, 0x002C($sp)            
    lui     t2, %hi(var_809018B0)      # t2 = 80900000
    addiu   t2, t2, %lo(var_809018B0)  # t2 = 809018B0
    sll     t1, t0,  2                 
    subu    t1, t1, t0                 
    sll     t1, t1,  2                 
    addu    v0, t1, t2                 
    lw      t3, 0x0004(v0)             # 00000004
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t6, $zero, 0x4000          # t6 = 00004000
    sw      t3, 0x0154(s0)             # 00000154
    lb      t4, 0x0008(v0)             # 00000008
    sb      t4, 0x0158(s0)             # 00000158
    lb      t5, 0x0158(s0)             # 00000158
    bnel    t5, $at, lbl_80900D94      
    lw      t7, 0x0154(s0)             # 00000154
    sh      t6, 0x0030(s0)             # 00000030
    lw      t7, 0x0154(s0)             # 00000154
lbl_80900D94:
    lw      a0, 0x003C($sp)            
    lui     $at, 0x4220                # $at = 42200000
    beql    t7, $zero, lbl_80900E1C    
    lwc1    $f4, 0x0028(s0)            # 00000028
    lh      a1, 0x001C(s0)             # 0000001C
    sw      v0, 0x0028($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beql    v0, $zero, lbl_80900DD0    
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80900EA8 
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80900DD0:
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0                    
    mfc1    a3, $f0                    
    jal     func_8001EC20              
    nop
    addiu   a1, s0, 0x015C             # a1 = 0000015C
    sw      a1, 0x0024($sp)            
    jal     func_8004B858              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_80901860)      # a3 = 80900000
    lw      a1, 0x0024($sp)            
    addiu   a3, a3, %lo(var_80901860)  # a3 = 80901860
    lw      a0, 0x003C($sp)            
    jal     func_8004B960              
    or      a2, s0, $zero              # a2 = 00000000
    beq     $zero, $zero, lbl_80900E2C 
    lw      v0, 0x0028($sp)            
    lwc1    $f4, 0x0028(s0)            # 00000028
lbl_80900E1C:
    mtc1    $at, $f6                   # $f6 = 0.00
    nop
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_80900E2C:
    lui     t8, %hi(var_809018C8)      # t8 = 80900000
    addiu   t8, t8, %lo(var_809018C8)  # t8 = 809018C8
    sltu    $at, v0, t8                
    bne     $at, $zero, lbl_80900E60   
    lw      a0, 0x003C($sp)            
    lw      a0, 0x003C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at                
    beq     $zero, $zero, lbl_80900E78 
    sb      v0, 0x0159(s0)             # 00000159
lbl_80900E60:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at                
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x018A          # a1 = 0000018A
    sb      v0, 0x0159(s0)             # 00000159
lbl_80900E78:
    lb      t9, 0x0159(s0)             # 00000159
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_809013BC)     # a1 = 80900000
    bgez    t9, lbl_80900E9C           
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80900EA8 
    lw      $ra, 0x001C($sp)           
lbl_80900E9C:
    jal     func_80900D00              
    addiu   a1, a1, %lo(func_809013BC) # a1 = 000013BC
    lw      $ra, 0x001C($sp)           
lbl_80900EA8:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80900EB8:
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


func_80900EEC:
    addiu   $sp, $sp, 0xFE08           # $sp = FFFFFE08
    sw      s7, 0x007C($sp)            
    or      s7, a0, $zero              # s7 = 00000000
    sw      $ra, 0x0084($sp)           
    sw      s8, 0x0080($sp)            
    sw      s6, 0x0078($sp)            
    sw      s5, 0x0074($sp)            
    sw      s4, 0x0070($sp)            
    sw      s3, 0x006C($sp)            
    sw      s2, 0x0068($sp)            
    sw      s1, 0x0064($sp)            
    sw      s0, 0x0060($sp)            
    sdc1    $f30, 0x0058($sp)          
    sdc1    $f28, 0x0050($sp)          
    sdc1    $f26, 0x0048($sp)          
    sdc1    $f24, 0x0040($sp)          
    sdc1    $f22, 0x0038($sp)          
    sdc1    $f20, 0x0030($sp)          
    sw      a2, 0x0200($sp)            
    sw      a3, 0x0204($sp)            
    lui     t7, %hi(var_809018F0)      # t7 = 80900000
    sh      $zero, 0x01D8($sp)         
    addiu   t7, t7, %lo(var_809018F0)  # t7 = 809018F0
    lw      t9, 0x0000(t7)             # 809018F0
    addiu   t6, $sp, 0x01CC            # t6 = FFFFFFD4
    lw      t8, 0x0004(t7)             # 809018F4
    sw      t9, 0x0000(t6)             # FFFFFFD4
    lw      t9, 0x0008(t7)             # 809018F8
    lui     t1, %hi(var_809018FC)      # t1 = 80900000
    addiu   t1, t1, %lo(var_809018FC)  # t1 = 809018FC
    sw      t8, 0x0004(t6)             # FFFFFFD8
    sw      t9, 0x0008(t6)             # FFFFFFDC
    lw      t2, 0x0004(t1)             # 80901900
    lw      t3, 0x0000(t1)             # 809018FC
    addiu   t0, $sp, 0x01B4            # t0 = FFFFFFBC
    sw      t2, 0x0004(t0)             # FFFFFFC0
    sw      t3, 0x0000(t0)             # FFFFFFBC
    lw      t3, 0x0008(t1)             # 80901904
    lw      t2, 0x000C(t1)             # 80901908
    lui     t5, %hi(var_80901914)      # t5 = 80900000
    sw      t3, 0x0008(t0)             # FFFFFFC4
    sw      t2, 0x000C(t0)             # FFFFFFC8
    lw      t2, 0x0014(t1)             # 80901910
    lw      t3, 0x0010(t1)             # 8090190C
    addiu   t5, t5, %lo(var_80901914)  # t5 = 80901914
    addiu   t8, t5, 0x0030             # t8 = 80901944
    addiu   t4, $sp, 0x0184            # t4 = FFFFFF8C
    sw      t2, 0x0014(t0)             # FFFFFFD0
    sw      t3, 0x0010(t0)             # FFFFFFCC
lbl_80900FB0:
    lw      t7, 0x0000(t5)             # 80901914
    addiu   t5, t5, 0x000C             # t5 = 80901920
    addiu   t4, t4, 0x000C             # t4 = FFFFFF98
    sw      t7, -0x000C(t4)            # FFFFFF8C
    lw      t6, -0x0008(t5)            # 80901918
    sw      t6, -0x0008(t4)            # FFFFFF90
    lw      t7, -0x0004(t5)            # 8090191C
    bne     t5, t8, lbl_80900FB0       
    sw      t7, -0x0004(t4)            # FFFFFF94
    lui     t0, %hi(var_80901944)      # t0 = 80900000
    addiu   t0, t0, %lo(var_80901944)  # t0 = 80901944
    addiu   t3, t0, 0x00C0             # t3 = 80901A04
    addiu   t9, $sp, 0x00C4            # t9 = FFFFFECC
lbl_80900FE4:
    lw      t2, 0x0000(t0)             # 80901944
    addiu   t0, t0, 0x000C             # t0 = 80901950
    addiu   t9, t9, 0x000C             # t9 = FFFFFED8
    sw      t2, -0x000C(t9)            # FFFFFECC
    lw      t1, -0x0008(t0)            # 80901948
    sw      t1, -0x0008(t9)            # FFFFFED0
    lw      t2, -0x0004(t0)            # 8090194C
    bne     t0, t3, lbl_80900FE4       
    sw      t2, -0x0004(t9)            # FFFFFED4
    addiu   v0, $sp, 0x0184            # v0 = FFFFFF8C
    or      a0, v0, $zero              # a0 = FFFFFF8C
    addiu   s2, $sp, 0x01A8            # s2 = FFFFFFB0
    lwc1    $f2, 0x0208($sp)           
    lwc1    $f0, 0x020C($sp)           
    addiu   v1, $sp, 0x01A8            # v1 = FFFFFFB0
lbl_80901020:
    beql    s2, v0, lbl_80901034       
    lwc1    $f4, 0x0000(s2)            # FFFFFFB0
    bnel    s2, v1, lbl_80901064       
    lwc1    $f4, 0x0000(s2)            # FFFFFFB0
    lwc1    $f4, 0x0000(s2)            # FFFFFFB0
lbl_80901034:
    lwc1    $f8, 0x0004(s2)            # FFFFFFB4
    lwc1    $f16, 0x0008(s2)           # FFFFFFB8
    mul.s   $f6, $f4, $f0              
    nop
    mul.s   $f10, $f8, $f2             
    nop
    mul.s   $f18, $f16, $f2            
    swc1    $f6, 0x0000(s2)            # FFFFFFB0
    swc1    $f10, 0x0004(s2)           # FFFFFFB4
    beq     $zero, $zero, lbl_8090108C 
    swc1    $f18, 0x0008(s2)           # FFFFFFB8
    lwc1    $f4, 0x0000(s2)            # FFFFFFB0
lbl_80901064:
    lwc1    $f8, 0x0004(s2)            # FFFFFFB4
    lwc1    $f16, 0x0008(s2)           # FFFFFFB8
    mul.s   $f6, $f4, $f2              
    nop
    mul.s   $f10, $f8, $f0             
    nop
    mul.s   $f18, $f16, $f0            
    swc1    $f6, 0x0000(s2)            # FFFFFFB0
    swc1    $f10, 0x0004(s2)           # FFFFFFB4
    swc1    $f18, 0x0008(s2)           # FFFFFFB8
lbl_8090108C:
    addiu   s2, s2, 0xFFF4             # s2 = FFFFFFA4
    sltu    $at, s2, a0                
    beq     $at, $zero, lbl_80901020   
    nop
    lw      t5, 0x0210($sp)            
    sw      $zero, 0x01DC($sp)         
    addiu   t4, s7, 0x1C24             # t4 = 00001C24
    blez    t5, lbl_80901370           
    lui     $at, %hi(var_80901A70)     # $at = 80900000
    lwc1    $f28, %lo(var_80901A70)($at) 
    lui     $at, %hi(var_80901A74)     # $at = 80900000
    lwc1    $f26, %lo(var_80901A74)($at) 
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f24                  # $f24 = 20.00
    sw      t4, 0x009C($sp)            
    sw      a1, 0x01FC($sp)            
    lwc1    $f30, 0x0214($sp)          
    addiu   s5, $sp, 0x01E8            # s5 = FFFFFFF0
lbl_809010D4:
    lw      a1, 0x01FC($sp)            
    or      a3, $zero, $zero           # a3 = 00000000
    lh      v0, 0x0032(a1)             # 00000032
    bltz    v0, lbl_809010F0           
    subu    s0, $zero, v0              
    beq     $zero, $zero, lbl_809010F0 
    or      s0, v0, $zero              # s0 = FFFFFF8C
lbl_809010F0:
    lwc1    $f12, 0x0024(a1)           # 00000024
    lwc1    $f14, 0x0028(a1)           # 00000028
    lw      a2, 0x002C(a1)             # 0000002C
    jal     func_800AA7F4              
    sw      a1, 0x01FC($sp)            
    lw      v0, 0x01FC($sp)            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      a0, 0x0030(v0)             # 00000030
    lh      a1, 0x0032(v0)             # 00000032
    jal     func_800AAF00              
    lh      a2, 0x0034(v0)             # 00000034
    lw      v0, 0x0200($sp)            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0000(v0)           # 00000000
    lwc1    $f14, 0x0004(v0)           # 00000004
    jal     func_800AA7F4              
    lw      a2, 0x0008(v0)             # 00000008
    lh      t6, 0x01D8($sp)            
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    addiu   a2, $sp, 0x0154            # a2 = FFFFFF5C
    addu    s8, s0, t6                 
    sll     s8, s8, 16                 
    sra     s8, s8, 16                 
    sw      a2, 0x00A4($sp)            
    sw      v1, 0x01E0($sp)            
lbl_80901154:
    lw      v1, 0x01E0($sp)            
    lw      a2, 0x00A4($sp)            
    addiu   s3, $zero, 0x0024          # s3 = 00000024
    addiu   s1, $sp, 0x01C6            # s1 = FFFFFFCE
    andi    s6, v1, 0x0001             # s6 = 00000001
    addiu   s4, a2, 0x0024             # s4 = FFFFFF80
lbl_8090116C:
    or      a0, s4, $zero              # a0 = FFFFFF80
    jal     func_800AB958              
    or      a1, s5, $zero              # a1 = FFFFFFF0
    jal     func_80026D90              
    mov.s   $f12, $f24                 
    mov.s   $f20, $f0                  
    jal     func_80026D90              
    mov.s   $f12, $f24                 
    mov.s   $f22, $f0                  
    jal     func_80026D90              
    mov.s   $f12, $f24                 
    lwc1    $f8, 0x01EC($sp)           
    lwc1    $f16, 0x01F0($sp)          
    lwc1    $f4, 0x01E8($sp)           
    add.s   $f10, $f22, $f8            
    addiu   t1, $zero, 0x000B          # t1 = 0000000B
    lw      a0, 0x009C($sp)            
    add.s   $f18, $f0, $f16            
    swc1    $f10, 0x0010($sp)          
    or      a1, s7, $zero              # a1 = 00000000
    add.s   $f6, $f20, $f4             
    swc1    $f18, 0x0014($sp)          
    lh      t7, 0x0000(s1)             # FFFFFFCE
    addiu   a2, $zero, 0x0039          # a2 = 00000039
    mfc1    a3, $f6                    
    sw      t7, 0x0018($sp)            
    lh      t3, 0x0002(s1)             # FFFFFFD0
    addu    t0, t3, s8                 
    sw      t0, 0x001C($sp)            
    lh      t9, 0x0004(s1)             # FFFFFFD2
    sw      t1, 0x0024($sp)            
    jal     func_80025110              # ActorSpawn
    sw      t9, 0x0020($sp)            
    bne     s6, $zero, lbl_80901234    
    or      s0, v0, $zero              # s0 = 00000000
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0204($sp)           
    addiu   t2, $zero, 0x028A          # t2 = 0000028A
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    mul.s   $f8, $f4, $f6              
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)            
    sw      t8, 0x0014($sp)            
    sw      t2, 0x0010($sp)            
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFF0
    mfc1    a2, $f8                    
    jal     func_80026308              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80901234:
    beq     s0, $zero, lbl_80901318    
    lui     $at, %hi(var_80901A78)     # $at = 80900000
    lwc1    $f10, %lo(var_80901A78)($at) 
    addiu   t4, $sp, 0x0184            # t4 = FFFFFF8C
    addu    s2, s3, t4                 
    mul.s   $f20, $f30, $f10           
    jal     func_800CDCCC              # Rand.Next() float
    nop
    add.s   $f16, $f0, $f20            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0068(s0)           # 00000068
    add.s   $f18, $f0, $f20            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0060(s0)           # 00000060
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, %hi(var_80901A7C)     # $at = 80900000
    lwc1    $f8, %lo(var_80901A7C)($at) 
    sub.s   $f6, $f0, $f4              
    lh      t9, 0x0032(s0)             # 00000032
    mul.s   $f10, $f6, $f8             
    trunc.w.s $f16, $f10                 
    mfc1    t0, $f16                   
    nop
    addu    t1, t9, t0                 
    jal     func_800CDCCC              # Rand.Next() float
    sh      t1, 0x0032(s0)             # 00000032
    mul.s   $f18, $f0, $f28            
    trunc.w.s $f4, $f18                  
    mfc1    t4, $f4                    
    nop
    addiu   t6, t4, 0x07D0             # t6 = 000007D0
    jal     func_800CDCCC              # Rand.Next() float
    sh      t6, 0x0030(s0)             # 00000030
    mul.s   $f6, $f0, $f28             
    mov.s   $f12, $f26                 
    trunc.w.s $f8, $f6                   
    mfc1    t0, $f8                    
    nop
    addiu   t1, t0, 0x07D0             # t1 = 000007D0
    sh      t1, 0x0034(s0)             # 00000034
    lw      t2, 0x01FC($sp)            
    jal     func_80026D90              
    sw      t2, 0x0118(s0)             # 00000118
    lwc1    $f10, 0x0000(s2)           # FFFFFFA4
    mov.s   $f12, $f26                 
    add.s   $f16, $f0, $f10            
    jal     func_80026D90              
    swc1    $f16, 0x0050(s0)           # 00000050
    lwc1    $f18, 0x0004(s2)           # FFFFFFA8
    mov.s   $f12, $f26                 
    add.s   $f4, $f0, $f18             
    jal     func_80026D90              
    swc1    $f4, 0x0054(s0)            # 00000054
    lwc1    $f6, 0x0008(s2)            # FFFFFFAC
    add.s   $f8, $f0, $f6              
    swc1    $f8, 0x0058(s0)            # 00000058
lbl_80901318:
    addiu   s1, s1, 0xFFFA             # s1 = FFFFFFC8
    addiu   t8, $sp, 0x01B4            # t8 = FFFFFFBC
    sltu    $at, s1, t8                
    addiu   s3, s3, 0xFFF4             # s3 = 00000018
    beq     $at, $zero, lbl_8090116C   
    addiu   s4, s4, 0xFFF4             # s4 = FFFFFF74
    lw      t5, 0x01E0($sp)            
    lw      t6, 0x00A4($sp)            
    addiu   t4, t5, 0xFFFF             # t4 = FFFFFFFF
    addiu   t7, t6, 0xFFD0             # t7 = FFFFFFD0
    sw      t7, 0x00A4($sp)            
    bgez    t4, lbl_80901154           
    sw      t4, 0x01E0($sp)            
    lh      t3, 0x01D8($sp)            
    lw      v0, 0x01DC($sp)            
    lw      t0, 0x0210($sp)            
    addiu   t9, t3, 0x4000             # t9 = 00004000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sw      v0, 0x01DC($sp)            
    bne     v0, t0, lbl_809010D4       
    sh      t9, 0x01D8($sp)            
    sw      s0, 0x01F4($sp)            
lbl_80901370:
    lw      v0, 0x01F4($sp)            
    lw      $ra, 0x0084($sp)           
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
    lw      s7, 0x007C($sp)            
    lw      s8, 0x0080($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x01F8           # $sp = 00000000


func_809013BC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lw      a0, 0x0034($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lb      a1, 0x0159(s0)             # 00000159
    jal     func_80081688              
    addu    a0, a0, $at                
    beql    v0, $zero, lbl_809014B4    
    lw      $ra, 0x001C($sp)           
    sw      $zero, 0x002C($sp)         
    lh      t6, 0x001C(s0)             # 0000001C
    or      a1, s0, $zero              # a1 = 00000000
    sra     t8, t6, 13                 
    andi    t9, t8, 0x0003             # t9 = 00000000
    sw      t9, 0x0028($sp)            
    lb      t0, 0x0159(s0)             # 00000159
    sb      t0, 0x001E(s0)             # 0000001E
    jal     func_80020FA4              
    lw      a0, 0x0034($sp)            
    lw      t1, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lui     t3, %hi(func_8090170C)     # t3 = 80900000
    addiu   t3, t3, %lo(func_8090170C) # t3 = 8090170C
    and     t2, t1, $at                
    sw      t2, 0x0004(s0)             # 00000004
    sw      t3, 0x0134(s0)             # 00000134
    lw      t4, 0x0028($sp)            
    lui     t6, %hi(var_809018B0)      # t6 = 80900000
    addiu   t6, t6, %lo(var_809018B0)  # t6 = 809018B0
    sll     t5, t4,  2                 
    subu    t5, t5, t4                 
    sll     t5, t5,  2                 
    addu    v0, t5, t6                 
    lw      a0, 0x0000(v0)             # 00000000
    sw      v0, 0x0024($sp)            
    jal     func_80033EF4              
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFFC
    lw      a0, 0x0034($sp)            
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x002C($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    lw      t8, 0x0024($sp)            
    lui     t9, %hi(var_809018D4)      # t9 = 80900000
    addiu   t9, t9, %lo(var_809018D4)  # t9 = 809018D4
    bne     t8, t9, lbl_809014A4       
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80901694)     # a1 = 80900000
    addiu   a1, a1, %lo(func_80901694) # a1 = 80901694
    jal     func_80900D00              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809014B4 
    lw      $ra, 0x001C($sp)           
lbl_809014A4:
    lui     a1, %hi(func_809014C4)     # a1 = 80900000
    jal     func_80900D00              
    addiu   a1, a1, %lo(func_809014C4) # a1 = 809014C4
    lw      $ra, 0x001C($sp)           
lbl_809014B4:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_809014C4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)           
    or      a3, a1, $zero              # a3 = 00000000
    lbu     t6, 0x016D(s0)             # 0000016D
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80901684    
    lw      $ra, 0x002C($sp)           
    lh      t8, 0x001C(s0)             # 0000001C
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    sra     t0, t8, 13                 
    andi    t1, t0, 0x0003             # t1 = 00000000
    sw      t1, 0x0030($sp)            
    lw      a2, 0x013C(s0)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x0044($sp)            
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x41C8                # $at = 41C80000
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f0, 0x0034($sp)           
    swc1    $f0, 0x003C($sp)           
    swc1    $f0, 0x0038($sp)           
    lh      t2, 0x0030(s0)             # 00000030
    mfc1    a3, $f0                    
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    bne     t2, $zero, lbl_80901548    
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f4                   # $f4 = 55.00
    beq     $zero, $zero, lbl_8090155C 
    swc1    $f4, 0x0038($sp)           
lbl_80901548:
    mtc1    $at, $f6                   # $f6 = 55.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f8                   # $f8 = -10.00
    swc1    $f6, 0x003C($sp)           
    swc1    $f8, 0x0038($sp)           
lbl_8090155C:
    lui     $at, %hi(var_80901A80)     # $at = 80900000
    lwc1    $f10, %lo(var_80901A80)($at) 
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f18                  # $f18 = 2.00
    lw      a0, 0x0044($sp)            
    sw      t3, 0x0018($sp)            
    swc1    $f10, 0x0010($sp)          
    swc1    $f16, 0x0014($sp)          
    jal     func_80900EEC              
    swc1    $f18, 0x001C($sp)          
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0044($sp)            
    jal     func_800204D0              
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      t4, 0x0030($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a1, $zero, 0x2802          # a1 = 00002802
    bne     t4, $at, lbl_809015C0      
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809015CC 
    lw      t5, 0x0030($sp)            
lbl_809015C0:
    jal     func_80022FD0              
    addiu   a1, $zero, 0x2810          # a1 = 00002810
    lw      t5, 0x0030($sp)            
lbl_809015CC:
    bnel    t5, $zero, lbl_80901648    
    lh      t8, 0x001C(s0)             # 0000001C
    jal     func_800288B4              
    addiu   a0, $zero, 0x00B0          # a0 = 000000B0
    bnel    v0, $zero, lbl_80901648    
    lh      t8, 0x001C(s0)             # 0000001C
    jal     func_800288E0              
    addiu   a0, $zero, 0x00B0          # a0 = 000000B0
    lui     a1, 0x0201                 # a1 = 02010000
    addiu   a1, a1, 0x4F80             # a1 = 02014F80
    jal     func_80056F98              
    lw      a0, 0x0044($sp)            
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    sb      t6, -0x461C($at)           # 8011B9E4
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      a0, 0x0044($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC              
    addiu   a2, $zero, 0x0031          # a2 = 00000031
    lh      t8, 0x001C(s0)             # 0000001C
lbl_80901648:
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    bgez    t8, lbl_80901678           
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    lui     t9, 0x8010                 # t9 = 80100000
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    addiu   a3, t9, 0x43A0             # a3 = 801043A0
    sw      a3, 0x0010($sp)            
    sw      t0, 0x0014($sp)            
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80901678:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)           
lbl_80901684:
    lw      s0, 0x0028($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80901694:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lwc1    $f8, 0x000C(a3)            # 0000000C
    addiu   a0, a3, 0x0028             # a0 = 00000028
    lh      t7, 0x0A74(t6)             # 80120A74
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4                   
    add.s   $f10, $f6, $f8             
    mfc1    a1, $f10                   
    jal     func_8006385C              
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809016E8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x01DC(a0)             # 000001DC
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_8090170C:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s4, 0x0030($sp)            
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x0034($sp)           
    sw      s3, 0x002C($sp)            
    sw      s2, 0x0028($sp)            
    sw      s1, 0x0024($sp)            
    sw      s0, 0x0020($sp)            
    sw      a1, 0x009C($sp)            
    lw      t6, 0x0154(s4)             # 00000154
    lw      t7, 0x009C($sp)            
    beql    t6, $zero, lbl_80901818    
    lw      $ra, 0x0034($sp)           
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_8007E298              
    or      s1, a0, $zero              # s1 = 00000000
    lw      s2, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s2, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(s2)             # 00000000
    lw      t0, 0x009C($sp)            
    jal     func_800AB900              
    lw      a0, 0x0000(t0)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t5, %hi(var_80901A04)      # t5 = 80900000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0000(s0)             # 00000000
    lw      t3, 0x0154(s4)             # 00000154
    addiu   t5, t5, %lo(var_80901A04)  # t5 = 80901A04
    addiu   s1, $sp, 0x0050            # s1 = FFFFFFB8
    sw      t3, 0x0004(s0)             # 00000004
    lb      a0, 0x0158(s4)             # 00000158
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s3, $zero, 0x0004          # s3 = 00000004
    bltz    a0, lbl_80901814           
    sll     t4, a0,  2                 
    subu    t4, t4, a0                 
    sll     t4, t4,  4                 
    addu    s0, t4, t5                 
    or      a0, s0, $zero              # a0 = 00000000
lbl_809017C0:
    or      a1, s1, $zero              # a1 = FFFFFFB8
    addiu   s1, s1, 0x000C             # s1 = FFFFFFC4
    jal     func_800AB958              
    addiu   s0, s0, 0x000C             # s0 = 0000000C
    addiu   s2, s2, 0x0001             # s2 = 00000001
    bnel    s2, s3, lbl_809017C0       
    or      a0, s0, $zero              # a0 = 0000000C
    addiu   s0, s4, 0x015C             # s0 = 0000015C
    addiu   t6, $sp, 0x0074            # t6 = FFFFFFDC
    sw      t6, 0x0010($sp)            
    or      a0, s0, $zero              # a0 = 0000015C
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFB8
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFC4
    jal     func_80050B64              
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFD0
    lw      a0, 0x009C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    or      a2, s0, $zero              # a2 = 0000015C
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at                
lbl_80901814:
    lw      $ra, 0x0034($sp)           
lbl_80901818:
    lw      s0, 0x0020($sp)            
    lw      s1, 0x0024($sp)            
    lw      s2, 0x0028($sp)            
    lw      s3, 0x002C($sp)            
    lw      s4, 0x0030($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0098           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80901840: .word 0x00590100, 0x00000010, 0x00010000, 0x000001E0
.word func_80900D0C
.word func_80900EB8
.word func_809016E8
.word 0x00000000
var_80901860: .word \
0x0A002900, 0x20030000, 0x00000000, 0x00000048, \
0x00000000, 0x00000048, 0x00000000, 0x00010000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_809018B0: .word \
0x06000118, 0x06000040, 0x00000000, 0x06000118, \
0x06000040, 0x00000000
var_809018C8: .word 0x060250A8, 0x060247D0, 0x01000000
var_809018D4: .word 0x06024764, 0x00000000, 0xFF000000
var_809018E0: .word 0xC8500064, 0xB0F40FA0, 0xB0F80190, 0x30FC0190
var_809018F0: .word 0x00000000, 0x00000000, 0x00000000
var_809018FC: .word \
0x00000000, 0x00000000, 0x00004000, 0x00000000, \
0xC0000000, 0x00000000
var_80901914: .word \
0x3B83126F, 0x3B83126F, 0x3B83126F, 0x3B83126F, \
0x3B83126F, 0x3B83126F, 0x3B83126F, 0x3B83126F, \
0x3B83126F, 0x3B83126F, 0x3B83126F, 0x3B83126F
var_80901944: .word \
0x42200000, 0x41700000, 0x00000000, 0x41F00000, \
0x42640000, 0x00000000, 0x42480000, 0x42640000, \
0x00000000, 0x42200000, 0x428C0000, 0x00000000, \
0x425C0000, 0xC1700000, 0x00000000, 0x41F00000, \
0xC2000000, 0x00000000, 0x42480000, 0xC2000000, \
0x00000000, 0x41A00000, 0xC1200000, 0x00000000, \
0xC2200000, 0x41600000, 0x00000000, 0xC2480000, \
0x42640000, 0x00000000, 0xC1F00000, 0x42640000, \
0x00000000, 0xC2200000, 0x428C0000, 0x00000000, \
0xC25C0000, 0xC1700000, 0x00000000, 0xC25C0000, \
0xC2000000, 0x00000000, 0xC1F00000, 0xC2000000, \
0x00000000, 0xC1A00000, 0xC1200000, 0x00000000
var_80901A04: .word \
0x44480000, 0x44C80000, 0x42C80000, 0xC4480000, \
0x44C80000, 0x42C80000, 0x44480000, 0x00000000, \
0x42C80000, 0xC4480000, 0x00000000, 0x42C80000, \
0x41200000, 0x00000000, 0x41200000, 0xC1200000, \
0x00000000, 0x41200000, 0x41200000, 0x00000000, \
0xC1200000, 0xC1200000, 0x00000000, 0xC1200000, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80901A70: .word 0x455AC000
var_80901A74: .word 0x3A83126F
var_80901A78: .word 0x3F19999A
var_80901A7C: .word 0x453B8000
var_80901A80: .word 0x40CCCCCD, 0x00000000, 0x00000000, 0x00000000

