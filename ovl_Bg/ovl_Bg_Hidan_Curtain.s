#include <mips.h>
.set noreorder
.set noat

.section .text
func_808E4190:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x41A0                 # a1 = 41A00000
    lh      t6, 0x001C(s0)             # 0000001C
    lui     t2, %hi(var_808E4B24)      # t2 = 808E0000
    addiu   t2, t2, %lo(var_808E4B24)  # t2 = 808E4B24
    sra     t7, t6, 12                 
    andi    t8, t7, 0x000F             # t8 = 00000000
    andi    v0, t8, 0x00FF             # v0 = 00000000
    slti    $at, v0, 0x0007            
    bne     $at, $zero, lbl_808E41E4   
    sb      t8, 0x0140(s0)             # 00000140
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808E4394 
    lw      $ra, 0x001C($sp)           
lbl_808E41E4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808E41F8      
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808E4204      
lbl_808E41F8:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     $zero, $zero, lbl_808E4208 
    sb      t9, 0x0142(s0)             # 00000142
lbl_808E4204:
    sb      $zero, 0x0142(s0)          # 00000142
lbl_808E4208:
    lh      t3, 0x001C(s0)             # 0000001C
    lbu     t0, 0x0142(s0)             # 00000142
    lh      t6, 0x001C(s0)             # 0000001C
    sra     t4, t3,  6                 
    andi    t5, t4, 0x003F             # t5 = 00000000
    sll     t1, t0,  4                 
    andi    t7, t6, 0x003F             # t7 = 00000000
    addu    v0, t1, t2                 
    sb      t5, 0x0141(s0)             # 00000141
    sh      t7, 0x001C(s0)             # 0000001C
    lw      a1, 0x0004(v0)             # 00000004
    jal     func_80020F88              
    sw      v0, 0x0024($sp)            
    addiu   a1, s0, 0x0148             # a1 = 00000148
    sw      a1, 0x0020($sp)            
    jal     func_8004AB7C              
    lw      a0, 0x0034($sp)            
    lui     a3, %hi(var_808E4AF0)      # a3 = 808E0000
    addiu   a3, a3, %lo(var_808E4AF0)  # a3 = 808E4AF0
    lw      a0, 0x0034($sp)            
    lw      a1, 0x0020($sp)            
    jal     func_8004ACEC              
    or      a2, s0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f6, $f4                   
    lw      v1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f10, $f8                  
    mfc1    t9, $f6                    
    trunc.w.s $f18, $f16                 
    mfc1    t1, $f10                   
    sh      t9, 0x018E(s0)             # 0000018E
    mfc1    t3, $f18                   
    sh      t1, 0x0190(s0)             # 00000190
    sh      t3, 0x0192(s0)             # 00000192
    lh      t4, 0x0000(v1)             # 00000000
    sh      t4, 0x0188(s0)             # 00000188
    lh      t5, 0x0002(v1)             # 00000002
    sh      t5, 0x018A(s0)             # 0000018A
    jal     func_80050B00              
    lw      a1, 0x0020($sp)            
    lui     a2, %hi(var_808E4B1C)      # a2 = 808E0000
    addiu   a2, a2, %lo(var_808E4B1C)  # a2 = 808E4B1C
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344              
    or      a1, $zero, $zero           # a1 = 00000000
    lbu     v0, 0x0140(s0)             # 00000140
    lui     t7, %hi(func_808E43D0)     # t7 = 808E0000
    addiu   t7, t7, %lo(func_808E43D0) # t7 = 808E43D0
    bne     v0, $zero, lbl_808E42F0    
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t6, %hi(func_808E44B0)     # t6 = 808E0000
    addiu   t6, t6, %lo(func_808E44B0) # t6 = 808E44B0
    sw      t6, 0x013C(s0)             # 0000013C
    beq     $zero, $zero, lbl_808E431C 
    lbu     v0, 0x0140(s0)             # 00000140
lbl_808E42F0:
    beq     v0, $at, lbl_808E4304      
    sw      t7, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808E4320      
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_808E4304:
    lw      t8, 0x0024($sp)            
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lbu     v0, 0x0140(s0)             # 00000140
    lwc1    $f6, 0x0008(t8)            # 00000008
    sub.s   $f8, $f4, $f6              
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_808E431C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_808E4320:
    bne     v0, $at, lbl_808E433C      
    lw      a0, 0x0034($sp)            
    jal     func_8002060C              
    lbu     a1, 0x0141(s0)             # 00000141
    bne     v0, $zero, lbl_808E4360    
    nop
    lbu     v0, 0x0140(s0)             # 00000140
lbl_808E433C:
    beq     v0, $zero, lbl_808E434C    
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_808E4368      
    nop
lbl_808E434C:
    lw      a0, 0x0034($sp)            
    jal     func_80020640              
    lb      a1, 0x0003(s0)             # 00000003
    beq     v0, $zero, lbl_808E4368    
    nop
lbl_808E4360:
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
lbl_808E4368:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    nop
    mul.s   $f16, $f0, $f10            
    trunc.w.s $f18, $f16                 
    mfc1    t0, $f18                   
    nop
    sh      t0, 0x0146(s0)             # 00000146
    lw      $ra, 0x001C($sp)           
lbl_808E4394:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_808E43A4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x0148             # a1 = 00000148
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808E43D0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8002049C              
    lh      a1, 0x001C(s0)             # 0000001C
    beq     v0, $zero, lbl_808E4470    
    lw      a0, 0x002C($sp)            
    lbu     v0, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t6, %hi(func_808E4484)     # t6 = 808E0000
    bne     v0, $at, lbl_808E4430      
    addiu   t6, t6, %lo(func_808E4484) # t6 = 808E4484
    sw      t6, 0x013C(s0)             # 0000013C
    sw      $zero, 0x0010($sp)         
    addiu   a1, $zero, 0x0D16          # a1 = 00000D16
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC              
    or      a3, s0, $zero              # a3 = 00000000
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    beq     $zero, $zero, lbl_808E4470 
    sh      t7, 0x0144(s0)             # 00000144
lbl_808E4430:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_808E4468      
    lui     t0, %hi(func_808E45AC)     # t0 = 808E0000
    lui     t8, %hi(func_808E4484)     # t8 = 808E0000
    addiu   t8, t8, %lo(func_808E4484) # t8 = 808E4484
    sw      t8, 0x013C(s0)             # 0000013C
    sw      $zero, 0x0010($sp)         
    addiu   a1, $zero, 0x0D20          # a1 = 00000D20
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    jal     func_8006B6FC              
    or      a3, s0, $zero              # a3 = 00000000
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    beq     $zero, $zero, lbl_808E4470 
    sh      t9, 0x0144(s0)             # 00000144
lbl_808E4468:
    addiu   t0, t0, %lo(func_808E45AC) # t0 = 000045AC
    sw      t0, 0x013C(s0)             # 0000013C
lbl_808E4470:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_808E4484:
    sw      a1, 0x0004($sp)            
    lh      v1, 0x0144(a0)             # 00000144
    lui     t7, %hi(func_808E45AC)     # t7 = 808E0000
    addiu   t7, t7, %lo(func_808E45AC) # t7 = 808E45AC
    sltiu   v0, v1, 0x0001             
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    beq     v0, $zero, lbl_808E44A8    
    sh      t6, 0x0144(a0)             # 00000144
    sw      t7, 0x013C(a0)             # 0000013C
lbl_808E44A8:
    jr      $ra                        
    nop


func_808E44B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80020640              
    lb      a1, 0x0003(t6)             # 00000003
    beq     v0, $zero, lbl_808E44E4    
    lw      t8, 0x0018($sp)            
    lui     t7, %hi(func_808E45AC)     # t7 = 808E0000
    addiu   t7, t7, %lo(func_808E45AC) # t7 = 808E45AC
    sw      t7, 0x013C(t8)             # 0000013C
lbl_808E44E4:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808E44F4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8002049C              
    lh      a1, 0x001C(t6)             # 0000001C
    bne     v0, $zero, lbl_808E4528    
    lw      t8, 0x0018($sp)            
    lui     t7, %hi(func_808E4538)     # t7 = 808E0000
    addiu   t7, t7, %lo(func_808E4538) # t7 = 808E4538
    sw      t7, 0x013C(t8)             # 0000013C
lbl_808E4528:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808E4538:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t6, 0x0142(a3)             # 00000142
    lui     $at, %hi(var_808E4B30)     # $at = 808E0000
    lw      a1, 0x000C(a3)             # 0000000C
    sll     t7, t6,  4                 
    addu    $at, $at, t7               
    lwc1    $f0, %lo(var_808E4B30)($at) 
    sw      a3, 0x0018($sp)            
    addiu   a0, a3, 0x0028             # a0 = 00000028
    mfc1    a2, $f0                    
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_808E459C    
    lw      a3, 0x0018($sp)            
    lh      a1, 0x001C(a3)             # 0000001C
    sw      a3, 0x0018($sp)            
    jal     func_80020510              
    lw      a0, 0x001C($sp)            
    lw      a3, 0x0018($sp)            
    lui     t8, %hi(func_808E43D0)     # t8 = 808E0000
    addiu   t8, t8, %lo(func_808E43D0) # t8 = 808E43D0
    sw      t8, 0x013C(a3)             # 0000013C
lbl_808E459C:
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808E45AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t6, 0x0142(a3)             # 00000142
    lui     t8, %hi(var_808E4B24)      # t8 = 808E0000
    addiu   t8, t8, %lo(var_808E4B24)  # t8 = 808E4B24
    sll     t7, t6,  4                 
    addu    v0, t7, t8                 
    lwc1    $f6, 0x0008(v0)            # 00000008
    lwc1    $f4, 0x000C(a3)            # 0000000C
    lw      a2, 0x000C(v0)             # 0000000C
    sw      a3, 0x0018($sp)            
    sub.s   $f8, $f4, $f6              
    addiu   a0, a3, 0x0028             # a0 = 00000028
    mfc1    a1, $f8                    
    jal     func_8006385C              
    nop
    beq     v0, $zero, lbl_808E468C    
    lw      a3, 0x0018($sp)            
    lbu     v0, 0x0140(a3)             # 00000140
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $zero, lbl_808E4614    
    nop
    bnel    v0, $at, lbl_808E4628      
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_808E4614:
    jal     func_80020EB4              
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808E4690 
    lw      $ra, 0x0014($sp)           
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_808E4628:
    bne     v0, $at, lbl_808E4640      
    lui     t4, %hi(func_808E469C)     # t4 = 808E0000
    lui     t9, %hi(func_808E44F4)     # t9 = 808E0000
    addiu   t9, t9, %lo(func_808E44F4) # t9 = 808E44F4
    beq     $zero, $zero, lbl_808E468C 
    sw      t9, 0x013C(a3)             # 0000013C
lbl_808E4640:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_808E4658      
    addiu   t4, t4, %lo(func_808E469C) # t4 = 808E469C
    addiu   t0, $zero, 0x0190          # t0 = 00000190
    beq     $zero, $zero, lbl_808E4688 
    sh      t0, 0x0144(a3)             # 00000144
lbl_808E4658:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808E466C      
    addiu   t1, $zero, 0x00C8          # t1 = 000000C8
    beq     $zero, $zero, lbl_808E4688 
    sh      t1, 0x0144(a3)             # 00000144
lbl_808E466C:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_808E4684      
    addiu   t3, $zero, 0x012C          # t3 = 0000012C
    addiu   t2, $zero, 0x00A0          # t2 = 000000A0
    beq     $zero, $zero, lbl_808E4688 
    sh      t2, 0x0144(a3)             # 00000144
lbl_808E4684:
    sh      t3, 0x0144(a3)             # 00000144
lbl_808E4688:
    sw      t4, 0x013C(a3)             # 0000013C
lbl_808E468C:
    lw      $ra, 0x0014($sp)           
lbl_808E4690:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808E469C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lh      v0, 0x0144(a0)             # 00000144
    lui     t7, %hi(func_808E4538)     # t7 = 808E0000
    addiu   t7, t7, %lo(func_808E4538) # t7 = 808E4538
    beq     v0, $zero, lbl_808E46C4    
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0144(a0)             # 00000144
    lh      v0, 0x0144(a0)             # 00000144
lbl_808E46C4:
    bnel    v0, $zero, lbl_808E46D4    
    lbu     v0, 0x0140(a0)             # 00000140
    sw      t7, 0x013C(a0)             # 0000013C
    lbu     v0, 0x0140(a0)             # 00000140
lbl_808E46D4:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_808E46E8      
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v0, $at, lbl_808E46F4      
    lw      $ra, 0x0014($sp)           
lbl_808E46E8:
    jal     func_80023164              
    lh      a1, 0x0144(a0)             # 00000144
    lw      $ra, 0x0014($sp)           
lbl_808E46F4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808E4700:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0020($sp)            
    sw      s0, 0x001C($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)           
    lw      t9, 0x0790(s1)             # 00000790
    lbu     t6, 0x0142(s0)             # 00000142
    lui     t8, %hi(var_808E4B24)      # t8 = 808E0000
    lh      v0, 0x0142(t9)             # 00000142
    addiu   t8, t8, %lo(var_808E4B24)  # t8 = 808E4B24
    addiu   $at, $zero, 0x0028         # $at = 00000028
    sll     t7, t6,  4                 
    beq     v0, $at, lbl_808E4748      
    addu    v1, t7, t8                 
    addiu   $at, $zero, 0x0038         # $at = 00000038
    bnel    v0, $at, lbl_808E475C      
    lbu     v0, 0x0158(s0)             # 00000158
lbl_808E4748:
    lbu     t0, 0x0158(s0)             # 00000158
    andi    t1, t0, 0xFFFD             # t1 = 00000000
    beq     $zero, $zero, lbl_808E4980 
    sb      t1, 0x0158(s0)             # 00000158
    lbu     v0, 0x0158(s0)             # 00000158
lbl_808E475C:
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    andi    t2, v0, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_808E4794    
    andi    t3, v0, 0xFFFD             # t3 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    sb      t3, 0x0158(s0)             # 00000158
    lh      a3, 0x008A(s0)             # 0000008A
    sw      v1, 0x0034($sp)            
    lui     a2, 0x40A0                 # a2 = 40A00000
    jal     func_80022EC4              
    swc1    $f4, 0x0010($sp)           
    lw      v1, 0x0034($sp)            
lbl_808E4794:
    lbu     v0, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_808E47AC      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808E47CC      
    sw      v1, 0x0034($sp)            
lbl_808E47AC:
    lwc1    $f0, 0x000C(s0)            # 0000000C
    lwc1    $f8, 0x0008(v1)            # 00000008
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f6, $f0, $f0              
    sub.s   $f10, $f6, $f8             
    sub.s   $f18, $f10, $f16           
    swc1    $f18, 0x0028(s0)           # 00000028
    sw      v1, 0x0034($sp)            
lbl_808E47CC:
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9                    
    nop
    lbu     v0, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      v1, 0x0034($sp)            
    beq     v0, $at, lbl_808E47FC      
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808E481C      
    lwc1    $f18, 0x000C(s0)           # 0000000C
lbl_808E47FC:
    lwc1    $f0, 0x000C(s0)            # 0000000C
    lwc1    $f6, 0x0008(v1)            # 00000008
    lwc1    $f10, 0x0028(s0)           # 00000028
    add.s   $f4, $f0, $f0              
    sub.s   $f8, $f4, $f6              
    sub.s   $f16, $f8, $f10            
    swc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f18, 0x000C(s0)           # 0000000C
lbl_808E481C:
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0008(v1)            # 00000008
    lui     $at, 0x437F                # $at = 437F0000
    sub.s   $f6, $f18, $f4             
    mtc1    $at, $f10                  # $f10 = 255.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    sub.s   $f8, $f0, $f6              
    div.s   $f2, $f8, $f0              
    mul.s   $f16, $f10, $f2            
    cfc1    t4, $f31                   
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f18, $f16                 
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beql    t5, $zero, lbl_808E48B0    
    mfc1    t5, $f18                   
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f18, $f16, $f18           
    ctc1    t5, $f31                   
    nop
    cvt.w.s $f18, $f18                 
    cfc1    t5, $f31                   
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_808E48A4    
    nop
    mfc1    t5, $f18                   
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_808E48BC 
    or      t5, t5, $at                # t5 = 80000000
lbl_808E48A4:
    beq     $zero, $zero, lbl_808E48BC 
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    mfc1    t5, $f18                   
lbl_808E48B0:
    nop
    bltz    t5, lbl_808E48A4           
    nop
lbl_808E48BC:
    andi    t6, t5, 0x00FF             # t6 = 000000FF
    ctc1    t4, $f31                   
    slti    $at, t6, 0x0033            
    bne     $at, $zero, lbl_808E4948   
    sb      t5, 0x0143(s0)             # 00000143
    lh      t7, 0x0002(v1)             # 00000002
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    mtc1    t7, $f4                    # $f4 = 0.00
    addu    a1, s1, $at                
    addiu   a2, s0, 0x0148             # a2 = 00000148
    cvt.s.w $f6, $f4                   
    or      a0, s1, $zero              # a0 = 00000000
    mul.s   $f8, $f6, $f2              
    trunc.w.s $f10, $f8                  
    mfc1    t0, $f10                   
    nop
    sh      t0, 0x018A(s0)             # 0000018A
    sw      a2, 0x0028($sp)            
    jal     func_8004BD50              # CollisionCheck_setAT
    sw      a1, 0x002C($sp)            
    lw      a1, 0x002C($sp)            
    lw      a2, 0x0028($sp)            
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x46D0(t1)            # 8011B930
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t1, 0x0004            
    beql    $at, $zero, lbl_808E4978   
    lh      t3, 0x0146(s0)             # 00000146
    jal     func_8002313C              
    addiu   a1, $zero, 0x20A3          # a1 = 000020A3
    beq     $zero, $zero, lbl_808E4978 
    lh      t3, 0x0146(s0)             # 00000146
lbl_808E4948:
    lbu     t2, 0x0140(s0)             # 00000140
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t2, $at, lbl_808E4978      
    lh      t3, 0x0146(s0)             # 00000146
    jal     func_8002060C              
    lbu     a1, 0x0141(s0)             # 00000141
    beql    v0, $zero, lbl_808E4978    
    lh      t3, 0x0146(s0)             # 00000146
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    lh      t3, 0x0146(s0)             # 00000146
lbl_808E4978:
    addiu   t9, t3, 0x0001             # t9 = 00000001
    sh      t9, 0x0146(s0)             # 00000146
lbl_808E4980:
    lw      $ra, 0x0024($sp)           
    lw      s0, 0x001C($sp)            
    lw      s1, 0x0020($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_808E4994:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x003C($sp)           
    sw      s0, 0x0038($sp)            
    sw      a0, 0x0060($sp)            
    sw      a1, 0x0064($sp)            
    lw      t6, 0x0064($sp)            
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0              
    or      s0, a0, $zero              # s0 = 00000000
    lw      t3, 0x0060($sp)            
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    ori     t8, t8, 0x8080             # t8 = FA008080
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t4, 0x0143(t3)             # 00000143
    lui     $at, 0xFFDC                # $at = FFDC0000
    or      a1, $zero, $zero           # a1 = 00000000
    or      t5, t4, $at                # t5 = FFDC0000
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    lui     t8, 0xFF00                 # t8 = FF000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x0064($sp)            
    lh      t1, 0x0146(t3)             # 00000146
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    lw      a0, 0x0000(t5)             # FFDC0000
    subu    $at, $zero, t1             
    sll     t9, $at,  4                
    subu    t9, t9, $at                
    sw      t6, 0x0010($sp)            
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    andi    t4, t9, 0x00FF             # t4 = 00000008
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)            
    sw      t7, 0x0014($sp)            
    sw      t5, 0x0024($sp)            
    sw      t4, 0x0020($sp)            
    sw      t6, 0x0028($sp)            
    sw      $zero, 0x001C($sp)         
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x0048($sp)            
    jal     func_8007EB84              
    andi    a2, t1, 0x007F             # a2 = 00000000
    lw      t2, 0x0048($sp)            
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0064($sp)            
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0044($sp)            
    lw      a1, 0x0044($sp)            
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x0402                 # t6 = 04020000
    addiu   t6, t6, 0x8950             # t6 = 04018950
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_808E4AF0: .word \
0x0A110009, 0x20010000, 0x00000000, 0x20000000, \
0x01040000, 0xFFCFFFFF, 0x00000000, 0x19000100, \
0x00510090, 0x00000000, 0x00000000
var_808E4B1C: .word 0x01000050, 0x0064FF00
var_808E4B24: .word 0x00510090, 0x3DB851EC, 0x43100000
var_808E4B30: .word \
0x40A00000, 0x002E0058, 0x3D6147AE, 0x42B00000, \
0x40400000
var_808E4B44: .word 0x00490600, 0x00000010, 0x00010000, 0x00000194
.word func_808E4190
.word func_808E43A4
.word func_808E4700
.word func_808E4994
.word 0x00000000, 0x00000000, 0x00000000

.section .rodata


