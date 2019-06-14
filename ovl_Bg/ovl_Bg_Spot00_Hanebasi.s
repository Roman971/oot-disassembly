#include <mips.h>
.set noreorder
.set noat

.section .text
func_808E4C30:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x0074($sp)            
    lui     a1, %hi(var_808E5C04)      # a1 = 808E0000
    sw      $zero, 0x0058($sp)         
    addiu   a1, a1, %lo(var_808E5C04)  # a1 = 808E5C04
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lui     a0, 0x0600                 # a0 = 06000000
    bne     t6, $at, lbl_808E4C90      
    addiu   a0, a0, 0x0280             # a0 = 06000280
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x05E0             # a0 = 060005E0
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFE8
    beq     $zero, $zero, lbl_808E4C9C 
    lw      a0, 0x0074($sp)            
lbl_808E4C90:
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFE8
    lw      a0, 0x0074($sp)            
lbl_808E4C9C:
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0058($sp)            
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    sw      v0, 0x013C(s0)             # 0000013C
    bne     v1, $at, lbl_808E4F00      
    nop
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      a0, 0x0004(v1)             # 8011A5D4
    bnel    a0, $zero, lbl_808E4CF8    
    lw      v0, 0x1360(v1)             # 8011B930
    lw      t7, 0x1360(v1)             # 8011B930
    slti    $at, t7, 0x0004            
    beql    $at, $zero, lbl_808E4CF8   
    lw      v0, 0x1360(v1)             # 8011B930
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808E5030 
    lw      $ra, 0x003C($sp)           
    lw      v0, 0x1360(v1)             # 00001360
lbl_808E4CF8:
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    beq     a1, v0, lbl_808E4D34       
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_808E4D2C      
    addiu   t9, $zero, 0xC000          # t9 = FFFFC000
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_808E4D2C      
    nop
    beql    a0, $zero, lbl_808E4D38    
    sh      $zero, 0x00B4(s0)          # 000000B4
    lw      t8, 0x0010(v1)             # 00000010
    beql    t8, $zero, lbl_808E4D38    
    sh      $zero, 0x00B4(s0)          # 000000B4
lbl_808E4D2C:
    beq     $zero, $zero, lbl_808E4D38 
    sh      t9, 0x00B4(s0)             # 000000B4
lbl_808E4D34:
    sh      $zero, 0x00B4(s0)          # 000000B4
lbl_808E4D38:
    lw      t0, 0x1360(v1)             # 00001360
    beq     a1, t0, lbl_808E4D94       
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x8BF0             # a0 = 800F8BF0
    lw      t1, 0x0048(a0)             # 800F8C38
    lw      v0, 0x00A4(v1)             # 000000A4
    and     t2, t1, v0                 
    beq     t2, $zero, lbl_808E4D94    
    nop
    lw      t3, 0x004C(a0)             # 800F8C3C
    and     t4, t3, v0                 
    beq     t4, $zero, lbl_808E4D94    
    nop
    lw      t5, 0x0050(a0)             # 800F8C40
    and     t6, t5, v0                 
    beq     t6, $zero, lbl_808E4D94    
    nop
    lhu     t7, 0x0EE4(v1)             # 00000EE4
    addiu   t9, $zero, 0xC000          # t9 = FFFFC000
    andi    t8, t7, 0x0001             # t8 = 00000000
    bne     t8, $zero, lbl_808E4D94    
    nop
    sh      t9, 0x00B4(s0)             # 000000B4
lbl_808E4D94:
    jal     func_80063684              # coss?
    lh      a0, 0x00B4(s0)             # 000000B4
    swc1    $f0, 0x0054($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B4(s0)             # 000000B4
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lwc1    $f2, 0x0054($sp)           
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f8                   # $f8 = 400.00
    mul.s   $f6, $f4, $f2              
    nop
    mul.s   $f10, $f0, $f8             
    sub.s   $f16, $f6, $f10            
    swc1    $f16, 0x0060($sp)          
    jal     func_800636C4              # sins?
    lh      a0, 0x00B4(s0)             # 000000B4
    swc1    $f0, 0x0054($sp)           
    jal     func_80063684              # coss?
    lh      a0, 0x00B4(s0)             # 000000B4
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lwc1    $f2, 0x0054($sp)           
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f8                   # $f8 = 400.00
    mul.s   $f4, $f18, $f2             
    nop
    mul.s   $f6, $f0, $f8              
    sub.s   $f10, $f4, $f6             
    swc1    $f10, 0x0064($sp)          
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x0054($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f16, 0x0064($sp)          
    lui     $at, 0x431E                # $at = 431E0000
    mtc1    $at, $f8                   # $f8 = 158.00
    mul.s   $f18, $f0, $f16            
    lwc1    $f2, 0x0054($sp)           
    mul.s   $f4, $f8, $f2              
    add.s   $f6, $f18, $f4             
    swc1    $f6, 0x005C($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lh      a0, 0x00B6(s0)             # 000000B6
    jal     func_80063684              # coss?
    swc1    $f0, 0x0054($sp)           
    lwc1    $f12, 0x0064($sp)          
    lui     $at, 0xC31E                # $at = C31E0000
    mtc1    $at, $f16                  # $f16 = -158.00
    mul.s   $f10, $f0, $f12            
    lwc1    $f2, 0x0054($sp)           
    lh      t0, 0x00B4(s0)             # 000000B4
    lwc1    $f4, 0x005C($sp)           
    mul.s   $f8, $f16, $f2             
    ori     v0, $zero, 0xF020          # v0 = 0000F020
    bne     t0, $zero, lbl_808E4E88    
    add.s   $f12, $f10, $f8            
    beq     $zero, $zero, lbl_808E4E88 
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808E4E88:
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f10, 0x0060($sp)          
    lw      a2, 0x0074($sp)            
    add.s   $f6, $f18, $f4             
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x004A          # a3 = 0000004A
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    swc1    $f6, 0x0010($sp)           
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f8, $f16, $f10            
    swc1    $f8, 0x0014($sp)           
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sw      v0, 0x001C($sp)            
    add.s   $f4, $f18, $f12            
    swc1    $f4, 0x0018($sp)           
    lh      t1, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0028($sp)         
    sw      $zero, 0x0024($sp)         
    jal     func_800253F0              
    sw      t1, 0x0020($sp)            
    bne     v0, $zero, lbl_808E4EE8    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_808E4EE8:
    lui     t2, %hi(func_808E509C)     # t2 = 808E0000
    addiu   t2, t2, %lo(func_808E509C) # t2 = 808E509C
    addiu   t3, $zero, 0x0028          # t3 = 00000028
    sw      t2, 0x0154(s0)             # 00000154
    beq     $zero, $zero, lbl_808E4FB0 
    sh      t3, 0x0158(s0)             # 00000158
lbl_808E4F00:
    bne     v1, $zero, lbl_808E4FA8    
    lui     t9, %hi(func_808E5310)     # t9 = 808E0000
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    swc1    $f0, 0x004C($sp)           
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x439E                # $at = 439E0000
    mtc1    $at, $f2                   # $f2 = 316.00
    lwc1    $f16, 0x004C($sp)          
    lwc1    $f6, 0x0024(s0)            # 00000024
    lw      a2, 0x0074($sp)            
    mul.s   $f10, $f16, $f2            
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    or      a1, s0, $zero              # a1 = 00000000
    mul.s   $f4, $f0, $f2              
    addiu   a3, $zero, 0x004A          # a3 = 0000004A
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    sub.s   $f8, $f6, $f10             
    swc1    $f8, 0x0010($sp)           
    lwc1    $f18, 0x0028(s0)           # 00000028
    swc1    $f18, 0x0014($sp)          
    lwc1    $f16, 0x002C(s0)           # 0000002C
    add.s   $f6, $f4, $f16             
    swc1    $f6, 0x0018($sp)           
    lh      t5, 0x00B4(s0)             # 000000B4
    sw      t5, 0x001C($sp)            
    lh      t6, 0x00B6(s0)             # 000000B6
    sw      t7, 0x0028($sp)            
    sw      $zero, 0x0024($sp)         
    jal     func_800253F0              
    sw      t6, 0x0020($sp)            
    bne     v0, $zero, lbl_808E4F98    
    nop
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4              
    lw      a0, 0x0118(s0)             # 00000118
lbl_808E4F98:
    lui     t8, %hi(func_808E5310)     # t8 = 808E0000
    addiu   t8, t8, %lo(func_808E5310) # t8 = 808E5310
    beq     $zero, $zero, lbl_808E4FB0 
    sw      t8, 0x0154(s0)             # 00000154
lbl_808E4FA8:
    addiu   t9, t9, %lo(func_808E5310) # t9 = 00005310
    sw      t9, 0x0154(s0)             # 00000154
lbl_808E4FB0:
    lh      t0, 0x001C(s0)             # 0000001C
    lw      a0, 0x0074($sp)            
    addiu   a2, s0, 0x0160             # a2 = 00000160
    bltz    t0, lbl_808E502C           
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    jal     func_800665B0              
    sw      a2, 0x0048($sp)            
    lh      t1, 0x001C(s0)             # 0000001C
    sw      v0, 0x015C(s0)             # 0000015C
    lw      a0, 0x0048($sp)            
    bne     t1, $zero, lbl_808E4FF0    
    addiu   a2, $zero, 0x00A8          # a2 = 000000A8
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f2                   # $f2 = 260.00
    beq     $zero, $zero, lbl_808E5000 
    trunc.w.s $f10, $f2                  
lbl_808E4FF0:
    lui     $at, 0xC382                # $at = C3820000
    mtc1    $at, $f2                   # $f2 = -260.00
    nop
    trunc.w.s $f10, $f2                  
lbl_808E5000:
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sw      t4, 0x0014($sp)            
    mfc1    a1, $f10                   
    sw      t3, 0x0010($sp)            
    addiu   a3, $zero, 0x02B2          # a3 = 000002B2
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    sw      $zero, 0x0018($sp)         
    jal     func_80065C30              
    sw      $zero, 0x001C($sp)         
lbl_808E502C:
    lw      $ra, 0x003C($sp)           
lbl_808E5030:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra                        
    nop


func_808E5040:
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
    lw      v0, 0x0018($sp)            
    lw      a3, 0x001C($sp)            
    lh      t7, 0x001C(v0)             # 0000001C
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x07A8             # a1 = 000007A8
    bltzl   t7, lbl_808E5090           
    lw      $ra, 0x0014($sp)           
    jal     func_80066610              
    lw      a2, 0x015C(v0)             # 0000015C
    lw      $ra, 0x0014($sp)           
lbl_808E5090:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808E509C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x0024($sp)            
    or      a2, a0, $zero              # a2 = 00000000
    lw      v1, 0x1360(a3)             # 8011B930
    lui     a0, 0x8010                 # a0 = 80100000
    lw      t0, 0x011C(a2)             # 0000011C
    slti    $at, v1, 0x0004            
    beq     $at, $zero, lbl_808E5110   
    addiu   a0, a0, 0x8BF0             # a0 = 800F8BF0
    lw      v0, 0x00A4(a3)             # 8011A674
    lw      t6, 0x0048(a0)             # 800F8C38
    and     t7, t6, v0                 
    beql    t7, $zero, lbl_808E5114    
    lh      t5, 0x00B4(a2)             # 000000B4
    lw      t8, 0x004C(a0)             # 800F8C3C
    and     t9, t8, v0                 
    beql    t9, $zero, lbl_808E5114    
    lh      t5, 0x00B4(a2)             # 000000B4
    lw      t1, 0x0050(a0)             # 800F8C40
    and     t2, t1, v0                 
    beql    t2, $zero, lbl_808E5114    
    lh      t5, 0x00B4(a2)             # 000000B4
    lhu     t3, 0x0EE4(a3)             # 8011B4B4
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_808E51C0    
    lw      $ra, 0x0014($sp)           
lbl_808E5110:
    lh      t5, 0x00B4(a2)             # 000000B4
lbl_808E5114:
    lw      a0, 0x0024($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    beql    t5, $zero, lbl_808E5178    
    lh      t8, 0x00B4(a2)             # 000000B4
    sw      a2, 0x0020($sp)            
    jal     func_8005991C              
    sw      t0, 0x001C($sp)            
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    lw      a2, 0x0020($sp)            
    bne     v0, $zero, lbl_808E515C    
    lw      t0, 0x001C($sp)            
    lw      v1, 0x1360(a3)             # 8011B930
    slti    $at, v1, 0x0004            
    beql    $at, $zero, lbl_808E5178   
    lh      t8, 0x00B4(a2)             # 000000B4
    lw      t6, 0x0010(a3)             # 8011A5E0
    bne     t6, $zero, lbl_808E5174    
lbl_808E515C:
    lui     t7, %hi(func_808E51DC)     # t7 = 808E0000
    addiu   t7, t7, %lo(func_808E51DC) # t7 = 808E51DC
    sw      t7, 0x0154(a2)             # 00000154
    sh      $zero, 0x0158(a2)          # 00000158
    beq     $zero, $zero, lbl_808E51BC 
    sh      $zero, 0x0158(t0)          # 00000158
lbl_808E5174:
    lh      t8, 0x00B4(a2)             # 000000B4
lbl_808E5178:
    slti    $at, v1, 0x0004            
    bnel    t8, $zero, lbl_808E51C0    
    lw      $ra, 0x0014($sp)           
    beql    $at, $zero, lbl_808E51C0   
    lw      $ra, 0x0014($sp)           
    lw      t9, 0x0004(a3)             # 8011A5D4
    beql    t9, $zero, lbl_808E51C0    
    lw      $ra, 0x0014($sp)           
    lw      t1, 0x0010(a3)             # 8011A5E0
    lui     t2, %hi(func_808E51DC)     # t2 = 808E0000
    addiu   t2, t2, %lo(func_808E51DC) # t2 = 808E51DC
    beq     t1, $zero, lbl_808E51BC    
    addiu   t3, $zero, 0xC000          # t3 = FFFFC000
    sw      t2, 0x0154(a2)             # 00000154
    sh      t3, 0x0158(a2)             # 00000158
    addiu   t4, $zero, 0xF020          # t4 = FFFFF020
    sh      t4, 0x0158(t0)             # 00000158
lbl_808E51BC:
    lw      $ra, 0x0014($sp)           
lbl_808E51C0:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_808E51CC:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_808E51DC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lh      a1, 0x0158(a3)             # 00000158
    sw      a3, 0x0028($sp)            
    addiu   a0, a3, 0x00B4             # a0 = 000000B4
    jal     func_80063704              
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    beq     v0, $zero, lbl_808E5214    
    lw      a3, 0x0028($sp)            
    lui     t6, %hi(func_808E509C)     # t6 = 808E0000
    addiu   t6, t6, %lo(func_808E509C) # t6 = 808E509C
    sw      t6, 0x0154(a3)             # 00000154
lbl_808E5214:
    lh      t7, 0x00B4(a3)             # 000000B4
    lui     t1, %hi(func_808E509C)     # t1 = 808E0000
    addiu   t1, t1, %lo(func_808E509C) # t1 = 808E509C
    slti    $at, t7, 0xD828            
    bne     $at, $zero, lbl_808E5294   
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    mtc1    t8, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_808E5C20)     # $at = 808E0000
    lwc1    $f8, %lo(var_808E5C20)($at) 
    cvt.s.w $f6, $f4                   
    lw      v1, 0x011C(a3)             # 0000011C
    lh      a1, 0x0158(v1)             # 00000158
    sw      t1, 0x0018($sp)            
    mul.s   $f10, $f6, $f8             
    sw      a3, 0x0028($sp)            
    sw      v1, 0x0024($sp)            
    addiu   a0, v1, 0x00B4             # a0 = 000000B4
    trunc.w.s $f16, $f10                 
    mfc1    a2, $f16                   
    nop
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    jal     func_80063704              
    sh      a2, 0x001E($sp)            
    lw      v1, 0x0024($sp)            
    lh      a2, 0x001E($sp)            
    lw      t0, 0x011C(v1)             # 0000011C
    lh      a1, 0x0158(v1)             # 00000158
    jal     func_80063704              
    addiu   a0, t0, 0x00B4             # a0 = 000000B4
    lw      a3, 0x0028($sp)            
    lw      t1, 0x0018($sp)            
lbl_808E5294:
    lh      t2, 0x0158(a3)             # 00000158
    bgezl   t2, lbl_808E52D8           
    lw      t4, 0x0154(a3)             # 00000154
    lw      t3, 0x0154(a3)             # 00000154
    addiu   a1, $zero, 0x280F          # a1 = 0000280F
    or      a0, a3, $zero              # a0 = 00000000
    bne     t1, t3, lbl_808E52C4       
    nop
    jal     func_80022FD0              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808E5304 
    lw      $ra, 0x0014($sp)           
lbl_808E52C4:
    jal     func_8002313C              
    addiu   a1, $zero, 0x200D          # a1 = 0000200D
    beq     $zero, $zero, lbl_808E5304 
    lw      $ra, 0x0014($sp)           
    lw      t4, 0x0154(a3)             # 00000154
lbl_808E52D8:
    addiu   a1, $zero, 0x280E          # a1 = 0000280E
    or      a0, a3, $zero              # a0 = 00000000
    bne     t1, t4, lbl_808E52F8       
    nop
    jal     func_80022FD0              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808E5304 
    lw      $ra, 0x0014($sp)           
lbl_808E52F8:
    jal     func_8002313C              
    addiu   a1, $zero, 0x200C          # a1 = 0000200C
    lw      $ra, 0x0014($sp)           
lbl_808E5304:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808E5310:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)           
    sw      a0, 0x0028($sp)            
    sw      a1, 0x002C($sp)            
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f4                   # $f4 = 127.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f0, $f4              
    lw      v1, 0x0028($sp)            
    cfc1    t6, $f31                   
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f8, $f6                   
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    beql    v0, $zero, lbl_808E53AC    
    mfc1    v0, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    v0, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    v0, $f31                   
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    bne     v0, $zero, lbl_808E53A0    
    nop
    mfc1    v0, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_808E53B8 
    or      v0, v0, $at                # v0 = 80000000
lbl_808E53A0:
    beq     $zero, $zero, lbl_808E53B8 
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    mfc1    v0, $f8                    
lbl_808E53AC:
    nop
    bltz    v0, lbl_808E53A0           
    nop
lbl_808E53B8:
    lh      t7, 0x001C(v1)             # 0000001C
    ctc1    t6, $f31                   
    addiu   v0, v0, 0x0080             # v0 = 0000007F
    bne     t7, $zero, lbl_808E53DC    
    andi    v0, v0, 0x00FF             # v0 = 0000007F
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f2                   # $f2 = 260.00
    beq     $zero, $zero, lbl_808E53E8 
    nop
lbl_808E53DC:
    lui     $at, 0xC382                # $at = C3820000
    mtc1    $at, $f2                   # $f2 = -260.00
    nop
lbl_808E53E8:
    lui     $at, %hi(var_808E5C00)     # $at = 808E0000
    lwc1    $f0, %lo(var_808E5C00)($at) 
    lui     $at, %hi(var_808E5C24)     # $at = 808E0000
    lwc1    $f16, %lo(var_808E5C24)($at) 
    trunc.w.s $f10, $f2                  
    lui     $at, 0x4300                # $at = 43000000
    mul.s   $f18, $f16, $f0            
    mtc1    $at, $f4                   # $f4 = 128.00
    mfc1    a1, $f10                   
    lui     $at, %hi(var_808E5C28)     # $at = 808E0000
    lwc1    $f10, %lo(var_808E5C28)($at) 
    sll     a1, a1, 16                 
    sra     a1, a1, 16                 
    mul.s   $f16, $f0, $f10            
    add.s   $f6, $f18, $f4             
    addiu   a0, v1, 0x0160             # a0 = 00000160
    addiu   a3, $zero, 0x02B2          # a3 = 000002B2
    sw      v0, 0x0010($sp)            
    sw      v0, 0x0014($sp)            
    trunc.w.s $f8, $f6                   
    sw      $zero, 0x0018($sp)         
    trunc.w.s $f18, $f16                 
    mfc1    a2, $f8                    
    mfc1    t1, $f18                   
    sll     a2, a2, 16                 
    sra     a2, a2, 16                 
    jal     func_80065C30              
    sw      t1, 0x001C($sp)            
    lw      $ra, 0x0024($sp)           
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808E5468:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    sw      a3, 0x0030($sp)            
    lw      t9, 0x0154(a3)             # 00000154
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lw      a3, 0x0030($sp)            
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lh      t6, 0x001C(a3)             # 0000001C
    bnel    t6, $at, lbl_808E5768      
    lw      $ra, 0x001C($sp)           
    lh      t7, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x0051         # $at = 00000051
    lui     v1, 0x8010                 # v1 = 80100000
    bne     t7, $at, lbl_808E5650      
    addiu   v1, v1, 0x8BF0             # v1 = 800F8BF0
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lw      v0, 0x00A4(t0)             # 8011A674
    lw      t8, 0x0048(v1)             # 800F8C38
    and     t1, t8, v0                 
    beq     t1, $zero, lbl_808E5650    
    nop
    lw      t2, 0x004C(v1)             # 800F8C3C
    and     t3, t2, v0                 
    beq     t3, $zero, lbl_808E5650    
    nop
    lw      t4, 0x0050(v1)             # 800F8C40
    and     t5, t4, v0                 
    beq     t5, $zero, lbl_808E5650    
    nop
    lhu     t9, 0x0EE4(t0)             # 8011B4B4
    andi    t6, t9, 0x0001             # t6 = 00000000
    bne     t6, $zero, lbl_808E5650    
    nop
    lw      t7, 0x0004(t0)             # 8011A5D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t7, $at, lbl_808E5650      
    nop
    lw      a1, 0x1C44(s0)             # 00001C44
    lui     $at, 0xC3E1                # $at = C3E10000
    mtc1    $at, $f4                   # $f4 = -450.00
    lwc1    $f0, 0x0024(a1)            # 00000024
    lui     $at, 0x43E1                # $at = 43E10000
    c.lt.s  $f4, $f0                   
    nop
    bc1fl   lbl_808E562C               
    lui     a1, 0x453B                 # a1 = 453B0000
    mtc1    $at, $f6                   # $f6 = 450.00
    lui     $at, 0x4487                # $at = 44870000
    c.lt.s  $f0, $f6                   
    nop
    bc1fl   lbl_808E562C               
    lui     a1, 0x453B                 # a1 = 453B0000
    lwc1    $f0, 0x002C(a1)            # 453B002C
    mtc1    $at, $f8                   # $f8 = 1080.00
    lui     $at, %hi(var_808E5C2C)     # $at = 808E0000
    c.lt.s  $f8, $f0                   
    nop
    bc1fl   lbl_808E562C               
    lui     a1, 0x453B                 # a1 = 453B0000
    lwc1    $f10, %lo(var_808E5C2C)($at) 
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f10                  
    nop
    bc1fl   lbl_808E562C               
    lui     a1, 0x453B                 # a1 = 453B0000
    sw      a1, 0x0024($sp)            
    jal     func_8009CB08              
    sw      a3, 0x0030($sp)            
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lw      a1, 0x0024($sp)            
    bne     v0, $zero, lbl_808E5628    
    lw      a3, 0x0030($sp)            
    lhu     t8, 0x0EE4(t0)             # 8011B4B4
    addiu   a0, $zero, 0x0082          # a0 = 00000082
    sw      a1, 0x0024($sp)            
    ori     t1, t8, 0x0001             # t1 = 00000001
    sh      t1, 0x0EE4(t0)             # 8011B4B4
    jal     func_800288E0              
    sw      a3, 0x0030($sp)            
    lw      a3, 0x0030($sp)            
    lui     t2, %hi(func_808E51CC)     # t2 = 808E0000
    lw      a1, 0x0024($sp)            
    addiu   t2, t2, %lo(func_808E51CC) # t2 = 808E51CC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800218EC              
    sw      t2, 0x0154(a3)             # 00000154
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    addiu   t3, $zero, 0x00CD          # t3 = 000000CD
    lui     t0, 0x8012                 # t0 = 80120000
    sh      t3, 0x1E1A($at)            # 00011E1A
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    ori     t4, $zero, 0xFFF1          # t4 = 0000FFF1
    lui     $at, 0x0001                # $at = 00010000
    sh      t4, 0x1412(t0)             # 8011B9E2
    addu    $at, $at, s0               
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    sb      t5, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    beq     $zero, $zero, lbl_808E5650 
    sb      t9, 0x1E5E($at)            # 00011E5E
lbl_808E5628:
    lui     a1, 0x453B                 # a1 = 453B0000
lbl_808E562C:
    ori     a1, a1, 0x8000             # a1 = 453B8000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80021AD4              
    addiu   a2, $zero, 0x7530          # a2 = 00007530
    beq     v0, $zero, lbl_808E5650    
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0               
    sb      t6, 0x0B01($at)            # 00010B01
lbl_808E5650:
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lw      a0, 0x1360(t0)             # 8011B930
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lui     a1, 0x800F                 # a1 = 800F0000
    bne     a2, a0, lbl_808E5764       
    addiu   a1, a1, 0x1650             # a1 = 800F1650
    lhu     t7, 0x0000(a1)             # 800F1650
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    t7, $at, lbl_808E5744      
    lhu     v0, 0x000C(t0)             # 8011A5DC
    lhu     v1, 0x000C(t0)             # 8011A5DC
    ori     $at, $zero, 0xD557         # $at = 0000D557
    ori     v0, $zero, 0xD556          # v0 = 0000D556
    slt     $at, v1, $at               
    bnel    $at, $zero, lbl_808E56A0   
    subu    t8, v0, v1                 
    lui     v0, 0x0001                 # v0 = 00010000
    ori     v0, v0, 0xD556             # v0 = 0001D556
    subu    t8, v0, v1                 
lbl_808E56A0:
    mtc1    t8, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_808E5C30)     # $at = 808E0000
    lwc1    $f4, %lo(var_808E5C30)($at) 
    cvt.s.w $f18, $f16                 
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f18, $f4             
    cfc1    t1, $f31                   
    ctc1    t2, $f31                   
    nop
    cvt.w.s $f8, $f6                   
    cfc1    t2, $f31                   
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_808E5728    
    mfc1    t2, $f8                    
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f8, $f6, $f8              
    ctc1    t2, $f31                   
    nop
    cvt.w.s $f8, $f8                   
    cfc1    t2, $f31                   
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_808E571C    
    nop
    mfc1    t2, $f8                    
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_808E5734 
    or      t2, t2, $at                # t2 = 80000000
lbl_808E571C:
    beq     $zero, $zero, lbl_808E5734 
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f8                    
lbl_808E5728:
    nop
    bltz    t2, lbl_808E571C           
    nop
lbl_808E5734:
    ctc1    t1, $f31                   
    sh      t2, 0x0000(a1)             # 800F1650
    nop
    lhu     v0, 0x000C(t0)             # 8011A5DC
lbl_808E5744:
    slti    $at, v0, 0x2AAC            
    bne     $at, $zero, lbl_808E5764   
    slti    $at, v0, 0x3000            
    beql    $at, $zero, lbl_808E5768   
    lw      $ra, 0x001C($sp)           
    bnel    a2, a0, lbl_808E5768       
    lw      $ra, 0x001C($sp)           
    sh      $zero, 0x0000(a1)          # 800F1650
lbl_808E5764:
    lw      $ra, 0x001C($sp)           
lbl_808E5768:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808E5778:
    addiu   $sp, $sp, 0xFF40           # $sp = FFFFFF40
    sw      s4, 0x0070($sp)            
    sw      s0, 0x0060($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0084($sp)           
    sw      s8, 0x0080($sp)            
    sw      s7, 0x007C($sp)            
    sw      s6, 0x0078($sp)            
    sw      s5, 0x0074($sp)            
    sw      s3, 0x006C($sp)            
    sw      s2, 0x0068($sp)            
    sw      s1, 0x0064($sp)            
    sdc1    $f28, 0x0058($sp)          
    sdc1    $f26, 0x0050($sp)          
    sdc1    $f24, 0x0048($sp)          
    sdc1    $f22, 0x0040($sp)          
    sdc1    $f20, 0x0038($sp)          
    lw      a0, 0x0000(s4)             # 00000000
    jal     func_8007E2C0              
    or      s2, a0, $zero              # s2 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46D0(t6)            # 8011B930
    slti    $at, t6, 0x0004            
    bne     $at, $zero, lbl_808E57F0   
    lui     $at, %hi(var_808E5C34)     # $at = 808E0000
    lwc1    $f4, %lo(var_808E5C34)($at) 
    lui     $at, %hi(var_808E5C00)     # $at = 808E0000
    beq     $zero, $zero, lbl_808E5818 
    swc1    $f4, %lo(var_808E5C00)($at) 
lbl_808E57F0:
    lh      t7, 0x00B4(s0)             # 000000B4
    lui     $at, %hi(var_808E5C38)     # $at = 808E0000
    lwc1    $f10, %lo(var_808E5C38)($at) 
    subu    t8, $zero, t7              
    addiu   t9, t8, 0xE000             # t9 = FFFFE000
    mtc1    t9, $f6                    # $f6 = NaN
    lui     $at, %hi(var_808E5C00)     # $at = 808E0000
    cvt.s.w $f8, $f6                   
    mul.s   $f16, $f8, $f10            
    swc1    $f16, %lo(var_808E5C00)($at) 
lbl_808E5818:
    lh      t1, 0x07A0(s4)             # 000007A0
    sll     t2, t1,  2                 
    addu    t3, s4, t2                 
    jal     func_8004977C              
    lw      a0, 0x0790(t3)             # 00000790
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t4, v0, $at                
    sll     t5, t4, 16                 
    sra     t6, t5, 16                 
    mtc1    t6, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_808E5C3C)     # $at = 808E0000
    lwc1    $f6, %lo(var_808E5C3C)($at) 
    cvt.s.w $f4, $f18                  
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     t4, 0x0405                 # t4 = 04050000
    ori     t8, t8, 0x8080             # t8 = FA008080
    addiu   t4, t4, 0x2A10             # t4 = 04052A10
    lui     $at, 0x0001                # $at = 00010000
    mul.s   $f28, $f4, $f6             
    or      s3, $zero, $zero           # s3 = 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t9, 0xFFFF                 # t9 = FFFF0000
    ori     t9, t9, 0x00FF             # t9 = FFFF00FF
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    lui     t3, 0xFF00                 # t3 = FF000000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    addu    t0, s4, $at                
    lui     $at, 0xC382                # $at = C3820000
    mtc1    $at, $f26                  # $f26 = -260.00
    lui     $at, %hi(var_808E5C40)     # $at = 808E0000
    lwc1    $f24, %lo(var_808E5C40)($at) 
    lui     $at, 0x4300                # $at = 43000000
    mtc1    $at, $f22                  # $f22 = 128.00
    lui     $at, 0x4382                # $at = 43820000
    lui     s7, 0xDA38                 # s7 = DA380000
    lui     s5, 0xDB06                 # s5 = DB060000
    mtc1    $at, $f20                  # $f20 = 260.00
    ori     s5, s5, 0x0020             # s5 = DB060020
    ori     s7, s7, 0x0003             # s7 = DA380003
    sw      t0, 0x008C($sp)            
    sw      t4, 0x0090($sp)            
    lui     s8, 0xDE00                 # s8 = DE000000
    addiu   s6, $zero, 0xFFEC          # s6 = FFFFFFEC
    lw      t0, 0x008C($sp)            
lbl_808E58E8:
    lw      s1, 0x02D0(s2)             # 000002D0
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t5, s1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      s5, 0x0000(s1)             # 00000000
    lw      a0, 0x0000(s4)             # 00000000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)            
    sw      $zero, 0x001C($sp)         
    sw      t7, 0x0014($sp)            
    sw      t6, 0x0010($sp)            
    lw      t9, 0x1DE4(t0)             # 00001DE4
    addiu   t5, $zero, 0x0080          # t5 = 00000080
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addu    t1, t9, s3                 
    multu   t1, s6                     
    sw      t4, 0x0024($sp)            
    sw      t5, 0x0028($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    mflo    t2                         
    andi    t3, t2, 0x01FF             # t3 = 00000000
    jal     func_8007EB84              
    sw      t3, 0x0020($sp)            
    sw      v0, 0x0004(s1)             # 00000004
    bne     s3, $zero, lbl_808E5964    
    mov.s   $f14, $f22                 
    beq     $zero, $zero, lbl_808E5968 
    mov.s   $f12, $f20                 
lbl_808E5964:
    mov.s   $f12, $f26                 
lbl_808E5968:
    mfc1    a2, $f24                   
    jal     func_800AA7F4              
    or      a3, $zero, $zero           # a3 = 00000000
    mov.s   $f12, $f28                 
    jal     func_800AAB94              
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_808E5C00)     # $at = 808E0000
    lwc1    $f12, %lo(var_808E5C00)($at) 
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12                   
    jal     func_800AA8FC              
    mov.s   $f14, $f12                 
    lw      s1, 0x02D0(s2)             # 000002D0
    addiu   t6, s1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      s7, 0x0000(s1)             # 00000000
    jal     func_800AB900              
    lw      a0, 0x0000(s4)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      s8, 0x0000(s0)             # 00000000
    lw      t8, 0x0090($sp)            
    sw      t8, 0x0004(s0)             # 00000004
    bnel    s3, $at, lbl_808E58E8      
    lw      t0, 0x008C($sp)            
    lw      $ra, 0x0084($sp)           
    ldc1    $f20, 0x0038($sp)          
    ldc1    $f22, 0x0040($sp)          
    ldc1    $f24, 0x0048($sp)          
    ldc1    $f26, 0x0050($sp)          
    ldc1    $f28, 0x0058($sp)          
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
    addiu   $sp, $sp, 0x00C0           # $sp = 00000000


func_808E5A20:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0054($sp)            
    lui     t7, %hi(var_808E5C14)      # t7 = 808E0000
    addiu   t7, t7, %lo(var_808E5C14)  # t7 = 808E5C14
    lw      t9, 0x0000(t7)             # 808E5C14
    addiu   t6, $sp, 0x0044            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 808E5C18
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 808E5C1C
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t0, 0x0054($sp)            
    lw      a0, 0x0000(t0)             # 00000000
    jal     func_8007E298              
    sw      a0, 0x0034($sp)            
    lw      v1, 0x0034($sp)            
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(v1)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t3, 0x0054($sp)            
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_800AB900              
    sw      v0, 0x002C($sp)            
    lw      a1, 0x002C($sp)            
    lw      v1, 0x0034($sp)            
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lh      t4, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lui     t6, 0xDE00                 # t6 = DE000000
    bne     t4, $at, lbl_808E5BAC      
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFF4
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x0430             # t7 = 06000430
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    jal     func_800AB958              
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    lwc1    $f4, 0x0038($sp)           
    lw      t8, 0x011C(s0)             # 0000011C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f16                  # $f16 = -1.00
    swc1    $f4, 0x0024(t8)            # 00000024
    lw      t9, 0x011C(s0)             # 0000011C
    lwc1    $f6, 0x003C($sp)           
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFF4
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    swc1    $f6, 0x0028(t9)            # 00000028
    lw      t0, 0x011C(s0)             # 0000011C
    lwc1    $f8, 0x0040($sp)           
    swc1    $f8, 0x002C(t0)            # 0000002C
    lwc1    $f10, 0x0044($sp)          
    mul.s   $f18, $f10, $f16           
    jal     func_800AB958              
    swc1    $f18, 0x0044($sp)          
    lw      t1, 0x011C(s0)             # 0000011C
    lwc1    $f4, 0x0038($sp)           
    lui     v1, 0x8012                 # v1 = 80120000
    lw      t2, 0x011C(t1)             # 0000011C
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    swc1    $f4, 0x0024(t2)            # 00000024
    lw      t3, 0x011C(s0)             # 0000011C
    lwc1    $f6, 0x003C($sp)           
    lw      t4, 0x011C(t3)             # 0000011C
    swc1    $f6, 0x0028(t4)            # 00000028
    lw      t5, 0x011C(s0)             # 0000011C
    lwc1    $f8, 0x0040($sp)           
    lw      t6, 0x011C(t5)             # 0000011C
    swc1    $f8, 0x002C(t6)            # 0000002C
    lw      v0, 0x1360(v1)             # 8011B930
    beq     v0, $at, lbl_808E5BC8      
    slti    $at, v0, 0x0004            
    beq     $at, $zero, lbl_808E5B8C   
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0004(v1)             # 8011A5D4
    beql    t7, $zero, lbl_808E5BA0    
    mtc1    $zero, $f10                # $f10 = 0.00
    lh      t8, 0x00B4(s0)             # 000000B4
    slti    $at, t8, 0xE000            
    beql    $at, $zero, lbl_808E5BA0   
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_808E5B8C:
    jal     func_808E5778              
    lw      a1, 0x0054($sp)            
    beq     $zero, $zero, lbl_808E5BCC 
    lw      $ra, 0x001C($sp)           
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_808E5BA0:
    lui     $at, %hi(var_808E5C00)     # $at = 808E0000
    beq     $zero, $zero, lbl_808E5BC8 
    swc1    $f10, %lo(var_808E5C00)($at) 
lbl_808E5BAC:
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t1, t1, 0x00C0             # t1 = 060000C0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t0, 0x0000(v0)             # 00000000
lbl_808E5BC8:
    lw      $ra, 0x001C($sp)           
lbl_808E5BCC:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_808E5BE0: .word 0x004A0100, 0x00000010, 0x002F0000, 0x00000170
.word func_808E4C30
.word func_808E5040
.word func_808E5468
.word func_808E5A20
var_808E5C00: .word 0x00000000
var_808E5C04: .word 0xB0F80226, 0xB0FC07D0, 0xB0F41388, 0x485003E8
var_808E5C14: .word 0x431E0000, 0x41200000, 0x43C80000

.section .rodata

var_808E5C20: .word 0x3ECCCCCD
var_808E5C24: .word 0x459C4000
var_808E5C28: .word 0x47127C00
var_808E5C2C: .word 0x44D48000
var_808E5C30: .word 0x3B3B3EE7
var_808E5C34: .word 0x3C03126F
var_808E5C38: .word 0x3583126F
var_808E5C3C: .word 0x38C90FDB
var_808E5C40: .word 0x442C8000, 0x00000000, 0x00000000, 0x00000000

