#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A28E20:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   a1, s0, 0x0158             # a1 = 00000158
    sw      a1, 0x002C($sp)            
    sra     t7, t6,  8                 
    andi    t8, t7, 0x0007             # t8 = 00000000
    sw      t8, 0x0030($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x003C($sp)            
    lui     a3, %hi(var_80A29D8C)      # a3 = 80A30000
    addiu   a3, a3, %lo(var_80A29D8C)  # a3 = 80A29D8C
    lw      a0, 0x003C($sp)            
    lw      a1, 0x002C($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00              
    lw      a1, 0x002C($sp)            
    lw      a0, 0x0030($sp)            
    lui     t9, %hi(var_80A29DE4)      # t9 = 80A30000
    addiu   t9, t9, %lo(var_80A29DE4)  # t9 = 80A29DE4
    sll     v0, a0,  1                 
    addu    a2, v0, t9                 
    lh      t0, 0x0000(a2)             # 00000000
    lui     t1, %hi(var_80A29DF0)      # t1 = 80A30000
    addiu   t1, t1, %lo(var_80A29DF0)  # t1 = 80A29DF0
    addu    v1, v0, t1                 
    sh      t0, 0x0198(s0)             # 00000198
    lh      t2, 0x0000(v1)             # 00000000
    lui     t3, %hi(var_80A29DF2)      # t3 = 80A30000
    beq     a0, $zero, lbl_80A28EC4    
    sh      t2, 0x019A(s0)             # 0000019A
    addiu   t3, t3, %lo(var_80A29DF2)  # t3 = 80A29DF2
    beq     v1, t3, lbl_80A28EC4       
    lui     t4, %hi(var_80A29DF8)      # t4 = 80A30000
    addiu   t4, t4, %lo(var_80A29DF8)  # t4 = 80A29DF8
    bne     v1, t4, lbl_80A28F18       
lbl_80A28EC4:
    addiu   a1, s0, 0x01A4             # a1 = 000001A4
    sw      a1, 0x0024($sp)            
    lw      a0, 0x003C($sp)            
    sw      v1, 0x0028($sp)            
    jal     func_8004AB7C              
    sw      a2, 0x002C($sp)            
    lui     a3, %hi(var_80A29DB8)      # a3 = 80A30000
    addiu   a3, a3, %lo(var_80A29DB8)  # a3 = 80A29DB8
    lw      a0, 0x003C($sp)            
    lw      a1, 0x0024($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00              
    lw      a1, 0x0024($sp)            
    lw      t5, 0x002C($sp)            
    lw      v1, 0x0028($sp)            
    lh      t6, 0x0000(t5)             # 00000000
    sh      t6, 0x01E4(s0)             # 000001E4
    lh      t7, 0x0000(v1)             # 00000000
    sh      t7, 0x01E6(s0)             # 000001E6
lbl_80A28F18:
    lui     t8, %hi(var_80A29DF8)      # t8 = 80A30000
    addiu   t8, t8, %lo(var_80A29DF8)  # t8 = 80A29DF8
    bnel    v1, t8, lbl_80A28F44       
    lw      $ra, 0x001C($sp)           
    lh      t9, 0x01A2(s0)             # 000001A2
    lh      t1, 0x01EE(s0)             # 000001EE
    addiu   t0, t9, 0x001E             # t0 = 0000001E
    addiu   t2, t1, 0x001E             # t2 = 0000001E
    sh      t0, 0x01A2(s0)             # 000001A2
    sh      t2, 0x01EE(s0)             # 000001EE
    lw      $ra, 0x001C($sp)           
lbl_80A28F44:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A28F54:
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


func_80A28FAC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0020($sp)            
    sw      a2, 0x0028($sp)            
    lh      a0, 0x002A($sp)            
    jal     func_800636C4              # sins?
    sw      a1, 0x0024($sp)            
    lh      a0, 0x002A($sp)            
    jal     func_80063684              # coss?
    swc1    $f0, 0x001C($sp)           
    lw      a1, 0x0024($sp)            
    lwc1    $f2, 0x001C($sp)           
    lw      v0, 0x0020($sp)            
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f8, 0x0000(a1)            # 00000000
    mul.s   $f6, $f4, $f2              
    nop
    mul.s   $f10, $f8, $f0             
    add.s   $f16, $f6, $f10            
    swc1    $f16, 0x0000(v0)           # 00000000
    lwc1    $f18, 0x0004(a1)           # 00000004
    swc1    $f18, 0x0004(v0)           # 00000004
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f6, 0x0000(a1)            # 00000000
    mul.s   $f8, $f4, $f0              
    nop
    mul.s   $f10, $f6, $f2             
    sub.s   $f16, $f8, $f10            
    swc1    $f16, 0x0008(v0)           # 00000008
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A2902C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80A29DFC)      # a1 = 80A30000
    addiu   a1, a1, %lo(var_80A29DFC)  # a1 = 80A29DFC
    sra     v0, v0,  8                 
    andi    v0, v0, 0x0007             # v0 = 00000000
    sll     v0, v0, 16                 
    sra     v0, v0, 16                 
    sh      v0, 0x0022($sp)            
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x0022($sp)            
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    lui     $at, 0x4234                # $at = 42340000
    bne     v0, v1, lbl_80A290B4       
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f6                   # $f6 = 45.00
    lh      t6, 0x0030(s0)             # 00000030
    lui     $at, 0x4218                # $at = 42180000
    lwc1    $f4, 0x0028(s0)            # 00000028
    mtc1    $at, $f16                  # $f16 = 38.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    addiu   t7, t6, 0x0BB8             # t7 = 00000BB8
    sub.s   $f8, $f4, $f6              
    sh      t7, 0x0030(s0)             # 00000030
    lh      t8, 0x0030(s0)             # 00000030
    sub.s   $f18, $f10, $f16           
    swc1    $f8, 0x0028(s0)            # 00000028
    sh      t8, 0x00B4(s0)             # 000000B4
    swc1    $f18, 0x002C(s0)           # 0000002C
lbl_80A290B4:
    bne     v0, v1, lbl_80A290DC       
    sll     t9, v0,  2                 
    lui     a1, %hi(var_80A29E08)      # a1 = 80A30000
    addiu   a1, a1, %lo(var_80A29E08)  # a1 = 80A29E08
    addiu   a0, s0, 0x0050             # a0 = 00000050
    jal     func_80063CAC              # Vec3f_Copy
    sh      v0, 0x0022($sp)            
    lh      v0, 0x0022($sp)            
    beq     $zero, $zero, lbl_80A290F8 
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A290DC:
    lui     a1, %hi(var_80A29D70)      # a1 = 80A30000
    addu    a1, a1, t9                 
    lw      a1, %lo(var_80A29D70)(a1)  
    jal     func_80020F88              
    sh      v0, 0x0022($sp)            
    lh      v0, 0x0022($sp)            
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A290F8:
    beq     v0, $at, lbl_80A29114      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80A29130      
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A29148 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A29114:
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x1C1C             # a2 = 06001C1C
    lw      a1, 0x002C($sp)            
    jal     func_80A28F54              
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_80A29148 
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A29130:
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x2920             # a2 = 06002920
    lw      a1, 0x002C($sp)            
    jal     func_80A28F54              
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A29148:
    jal     func_80A28E20              
    lw      a1, 0x002C($sp)            
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    sb      t0, 0x00AE(s0)             # 000000AE
    sra     t1, v0,  6                 
    andi    t2, t1, 0x0001             # t2 = 00000000
    bne     t2, $zero, lbl_80A2918C    
    lw      a0, 0x002C($sp)            
    jal     func_8002049C              
    andi    a1, v0, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80A2918C    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A29198 
    lw      $ra, 0x001C($sp)           
lbl_80A2918C:
    jal     func_80A2970C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A29198:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80A291A8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lh      t7, 0x001C(t6)             # 0000001C
    sra     t8, t7,  8                 
    andi    t9, t8, 0x0007             # t9 = 00000000
    sltiu   $at, t9, 0x0005            
    beq     $at, $zero, lbl_80A29214   
    sll     t9, t9,  2                 
    lui     $at, %hi(var_80A29E80)     # $at = 80A30000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80A29E80)($at) 
    jr      t9                         
    nop
var_80A291E8:
    lw      a0, 0x001C($sp)            
    lw      t1, 0x0018($sp)            
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t1)             # 0000013C
    beq     $zero, $zero, lbl_80A29218 
    lw      a1, 0x0018($sp)            
var_80A29204:
    lw      a1, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x01A4             # a1 = 000001A4
lbl_80A29214:
    lw      a1, 0x0018($sp)            
lbl_80A29218:
    lw      a0, 0x001C($sp)            
    jal     func_8004ABCC              
    addiu   a1, a1, 0x0158             # a1 = 00000158
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A29234:
    addiu   $sp, $sp, 0xFF28           # $sp = FFFFFF28
    sdc1    $f26, 0x0040($sp)          
    sw      s6, 0x0070($sp)            
    sw      s5, 0x006C($sp)            
    mtc1    a3, $f26                   # $f26 = 0.00
    or      s5, a1, $zero              # s5 = 00000000
    or      s6, a0, $zero              # s6 = 00000000
    sw      $ra, 0x007C($sp)           
    sw      s8, 0x0078($sp)            
    sw      s7, 0x0074($sp)            
    sw      s4, 0x0068($sp)            
    sw      s3, 0x0064($sp)            
    sw      s2, 0x0060($sp)            
    sw      s1, 0x005C($sp)            
    sw      s0, 0x0058($sp)            
    sdc1    $f30, 0x0050($sp)          
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a2, 0x00E0($sp)            
    lh      s4, 0x009E(s5)             # 0000009E
    lui     $at, 0x4040                # $at = 40400000
    lui     s8, %hi(var_80A29E14)      # s8 = 80A30000
    andi    s4, s4, 0x0007             # s4 = 00000000
    sll     s4, s4, 16                 
    mtc1    $at, $f30                  # $f30 = 3.00
    sra     s4, s4, 16                 
    addiu   s8, s8, %lo(var_80A29E14)  # s8 = 80A29E14
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s7, $zero, 0x0002          # s7 = 00000002
lbl_80A292B0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f4, 0x00E0($sp)           
    lui     $at, 0x4228                # $at = 42280000
    c.lt.s  $f4, $f0                   
    nop
    bc1tl   lbl_80A29458               
    addiu   s2, s2, 0x0001             # s2 = 00000001
    mtc1    $at, $f6                   # $f6 = 42.00
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f8                   # $f8 = 16.00
    mul.s   $f22, $f6, $f26            
    lui     $at, 0x43E1                # $at = 43E10000
    mtc1    $at, $f10                  # $f10 = 450.00
    mul.s   $f28, $f8, $f26            
    sll     t6, s4,  1                 
    addu    t7, s8, t6                 
    mul.s   $f16, $f10, $f26           
    lh      t8, 0x0000(t7)             # 00000000
    sll     t9, s2, 15                 
    addiu   s0, s6, 0x0024             # s0 = 00000024
    addu    s1, t8, t9                 
    sll     s1, s1, 16                 
    sra     s1, s1, 16                 
    trunc.w.s $f18, $f16                 
    sll     a0, s1, 16                 
    sra     a0, a0, 16                 
    mfc1    s3, $f18                   
    nop
    sll     s3, s3, 16                 
    jal     func_800636C4              # sins?
    sra     s3, s3, 16                 
    sll     a0, s1, 16                 
    mov.s   $f20, $f0                  
    jal     func_80063684              # coss?
    sra     a0, a0, 16                 
    mul.s   $f4, $f22, $f20            
    lwc1    $f6, 0x0000(s0)            # 00000024
    mov.s   $f24, $f0                  
    mul.s   $f18, $f22, $f0            
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x00AC($sp)           
    lwc1    $f10, 0x0004(s0)           # 00000028
    add.s   $f16, $f28, $f10           
    swc1    $f16, 0x00B0($sp)          
    lwc1    $f4, 0x0008(s0)            # 0000002C
    add.s   $f6, $f18, $f4             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00B4($sp)           
    mul.s   $f8, $f0, $f30             
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x00A4($sp)           
    sub.s   $f16, $f8, $f10            
    mul.s   $f18, $f16, $f20           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00A0($sp)          
    mul.s   $f6, $f0, $f30             
    lui     $at, %hi(var_80A29E94)     # $at = 80A30000
    lwc1    $f2, %lo(var_80A29E94)($at) 
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, %hi(var_80A29E98)     # $at = 80A30000
    lwc1    $f4, %lo(var_80A29E98)($at) 
    sub.s   $f10, $f6, $f8             
    swc1    $f4, 0x0098($sp)           
    mul.s   $f16, $f10, $f24           
    nop
    mul.s   $f18, $f2, $f20            
    nop
    mul.s   $f6, $f2, $f24             
    swc1    $f16, 0x00A8($sp)          
    swc1    $f18, 0x0094($sp)          
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x009C($sp)           
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lui     t1, %hi(var_80A29D84)      # t1 = 80A30000
    lui     t2, %hi(var_80A29D88)      # t2 = 80A30000
    mul.s   $f8, $f0, $f2              
    addiu   t2, t2, %lo(var_80A29D88)  # t2 = 80A29D88
    addiu   t1, t1, %lo(var_80A29D84)  # t1 = 80A29D84
    sw      t1, 0x0010($sp)            
    sw      t2, 0x0014($sp)            
    or      a0, s5, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x00AC            # a1 = FFFFFFD4
    add.s   $f10, $f8, $f2             
    addiu   a2, $sp, 0x00A0            # a2 = FFFFFFC8
    addiu   a3, $sp, 0x0094            # a3 = FFFFFFBC
    sw      s3, 0x0018($sp)            
    trunc.w.s $f16, $f10                 
    mfc1    t4, $f16                   
    nop
    sll     t5, t4, 16                 
    sra     t6, t5, 16                 
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18                  
    mul.s   $f6, $f4, $f26             
    trunc.w.s $f8, $f6                   
    mfc1    t8, $f8                    
    jal     func_8001BD94              
    sw      t8, 0x001C($sp)            
    addiu   s2, s2, 0x0001             # s2 = 00000002
lbl_80A29458:
    bne     s2, s7, lbl_80A292B0       
    nop
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
    addiu   $sp, $sp, 0x00D8           # $sp = 00000000


func_80A294A8:
    addiu   $sp, $sp, 0xFF28           # $sp = FFFFFF28
    sdc1    $f30, 0x0050($sp)          
    sw      s7, 0x0074($sp)            
    sw      s5, 0x006C($sp)            
    mtc1    a2, $f30                   # $f30 = 0.00
    or      s5, a0, $zero              # s5 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x007C($sp)           
    sw      s8, 0x0078($sp)            
    sw      s6, 0x0070($sp)            
    sw      s4, 0x0068($sp)            
    sw      s3, 0x0064($sp)            
    sw      s2, 0x0060($sp)            
    sw      s1, 0x005C($sp)            
    sw      s0, 0x0058($sp)            
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    sw      a3, 0x00E4($sp)            
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f28                  # $f28 = 40.00
    lui     $at, %hi(var_80A29E9C)     # $at = 80A30000
    lwc1    $f26, %lo(var_80A29E9C)($at) 
    lui     $at, %hi(var_80A29EA0)     # $at = 80A30000
    lh      s6, 0x009E(s7)             # 0000009E
    lwc1    $f24, %lo(var_80A29EA0)($at) 
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f22                  # $f22 = 1.50
    lui     $at, 0x4040                # $at = 40400000
    andi    s6, s6, 0x0007             # s6 = 00000000
    sll     s6, s6, 16                 
    mtc1    $at, $f20                  # $f20 = 3.00
    sra     s6, s6, 16                 
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s8, $zero, 0x0002          # s8 = 00000002
    addiu   s4, $sp, 0x00BC            # s4 = FFFFFFE4
lbl_80A29540:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    c.lt.s  $f30, $f0                  
    lui     t7, %hi(var_80A29E34)      # t7 = 80A30000
    addiu   t7, t7, %lo(var_80A29E34)  # t7 = 80A29E34
    addiu   s0, s5, 0x0024             # s0 = 00000024
    bc1t    lbl_80A296B8               
    sll     t6, s3,  2                 
    lui     t9, %hi(var_80A29E24)      # t9 = 80A30000
    addiu   t9, t9, %lo(var_80A29E24)  # t9 = 80A29E24
    sll     t8, s6,  1                 
    addu    s2, t8, t9                 
    jal     func_800CDCCC              # Rand.Next() float
    addu    s1, t6, t7                 
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f4                   # $f4 = 12.00
    lh      t0, 0x0000(s2)             # 00000000
    lui     $at, 0x40C0                # $at = 40C00000
    mul.s   $f6, $f0, $f4              
    mtc1    t0, $f16                   # $f16 = 0.00
    mtc1    $at, $f8                   # $f8 = 6.00
    lui     $at, 0x4170                # $at = 41700000
    cvt.s.w $f18, $f16                 
    mtc1    $at, $f16                  # $f16 = 15.00
    nop
    swc1    $f16, 0x009C($sp)          
    sub.s   $f10, $f6, $f8             
    lwc1    $f6, 0x0000(s1)            # 00000000
    add.s   $f4, $f18, $f10            
    mul.s   $f8, $f6, $f4              
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0098($sp)           
    lui     $at, 0x42A8                # $at = 42A80000
    mtc1    $at, $f18                  # $f18 = 84.00
    lwc1    $f10, 0x0098($sp)          
    lui     $at, %hi(var_80A29EA4)     # $at = 80A30000
    lwc1    $f4, %lo(var_80A29EA4)($at) 
    sub.s   $f6, $f18, $f10            
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    or      a0, s4, $zero              # a0 = FFFFFFE4
    mul.s   $f8, $f6, $f4              
    addiu   a1, $sp, 0x0098            # a1 = FFFFFFC0
    mul.s   $f18, $f0, $f16            
    add.s   $f10, $f18, $f8            
    swc1    $f10, 0x00A0($sp)          
    jal     func_80A28FAC              
    lh      a2, 0x0032(s5)             # 00000032
    or      a0, s4, $zero              # a0 = FFFFFFE4
    or      a1, s0, $zero              # a1 = 00000024
    jal     func_80063D10              # Vec3f_Add
    or      a2, s4, $zero              # a2 = FFFFFFE4
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f6, $f0, $f20             
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
    swc1    $f16, 0x00B4($sp)          
    sub.s   $f4, $f6, $f22             
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00B0($sp)           
    mul.s   $f18, $f0, $f20            
    sub.s   $f8, $f18, $f22            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00B8($sp)           
    mul.s   $f10, $f0, $f24            
    lui     $at, %hi(var_80A29EA8)     # $at = 80A30000
    lwc1    $f4, %lo(var_80A29EA8)($at) 
    swc1    $f4, 0x00A8($sp)           
    sub.s   $f6, $f10, $f26            
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00A4($sp)           
    mul.s   $f16, $f0, $f24            
    sub.s   $f18, $f16, $f26           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00AC($sp)          
    mul.s   $f8, $f0, $f28             
    lui     t1, %hi(var_80A29D84)      # t1 = 80A30000
    lui     t2, %hi(var_80A29D88)      # t2 = 80A30000
    addiu   t2, t2, %lo(var_80A29D88)  # t2 = 80A29D88
    addiu   t1, t1, %lo(var_80A29D84)  # t1 = 80A29D84
    addiu   t3, $zero, 0x01C2          # t3 = 000001C2
    sw      t3, 0x0018($sp)            
    add.s   $f10, $f8, $f28            
    sw      t1, 0x0010($sp)            
    sw      t2, 0x0014($sp)            
    or      a0, s7, $zero              # a0 = 00000000
    trunc.w.s $f6, $f10                  
    or      a1, s4, $zero              # a1 = FFFFFFE4
    addiu   a2, $sp, 0x00B0            # a2 = FFFFFFD8
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    mfc1    t5, $f6                    
    jal     func_8001BD94              
    sw      t5, 0x001C($sp)            
lbl_80A296B8:
    addiu   s3, s3, 0x0001             # s3 = 00000001
    bne     s3, s8, lbl_80A29540       
    nop
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
    addiu   $sp, $sp, 0x00D8           # $sp = 00000000


func_80A2970C:
    lui     t6, %hi(func_80A29728)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A29728) # t6 = 80A29728
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x01F0(a0)             # 000001F0
    jr      $ra                        
    nop


func_80A29728:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x003C($sp)            
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lh      a2, 0x001C(s0)             # 0000001C
    sra     a2, a2,  8                 
    andi    a2, a2, 0x0007             # a2 = 00000000
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    bnel    a2, a3, lbl_80A29774       
    lbu     v0, 0x0169(s0)             # 00000169
    lw      v0, 0x0118(s0)             # 00000118
    addiu   t6, $zero, 0x2710          # t6 = 00002710
    beql    v0, $zero, lbl_80A29774    
    lbu     v0, 0x0169(s0)             # 00000169
    sh      t6, 0x0110(v0)             # 00000110
    lbu     v0, 0x0169(s0)             # 00000169
lbl_80A29774:
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80A297E0    
    nop
    lw      v1, 0x0160(s0)             # 00000160
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    sb      t8, 0x0169(s0)             # 00000169
    beq     v1, $zero, lbl_80A297E0    
    nop
    lh      t9, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x00F0         # $at = 000000F0
    or      a0, s0, $zero              # a0 = 00000000
    bne     t9, $at, lbl_80A297E0      
    nop
    bne     a2, a3, lbl_80A297C4       
    nop
    lw      v0, 0x0118(s0)             # 00000118
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    beq     v0, $zero, lbl_80A297C4    
    nop
    sh      t0, 0x0110(v0)             # 00000110
lbl_80A297C4:
    jal     func_80A29868              
    sh      a2, 0x0032($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x28A2          # a1 = 000028A2
    lh      a2, 0x0032($sp)            
    addiu   a3, $zero, 0x0004          # a3 = 00000004
lbl_80A297E0:
    beq     a2, $zero, lbl_80A2980C    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    a2, $at, lbl_80A29810      
    lw      a0, 0x003C($sp)            
    beq     a2, a3, lbl_80A2980C       
    lw      a1, 0x003C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a1, $at                
    beq     $zero, $zero, lbl_80A29848 
    addiu   a3, s0, 0x0158             # a3 = 00000158
lbl_80A2980C:
    lw      a0, 0x003C($sp)            
lbl_80A29810:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a3, s0, 0x0158             # a3 = 00000158
    addu    a1, a0, $at                
    sw      a1, 0x0028($sp)            
    or      a2, a3, $zero              # a2 = 00000158
    jal     func_8004C130              # CollisionCheck_setOT
    sw      a3, 0x0024($sp)            
    lw      a1, 0x0028($sp)            
    lw      a0, 0x003C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x01A4             # a2 = 000001A4
    lw      a1, 0x0028($sp)            
    lw      a3, 0x0024($sp)            
lbl_80A29848:
    lw      a0, 0x003C($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, a3, $zero              # a2 = 00000000
    lw      $ra, 0x001C($sp)           
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop


func_80A29868:
    lui     t6, %hi(func_80A29884)     # t6 = 80A30000
    addiu   t6, t6, %lo(func_80A29884) # t6 = 80A29884
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x01F0(a0)             # 000001F0
    jr      $ra                        
    nop


func_80A29884:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0044($sp)            
    lh      t6, 0x01F0(s0)             # 000001F0
    lh      a2, 0x001C(s0)             # 0000001C
    addiu   t7, t6, 0xFFFB             # t7 = FFFFFFFB
    sh      t7, 0x01F0(s0)             # 000001F0
    lh      v0, 0x01F0(s0)             # 000001F0
    sra     a2, a2,  8                 
    andi    a2, a2, 0x0007             # a2 = 00000000
    bgez    v0, lbl_80A298C4           
    slti    $at, v0, 0x0100            
    beq     $zero, $zero, lbl_80A298D8 
    sh      $zero, 0x01F0(s0)          # 000001F0
lbl_80A298C4:
    bne     $at, $zero, lbl_80A298D4   
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_80A298D4 
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_80A298D4:
    sh      v1, 0x01F0(s0)             # 000001F0
lbl_80A298D8:
    lui     $at, %hi(var_80A29EAC)     # $at = 80A30000
    lwc1    $f2, %lo(var_80A29EAC)($at) 
    lui     $at, %hi(var_80A29E3C)     # $at = 80A30000
    sll     v1, a2,  2                 
    addu    $at, $at, v1               
    lwc1    $f6, %lo(var_80A29E3C)($at) 
    lwc1    $f4, 0x0054(s0)            # 00000054
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0054(s0)            # 00000054
    lwc1    $f0, 0x0054(s0)            # 00000054
    c.lt.s  $f0, $f2                   
    nop
    bc1fl   lbl_80A2991C               
    swc1    $f0, 0x0054(s0)            # 00000054
    beq     $zero, $zero, lbl_80A2991C 
    swc1    $f2, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0054(s0)            # 00000054
lbl_80A2991C:
    lh      v0, 0x01F0(s0)             # 000001F0
    slti    $at, v0, 0x0051            
    bnel    $at, $zero, lbl_80A29980   
    slti    $at, v0, 0x00B5            
    beq     a2, $zero, lbl_80A29944    
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a2, $at, lbl_80A29944      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    a2, $at, lbl_80A29980      
    slti    $at, v0, 0x00B5            
lbl_80A29944:
    lw      a0, 0x0044($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at                
    sw      a1, 0x002C($sp)            
    addiu   a2, s0, 0x0158             # a2 = 00000158
    jal     func_8004C130              # CollisionCheck_setOT
    sw      v1, 0x0028($sp)            
    lw      a1, 0x002C($sp)            
    lw      a0, 0x0044($sp)            
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x01A4             # a2 = 000001A4
    lw      v1, 0x0028($sp)            
    lh      v0, 0x01F0(s0)             # 000001F0
    slti    $at, v0, 0x00B5            
lbl_80A29980:
    bne     $at, $zero, lbl_80A29998   
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    beq     $zero, $zero, lbl_80A299B8 
    nop
lbl_80A29998:
    slti    $at, v0, 0x003D            
    bne     $at, $zero, lbl_80A299B0   
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    beq     $zero, $zero, lbl_80A299B8 
    nop
lbl_80A299B0:
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
lbl_80A299B8:
    lui     t9, %hi(var_80A29E64)      # t9 = 80A30000
    addiu   t9, t9, %lo(var_80A29E64)  # t9 = 80A29E64
    addu    v0, v1, t9                 
    lw      t9, 0x0000(v0)             # 00000000
    lui     a3, %hi(var_80A29E50)      # a3 = 80A30000
    addu    a3, a3, v1                 
    mfc1    a2, $f0                    
    lw      a3, %lo(var_80A29E50)(a3)  
    sw      v0, 0x0024($sp)            
    jalr    $ra, t9                    
    lw      a1, 0x0044($sp)            
    lh      t0, 0x01F0(s0)             # 000001F0
    bgtzl   t0, lbl_80A29A38           
    lw      $ra, 0x001C($sp)           
    lh      v0, 0x001C(s0)             # 0000001C
    lw      a0, 0x0044($sp)            
    sra     t1, v0,  6                 
    andi    t2, t1, 0x0001             # t2 = 00000000
    bnel    t2, $zero, lbl_80A29A14    
    lw      t3, 0x0024($sp)            
    jal     func_800204D0              
    andi    a1, v0, 0x003F             # a1 = 00000000
    lw      t3, 0x0024($sp)            
lbl_80A29A14:
    lui     t4, %hi(var_80A29E74)      # t4 = 80A30000
    addiu   t4, t4, %lo(var_80A29E74)  # t4 = 80A29E74
    bne     t3, t4, lbl_80A29A2C       
    nop
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          # a0 = 00004802
lbl_80A29A2C:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80A29A38:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_80A29A48:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80A29A6C:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s1, 0x0038($sp)            
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0034($sp)            
    sw      a0, 0x0078($sp)            
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0064($sp)            
    lw      a1, 0x0064($sp)            
    lw      a0, 0x0078($sp)            
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sw      v0, 0x0004(a1)             # 00000004
    lh      v1, 0x001C(a0)             # 0000001C
    or      a2, $zero, $zero           # a2 = 00000000
    sra     v1, v1,  8                 
    andi    v1, v1, 0x0007             # v1 = 00000000
    beq     v1, $zero, lbl_80A29AF4    
    nop
    beq     v1, $at, lbl_80A29AF4      
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_80A29AF4      
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v1, $at, lbl_80A29B04      
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_80A29AF4:
    jal     func_80022554              
    or      a1, s1, $zero              # a1 = 00000000
    lw      a0, 0x0078($sp)            
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_80A29B04:
    lui     t9, 0xFB00                 # t9 = FB000000
    lui     $at, 0xFF00                # $at = FF000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lh      t4, 0x01F0(a0)             # 000001F0
    andi    t5, t4, 0x00FF             # t5 = 00000000
    or      t6, t5, $at                # t6 = FF000000
    sw      t6, 0x0004(v1)             # 00000004
    lh      t7, 0x001C(a0)             # 0000001C
    sra     t8, t7,  8                 
    andi    t9, t8, 0x0007             # t9 = 00000000
    sltiu   $at, t9, 0x0005            
    beq     $at, $zero, lbl_80A29D30   
    sll     t9, t9,  2                 
    lui     $at, %hi(var_80A29EB0)     # $at = 80A30000
    addu    $at, $at, t9               
    lw      t9, %lo(var_80A29EB0)($at) 
    jr      t9                         
    nop
var_80A29B54:
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, s1                 
    sw      t5, 0x0000(v1)             # 00000000
    lw      t0, 0x1DE4(t0)             # 00011DE4
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    subu    a2, $zero, t0              
    andi    a2, a2, 0x007F             # a2 = 00000000
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    andi    t9, t0, 0x007F             # t9 = 00000000
    sw      t9, 0x0020($sp)            
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    sw      t4, 0x0024($sp)            
    or      a3, a2, $zero              # a3 = 00000000
    sw      a2, 0x001C($sp)            
    sw      t5, 0x0028($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x005C($sp)            
    lw      t1, 0x005C($sp)            
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x06F0             # t8 = 060006F0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80A29D34 
    lw      $ra, 0x003C($sp)           
var_80A29BF8:
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    lui     $at, 0x0001                # $at = 00010000
    addu    t3, s1, $at                
    sw      t4, 0x0000(v1)             # 00000000
    lw      t0, 0x1DE4(t3)             # 00001DE4
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    subu    t8, $zero, t0              
    andi    t9, t8, 0x00FF             # t9 = 000000F0
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0018($sp)            
    sw      t6, 0x0014($sp)            
    sw      t5, 0x0010($sp)            
    sw      t5, 0x0028($sp)            
    sw      t9, 0x0020($sp)            
    sw      t4, 0x0024($sp)            
    sw      t3, 0x0040($sp)            
    sw      $zero, 0x001C($sp)         
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      v1, 0x0054($sp)            
    jal     func_8007EB84              
    andi    a3, t0, 0x00FF             # a3 = 00000000
    lw      t1, 0x0054($sp)            
    lw      t3, 0x0040($sp)            
    lui     t7, 0xDB06                 # t7 = DB060000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t0, 0x1DE4(t3)             # 00001DE4
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    subu    a2, $zero, t0              
    andi    a3, t0, 0x00FF             # a3 = 00000000
    sw      a3, 0x001C($sp)            
    sw      a3, 0x0020($sp)            
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      t5, 0x0024($sp)            
    sw      t4, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t6, 0x0028($sp)            
    sw      t8, 0x0010($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0050($sp)            
    lw      t2, 0x0050($sp)            
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x12A0             # t9 = 060012A0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80A29D34 
    lw      $ra, 0x003C($sp)           
var_80A29D10:
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x2640             # t6 = 06002640
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      t5, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
lbl_80A29D30:
    lw      $ra, 0x003C($sp)           
lbl_80A29D34:
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0078           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80A29D50: .word 0x00EF0100, 0x00000000, 0x006B0000, 0x000001F4
.word func_80A2902C
.word func_80A291A8
.word func_80A29A48
.word func_80A29A6C
var_80A29D70: .word \
0x3DCCCCCD, 0x3D75C28F, 0x3DCCCCCD, 0x3DCCCCCD, \
0x3E800000
var_80A29D84: .word 0xFAFAFAFF
var_80A29D88: .word 0xB4B4B4FF
var_80A29D8C: .word \
0x0A002139, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00000000, 0x00000000, 0x00000000
var_80A29DB8: .word \
0x0C000D00, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x4FC1FFF6, 0x00000000, 0x00010000, \
0x00000000, 0x00000000, 0x00000000
var_80A29DE4: .word 0x002F0021, 0x002C0029, 0x00640000
var_80A29DF0: .byte 0x00, 0x50
var_80A29DF2: .byte 0x00, 0x36, 0x00, 0x5A, 0x00, 0x3C
var_80A29DF8: .word 0x00C80000
var_80A29DFC: .word 0xB0F404B0, 0xB0F801F4, 0x30FC03E8
var_80A29E08: .word 0x3E3851EC, 0x3E8A3D71, 0x3E75C28F
var_80A29E14: .word 0x00004000, 0x20006000, 0x10005000, 0x30007000
var_80A29E24: .word 0x0000003C, 0x00180054, 0x0030000C, 0x00480024
var_80A29E34: .word 0xBF800000, 0x3F800000
var_80A29E3C: .word \
0xBAC49BA6, 0xBA6BEDFA, 0xBAD1B717, 0xBAD1B717, \
0xBB75C28F
var_80A29E50: .word \
0x3F800000, 0x3F19999A, 0x3F99999A, 0x3F800000, \
0x3FE66666
var_80A29E64: .word func_80A29234
.word func_80A29234
.word func_80A29234
.word func_80A294A8
var_80A29E74: .word func_80A29234
.word 0x00000000, 0x00000000

.section .rodata

var_80A29E80: .word var_80A29204
.word var_80A29204
.word var_80A291E8
.word var_80A291E8
.word var_80A29204
var_80A29E94: .word 0x3D8F5C29
var_80A29E98: .word 0x3F4CCCCD
var_80A29E9C: .word 0x3D8F5C29
var_80A29EA0: .word 0x3E0F5C29
var_80A29EA4: .word 0x3E4CCCCD
var_80A29EA8: .word 0x3F4CCCCD
var_80A29EAC: .word 0x38D1B717
var_80A29EB0: .word var_80A29B54
.word var_80A29B54
.word var_80A29BF8
.word var_80A29D10
.word var_80A29B54
.word 0x00000000, 0x00000000, 0x00000000

