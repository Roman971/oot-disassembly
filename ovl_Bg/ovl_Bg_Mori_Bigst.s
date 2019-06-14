#include <mips.h>
.set noreorder
.set noat

.section .text
func_80927020:
    sw      a1, 0x0154(a0)             # 00000154
    jr      $ra                        
    nop


func_8092702C:
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


func_80927084:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x221C             # a2 = 0600221C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)            
    jal     func_8092702C              
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80927840)      # a1 = 80920000
    addiu   a1, a1, %lo(var_80927840)  # a1 = 80927840
    jal     func_80063F7C              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0024($sp)            
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x0073          # a1 = 00000073
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at                
    sb      v0, 0x015A(s0)             # 0000015A
    lb      t6, 0x015A(s0)             # 0000015A
    bgezl   t6, lbl_809270FC           
    lh      a1, 0x001C(s0)             # 0000001C
    jal     func_80020EB4              
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092714C 
    lw      $ra, 0x001C($sp)           
    lh      a1, 0x001C(s0)             # 0000001C
lbl_809270FC:
    lw      a0, 0x0024($sp)            
    sra     a1, a1,  8                 
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80927120    
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x000C(s0)            # 0000000C
    beq     $zero, $zero, lbl_80927134 
    swc1    $f4, 0x0028(s0)            # 00000028
lbl_80927120:
    lui     $at, 0x4387                # $at = 43870000
    mtc1    $at, $f8                   # $f8 = 270.00
    lwc1    $f6, 0x000C(s0)            # 0000000C
    add.s   $f10, $f6, $f8             
    swc1    $f10, 0x0028(s0)           # 00000028
lbl_80927134:
    jal     func_80020F04              
    lui     a1, 0x4248                 # a1 = 42480000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80927190              
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
lbl_8092714C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_8092715C:
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


func_80927190:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, %hi(func_809271B8)     # a1 = 80920000
    jal     func_80927020              
    addiu   a1, a1, %lo(func_809271B8) # a1 = 809271B8
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809271B8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)            
    sw      s0, 0x0014($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)           
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s1, $at                
    jal     func_80081688              
    lb      a1, 0x015A(s0)             # 0000015A
    beq     v0, $zero, lbl_80927270    
    lui     t6, %hi(func_80927758)     # t6 = 80920000
    addiu   t6, t6, %lo(func_80927758) # t6 = 80927758
    sw      t6, 0x0134(s0)             # 00000134
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020640              
    lb      a1, 0x0003(s0)             # 00000003
    beq     v0, $zero, lbl_80927268    
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x1C44(s1)             # 00001C44
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f4                   # $f4 = 700.00
    lwc1    $f6, 0x0028(t7)            # 00000028
    c.lt.s  $f4, $f6                   
    nop
    bc1f    lbl_80927268               
    nop
    lh      a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    sra     a1, a1,  8                 
    jal     func_8002049C              
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80927258    
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809276C0              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80927274 
    lw      $ra, 0x001C($sp)           
lbl_80927258:
    jal     func_809272A8              
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80927274 
    lw      $ra, 0x001C($sp)           
lbl_80927268:
    jal     func_80927284              
    or      a1, s1, $zero              # a1 = 00000000
lbl_80927270:
    lw      $ra, 0x001C($sp)           
lbl_80927274:
    lw      s0, 0x0014($sp)            
    lw      s1, 0x0018($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80927284:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_80927020              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809272A8:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x0044($sp)            
    lui     a1, %hi(func_8092735C)     # a1 = 80920000
    addiu   a1, a1, %lo(func_8092735C) # a1 = 8092735C
    jal     func_80927020              
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0044($sp)            
    jal     func_80020674              
    lb      a1, 0x0003(s0)             # 00000003
    lui     $at, 0x4351                # $at = 43510000
    mtc1    $at, $f4                   # $f4 = 209.00
    lui     $at, %hi(var_80927860)     # $at = 80920000
    lwc1    $f6, %lo(var_80927860)($at) 
    lui     $at, %hi(var_80927864)     # $at = 80920000
    lw      a2, 0x0044($sp)            
    lwc1    $f8, %lo(var_80927864)($at) 
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0028($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f4, 0x0010($sp)           
    swc1    $f6, 0x0014($sp)           
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0              
    swc1    $f8, 0x0018($sp)           
    beql    v0, $zero, lbl_80927340    
    lw      a0, 0x0044($sp)            
    lh      t7, 0x0018(s0)             # 00000018
    sw      $zero, 0x011C(s0)          # 0000011C
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0018(s0)             # 00000018
    lw      a0, 0x0044($sp)            
lbl_80927340:
    jal     func_80020658              
    lb      a1, 0x0003(s0)             # 00000003
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra                        
    nop


func_8092735C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)           
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x0018(a3)             # 00000018
    lui     $at, 0x40A0                # $at = 40A00000
    bnel    t6, $zero, lbl_809273C8    
    lw      $ra, 0x001C($sp)           
    lwc1    $f6, 0x000C(a3)            # 0000000C
    mtc1    $at, $f8                   # $f8 = 5.00
    lw      t7, 0x1C44(a1)             # 00001C44
    or      a0, a3, $zero              # a0 = 00000000
    sub.s   $f10, $f6, $f8             
    lwc1    $f4, 0x0028(t7)            # 00000028
    c.le.s  $f10, $f4                  
    nop
    bc1fl   lbl_809273C8               
    lw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    jal     func_809273D4              
    sw      a3, 0x0020($sp)            
    lw      a3, 0x0020($sp)            
    lw      a0, 0x0024($sp)            
    addiu   a1, $zero, 0x0C94          # a1 = 00000C94
    addiu   a2, $zero, 0x0048          # a2 = 00000048
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    lw      $ra, 0x001C($sp)           
lbl_809273C8:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_809273D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, %hi(func_809273FC)     # a1 = 80920000
    jal     func_80927020              
    addiu   a1, a1, %lo(func_809273FC) # a1 = 809273FC
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809273FC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)           
    sw      a1, 0x002C($sp)            
    jal     func_8002121C              
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f0, 0x000C(s0)            # 0000000C
    lwc1    $f4, 0x0028(s0)            # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f4, $f0                   
    nop
    bc1fl   lbl_80927478               
    lw      $ra, 0x0024($sp)           
    swc1    $f0, 0x0028(s0)            # 00000028
    jal     func_80927488              
    lw      a1, 0x002C($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0              
    addiu   a1, $zero, 0x281D          # a1 = 0000281D
    lw      a0, 0x002C($sp)            
    addiu   a1, $zero, 0x03FC          # a1 = 000003FC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC              
    sw      $zero, 0x0010($sp)         
    lw      a0, 0x002C($sp)            
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218C8              
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    lw      $ra, 0x0024($sp)           
lbl_80927478:
    lw      s0, 0x0020($sp)            
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra                        
    nop


func_80927488:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0030($sp)            
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(func_8092751C)     # a1 = 80920000
    addiu   a1, a1, %lo(func_8092751C) # a1 = 8092751C
    jal     func_80927020              
    lw      a0, 0x0030($sp)            
    lw      t7, 0x0030($sp)            
    lw      v0, 0x0034($sp)            
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    sh      t6, 0x0158(t7)             # 00000158
    lh      t8, 0x07A0(v0)             # 000007A0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t9, t8,  2                 
    addu    t0, v0, t9                 
    jal     func_8007D85C              
    lw      a0, 0x0790(t0)             # 00000790
    sll     a0, v0, 16                 
    sw      v0, 0x0028($sp)            
    sra     a0, a0, 16                 
    jal     func_8007D668              
    addiu   a1, $zero, 0x61A8          # a1 = 000061A8
    lh      a0, 0x002A($sp)            
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)         
    jal     func_8007D738              
    sw      a0, 0x0024($sp)            
    lw      a0, 0x0024($sp)            
    jal     func_8007D6B0              
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    lw      $ra, 0x001C($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop


func_8092751C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lh      t6, 0x0158(a0)             # 00000158
    bgtzl   t6, lbl_8092753C           
    lw      $ra, 0x0014($sp)           
    jal     func_80927548              
    nop
    lw      $ra, 0x0014($sp)           
lbl_8092753C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80927548:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0038($sp)            
    sw      s0, 0x0034($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)           
    lui     a1, %hi(func_80927660)     # a1 = 80920000
    addiu   a1, a1, %lo(func_80927660) # a1 = 80927660
    jal     func_80927020              
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020674              
    lb      a1, 0x0003(s0)             # 00000003
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    lui     $at, %hi(var_80927868)     # $at = 80920000
    lwc1    $f6, %lo(var_80927868)($at) 
    lui     $at, %hi(var_8092786C)     # $at = 80920000
    lwc1    $f8, %lo(var_8092786C)($at) 
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0028($sp)            
    sw      a0, 0x0044($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f4, 0x0010($sp)           
    swc1    $f6, 0x0014($sp)           
    jal     func_800253F0              
    swc1    $f8, 0x0018($sp)           
    beq     v0, $zero, lbl_809275E4    
    lw      a0, 0x0044($sp)            
    lh      t7, 0x0018(s0)             # 00000018
    sw      $zero, 0x011C(s0)          # 0000011C
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0018(s0)             # 00000018
lbl_809275E4:
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f10                  # $f10 = 170.00
    lui     $at, %hi(var_80927870)     # $at = 80920000
    lwc1    $f16, %lo(var_80927870)($at) 
    lui     $at, %hi(var_80927874)     # $at = 80920000
    lwc1    $f18, %lo(var_80927874)($at) 
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sw      t9, 0x0028($sp)            
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    sw      $zero, 0x001C($sp)         
    sw      $zero, 0x0020($sp)         
    sw      $zero, 0x0024($sp)         
    swc1    $f10, 0x0010($sp)          
    swc1    $f16, 0x0014($sp)          
    jal     func_800253F0              
    swc1    $f18, 0x0018($sp)          
    beq     v0, $zero, lbl_80927644    
    or      a0, s1, $zero              # a0 = 00000000
    lh      t0, 0x0018(s0)             # 00000018
    sw      $zero, 0x011C(s0)          # 0000011C
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0018(s0)             # 00000018
lbl_80927644:
    jal     func_80020658              
    lb      a1, 0x0003(s0)             # 00000003
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80927660:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      t6, 0x0018($sp)            
    lh      t7, 0x0018(t6)             # 00000018
    bnel    t7, $zero, lbl_809276B4    
    lw      $ra, 0x0014($sp)           
    jal     func_8007943C              
    lw      a0, 0x001C($sp)            
    bne     v0, $zero, lbl_809276B0    
    lw      t8, 0x0018($sp)            
    lh      a1, 0x001C(t8)             # 0000001C
    lw      a0, 0x001C($sp)            
    sra     a1, a1,  8                 
    jal     func_800204D0              
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      a0, 0x0018($sp)            
    jal     func_809276C0              
    lw      a1, 0x001C($sp)            
lbl_809276B0:
    lw      $ra, 0x0014($sp)           
lbl_809276B4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809276C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    jal     func_80927020              
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_809276E4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0024($sp)            
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04              
    lui     a1, 0x4248                 # a1 = 42480000
    lh      v0, 0x0158(s0)             # 00000158
    blez    v0, lbl_80927714           
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(s0)             # 00000158
lbl_80927714:
    jal     func_80035388              
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8092772C    
    lw      a0, 0x0024($sp)            
    jal     func_80060CE8              
    addiu   a1, $zero, 0x0006          # a1 = 00000006
lbl_8092772C:
    lw      v0, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80927748    
    lw      $ra, 0x001C($sp)           
    jalr    $ra, v0                    
    lw      a1, 0x0024($sp)            
    lw      $ra, 0x001C($sp)           
lbl_80927748:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra                        
    nop


func_80927758:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0030($sp)            
    lw      a0, 0x0000(a1)             # 00000000
    sw      a1, 0x0034($sp)            
    jal     func_8007E298              
    sw      a0, 0x0024($sp)            
    lw      a1, 0x0034($sp)            
    lw      a2, 0x0024($sp)            
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0030($sp)            
    lui     t2, 0x0001                 # t2 = 00010000
    lb      t9, 0x015A(t8)             # 0000015A
    sll     t0, t9,  4                 
    addu    t0, t0, t9                 
    sll     t0, t0,  2                 
    addu    t1, a1, t0                 
    addu    t2, t2, t1                 
    lw      t2, 0x17B4(t2)             # 000117B4
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_800AB900              
    sw      v1, 0x0018($sp)            
    lw      a3, 0x0018($sp)            
    lw      a2, 0x0024($sp)            
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x1E50             # t7 = 06001E50
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80927820: .word 0x00860100, 0x00000010, 0x00720000, 0x0000015C
.word func_80927084
.word func_8092715C
.word func_809276E4
.word 0x00000000
var_80927840: .word \
0xB0F40BB8, 0xB0F80BB8, 0xB0FC0BB8, 0xB86CFE0C, \
0xB870D120, 0x485003E8, 0x00000000, 0x00000000

.section .rodata

var_80927860: .word 0x444EC000
var_80927864: .word 0xC54F8000
var_80927868: .word 0x444EC000
var_8092786C: .word 0xC5537000
var_80927870: .word 0x444EC000
var_80927874: .word 0xC54BC000, 0x00000000, 0x00000000

