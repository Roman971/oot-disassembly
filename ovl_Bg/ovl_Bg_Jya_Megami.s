#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AC3EE0:
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


func_80AC3F38:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x002C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0158             # a1 = 00000158
    sw      a1, 0x0020($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8004A484              
    sw      a2, 0x0028($sp)            
    lw      a2, 0x0028($sp)            
    lui     a3, %hi(var_80AC4D44)      # a3 = 80AC0000
    lw      a1, 0x0020($sp)            
    addiu   t6, a2, 0x0178             # t6 = 00000178
    sw      t6, 0x0010($sp)            
    addiu   a3, a3, %lo(var_80AC4D44)  # a3 = 80AC4D44
    jal     func_8004A874              
    lw      a0, 0x002C($sp)            
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC3F8C:
    addiu   $sp, $sp, 0xFF40           # $sp = FFFFFF40
    sw      s5, 0x0084($sp)            
    sw      s3, 0x007C($sp)            
    or      s3, a1, $zero              # s3 = 00000000
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x0094($sp)           
    sw      s8, 0x0090($sp)            
    sw      s7, 0x008C($sp)            
    sw      s6, 0x0088($sp)            
    sw      s4, 0x0080($sp)            
    sw      s2, 0x0078($sp)            
    sw      s1, 0x0074($sp)            
    sw      s0, 0x0070($sp)            
    sdc1    $f28, 0x0068($sp)          
    sdc1    $f26, 0x0060($sp)          
    sdc1    $f24, 0x0058($sp)          
    sdc1    $f22, 0x0050($sp)          
    sdc1    $f20, 0x0048($sp)          
    sw      a2, 0x00C8($sp)            
    sw      a3, 0x00CC($sp)            
    lw      t6, 0x00CC($sp)            
    lw      t7, 0x00D0($sp)            
    or      s2, $zero, $zero           # s2 = 00000000
    blez    t6, lbl_80AC418C           
    sll     t8, t7,  1                 
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f28                  # $f28 = 60.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f26                  # $f26 = 25.00
    lui     $at, %hi(var_80AC4F50)     # $at = 80AC0000
    lwc1    $f24, %lo(var_80AC4F50)($at) 
    lui     $at, %hi(var_80AC4F54)     # $at = 80AC0000
    lwc1    $f22, %lo(var_80AC4F54)($at) 
    lui     t9, %hi(var_80AC4EBC)      # t9 = 80AC0000
    addiu   t9, t9, %lo(var_80AC4EBC)  # t9 = 80AC4EBC
    lui     $at, 0x4100                # $at = 41000000
    addu    t0, t8, t9                 
    lui     s8, %hi(var_80AC4E9C)      # s8 = 80AC0000
    lui     s7, %hi(var_80AC4E8C)      # s7 = 80AC0000
    lui     s6, %hi(var_80AC4EAC)      # s6 = 80AC0000
    mtc1    $at, $f20                  # $f20 = 8.00
    addiu   s6, s6, %lo(var_80AC4EAC)  # s6 = 80AC4EAC
    addiu   s7, s7, %lo(var_80AC4E8C)  # s7 = 80AC4E8C
    addiu   s8, s8, %lo(var_80AC4E9C)  # s8 = 80AC4E9C
    sw      t0, 0x00A0($sp)            
    addiu   s4, $sp, 0x00B4            # s4 = FFFFFFF4
lbl_80AC4044:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f20             
    lw      t1, 0x00A0($sp)            
    lh      t2, 0x0000(t1)             # 00000000
    trunc.w.s $f6, $f4                   
    mfc1    t4, $f6                    
    nop
    sll     t5, t4, 16                 
    sra     t6, t5, 16                 
    and     s1, t2, t6                 
    slti    $at, s1, 0x0005            
    beql    $at, $zero, lbl_80AC40A0   
    addiu   v1, $zero, 0x0020          # v1 = 00000020
    jal     func_800CDCCC              # Rand.Next() float
    nop
    c.lt.s  $f0, $f22                  
    nop
    bc1fl   lbl_80AC40A0               
    addiu   v1, $zero, 0x0020          # v1 = 00000020
    beq     $zero, $zero, lbl_80AC40A0 
    addiu   v1, $zero, 0x0040          # v1 = 00000040
    addiu   v1, $zero, 0x0020          # v1 = 00000020
lbl_80AC40A0:
    sll     v0, s1,  1                 
    addu    t8, s6, v0                 
    lh      t9, 0x0000(t8)             # 00000000
    addu    t4, s8, v0                 
    addiu   t7, $zero, 0xFFA6          # t7 = FFFFFFA6
    lh      t5, 0x0000(t4)             # 00000000
    sw      t7, 0x0010($sp)            
    addu    s0, s7, v0                 
    lh      t1, 0x0000(s0)             # 00000000
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0xB9F8             # t7 = 0600B9F8
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    addiu   t6, $zero, 0x00F1          # t6 = 000000F1
    sw      t6, 0x0038($sp)            
    sw      t2, 0x0034($sp)            
    sw      t3, 0x002C($sp)            
    sw      t0, 0x001C($sp)            
    sw      t7, 0x003C($sp)            
    sw      $zero, 0x0028($sp)         
    sw      $zero, 0x0020($sp)         
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    lw      a2, 0x00C8($sp)            
    or      a3, s3, $zero              # a3 = 00000000
    sw      v1, 0x0014($sp)            
    sw      t9, 0x0018($sp)            
    sw      t5, 0x0030($sp)            
    jal     func_8001D998              
    sw      t1, 0x0024($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    c.lt.s  $f0, $f24                  
    or      a0, s4, $zero              # a0 = FFFFFFF4
    bc1fl   lbl_80AC4180               
    lw      t1, 0x00CC($sp)            
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, s3, $zero              # a1 = 00000000
    lwc1    $f8, 0x00BC($sp)           
    lh      v0, 0x0000(s0)             # 00000000
    mfc1    a2, $f28                   
    add.s   $f10, $f8, $f26            
    sll     v0, v0,  2                 
    addiu   t8, v0, 0x0032             # t8 = 00000032
    addiu   t9, v0, 0x0046             # t9 = 00000046
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    swc1    $f10, 0x00BC($sp)          
    sw      t0, 0x0018($sp)            
    sw      t9, 0x0014($sp)            
    sw      t8, 0x0010($sp)            
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFF4
    jal     func_80026308              
    or      a3, $zero, $zero           # a3 = 00000000
    lw      t1, 0x00CC($sp)            
lbl_80AC4180:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    bne     s2, t1, lbl_80AC4044       
    nop
lbl_80AC418C:
    lw      $ra, 0x0094($sp)           
    ldc1    $f20, 0x0048($sp)          
    ldc1    $f22, 0x0050($sp)          
    ldc1    $f24, 0x0058($sp)          
    ldc1    $f26, 0x0060($sp)          
    ldc1    $f28, 0x0068($sp)          
    lw      s0, 0x0070($sp)            
    lw      s1, 0x0074($sp)            
    lw      s2, 0x0078($sp)            
    lw      s3, 0x007C($sp)            
    lw      s4, 0x0080($sp)            
    lw      s5, 0x0084($sp)            
    lw      s6, 0x0088($sp)            
    lw      s7, 0x008C($sp)            
    lw      s8, 0x0090($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00C0           # $sp = 00000000


func_80AC41D0:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sdc1    $f20, 0x0018($sp)          
    sw      s3, 0x0038($sp)            
    sw      s2, 0x0034($sp)            
    mtc1    a2, $f20                   # $f20 = 0.00
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x004C($sp)           
    sw      s7, 0x0048($sp)            
    sw      s6, 0x0044($sp)            
    sw      s5, 0x0040($sp)            
    sw      s4, 0x003C($sp)            
    sw      s1, 0x0030($sp)            
    sw      s0, 0x002C($sp)            
    sdc1    $f22, 0x0020($sp)          
    lui     $at, 0x4170                # $at = 41700000
    lui     s6, %hi(var_80AC4EC4)      # s6 = 80AC0000
    lui     s4, %hi(var_80AC4D54)      # s4 = 80AC0000
    mtc1    $at, $f22                  # $f22 = 15.00
    addiu   s4, s4, %lo(var_80AC4D54)  # s4 = 80AC4D54
    addiu   s6, s6, %lo(var_80AC4EC4)  # s6 = 80AC4EC4
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s7, $zero, 0x000D          # s7 = 0000000D
    addiu   s5, $zero, 0x0018          # s5 = 00000018
    addiu   s1, $sp, 0x0050            # s1 = FFFFFFF0
lbl_80AC4234:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    c.lt.s  $f0, $f20                  
    nop
    bc1fl   lbl_80AC4290               
    addiu   s0, s0, 0x0001             # s0 = 00000001
    multu   s0, s5                     
    addiu   a0, s2, 0x0024             # a0 = 00000024
    or      a2, s1, $zero              # a2 = FFFFFFF0
    mflo    t6                         
    addu    a1, s4, t6                 
    jal     func_80063D10              # Vec3f_Add
    nop
    lwc1    $f4, 0x0058($sp)           
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFF0
    add.s   $f6, $f4, $f22             
    or      a2, s6, $zero              # a2 = 80AC4EC4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sw      $zero, 0x0010($sp)         
    jal     func_80AC3F8C              
    swc1    $f6, 0x0058($sp)           
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_80AC4290:
    bne     s0, s7, lbl_80AC4234       
    nop
    lw      $ra, 0x004C($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    lw      s0, 0x002C($sp)            
    lw      s1, 0x0030($sp)            
    lw      s2, 0x0034($sp)            
    lw      s3, 0x0038($sp)            
    lw      s4, 0x003C($sp)            
    lw      s5, 0x0040($sp)            
    lw      s6, 0x0044($sp)            
    lw      s7, 0x0048($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80AC42CC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x5C4C             # a2 = 06005C4C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_80AC3EE0              
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AC3F38              
    lw      a1, 0x0024($sp)            
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)            
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80AC432C    
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AC4350 
    lw      $ra, 0x001C($sp)           
lbl_80AC432C:
    lui     a1, %hi(var_80AC4ED0)      # a1 = 80AC0000
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_80AC4ED0)  # a1 = 80AC4ED0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0xC248                 # a1 = C2480000
    jal     func_80AC43A8              
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80AC4350:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC4360:
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


func_80AC43A8:
    lui     t6, %hi(func_80AC43C4)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC43C4) # t6 = 80AC43C4
    sw      t6, 0x0154(a0)             # 00000154
    sh      $zero, 0x01B8(a0)          # 000001B8
    sh      $zero, 0x01BC(a0)          # 000001BC
    jr      $ra                        
    nop


func_80AC43C4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lbu     v0, 0x0169(s0)             # 00000169
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80AC4468    
    lh      v0, 0x01B8(s0)             # 000001B8
    lh      t7, 0x01B8(s0)             # 000001B8
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    sb      t9, 0x0169(s0)             # 00000169
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x01B8(s0)             # 000001B8
    lw      t0, 0x002C($sp)            
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, t0                 
    lw      t1, 0x1DE4(t1)             # 00011DE4
    andi    t2, t1, 0x0003             # t2 = 00000000
    bnel    t2, $zero, lbl_80AC4454    
    or      a0, s0, $zero              # a0 = 00000000
    lh      t3, 0x01BC(s0)             # 000001BC
    lui     $at, %hi(var_80AC4F58)     # $at = 80AC0000
    lwc1    $f8, %lo(var_80AC4F58)($at) 
    mtc1    t3, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80AC4F5C)     # $at = 80AC0000
    lwc1    $f16, %lo(var_80AC4F5C)($at) 
    cvt.s.w $f6, $f4                   
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, t0, $zero              # a1 = 00000000
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    mfc1    a2, $f18                   
    jal     func_80AC41D0              
    nop
    or      a0, s0, $zero              # a0 = 00000000
lbl_80AC4454:
    jal     func_8002313C              
    addiu   a1, $zero, 0x20D1          # a1 = 000020D1
    beq     $zero, $zero, lbl_80AC4478 
    lh      v0, 0x01B8(s0)             # 000001B8
    lh      v0, 0x01B8(s0)             # 000001B8
lbl_80AC4468:
    blez    v0, lbl_80AC4478           
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x01B8(s0)             # 000001B8
    lh      v0, 0x01B8(s0)             # 000001B8
lbl_80AC4478:
    slti    $at, v0, 0x0029            
    bne     $at, $zero, lbl_80AC44D0   
    addiu   a2, s0, 0x0158             # a2 = 00000158
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x002C($sp)            
    jal     func_800204D0              
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_80AC4550              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x002C($sp)            
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    jal     func_80058FF8              
    addiu   a3, $zero, 0x28D0          # a3 = 000028D0
    lw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0x0D70          # a1 = 00000D70
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    beq     $zero, $zero, lbl_80AC4540 
    lw      $ra, 0x0024($sp)           
lbl_80AC44D0:
    slti    $at, v0, 0x0008            
    beql    $at, $zero, lbl_80AC44E8   
    slti    $at, v0, 0x0010            
    beq     $zero, $zero, lbl_80AC4528 
    sh      $zero, 0x01BC(s0)          # 000001BC
    slti    $at, v0, 0x0010            
lbl_80AC44E8:
    beq     $at, $zero, lbl_80AC44F8   
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    beq     $zero, $zero, lbl_80AC4528 
    sh      t5, 0x01BC(s0)             # 000001BC
lbl_80AC44F8:
    slti    $at, v0, 0x0018            
    beq     $at, $zero, lbl_80AC450C   
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    beq     $zero, $zero, lbl_80AC4528 
    sh      t6, 0x01BC(s0)             # 000001BC
lbl_80AC450C:
    slti    $at, v0, 0x0020            
    beq     $at, $zero, lbl_80AC4524   
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    beq     $zero, $zero, lbl_80AC4528 
    sh      t7, 0x01BC(s0)             # 000001BC
lbl_80AC4524:
    sh      t8, 0x01BC(s0)             # 000001BC
lbl_80AC4528:
    lw      a0, 0x002C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at                
    lw      $ra, 0x0024($sp)           
lbl_80AC4540:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC4550:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)           
    sw      s4, 0x0028($sp)            
    sw      s3, 0x0024($sp)            
    sw      s2, 0x0020($sp)            
    sw      s1, 0x001C($sp)            
    sw      s0, 0x0018($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lui     t6, %hi(func_80AC45E8)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC45E8) # t6 = 80AC45E8
    sw      t6, 0x0154(a2)             # 00000154
    lui     s0, %hi(var_80AC4D54)      # s0 = 80AC0000
    lui     s4, %hi(var_80AC4E8C)      # s4 = 80AC0000
    addiu   s4, s4, %lo(var_80AC4E8C)  # s4 = 80AC4E8C
    addiu   s0, s0, %lo(var_80AC4D54)  # s0 = 80AC4D54
    sw      a2, 0x0030($sp)            
    addiu   s3, a2, 0x0024             # s3 = 00000024
    or      s1, a2, $zero              # s1 = 00000000
    addiu   s2, a2, 0x01C0             # s2 = 000001C0
lbl_80AC459C:
    or      a0, s2, $zero              # a0 = 000001C0
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, s3, $zero              # a1 = 00000024
    lwc1    $f4, 0x000C(s0)            # 80AC4D60
    addiu   s0, s0, 0x0018             # s0 = 80AC4D6C
    addiu   s1, s1, 0x001C             # s1 = 0000001C
    addiu   s2, s2, 0x001C             # s2 = 000001DC
    bne     s0, s4, lbl_80AC459C       
    swc1    $f4, 0x01B0(s1)            # 000001CC
    lw      t7, 0x0030($sp)            
    sh      $zero, 0x01BA(t7)          # 000001BA
    lw      $ra, 0x002C($sp)           
    lw      s0, 0x0018($sp)            
    lw      s1, 0x001C($sp)            
    lw      s2, 0x0020($sp)            
    lw      s3, 0x0024($sp)            
    lw      s4, 0x0028($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80AC45E8:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s7, 0x006C($sp)            
    sw      s4, 0x0060($sp)            
    or      s4, a0, $zero              # s4 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0074($sp)           
    sw      s8, 0x0070($sp)            
    sw      s6, 0x0068($sp)            
    sw      s5, 0x0064($sp)            
    sw      s3, 0x005C($sp)            
    sw      s2, 0x0058($sp)            
    sw      s1, 0x0054($sp)            
    sw      s0, 0x0050($sp)            
    sdc1    $f28, 0x0048($sp)          
    sdc1    $f26, 0x0040($sp)          
    sdc1    $f24, 0x0038($sp)          
    sdc1    $f22, 0x0030($sp)          
    sdc1    $f20, 0x0028($sp)          
    lh      t6, 0x01BA(s4)             # 000001BA
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    or      a0, s7, $zero              # a0 = 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x01BA(s4)             # 000001BA
    lh      v1, 0x01BA(s4)             # 000001BA
    addiu   a1, s4, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    bne     v1, $at, lbl_80AC4664      
    nop
    jal     func_80058FF8              
    addiu   a3, $zero, 0x28CF          # a3 = 000028CF
    lh      v1, 0x01BA(s4)             # 000001BA
lbl_80AC4664:
    lui     $at, %hi(var_80AC4F60)     # $at = 80AC0000
    lwc1    $f28, %lo(var_80AC4F60)($at) 
    lui     $at, %hi(var_80AC4F64)     # $at = 80AC0000
    lwc1    $f26, %lo(var_80AC4F64)($at) 
    lui     $at, %hi(var_80AC4F68)     # $at = 80AC0000
    lwc1    $f24, %lo(var_80AC4F68)($at) 
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0xC190                # $at = C1900000
    lui     s2, %hi(var_80AC4D54)      # s2 = 80AC0000
    mtc1    $at, $f20                  # $f20 = -18.00
    addiu   s2, s2, %lo(var_80AC4D54)  # s2 = 80AC4D54
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s8, $zero, 0x000D          # s8 = 0000000D
    addiu   s6, $zero, 0x001C          # s6 = 0000001C
    addiu   s5, $sp, 0x008C            # s5 = FFFFFFEC
lbl_80AC46A4:
    lh      v0, 0x0014(s2)             # 80AC4D68
    slt     $at, v0, v1                
    beq     $at, $zero, lbl_80AC4788   
    nop
    multu   s3, s6                     
    mflo    t8                         
    addu    s0, s4, t8                 
    lwc1    $f4, 0x01D0(s0)            # 000001D0
    addiu   s0, s0, 0x01C0             # s0 = 000001C0
    sub.s   $f6, $f4, $f24             
    swc1    $f6, 0x0010(s0)            # 000001D0
    lwc1    $f0, 0x0010(s0)            # 000001D0
    c.lt.s  $f0, $f20                  
    nop
    bc1fl   lbl_80AC46F0               
    lwc1    $f8, 0x000C(s0)            # 000001CC
    swc1    $f20, 0x0010(s0)           # 000001D0
    lwc1    $f0, 0x0010(s0)            # 000001D0
    lwc1    $f8, 0x000C(s0)            # 000001CC
lbl_80AC46F0:
    lwc1    $f16, 0x0000(s0)           # 000001C0
    lwc1    $f6, 0x0004(s0)            # 000001C4
    mul.s   $f10, $f8, $f26            
    lh      t9, 0x0018(s0)             # 000001D8
    add.s   $f8, $f6, $f0              
    lh      t2, 0x001A(s0)             # 000001DA
    swc1    $f8, 0x0004(s0)            # 000001C4
    swc1    $f10, 0x000C(s0)           # 000001CC
    lwc1    $f18, 0x000C(s0)           # 000001CC
    add.s   $f4, $f16, $f18            
    swc1    $f4, 0x0000(s0)            # 000001C0
    lh      t0, 0x0010(s2)             # 80AC4D64
    addu    t1, t9, t0                 
    sh      t1, 0x0018(s0)             # 000001D8
    lh      t3, 0x0012(s2)             # 80AC4D66
    addu    t4, t2, t3                 
    jal     func_800CDCCC              # Rand.Next() float
    sh      t4, 0x001A(s0)             # 000001DA
    c.lt.s  $f0, $f28                  
    or      a0, s0, $zero              # a0 = 000001C0
    or      a1, s2, $zero              # a1 = 80AC4D54
    or      a2, s5, $zero              # a2 = FFFFFFEC
    bc1f    lbl_80AC4780               
    nop
    jal     func_80063D10              # Vec3f_Add
    addiu   s1, s0, 0x000C             # s1 = 000001CC
    lwc1    $f10, 0x0094($sp)          
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sw      t5, 0x0010($sp)            
    add.s   $f16, $f10, $f22           
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFEC
    or      a2, s1, $zero              # a2 = 000001CC
    swc1    $f16, 0x0094($sp)          
    jal     func_80AC3F8C              
    addiu   a3, $zero, 0x0003          # a3 = 00000003
lbl_80AC4780:
    beq     $zero, $zero, lbl_80AC47E0 
    lh      v1, 0x01BA(s4)             # 000001BA
lbl_80AC4788:
    bnel    v0, v1, lbl_80AC47E4       
    addiu   s3, s3, 0x0001             # s3 = 00000001
    multu   s3, s6                     
    or      a1, s2, $zero              # a1 = 80AC4D54
    or      a2, s5, $zero              # a2 = FFFFFFEC
    mflo    t6                         
    addu    s0, s4, t6                 
    addiu   s0, s0, 0x01C0             # s0 = 00000380
    or      a0, s0, $zero              # a0 = 00000380
    jal     func_80063D10              # Vec3f_Add
    addiu   s1, s0, 0x000C             # s1 = 0000038C
    lwc1    $f18, 0x0094($sp)          
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0010($sp)            
    add.s   $f4, $f18, $f22            
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFEC
    or      a2, s1, $zero              # a2 = 0000038C
    swc1    $f4, 0x0094($sp)           
    jal     func_80AC3F8C              
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lh      v1, 0x01BA(s4)             # 000001BA
lbl_80AC47E0:
    addiu   s3, s3, 0x0001             # s3 = 00000002
lbl_80AC47E4:
    bne     s3, s8, lbl_80AC46A4       
    addiu   s2, s2, 0x0018             # s2 = 80AC4D6C
    andi    t8, v1, 0x0003             # t8 = 00000000
    bne     t8, $zero, lbl_80AC48A4    
    slti    $at, v1, 0x001F            
    bne     $at, $zero, lbl_80AC48A4   
    slti    $at, v1, 0x0050            
    beq     $at, $zero, lbl_80AC48A4   
    slti    $at, v1, 0x0029            
    bnel    $at, $zero, lbl_80AC48A8   
    slti    $at, v1, 0x000D            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f8                   # $f8 = 90.00
    sub.s   $f6, $f0, $f20             
    lwc1    $f16, 0x0024(s4)           # 00000024
    mul.s   $f10, $f6, $f8             
    add.s   $f18, $f10, $f16           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x008C($sp)          
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f4, 0x0028(s4)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mul.s   $f8, $f0, $f6              
    mtc1    $at, $f16                  # $f16 = 20.00
    sub.s   $f10, $f4, $f8             
    sub.s   $f18, $f10, $f16           
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0090($sp)          
    sub.s   $f6, $f0, $f20             
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f10, 0x002C(s4)           # 0000002C
    lui     a2, %hi(var_80AC4EE0)      # a2 = 80AC0000
    mul.s   $f8, $f6, $f4              
    addiu   a2, a2, %lo(var_80AC4EE0)  # a2 = 80AC4EE0
    sw      $zero, 0x0010($sp)         
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFEC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f16, $f10, $f8            
    jal     func_80AC3F8C              
    swc1    $f16, 0x0094($sp)          
    lh      v1, 0x01BA(s4)             # 000001BA
lbl_80AC48A4:
    slti    $at, v1, 0x000D            
lbl_80AC48A8:
    beq     $at, $zero, lbl_80AC4900   
    or      a0, s7, $zero              # a0 = 00000000
    lwc1    $f18, 0x0024(s4)           # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    swc1    $f18, 0x008C($sp)          
    lwc1    $f6, 0x0028(s4)            # 00000028
    addiu   t9, $zero, 0x0096          # t9 = 00000096
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    sub.s   $f10, $f6, $f4             
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    or      a1, s5, $zero              # a1 = FFFFFFEC
    lui     a2, 0x42C8                 # a2 = 42C80000
    swc1    $f10, 0x0090($sp)          
    lwc1    $f8, 0x002C(s4)            # 0000002C
    sw      t1, 0x0018($sp)            
    sw      t0, 0x0014($sp)            
    sw      t9, 0x0010($sp)            
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80026308              
    swc1    $f8, 0x0094($sp)           
    lh      v1, 0x01BA(s4)             # 000001BA
lbl_80AC4900:
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    bnel    v1, $at, lbl_80AC491C      
    slti    $at, v1, 0x0064            
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    lh      v1, 0x01BA(s4)             # 000001BA
    slti    $at, v1, 0x0064            
lbl_80AC491C:
    bnel    $at, $zero, lbl_80AC4930   
    lw      $ra, 0x0074($sp)           
    jal     func_80020EB4              
    or      a0, s4, $zero              # a0 = 00000000
    lw      $ra, 0x0074($sp)           
lbl_80AC4930:
    ldc1    $f20, 0x0028($sp)          
    ldc1    $f22, 0x0030($sp)          
    ldc1    $f24, 0x0038($sp)          
    ldc1    $f26, 0x0040($sp)          
    ldc1    $f28, 0x0048($sp)          
    lw      s0, 0x0050($sp)            
    lw      s1, 0x0054($sp)            
    lw      s2, 0x0058($sp)            
    lw      s3, 0x005C($sp)            
    lw      s4, 0x0060($sp)            
    lw      s5, 0x0064($sp)            
    lw      s6, 0x0068($sp)            
    lw      s7, 0x006C($sp)            
    lw      s8, 0x0070($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_80AC4970:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC4994:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lw      t6, 0x0034($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x002C($sp)            
    lui     t2, 0x00FF                 # t2 = 00FF0000
    lui     t3, 0x8012                 # t3 = 80120000
    addiu   t3, t3, 0x0C38             # t3 = 80120C38
    ori     t2, t2, 0xFFFF             # t2 = 00FFFFFF
    lw      a2, 0x002C($sp)            
    lui     t4, 0x8000                 # t4 = 80000000
    lw      t5, 0x0030($sp)            
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lh      t9, 0x01BC(t5)             # 000001BC
    lui     a1, %hi(var_80AC4EEC)      # a1 = 80AC0000
    sll     t6, t9,  2                 
    addu    a1, a1, t6                 
    lw      a1, %lo(var_80AC4EEC)(a1)  
    sll     t8, a1,  4                 
    srl     t9, t8, 28                 
    sll     t6, t9,  2                 
    addu    t8, t3, t6                 
    lw      t9, 0x0000(t8)             # DB060020
    and     t7, a1, t2                 
    addu    t6, t7, t9                 
    addu    t8, t6, t4                 
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lh      t6, 0x01BC(t5)             # 000001BC
    lui     t0, %hi(var_80AC4F00)      # t0 = 80AC0000
    sll     t8, t6,  2                 
    addu    t0, t0, t8                 
    lw      t0, %lo(var_80AC4F00)(t0)  
    sll     t9, t0,  4                 
    srl     t6, t9, 28                 
    sll     t8, t6,  2                 
    addu    t9, t3, t8                 
    lw      t6, 0x0000(t9)             # DB060024
    and     t7, t0, t2                 
    addu    t8, t7, t6                 
    addu    t9, t8, t4                 
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t8, 0x0034($sp)            
    lw      a0, 0x0000(t8)             # DB060020
    jal     func_800AB900              
    sw      v1, 0x001C($sp)            
    lw      t1, 0x001C($sp)            
    lw      a2, 0x002C($sp)            
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x5780             # t6 = 06005780
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a2)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_80AC4AD4:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s7, 0x004C($sp)            
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0054($sp)           
    sw      s8, 0x0050($sp)            
    sw      s6, 0x0048($sp)            
    sw      s5, 0x0044($sp)            
    sw      s4, 0x0040($sp)            
    sw      s3, 0x003C($sp)            
    sw      s2, 0x0038($sp)            
    sw      s1, 0x0034($sp)            
    sdc1    $f24, 0x0028($sp)          
    sdc1    $f22, 0x0020($sp)          
    sdc1    $f20, 0x0018($sp)          
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_8007E298              
    or      s4, a0, $zero              # s4 = 00000000
    lui     $at, %hi(var_80AC4F6C)     # $at = 80AC0000
    lwc1    $f24, %lo(var_80AC4F6C)($at) 
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f22                  # $f22 = -10.00
    lui     $at, %hi(var_80AC4F70)     # $at = 80AC0000
    lui     s1, %hi(var_80AC4D54)      # s1 = 80AC0000
    lui     s6, %hi(var_80AC4F14)      # s6 = 80AC0000
    lui     s8, 0xDA38                 # s8 = DA380000
    ori     s8, s8, 0x0003             # s8 = DA380003
    addiu   s6, s6, %lo(var_80AC4F14)  # s6 = 80AC4F14
    addiu   s1, s1, %lo(var_80AC4D54)  # s1 = 80AC4D54
    lwc1    $f20, %lo(var_80AC4F70)($at) 
    or      s2, s0, $zero              # s2 = 00000000
    addiu   s5, s0, 0x01C0             # s5 = 000001C0
lbl_80AC4B58:
    lwc1    $f4, 0x0000(s1)            # 80AC4D54
    lwc1    $f6, 0x01C0(s2)            # 000001C0
    lwc1    $f16, 0x0008(s1)           # 80AC4D5C
    lwc1    $f18, 0x01C8(s2)           # 000001C8
    add.s   $f12, $f4, $f6             
    lwc1    $f8, 0x0004(s1)            # 80AC4D58
    lwc1    $f10, 0x01C4(s2)           # 000001C4
    add.s   $f4, $f16, $f18            
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f14, $f8, $f10            
    mfc1    a2, $f4                    
    jal     func_800AA7F4              
    nop
    lh      t6, 0x001A(s5)             # 000001DA
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6                   
    mul.s   $f12, $f8, $f24            
    jal     func_800AAB94              
    nop
    lh      t7, 0x0018(s5)             # 000001D8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10                 
    mul.s   $f12, $f16, $f24           
    jal     func_800AA9E0              
    nop
    mfc1    a2, $f20                   
    mov.s   $f12, $f20                 
    mov.s   $f14, $f20                 
    jal     func_800AA8FC              
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f18, 0x0000(s1)           # 80AC4D54
    lwc1    $f4, 0x0004(s1)            # 80AC4D58
    lwc1    $f6, 0x0008(s1)            # 80AC4D5C
    mul.s   $f12, $f18, $f22           
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f14, $f4, $f22            
    nop
    mul.s   $f8, $f6, $f22             
    mfc1    a2, $f8                    
    jal     func_800AA7F4              
    nop
    lw      s3, 0x02C0(s4)             # 000002C0
    addiu   t8, s3, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s4)             # 000002C0
    sw      s8, 0x0000(s3)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02C0(s4)             # 000002C0
    lui     t0, 0xDE00                 # t0 = DE000000
    addiu   s2, s2, 0x001C             # s2 = 0000001C
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s4)             # 000002C0
    sw      t0, 0x0000(s0)             # 00000000
    lw      t1, 0x0000(s6)             # 80AC4F14
    addiu   s5, s5, 0x001C             # s5 = 000001DC
    addiu   s6, s6, 0x0004             # s6 = 80AC4F18
    sw      t1, 0x0004(s0)             # 00000004
    lui     t2, %hi(var_80AC4F48)      # t2 = 80AC0000
    addiu   t2, t2, %lo(var_80AC4F48)  # t2 = 80AC4F48
    bne     s6, t2, lbl_80AC4B58       
    addiu   s1, s1, 0x0018             # s1 = 80AC4D6C
    lw      $ra, 0x0054($sp)           
    ldc1    $f20, 0x0018($sp)          
    ldc1    $f22, 0x0020($sp)          
    ldc1    $f24, 0x0028($sp)          
    lw      s0, 0x0030($sp)            
    lw      s1, 0x0034($sp)            
    lw      s2, 0x0038($sp)            
    lw      s3, 0x003C($sp)            
    lw      s4, 0x0040($sp)            
    lw      s5, 0x0044($sp)            
    lw      s6, 0x0048($sp)            
    lw      s7, 0x004C($sp)            
    lw      s8, 0x0050($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80AC4C9C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, a2, 0x0158             # a1 = 00000158
    jal     func_80050CE4              
    sw      a2, 0x0018($sp)            
    lw      a2, 0x0018($sp)            
    lui     t6, %hi(func_80AC45E8)     # t6 = 80AC0000
    addiu   t6, t6, %lo(func_80AC45E8) # t6 = 80AC45E8
    lw      t7, 0x0154(a2)             # 00000154
    lw      a1, 0x001C($sp)            
    bne     t6, t7, lbl_80AC4CE8       
    nop
    jal     func_80AC4AD4              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AC4CF4 
    lw      $ra, 0x0014($sp)           
lbl_80AC4CE8:
    jal     func_80AC4994              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_80AC4CF4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80AC4D00: .word 0x01560100, 0x00000000, 0x00F10000, 0x0000032C
.word func_80AC42CC
.word func_80AC4360
.word func_80AC4970
.word func_80AC4C9C
var_80AC4D20: .word \
0x00000000, 0x00000000, 0x00000000, 0x00200000, \
0x00000000, 0x00010000, 0x00000000, 0xFDA8FF38, \
0x003C0064
var_80AC4D44: .word 0x0A000900, 0x00000000, 0x00000001
.word var_80AC4D20
var_80AC4D54: .word \
0xC2480000, 0xC1AA3D71, 0xC21BAE14, 0xBFCCCCCD, \
0xFED4FE70, 0x00280000, 0xC08A3D71, 0xC1570A3D, \
0xC15C28F6, 0x00000000, 0x04B00190, 0x002A0000, \
0x41F75C29, 0xC1A3D70B, 0xC1E6B852, 0x3FCCCCCD, \
0xFCE00320, 0x002C0000, 0xC1C0A3D7, 0xC223D70B, \
0xC1AAE147, 0xBF800000, 0xFD4401F4, 0x00240000, \
0xC2333333, 0xC293D70A, 0xC2470A3D, 0xC04CCCCD, \
0x03E8FF38, 0x001E0000, 0xC1100000, 0xC298F5C2, \
0xC153D70A, 0xBF800000, 0xFC180258, 0x001A0000, \
0xC123D70B, 0xC2523D71, 0xC1566667, 0x3FCCCCCD, \
0x0258FE70, 0x00220000, 0x420828F6, 0xC276E148, \
0xC21428F6, 0x3FC00000, 0x02580258, 0x001C0000, \
0x426DEB85, 0xC2199999, 0xC245999A, 0x3FE66666, \
0x01F40000, 0x00260000, 0xC19851EC, 0xC2E07AE1, \
0xC20C7AE2, 0xBFCCCCCD, 0x012C0320, 0x00160000, \
0x4143D70A, 0xC2C6147B, 0xC1FD1EB8, 0x3FE66666, \
0xFC18FE70, 0x00180000, 0x4244A3D7, 0xC2A27AE1, \
0xC25E147B, 0x4019999A, 0x02BC012C, 0x00200000, \
0x416C28F5, 0xC2FB999A, 0xC230A3D7, 0x3E4CCCCD, \
0x03200258, 0x00140000
var_80AC4E8C: .word 0x00050008, 0x000B000E, 0x00110014, 0x0017001A
var_80AC4E9C: .word 0x0012001A, 0x0022002A, 0x0032003C, 0x00460050
var_80AC4EAC: .word 0x0030002A, 0x00240020, 0x001C0018, 0x00140010
var_80AC4EBC: .word 0x00010003, 0x00070000
var_80AC4EC4: .word 0x00000000, 0x00000000, 0x3F4CCCCD
var_80AC4ED0: .word 0xC8500064, 0xB0F404B0, 0xB0F80320, 0x30FC04B0
var_80AC4EE0: .word 0x00000000, 0x00000000, 0x00000000
var_80AC4EEC: .word \
0x06000D00, 0x06001D00, 0x06002500, 0x06002D00, \
0x06004D00
var_80AC4F00: .word \
0x06001500, 0x06003500, 0x06003D00, 0x06004500, \
0x06000500
var_80AC4F14: .word \
0x06009928, 0x06009AC0, 0x06009C80, 0x06009DE8, \
0x06009F60, 0x0600A0A8, 0x0600A278, 0x0600A418, \
0x0600A568, 0x0600A6A0, 0x0600A7E0, 0x0600A978, \
0x0600AAC8
var_80AC4F48: .word 0x00000000, 0x00000000

.section .rodata

var_80AC4F50: .word 0x3EE66666
var_80AC4F54: .word 0x3F333333
var_80AC4F58: .word 0x3D23D70A
var_80AC4F5C: .word 0x3D4CCCCD
var_80AC4F60: .word 0x3D89374C
var_80AC4F64: .word 0x3F7EB852
var_80AC4F68: .word 0x3F19999A
var_80AC4F6C: .word 0x38C90FDB
var_80AC4F70: .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000

